<?php
//echo '<pre>';print_r($_REQUEST);exit;
include("../includes/classes/Configuration.inc.php");
include(APP_PATH . "includes/classes/db.php");
include(PUBLIC_PATH . "html/header.php");
include("../includes/classes/ussd_functions.php");

$province = $_SESSION['user_province1'];
$district = (!empty($_REQUEST['dist_id'])) ? $_REQUEST['dist_id'] : '';
$selProv = (!empty($_REQUEST['province'])) ? $_REQUEST['province'] : '4';
$month = (!empty($_REQUEST['month'])) ? $_REQUEST['month'] : date('Y-m-01');
$month = date('Y-m', strtotime($month));

$m_start = date('Y-m-01', strtotime($_REQUEST['month']));
$m_end = date('Y-m-t', strtotime($_REQUEST['month']));

$q_week = " SELECT
        ussd_weeks.pk_id,
        ussd_weeks.`year`,
        ussd_weeks.`month`,
        ussd_weeks.`week`,
        ussd_weeks.date_start,
        ussd_weeks.date_end
        FROM
        ussd_weeks
        where date_start BETWEEN '" . $m_start . "' AND  '" . $m_end . "' ";
$rs_week = mysql_query($q_week) or die();
$weeks_arr = array();
while ($row = mysql_fetch_array($rs_week)) {
    $weeks_arr[$row['date_start']] = $row['date_end'];
}
//echo '<pre>';print_r($weeks_arr);exit;
?>
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
                                                <td class="col-md-2 ">
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label class="control-label">Reporting Month</label>
                                                            <div class="form-group">
                                                                <input type="text" name="month" id="month"  class="form-control input-sm" value="<?php echo $month; ?>" required readonly="">
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
                                                            if ($district == $rowDist['PkLocID']) {
                                                                $sel = "selected='selected'";
                                                                $dist_name = $rowDist['LocName'];
                                                            } else {
                                                                $sel = "";
                                                            }

                                                            //if($_SESSION['user_level'] == 3 && isset($_SESSION['user_district']) && $_SESSION['user_district'] == $rowDist['PkLocID'] ) 
                                                            echo '<option value="' . $rowDist['PkLocID'] . '" ' . $sel . '>' . $rowDist['LocName'] . '</option>';
                                                        }
                                                        ?>
                                                    </select>
                                                </td>
                                                <td class="col-md-2 filter1" id="td_c" style=""><label class="sb1NormalFont">Display</label>
                                                    <select name="display_id" id="display_id" class="form-control input-sm">
                                                        <option value="all">All</option>
                                                        <option value="reported_only" <?=(!empty($_REQUEST['display_id']) && $_REQUEST['display_id']=='reported_only')?' selected':''?>>Reported Only</option>
                                                    </select>
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
                            <h3 class="page-title row-br-b-wp center"> USSD - Reporting Rate - Balochistan <?= (!empty($district) ? ' - ' . $dist_name : '') ?> 
                            </h3>

                            <div>

                                <table id="myTable" class="table table-condensed table-hover table-bordered" >
                                    <tr class="info ">
                                        <th colspan="3" >Week Number : </th>
                                        <?php
                                        $c = 1;
                                        foreach ($weeks_arr as $st => $end) {
                                            echo '<th  style="text-align:center;">' . $c++ . '</th>';
                                        }
                                        ?>
                                    </tr>
                                    <tr class="info ">
                                        <th rowspan="1">#</th>
                                        <th rowspan="1">District</th>
                                        <th rowspan="1">Facility Name</th>
                                        <?php
                                        foreach ($weeks_arr as $st => $end) {
                                            echo '<th style="text-align:center;">' . $st . '<br/>to<br/>' . $end . '</th>';
                                        }
                                        ?>
                                    </tr>
                                        <?php
                                        if (!empty($_REQUEST['month'])) {
                                            
                                            $q_all = "SELECT
                                                    tbl_locations.LocName AS dist_name,
                                                    tbl_warehouse.wh_id,
                                                    tbl_warehouse.wh_name
                                                    FROM
                                                    tbl_warehouse
                                                    INNER JOIN stakeholder ON tbl_warehouse.stkofficeid = stakeholder.stkid
                                                    INNER JOIN tbl_locations ON tbl_warehouse.dist_id = tbl_locations.PkLocID
                                                    WHERE
                                                    stakeholder.lvl = 7  AND
                                                      tbl_warehouse.prov_id = '" . $_REQUEST['province'] . "' AND
                                                    tbl_warehouse.stkid = '".$_SESSION['user_stakeholder1']."'
                                                    ";
                                            if (!empty($_REQUEST['dist_id'])) {
                                                $q_all .= "  AND tbl_warehouse.dist_id = '" . $_REQUEST['dist_id'] . "' ";
                                            }
                                            $wh_arr = array();
                                            $rsp = mysql_query($q_all);
                                            //echo $q_all;
                                            while ($row = mysql_fetch_array($rsp)) {
                                                $wh_arr[$row['wh_id']]['dist_name'] = $row['dist_name'];
                                                $wh_arr[$row['wh_id']]['wh_name'] = $row['wh_name'];
                                            }
                                            
                                            
                                            $qry_sel = "SELECT
                                                    distinct tbl_warehouse.wh_id,
                                                    tbl_warehouse.wh_name,
                                                    ussd_session_master.week_start_date,
                                                    tbl_locations.LocName AS dist_name
                                                    FROM
                                                    ussd_session_master
                                                    INNER JOIN ussd_sessions ON ussd_sessions.ussd_master_id = ussd_session_master.pk_id
                                                    INNER JOIN tbl_warehouse ON ussd_session_master.wh_id = tbl_warehouse.wh_id
                                                    INNER JOIN tbl_locations ON tbl_warehouse.dist_id = tbl_locations.PkLocID
                                                    WHERE
                                                      tbl_warehouse.prov_id = '" . $_REQUEST['province'] . "' AND
                                                    ussd_session_master.week_start_date BETWEEN '" . $m_start . "' AND  '" . $m_end . "'
                                                    ";

                                            if (!empty($_REQUEST['dist_id'])) {
                                                $qry_sel .= "  AND tbl_warehouse.dist_id = '" . $_REQUEST['dist_id'] . "' ";
                                            }
//                                        if(!empty($_REQUEST['sdp_id'])){
//                                            $qry_sel .= "  AND tbl_warehouse.wh_id = '".$_REQUEST['sdp_id']."' ";
//                                        }
                                            //echo $qry_sel;
                                            $rsp = mysql_query($qry_sel) or die('Err while fetching ussd data');
                                            $c = 1;
                                            $reported_arr  = array();
                                            while ($row = mysql_fetch_array($rsp)) {
                                                $reported_arr[$row['wh_id']][$row['week_start_date']] = '1';
                                            }


                                            foreach ($wh_arr as $whid => $wh_data) {
                                                if(!empty($_REQUEST['display_id']) && $_REQUEST['display_id']=='reported_only' && !isset($reported_arr[$whid]))
                                                {
                                                    continue;
                                                }
                                                echo '<tr>';
                                                echo '<td>' . $c++ . '</td>';
                                                echo '<td>' . $wh_data['dist_name'] . '</td>';
                                                echo '<td>' . $wh_data['wh_name'] . '</td>';
                                                foreach ($weeks_arr as $st => $end) {
                                                    echo '<td style="text-align:center;">';
                                                    if (!empty($reported_arr[$whid][$st]) && $reported_arr[$whid][$st] == '1') {
                                                        echo '<i class="fa fa-check" style="font-size:20px;color:green !important;"></i>';
                                                    } else {
                                                        echo '<i class="fa fa-times" style="font-size:15px;color:red !important;"></i>';
                                                    }
                                                    echo '</td>';
                                                }
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
include PUBLIC_PATH . "/html/footer.php";
?>
</body>
<script type="text/javascript">
    $(function () {
        console.log('Ready');
        $('#dist_id').change(function (e) {
            console.log('Dist Changed');
            $.ajax({
                url: 'ajax_calls.php',
                data: {dist_id: $(this).val(), show_what: 'sdps', stk_id: '<?= $_SESSION['user_stakeholder1'] ?>'},
                type: 'POST',
                success: function (data) {
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
        $("#prod_check").change(function () {
            if (this.checked) {
                $("#product option").show();
                $('#product option').prop('selected', true);
            } else
            {

                $('#product option').prop('selected', false);
                $('#product option.full_funded').prop('selected', true);

                $("#product option").hide();
                $("#product option.full_funded").show();
            }
        });
        //--------

        $("#sel_all").click(function () {
            $('#product option').prop('selected', true);
        });

        if (!$('#accordion').hasClass('page-sidebar-menu-closed'))
        {
            $(".sidebar-toggler").trigger("click");
        }
//                        $("#general_summary_main_div").hide();
//			loadDashlets();

        if (!$('#accordion').hasClass('page-sidebar-menu-closed'))
        {
            $(".sidebar-toggler").trigger("click");
        }


    });

    $(function () {
        $('#month').datepicker({
            dateFormat: "yy-mm",
            constrainInput: false,
            changeMonth: true,
            changeYear: true,
            minDate: new Date(2013, 0, 1),
            maxDate: new Date(<?= date('Y') ?>, <?= date('m') ?>, <?= date('d') ?>)

        });

        $('#month,#province,#stakeholder,#product').change(function () {
            $('.hide_divs').hide('500');
            $('#filter_note').show(1000);
        });

    })

</script>

<!-- END BODY -->
<script>

</script>
</html>