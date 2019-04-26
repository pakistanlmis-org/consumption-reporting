<?php

include("../includes/classes/Configuration.inc.php");
include(APP_PATH . "includes/classes/db.php");
include(PUBLIC_PATH . "html/header.php");
include("../includes/classes/ussd_functions.php");

$province = $_SESSION['user_province1'];
$district = (!empty($_REQUEST['dist_id']))?$_REQUEST['dist_id']:'';
$selProv = (!empty($_REQUEST['province']))?$_REQUEST['province']:'4';
$sdp = (!empty($_REQUEST['sdp_id']))?$_REQUEST['sdp_id']:'';
$show_all_products = (!empty($_REQUEST['prod_check']))?true:false;
$fromDate = (!empty($_REQUEST['from_date']))?$_REQUEST['from_date']:date("Y-m-d");
$itm_arr_request=array();
$itm_arr_request = (!empty($_REQUEST['product']))?$_REQUEST['product']:'';
$full_supply_prods=array();
$full_supply_prods[1] = '1';
$full_supply_prods[5] = '5';
$full_supply_prods[7] = '7';
$full_supply_prods[9] = '9';
//$toDate = $fromDate;
//echo '<pre>';print_r($_REQUEST);exit;
 
$d_exp = explode('-',$fromDate);
$from_y_m = $d_exp[0].'-'.$d_exp[1];

$selected_month = date('m',strtotime($fromDate));
$selected_year = date('Y',strtotime($fromDate));

function popup_link($master_id,$item_id){
    return '<a style="color:blue !important;" onclick="window.open(\'ussd_edit_history.php?master_id='.$master_id.'&item_id='.$item_id.'\', \'_blank\', \'scrollbars=1,width=600,height=500\');">';
}
?>
    <style>
        .my_dash_cols{
            padding-left: 1px;
            padding-right: 0px;
            padding-top: 1px;
            padding-bottom: 0px;
        }
        .my_dashlets{
            /*padding-left: 1px;
            padding-right: 0px;
            padding-top: 1px;
            padding-bottom: 0px;*/
        }
        
        #myInput {
          background-image: url('/css/searchicon.png');
          background-position: 10px 10px;
          background-repeat: no-repeat;
          width: 80%;
          font-size: 16px;
          padding: 12px 20px 12px 40px;
          border: 1px solid #ddd;
          margin-bottom: 12px;
        }
    </style>
    
</head>
<body class="page-header-fixed page-quick-sidebar-over-content">
    <div class="page-container">
        <?php
        include PUBLIC_PATH . "html/top.php";
        include PUBLIC_PATH . "html/top_im.php";
        ?>
        <div class="page-content-wrapper">
            <div class="page-content">
                
                <div class="container-fluid">
                    
                        <div class="row">
                            <div class="widget" data-toggle="">
                                <div class="widget-head">
                                    <h3 class="heading">Filter by</h3>
                                </div>
                                <div class="widget-body collapse in">
                                    <form name="frm" id="frm" action="" method="GET">
                                        <table width="100%">
                                            <tbody>
                                            <tr>
                                                <td class="col-md-2 hide">
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label class="control-label">Reporting Month</label>
                                                            <div class="form-group">
                                                                <input type="text" name="from_date" id="from_date"  class="form-control input-sm" value="<?php echo $fromDate; ?>" required>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    
                                                </td>
                                                <td class="col-md-2">
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label class="control-label">Province</label>
                                                                <select name="province" id="province"  onchange="showDistricts()"  class="form-control input-sm">
                                                                         <option value="4"  >Balochistan</option>
                                                                </select>
                                                        </div>
                                                    </div>
                                                </td>
                                                
                                                <td class="col-md-2 filter1" id="td_dist" style=""><label class="sb1NormalFont">District</label>
                                                    <select name="dist_id" id="dist_id" class="form-control input-sm">
                                                        <option value="">All</option>
                                                            <?php
                                                            $queryDist = "SELECT
                                                                                tbl_locations.PkLocID,
                                                                                tbl_locations.LocName
                                                                        FROM
                                                                                tbl_locations
                                                                        WHERE
                                                                                tbl_locations.LocLvl = 3
                                                                        AND tbl_locations.parentid = '" . $selProv . "'
                                                                        ORDER BY
                                                                                tbl_locations.LocName ASC";
                                                            //query result
                                                            $rsDist = mysql_query($queryDist) or die();
                                                            //fetch result
                                                            $dist_name = "Attock";
                                                            while ($rowDist = mysql_fetch_array($rsDist)) {
                                                                if ($district == $rowDist['PkLocID'] ) {
                                                                    $sel = "selected='selected'";
                                                                    $dist_name=$rowDist['LocName'];
                                                                } else {
                                                                    $sel = "";
                                                                }
                                                                
                                                                //if($_SESSION['user_level'] == 3 && isset($_SESSION['user_district']) && $_SESSION['user_district'] == $rowDist['PkLocID'] ) 
                                                                    echo '<option value="'.$rowDist['PkLocID'].'" '.$sel.'>'.$rowDist['LocName'].'</option>';
                                                            }
                                                            ?>
                                                    </select>
                                                </td>
                                                
                                                <td class="col-md-2 " id="td_sdp" style=""><label class="sb1NormalFont">Facilities</label>
                                                    <select name="sdp_id" id="sdp_id" class="form-control input-sm">
                                                        <option value="">All</option>
                                                            <?php
                                                             if(!empty($district)){
                                                                    
                                                                    $queryDist = "SELECT
                                                                                        tbl_warehouse.wh_id,
                                                                                        tbl_warehouse.wh_name
                                                                                    FROM
                                                                                        tbl_warehouse
                                                                                    INNER JOIN stakeholder ON tbl_warehouse.stkofficeid = stakeholder.stkid
                                                                                    WHERE
                                                                                        tbl_warehouse.dist_id =  '" . $district . "' AND
                                                                                        stakeholder.lvl = 7
                                                                                    ORDER BY
                                                                                        tbl_warehouse.wh_name ASC
                                                                                 ";
                                                                    $rsDist = mysql_query($queryDist) or die();
                                                                    while ($rowDist = mysql_fetch_array($rsDist)) {
                                                                        if ($sdp == $rowDist['wh_id'] ) {
                                                                            $sel = "selected='selected'";
                                                                            $sdp_name=$rowDist['LocName'];
                                                                        } else {
                                                                            $sel = "";
                                                                        }

                                                                            echo '<option value="'.$rowDist['wh_id'].'" '.$sel.'>'.$rowDist['wh_name'].'</option>';
                                                                    }
                                                             }
                                                            ?>
                                                    </select>
                                                </td>
                                                
                                                
                                                <td class="col-md-2">
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            
                                                            <label class="control-label">
                                                                <span class="">
                                                                        <label for="prod_check"> Products</label>
                                                                    </span>
                                                            </label>
                                                                <select    name="product[]" size="6" id="product" class="multiselect-ui form-control input-sm" multiple>
                                                                    <option id="sel_all" style="<?=($show_all_products)?'':'display:none'?>" value="">All</option>
                                                                    <?php
                                                                    $queryprov = "SELECT
                                                                                itminfo_tab.itm_id,
                                                                                itminfo_tab.itm_name
                                                                                FROM
                                                                                itminfo_tab
                                                                                WHERE
                                                                                itminfo_tab.itm_category = 1 AND
                                                                                itminfo_tab.method_type IS NOT NULL
                                                                                ORDER BY
                                                                                itminfo_tab.method_rank ASC
                                                                        ";
                                                                    //query result
                                                                    $rsprov = mysql_query($queryprov) or die();

                                                                    while ($rowprov = mysql_fetch_array($rsprov)) {
                                                                        
                                                                        $sel='';
                                                                        $styleit = " ";
                                                                        $cls2 = "";
                                                                        if (!empty($itm_arr_request) && in_array($rowprov['itm_id'],$itm_arr_request)) {
                                                                                $sel = "selected='selected'";
                                                                                $itm_name[]=$rowprov['itm_name'];
                                                                                
                                                                            }elseif(empty($itm_arr_request)){
                                                                                 $sel = "selected='selected'";
                                                                                $itm_name[]=$rowprov['itm_name'];
                                                                            }
                                                                        ?>
                                                                            <option class="<?=$cls2?>" value="<?php echo $rowprov['itm_id']; ?>" <?php echo $sel; ?> style="<?=$styleit?>"><?php echo $rowprov['itm_name']; ?></option>
                                                                 <?php
                                                                        }

                                                                ?>
                                                                </select>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="col-md-2">
                                                    <label class="control-label">&nbsp;</label>
                                                    <input type="submit" class="btn btn-succes" value="Go">
                                                    
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </form>
                                </div>
                            </div>
                        </div>
                    
                        
                    
                      <div class="row hide_divs" >
                            <div class="col-md-12">
                                <h3 class="page-title row-br-b-wp center"> USSD - Weekly Report - Balochistan <?=(!empty($district)?' - '.$dist_name:'')?> 
                                </h3>

                                <div>
                                    <input type="text" id="myInput" onkeyup="searching_func()" placeholder="Search for phonenumber , warehouse name , product name.." title="Type in a name">

                                    <table id="myTable" class="table table-condensed table-hover table-bordered" >
                                        <tr class="info ">
                                            <th>#</th>
                                            <th>District</th>
                                            <th>Facility Name</th>
                                            <th>Cell Number</th>
                                            <th>Item</th>
                                            <th>Week Start Date</th>
                                            <th>Week End Date</th>
                                            <!--<th>Opening Balance</th>-->
                                            <th>Received</th>
                                            <th>Consumed</th>
                                            <th>Adjustment (+ ve)</th>
                                            <th>Adjustment (- ve)</th>
                                            <!--<th>Closing Balance</th>-->
                                            <th>Approval Status</th>
                                            <th>Last Updated</th>
                                            <th>Edit History</th>
                                        </tr>
                                    <?php
                                    if(!empty($_REQUEST['product']))
                                    {
                                        $qry_sel= "SELECT
                                                        ussd_session_master.wh_name,
                                                        itminfo_tab.itm_name,
                                                        ussd_weeks.date_start,
                                                        ussd_weeks.date_end,
                                                        ussd_sessions.stock_received,
                                                        ussd_sessions.stock_consumed,
                                                        ussd_sessions.stock_adjustment_p,
                                                        ussd_sessions.stock_adjustment_n,
                                                        ussd_sessions.insert_date,
                                                        tbl_locations.LocName as dist_name,
                                                        ussd_session_master.phone_number,
                                                        ussd_session_master.wh_id,
                                                        ussd_sessions.item_id,
                                                        ussd_sessions.is_processed,
                                                        ussd_session_master.pk_id as master_id
                                                    FROM
                                                        ussd_session_master
                                                    INNER JOIN ussd_sessions ON ussd_sessions.ussd_master_id = ussd_session_master.pk_id
                                                    INNER JOIN itminfo_tab ON ussd_sessions.item_id = itminfo_tab.itm_id
                                                    INNER JOIN ussd_weeks ON ussd_session_master.reporting_year = ussd_weeks.`year` AND ussd_session_master.reporting_month = ussd_weeks.`month` AND ussd_session_master.week_number = ussd_weeks.`week`
                                                    INNER JOIN tbl_warehouse ON ussd_session_master.wh_id = tbl_warehouse.wh_id
                                                    INNER JOIN tbl_locations ON tbl_warehouse.dist_id = tbl_locations.PkLocID
                                                    WHERE
                                                        tbl_locations.ParentID = 4 AND
                                                        ussd_sessions.item_id IN (".implode(',',$_REQUEST['product']).") ";

                                        if(!empty($_REQUEST['dist_id'])){
                                            $qry_sel .= "  AND tbl_warehouse.dist_id = '".$_REQUEST['dist_id']."' ";
                                        } 
                                        if(!empty($_REQUEST['sdp_id'])){
                                            $qry_sel .= "  AND tbl_warehouse.wh_id = '".$_REQUEST['sdp_id']."' ";
                                        }
                                        $qry_sel .= " 

                                                    ORDER BY
                                                        ussd_session_master.wh_name ASC,
                                                        itminfo_tab.itm_name ASC,
                                                        ussd_weeks.date_start DESC
                                            ";
                                        $rsp  = mysql_query($qry_sel) or die();
                                        $c=1;
                                        while ($row= mysql_fetch_array($rsp)) {
                                            $calculated_ob = calc_ob_ussd($row['date_start'],$row['wh_id'],$row['item_id']);
                                            if(!empty($calculated_ob[$row['item_id']]))
                                                $this_ob = $calculated_ob[$row['item_id']];
                                            else
                                                $this_ob = 0;



                                            $calculated_cb = calc_cb_ussd($row['date_start'],$row['wh_id'],$row['item_id']);
                                            $this_cb = $calculated_cb[$row['item_id']];

                                            echo '<tr>';
                                                echo '<td>'.$c++.'</td>';
                                                echo '<td>'.$row['dist_name'].'</td>';
                                                echo '<td>'.$row['wh_name'].'</td>';
                                                echo '<td>'.$row['phone_number'].'</td>';
                                                echo '<td>'.$row['itm_name'].'</td>';
                                                echo '<td>'.date('Y-M-d',strtotime($row['date_start'])).'</td>';
                                                echo '<td>'.date('Y-M-d',strtotime($row['date_end'])).'</td>';
                                                //echo '<td align="right">'. number_format($this_ob).'</td>';
                                                echo '<td align="right">'.popup_link($row['master_id'],$row['item_id']).''.((!empty($row['stock_received']) || $row['stock_received'] == '0') ?      number_format($row['stock_received']):'').'</td>';
                                                echo '<td align="right">'.popup_link($row['master_id'],$row['item_id']).''.((!empty($row['stock_consumed']) || $row['stock_consumed'] == '0') ?      number_format($row['stock_consumed']):'').'</td>';
                                                echo '<td align="right">'.popup_link($row['master_id'],$row['item_id']).''.((!empty($row['stock_adjustment_p']) || $row['stock_adjustment_p'] == '0') ?      number_format($row['stock_adjustment_p']):'').'</td>';
                                                echo '<td align="right">'.popup_link($row['master_id'],$row['item_id']).''.((!empty($row['stock_adjustment_n']) || $row['stock_adjustment_n'] == '0') ?      number_format($row['stock_adjustment_n']):'').'</td>';

                                                //echo '<td align="right">'. number_format($this_cb).'</td>';


                                                if(!empty($row['is_processed']) && $row['is_processed'] == 1){
                                                    $st = 'Approved';
                                                    $cl= ' success ';
                                                }
                                                else{
                                                    $st = 'Approval Pending';
                                                    $cl =' danger ';
                                                }

                                                echo '<td class="'.$cl.'">'.$st.'</td>';
                                                echo '<td>'.$row['insert_date'].'</td>';
                                                echo '<td><a onclick="window.open(\'ussd_edit_history.php?master_id='.$row['master_id'].'&item_id='.$row['item_id'].'\', \'_blank\', \'scrollbars=1,width=600,height=500\');"><i class="fa fa-history" style="color:#000 !important;"></i></td>';

                                            echo '</tr>';
                                        }
                                    }
                                    ?>
                                    </table>
                                </div>
                            </div>
                        </div>
                        
                    
                </div>
                
                
               
            </div>
        </div>
    </div>

    <?php 
    //Including footer file
    include PUBLIC_PATH . "/html/footer.php"; ?>
</body>
    <script type="text/javascript">
                $(function() {
                    console.log('Ready');
                    $('#dist_id').change(function(e) {
                        console.log('Dist Changed');
                            $.ajax({
                                    url: 'ajax_calls.php',
                                    data: {dist_id: $(this).val(), show_what: 'sdps', stk_id: '<?=$_SESSION['user_stakeholder1']?>'},
                                    type: 'POST',
                                    success: function(data){
                                        $('#sdp_id').html(data);
                                    }
                                });
                            });
                        function searching_func() {
                                    var input, filter, table, tr, td, i, txtValue;
                                    input = document.getElementById("myInput");
                                    filter = input.value.toUpperCase();
                                    table = document.getElementById("myTable");
                                    tr = table.getElementsByTagName("tr");
                                    for (i = 0; i < tr.length; i++) {
                                      td = tr[i].getElementsByTagName("td")[4];
                                      //td += tr[i].getElementsByTagName("td")[5];


                                      if (td) {
                                        txtValue = td.textContent || td.innerText;

                                          td = tr[i].getElementsByTagName("td")[6];
                                          txtValue += td.textContent || td.innerText;
                                          td = tr[i].getElementsByTagName("td")[1];
                                          txtValue += td.textContent || td.innerText;
                                          td = tr[i].getElementsByTagName("td")[2];
                                          txtValue += td.textContent || td.innerText;
                                          td = tr[i].getElementsByTagName("td")[3];
                                          txtValue += td.textContent || td.innerText;
                                          td = tr[i].getElementsByTagName("td")[5];
                                          txtValue += td.textContent || td.innerText;
                                          td = tr[i].getElementsByTagName("td")[13];
                                          txtValue += td.textContent || td.innerText;
                                        //console.log(txtValue);
                                        if (txtValue.toUpperCase().indexOf(filter) > -1) {
                                          tr[i].style.display = "";
                                        } else {
                                          tr[i].style.display = "none";
                                        }
                                      }       
                                    }
                                  }
                        //--------Full funded prods only
                        $("#prod_check").change(function(){
                            if(this.checked) {
                                $("#product option").show();
                                $('#product option').prop('selected', true);
                            }
                            else
                            {
                                
                                $('#product option').prop('selected', false);
                                $('#product option.full_funded').prop('selected', true);
                                
                                $("#product option").hide();
                                $("#product option.full_funded").show();
                            }
                        });
                        //--------
                    
                        $("#sel_all").click(function(){
                            $('#product option').prop('selected', true);
                        });
                    
			if(!$('#accordion').hasClass('page-sidebar-menu-closed'))
                        {
                            $(".sidebar-toggler").trigger("click");
                        }
//                        $("#general_summary_main_div").hide();
//			loadDashlets();

                        if(!$('#accordion').hasClass('page-sidebar-menu-closed'))
                        {
                            $(".sidebar-toggler").trigger("click");
                        }
                       
                        
		});
             
                $(function() {
                    
                    
                    $('#from_date,#province,#stakeholder,#product').change(function() {
                        $('.hide_divs').hide('500');
                        $('#filter_note').show(1000);
                    });
                })
                
    </script>

<!-- END BODY -->
<script>

</script>
</html>