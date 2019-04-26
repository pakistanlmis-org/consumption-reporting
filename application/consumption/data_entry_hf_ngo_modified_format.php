<?php
/**
 * data_entry_hf_ngo
 * @package consumption
 * 
 * @author     Ajmal Hussain
 * @email <ahussain@ghsc-psm.org>
 * 
 * @version    2.2
 * 
 */
//echo 'THIS IS NEW FORMAT . <<< Remove before upload >>>';
//Including AllClasses
include("../includes/classes/AllClasses.php");
//Including header
include(PUBLIC_PATH . "html/header.php");
//Including top_im
include PUBLIC_PATH . "html/top_im.php";

$readonly_for_im = false;
//Checking Do
if (isset($_REQUEST['Do']) && !empty($_REQUEST['Do'])) {
    //Getting do
    $temp = urldecode($_REQUEST['Do']);
    $tmpStr = substr($temp, 1, strlen($temp) - 1);
    $temp = explode("|", $tmpStr);
    // Warehouse ID
    $wh_id = $temp[0] - 77000;
    //Setting wh_id
    $objwharehouse_user->m_wh_id = $wh_id;
}
//Checking user id in session
if (isset($_SESSION['user_id'])) {
    //Getting user_id
    $userid = $_SESSION['user_id'];
    //Setting user id
    $objwharehouse_user->m_npkId = $userid;
    //Get Province Id By Idc
    $result_province = $objwharehouse_user->GetProvinceIdByIdc();
    //print_r($result_province);
} else {
    //Display message
    echo "user not login or timeout";
}
//Checking e
if (isset($_GET['e']) && $_GET['e'] == 'ok') {
    ?>
    <script type="text/javascript">
        function RefreshParent() {
            if (window.opener != null && !window.opener.closed) {
                window.opener.location.reload();
            }
        }
        window.close();
        RefreshParent();
        //window.onbeforeunload = RefreshParent;
    </script>
    <?php
    exit;
}
//Initializing variables
//isReadOnly
$isReadOnly = '';
//style
$style = '';
//Checking im_open
if ($_SESSION['is_allowed_im'] == 1) {
    $isReadOnly = 'readonly="readonly"';
    $style = 'style="background:#CCC"';
} else {
    $isReadOnly = '';
    $style = '';
}



$qry_st= "SELECT
                    tbl_hf_type.pk_id,
                    tbl_hf_type.hf_type,
                    tbl_hf_type.stakeholder_id,
                    tbl_hf_type.hf_rank
                FROM
                    tbl_hf_type
                WHERE
                    tbl_hf_type.stakeholder_id = 0 ORDER BY
                    tbl_hf_type.hf_rank ASC

                ";
$stk_res = mysql_query($qry_st);
$sub_hf_types = array();
while($row = mysql_fetch_array($stk_res))
{
    $sub_hf_types[$row['pk_id']] = $row['hf_type'];
}


?>
<link href="<?php echo PUBLIC_URL; ?>css/styles.css" rel="stylesheet" type="text/css"/>
</head>
<body class="page-header-fixed page-quick-sidebar-over-content">
    
    <div class="modal"></div>
    <!-- BEGIN HEADER -->
    <div class="page-container">
        <div class="page-content-wrapper">
            <div class="page-content" style="margin-left:0px !important">
                <?php
//Initializing wh_id
                $wh_id = "";
//Checking Do
                if (isset($_REQUEST['Do']) && !empty($_REQUEST['Do'])) {
                    //Getting Do
                    $temp = urldecode($_REQUEST['Do']);
                    $tmpStr = substr($temp, 1, strlen($temp) - 1);
                    //Explode 
                    $temp = explode("|", $tmpStr);

                    //****************************************************************************
                    // Warehouse ID
                    $wh_id = $temp[0] - 77000;
                    //Report Date
                    $RptDate = $temp[1];
                    //if value=1 then new report
                    $isNewRpt = $temp[2];
                    $tt = explode("-", $RptDate);
                    //Reprot year
                    $yy = $tt[0];
                    //report Month
                    $mm = $tt[1];

                $mc_ngo_Qry = "SELECT
                                        tbl_hf_mother_care_ngo_breakdown.pk_id,
                                        tbl_hf_mother_care_ngo_breakdown.reporting_date,
                                        tbl_hf_mother_care_ngo_breakdown.warehouse_id,
                                        tbl_hf_mother_care_ngo_breakdown.hf_type_id,
                                        tbl_hf_mother_care_ngo_breakdown.pre_natal_new,
                                        tbl_hf_mother_care_ngo_breakdown.pre_natal_old,
                                        tbl_hf_mother_care_ngo_breakdown.post_natal_new,
                                        tbl_hf_mother_care_ngo_breakdown.post_natal_old,
                                        tbl_hf_mother_care_ngo_breakdown.ailment_children,
                                        tbl_hf_mother_care_ngo_breakdown.ailment_adults,
                                        tbl_hf_mother_care_ngo_breakdown.general_ailment,
                                        referred_implants
                                    FROM
                                        tbl_hf_mother_care_ngo_breakdown
                                    WHERE
                                        tbl_hf_mother_care_ngo_breakdown.reporting_date = '$RptDate'
                                    AND tbl_hf_mother_care_ngo_breakdown.warehouse_id = $wh_id";
                    //result
                        //echo $mc_ngo_Qry;exit;
                    $res_ngo = mysql_query($mc_ngo_Qry);
                    $mc_ngo_arr = array();
                    while ( $row = mysql_fetch_array($res_ngo)){
                        $mc_ngo_arr[$row['hf_type_id']] = $row;
                    }
                    // Check warehouse level
                    //gets
                    // stakeholder.lvl,
                    //tbl_warehouse.hf_type_id,
                    //tbl_warehouse.prov_id

                    $qryLvl = mysql_fetch_array(mysql_query("SELECT
                                                            stakeholder.lvl,
                                                            tbl_warehouse.hf_type_id,
                                                            tbl_warehouse.prov_id
                                                        FROM
                                                            tbl_warehouse
                                                        INNER JOIN stakeholder ON tbl_warehouse.stkofficeid = stakeholder.stkid
                                                        WHERE
                                                            tbl_warehouse.wh_id = $wh_id"));
                    $hfTypeId = $qryLvl['hf_type_id'];
                    $whProvId = $qryLvl['prov_id'];
                    $wh_lvl = $qryLvl['lvl'];

                    // Check if its 1st Month of Data Entry 
                    $checkData = "SELECT
                                tbl_hf_data.reporting_date
                            FROM
                                tbl_hf_data
                            WHERE
                                tbl_hf_data.warehouse_id = $wh_id
                            ORDER BY
                                tbl_hf_data.reporting_date ASC
                            LIMIT 1";
                    $checkDataRes = mysql_fetch_array(mysql_query($checkData));
                    //openOB
                    $openOB = ($checkDataRes['reporting_date'] == $RptDate) ? '' : $checkDataRes['reporting_date'];
                    //month
                    $month = date('F', mktime(0, 0, 0, $mm, 1));

                    //****************************************************************************
                    //Setting wh_id
                    $objwarehouse->m_npkId = $wh_id;
                    //Get Stk ID By WH Id
                    $stkid = $objwarehouse->GetStkIDByWHId($wh_id);
                    //Get Warehouse Name By Id
                    $whName = $objwarehouse->GetWarehouseNameById($wh_id);
                    echo "<h3 class=\"page-title row-br-b-wp\">" . $whName . " <span class=\"green-clr-txt\">(" . $month . ' ' . $yy . ")</span> </h3>";
                    if ($isNewRpt == 1) {
                        //Get Previous Month Report Date
                        $PrevMonthDate = $objReports->GetPreviousMonthReportDate($RptDate);
                    } else {
                        $PrevMonthDate = $RptDate;
                    }
                    
                    include("stock_sources.php");

                    if ($src_count > 0) {
                        $src_count += 1;
                        $rowcolspan = "colspan=$src_count";
                    } else {
                        $rowcolspan = "rowspan=2";
                    }
                    ?>
                    <form name="frmF7" id="frmF7" method="post">
                        <div class="row">
                            <div class="col-md-12">
                                <div id="errMsg"></div>
                                <table class="table table-bordered">
                                    <tr>
                                        <th rowspan="2" class="text-center">S.No.</th>
                                        <th rowspan="2" class="text-center">Article</th>
                                        <th rowspan="2" class="text-center">Opening balance</th>
                                        <th <?php echo $rowcolspan; ?> class="text-center">Received</th>
                                        <th rowspan="2" class="text-center">Issued</th>
                                        <th colspan="2" class="text-center">Adjustments</th>
                                        <th rowspan="2" class="text-center">Closing Balance</th>
                                        <th colspan="2" class="text-center">Cases/Clients</th>
                                        <th rowspan="2" class="text-center">Removals</th>
                                        <th rowspan="2" class="text-center">Dropouts</th>
                                        <th rowspan="2" class="text-center">Next Month Requirement</th>
                                    </tr>
                                    <tr>
                                        <?php foreach ($sources as $rowsrc) { ?>
                                            <th class="text-center"><?php echo $rowsrc; ?></th>
                                        <?php } if ($src_count > 0) { ?>
                                            <th class="text-center">Total</th>
                                        <?php } ?>
                                        <th class="text-center">(+)</th>
                                        <th class="text-center">(-)</th>
                                        <th class="text-center">New</th>
                                        <th class="text-center">Old</th>
                                    </tr>
                                    <?php
                                    //query 
                                    //gets
                                    //all from itminfo_tab
                                    $q1 = "SELECT * FROM `itminfo_tab` WHERE `itm_status`=1 AND `itm_id` IN (SELECT `Stk_item` FROM `stakeholder_item` WHERE `stkid` =$stkid) ORDER BY `frmindex`";
                                    $rsTemp1 = mysql_query($q1);

                                    $SlNo = 1;
                                    $fldIndex = 0;
                                    //loop
                                    while ($rsRow1 = mysql_fetch_array($rsTemp1)) {
                                        //echo '<pre>';print_r($rsRow1);
                                        if ((isset($hfTypeId) && $hfTypeId == 1) && (isset($result_province['prov_id']) && $result_province['prov_id'] == 1)) {
                                            if (in_array($rsRow1['itm_id'], array(8,13,30,34)))
                                                continue;
                                        }
//                                        $item_char = $rsRow1['itm_id'];
//                                        $qry_cf = "SELECT REPUpdateCarryForwardHF('$RptDate','$item_char', $wh_id) FROM DUAL";
//                                        mysql_query($qry_cf);
                                        //all from tbl_hf_data
                                        $qry = "SELECT * FROM tbl_hf_data WHERE `warehouse_id`='" . $wh_id . "' AND reporting_date='" . $PrevMonthDate . "' AND `item_id`='$rsRow1[itm_id]'";
                                        //result
                                        //echo $qry;exit;
                                        $rsTemp3 = mysql_query($qry);
                                        $rsRow2 = mysql_fetch_array($rsTemp3);
                                        //echo '<pre>';print_r($rsRow2);
                                        //add date
                                        $add_date = $rsRow2['created_date'];
                                        
                                        $sources_data = array();
                                        ///// Code for Receive column bifurcation
                                        $hf_data_id = $rsRow2['pk_id'];
                                        
                                        if(!empty($hf_data_id)){
                                                $qryd = "SELECT
                                                            stock_sources_data.stock_sources_id,
                                                            stock_sources_data.received,
                                                            tbl_hf_data.item_id
                                                    FROM
                                                            stock_sources_data
                                                    INNER JOIN tbl_hf_data ON stock_sources_data.hf_data_id = tbl_hf_data.pk_id
                                                    WHERE
                                                            stock_sources_data.hf_data_id = $hf_data_id";
                                                //result
                                                $rsTemp4 = mysql_query($qryd);

                                                while ($rsRow4 = mysql_fetch_array($rsTemp4)) {
                                                    $sources_data[$rsRow4['stock_sources_id']][$rsRow4['item_id']] = $rsRow4['received'];
                                                }
                                        }

                                        ///// End of Code for Receive column bifurcation
                                        
                                        // if new report
                                        if ($isNewRpt == 1) {

                                            //check itm_category
                                            if ($rsRow1['itm_category'] == 1) {
                                                //wh_issue_up
                                                $wh_issue_up = 0;
                                                //wh_adja
                                                $wh_adja = 0;
                                                //wh_adjb
                                                $wh_adjb = 0;
                                                //wh_received
                                                $wh_received = ((!empty($rcvd_array[$rsRow1['itm_id']])) ? $rcvd_array[$rsRow1['itm_id']] : '0');
                                                //ob_a
                                                $ob_a = $rsRow2['closing_balance'];
                                                //cb_a
                                                $cb_a = $wh_received + $rsRow2['closing_balance'];
                                                //$ob_a = 0;
                                                //$cb_a = 0;
                                                
                                                $new = 0;
                                                $old = 0;
                                                $drop_outs = 0;
                                                $removals = 0;
                                                $demand = 0;
                                                ?>
                                                <tr>
                                                    <td class="text-center"><?php echo $SlNo; ?></td>
                                                    <td>
                                                        <?php echo $rsRow1['itm_name']; ?>
                                                        <input type="hidden" name="flitmrec_id[]" value="<?php echo $rsRow1['itm_id']; ?>">
                                                        <input type="hidden" name="flitm_category[]" value="<?php echo $rsRow1['itm_category']; ?>">
                                                        <input type="hidden" name="flitmname<?php echo $rsRow1['itm_id']; ?>" value="<?php echo $rsRow1['itm_name']; ?>">
                                                    </td>
                                                    <td><input class="form-control input-sm text-right"  autocomplete="off"  type="text" name="FLDOBLA<?php echo $rsRow1['itm_id']; ?>" id="FLDOBLA<?php echo $rsRow1['itm_id']; ?>" size="8" maxlength="10" value="<?php echo $ob_a; ?>" onKeyUp="cal_balance('<?php echo $rsRow1['itm_id']; ?>');" ></td>
<?php
                                                    foreach ($sources as $key => $rowsrc) {
                                                        $this_value = (!empty($sources_data[$key][$rsRow1['itm_id']]) ? $sources_data[$key][$rsRow1['itm_id']] : '0');
                                                        ?>
                                                        <td><input class="form-control input-sm text-right FLDSrcs<?php echo $rsRow1['itm_id']; ?>" <?php
                                                            if ($key == 130) {
                                                                echo $isReadOnly . $style;
                                                            }
                                                            ?> autocomplete="off"  type="text" name="FLDSrcs<?php echo $rsRow1['itm_id']; ?>[<?php echo $key; ?>]" id="<?php echo $rowsrc . $rsRow1['itm_id']; ?>" size="8" maxlength="10"  value="<?php echo $this_value; ?>" onKeyUp="cal_balance('<?php echo $rsRow1['itm_id']; ?>');"></td>
                <?php } 
                
                                                    $removal_readonly=true;
                                                    if($rsRow1['method_type']=='IUD' || $rsRow1['method_type']=='Implant') {
                                                        $removal_readonly = false;
                                                    }
                
                ?>                                                    
                                                    <td><input class="form-control input-sm text-right" <?= (($src_count > 0 || $readonly_for_im) ? 'readonly' : '') ?> autocomplete="off"  type="text" name="FLDRecv<?php echo $rsRow1['itm_id']; ?>" id="FLDRecv<?php echo $rsRow1['itm_id']; ?>" size="8" maxlength="10"  value="<?php echo $wh_received; ?>" onKeyUp="cal_balance('<?php echo $rsRow1['itm_id']; ?>');"></td>
                                                    <td><input class="form-control input-sm text-right" autocomplete="off" name="FLDIsuueUP<?php echo $rsRow1['itm_id']; ?>" id="FLDIsuueUP<?php echo $rsRow1['itm_id']; ?>" value="<?php echo $wh_issue_up; ?>" type="text"  size="8" maxlength="10" onKeyUp="cal_balance('<?php echo $rsRow1['itm_id']; ?>');"></td>
                                                    <td><input class="form-control input-sm text-right" autocomplete="off" type="text" name="FLDReturnTo<?php echo $rsRow1['itm_id']; ?>" id="FLDReturnTo<?php echo $rsRow1['itm_id']; ?>" size="8" maxlength="10" value="<?php echo $wh_adja; ?>" onKeyUp="cal_balance('<?php echo $rsRow1['itm_id']; ?>');"></td>
                                                    <td><input class="form-control input-sm text-right" autocomplete="off" type="text" name="FLDUnusable<?php echo $rsRow1['itm_id']; ?>" id="FLDUnusable<?php echo $rsRow1['itm_id']; ?>" size="8" maxlength="10" value="<?php echo $wh_adjb; ?>" onKeyUp="cal_balance('<?php echo $rsRow1['itm_id']; ?>');"></td>
                                                    <td><input class="form-control input-sm text-right" autocomplete="off" type="text" name="FLDCBLA<?php echo $rsRow1['itm_id']; ?>" id="FLDCBLA<?php echo $rsRow1['itm_id']; ?>" size="8" maxlength="10" value="<?php echo $cb_a; ?>" readonly ></td>
                                                    <td><input class="form-control input-sm text-right" autocomplete="off" type="text" name="FLDnew<?php echo $rsRow1['itm_id']; ?>" id="FLDnew<?php echo $rsRow1['itm_id']; ?>" size="8" maxlength="10"  value="<?php echo $new; ?>"></td>
                                                    <td><input class="form-control input-sm text-right" autocomplete="off" type="text" name="FLDold<?php echo $rsRow1['itm_id']; ?>" id="FLDold<?php echo $rsRow1['itm_id']; ?>" size="8" maxlength="10"  value="<?php echo $old; ?>"></td>
                                                    <td><input class="form-control input-sm text-right" autocomplete="off" type="text" name="Removals<?php echo $rsRow1['itm_id']; ?>" id="Removals<?php echo $rsRow1['itm_id']; ?>" size="8" maxlength="10"  value="<?php echo $removals; ?>" <?=(($removal_readonly)?' readonly ':'')?>></td>
                                                    <td><input class="form-control input-sm text-right" autocomplete="off" type="text" name="DropOuts<?php echo $rsRow1['itm_id']; ?>" id="DropOuts<?php echo $rsRow1['itm_id']; ?>" size="8" maxlength="10"  value="<?php echo $drop_outs; ?>"></td>
                                                    <td><input class="form-control input-sm text-right" autocomplete="off" type="text" name="Demand<?php echo $rsRow1['itm_id']; ?>" id="Demand<?php echo $rsRow1['itm_id']; ?>" size="8" maxlength="10"  value="<?php echo $demand; ?>"></td>
                                                </tr>
                                                <?php
                                            } else if ($rsRow1['itm_category'] == 2) {
                                                $surgeyArr[$rsRow1['itm_id']]['pk_id'] = $rsRow2['pk_id'];
                                                $surgeyArr[$rsRow1['itm_id']]['name'] = $rsRow1['itm_name'];
                                                $surgeyArr[$rsRow1['itm_id']]['category'] = $rsRow1['itm_category'];
                                                $surgeyArr[$rsRow1['itm_id']]['cases'] = $wh_issue_up;
                                            }
                                        }
                                        //Old report Edit Mode
                                        else {

                                            //check itm_category
                                            if ($rsRow1['itm_category'] == 1) {
                                                ?>
                                                <tr>
                                                    <td class="text-center"><?php echo $SlNo; ?></td>
                                                    <td>
                                                        <?php echo $rsRow1['itm_name']; ?>
                                                        <input type="hidden" name="flitmrec_id[]" value="<?php echo $rsRow1['itm_id']; ?>">
                                                        <input type="hidden" name="flitm_category[]" value="<?php echo $rsRow1['itm_category']; ?>">
                                                        <input type="hidden" name="flitmname<?php echo $rsRow1['itm_id']; ?>" value="<?php echo $rsRow1['itm_name']; ?>">
                                                    </td>
                                                    <td><input class="form-control input-sm text-right"   autocomplete="off"  type="text" name="FLDOBLA<?php echo $rsRow1['itm_id']; ?>" id="FLDOBLA<?php echo $rsRow1['itm_id']; ?>" size="8" maxlength="10" value="<?php echo $rsRow2['opening_balance']; ?>" onKeyUp="cal_balance('<?php echo $rsRow1['itm_id']; ?>');" ></td>
                                                    <?php
                                                    foreach ($sources as $key => $rowsrc) {
                                                        $this_value = (!empty($sources_data[$key][$rsRow1['itm_id']]) ? $sources_data[$key][$rsRow1['itm_id']] : '0');
                                                        ?>
                                                        <td><input class="form-control input-sm text-right FLDSrcs<?php echo $rsRow1['itm_id']; ?>" <?php
                                                            if ($key == 130) {
                                                                echo $isReadOnly . $style;
                                                            }
                                                            ?> autocomplete="off"  type="text" name="FLDSrcs<?php echo $rsRow1['itm_id']; ?>[<?php echo $key; ?>]" id="<?php echo $rowsrc . $rsRow1['itm_id']; ?>" size="8" maxlength="10"  value="<?php echo $this_value; ?>" onKeyUp="cal_balance('<?php echo $rsRow1['itm_id']; ?>');"></td>
                <?php }
                
                                                    $removal_readonly=true;
                                                    if($rsRow1['method_type']=='IUD' || $rsRow1['method_type']=='Implant') {
                                                        $removal_readonly = false;
                                                    }
                ?>
                                                    <td><input class="form-control input-sm text-right" <?= (($src_count > 0) ? 'readonly' : '') ?> autocomplete="off"  type="text" name="FLDRecv<?php echo $rsRow1['itm_id']; ?>" id="FLDRecv<?php echo $rsRow1['itm_id']; ?>" size="8" maxlength="10"  value="<?php echo $rsRow2['received_balance']; ?>" onKeyUp="cal_balance('<?php echo $rsRow1['itm_id']; ?>');"></td>
                                                    <td><input class="form-control input-sm text-right" autocomplete="off" name="FLDIsuueUP<?php echo $rsRow1['itm_id']; ?>" id="FLDIsuueUP<?php echo $rsRow1['itm_id']; ?>" value="<?php echo $rsRow2['issue_balance']; ?>" type="text" size="8" maxlength="10" onKeyUp="cal_balance('<?php echo $rsRow1['itm_id']; ?>');"></td>
                                                    <td><input class="form-control input-sm text-right" autocomplete="off"  type="text" name="FLDReturnTo<?php echo $rsRow1['itm_id']; ?>" id="FLDReturnTo<?php echo $rsRow1['itm_id']; ?>" size="8" maxlength="10" value="<?php echo $rsRow2['adjustment_positive']; ?>" onKeyUp="cal_balance('<?php echo $rsRow1['itm_id']; ?>');"></td>
                                                    <td><input class="form-control input-sm text-right" autocomplete="off"  type="text" name="FLDUnusable<?php echo $rsRow1['itm_id']; ?>" id="FLDUnusable<?php echo $rsRow1['itm_id']; ?>" size="8" maxlength="10" value="<?php echo $rsRow2['adjustment_negative']; ?>" onKeyUp="cal_balance('<?php echo $rsRow1['itm_id']; ?>');"></td>
                                                    <td><input class="form-control input-sm text-right" autocomplete="off"  type="text" name="FLDCBLA<?php echo $rsRow1['itm_id']; ?>" id="FLDCBLA<?php echo $rsRow1['itm_id']; ?>" size="8" maxlength="10" value="<?php echo $rsRow2['closing_balance']; ?>" readonly ></td>
                                                    <td><input class="form-control input-sm text-right" autocomplete="off"  type="text" name="FLDnew<?php echo $rsRow1['itm_id']; ?>" id="FLDnew<?php echo $rsRow1['itm_id']; ?>" size="8" maxlength="10"  value="<?php echo $rsRow2['new']; ?>"></td>
                                                    <td><input class="form-control input-sm text-right" autocomplete="off"  type="text" name="FLDold<?php echo $rsRow1['itm_id']; ?>" id="FLDold<?php echo $rsRow1['itm_id']; ?>" size="8" maxlength="10"  value="<?php echo $rsRow2['old']; ?>"></td>
                                                    <td><input class="form-control input-sm text-right" autocomplete="off"  type="text" name="Removals<?php echo $rsRow1['itm_id']; ?>" id="Removals<?php echo $rsRow1['itm_id']; ?>" size="8" maxlength="10"  value="<?php echo $rsRow2['removals']; ?>" <?=(($removal_readonly)?' readonly ':'')?>></td>
                                                    <td><input class="form-control input-sm text-right" autocomplete="off"  type="text" name="DropOuts<?php echo $rsRow1['itm_id']; ?>" id="DropOuts<?php echo $rsRow1['itm_id']; ?>" size="8" maxlength="10"  value="<?php echo $rsRow2['dropouts']; ?>"></td>
                                                    <td><input class="form-control input-sm text-right" autocomplete="off"  type="text" name="Demand<?php echo $rsRow1['itm_id']; ?>" id="Demand<?php echo $rsRow1['itm_id']; ?>" size="8" maxlength="10"  value="<?php echo $rsRow2['demand']; ?>"></td>
                                                </tr>
                                                <?php
                                            } else if ($rsRow1['itm_category'] == 2) {
                                                //pk_id
                                                $surgeyArr[$rsRow1['itm_id']]['pk_id'] = $rsRow2['pk_id'];
                                                //name
                                                $surgeyArr[$rsRow1['itm_id']]['name'] = $rsRow1['itm_name'];
                                                //category
                                                $surgeyArr[$rsRow1['itm_id']]['category'] = $rsRow1['itm_category'];
                                                //cases
                                                $surgeyArr[$rsRow1['itm_id']]['cases'] = $rsRow2['issue_balance'];
                                            }
                                        }
                                        $SlNo++;
                                        $fldIndex = $fldIndex + 13;
                                    }
                                    //echo '<pre>';print_r($surgeyArr);exit;
                                    //free result
                                    mysql_free_result($rsTemp1);
                                    ?>
                                </table>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                
                                    <div class="col-md-6">
                                        <h4 style="margin-top:20px;"><span class="green-clr-txt">Surgery Cases(Reffered)</span></h4>
                                        <input type="hidden" name="hf_type_id" id="hf_type_id"  value="<?php echo $hfTypeId; ?>">
                                        <table class="table table-bordered">
                                             <tr>
                                                 <th colspan="3">Surgery Cases Referred</th>
                                                 <th colspan="1">Cases of Implants</th>
                                             </tr>
                                            <tr>
                                                <th>Reffered By</th>
                                                <?php
                                                $counter = 0;
                                                //loop
                                                foreach ($surgeyArr as $itemid => $data) {
                                                    $counter++;
                                                    ?>
                                                    <th><?php echo $data['name']; ?></th>
                                                    <?php
                                                }
                                                ?>
                                                <th>Referred</th>
                                            </tr>
                                                <?php
                                                $ref_tot = 0 ;
                                                foreach($sub_hf_types as $type_id => $type_name){
                                                    ?>
                                                <input type="hidden" name="hf_types[<?=$type_id?>]" value="<?=$type_id?>" />
                                                <tr>
                                                <td><?php echo $type_name; ?></td>
                                                <input type="hidden" name="hf_type_id[]" value="<?php echo $type_id; ?>">
                                                <?php
                                                //loop
                                                foreach ($surgeyArr as $itemid => $data) {
                                                    //check isNewRpt 
                                                    if ($isNewRpt == 1) {
                                                        $hf_pk_id = 0;
                                                        $hf_data_pk = 0;
                                                    } else {
                                                        $hf_pk_id = $itemid;
                                                        $hf_data_pk = $data['pk_id'];
                                                    }
                                                    //mcQry
                                                    //gets
                                                    $mcQry = "SELECT
                                                                    tbl_hf_data_reffered_by.pk_id,
                                                                    tbl_hf_data_reffered_by.hf_data_id,
                                                                    tbl_hf_data_reffered_by.hf_type_id,
                                                                    tbl_hf_data_reffered_by.ref_surgeries,
                                                                    tbl_hf_data_reffered_by.static,
                                                                    tbl_hf_data_reffered_by.camp
                                                            FROM
                                                                    tbl_hf_data_reffered_by
                                                            WHERE
                                                                    tbl_hf_data_reffered_by.hf_type_id = $type_id
                                                            AND tbl_hf_data_reffered_by.hf_data_id = $hf_data_pk";
                                                    //result
                                                    //echo $mcQry;
                                                    $mcRow = @mysql_fetch_array(mysql_query($mcQry));
                                                    ?>
                                                    <td><input class="form-control input-sm text-right reffered<?php echo $itemid; ?>" autocomplete="off" type="text" name="reffered<?php echo $itemid; ?><?php echo $type_id; ?>" value="<?php echo $mcRow['ref_surgeries']; ?>"   size="8" maxlength="10" /></td>
                                                    <?php
                                                }
                                                ?>
                                                    <td><input class="form-control input-sm text-right reffered_implants sum_it" data-cat="ref_imp_cat" data-tot="ref_implants_total" autocomplete="off" type="number" name="t_reffered_implants[<?php echo $type_id; ?>]" value="<?=((!empty($mc_ngo_arr[$type_id]['referred_implants'])?$mc_ngo_arr[$type_id]['referred_implants']:0)); ?>"   size="8" maxlength="10" /></td>
                                                    <?php
                                                    
                                                    $ref_tot += (!empty($mc_ngo_arr[$type_id]['referred_implants'])?$mc_ngo_arr[$type_id]['referred_implants']:0) ;
                                                    ?>
                                                </tr>
                                                <?php
                                            }
                                            ?>
                                            <tr>
                                                <td>Gross Total /Net Total</td>
                                                <?php
                                                //loop
                                                foreach ($surgeyArr as $itemid => $data) {
                                                    ?>
                                                <input type="hidden" name="flitmrec_id[]" value="<?php echo $itemid; ?>">
                                                <input type="hidden" name="flitm_category[]" value="<?php echo $data['category']; ?>">
                                                <td><input class="form-control input-sm text-right" readonly type="text" name="FLDIsuueUP<?php echo $itemid; ?>" id="FLDIsuueUP<?php echo $itemid; ?>" value="<?php echo $data['cases']; ?>" /></td>
                                                <?php
                                            }
                                            ?><td><input class="form-control input-sm text-right" readonly type="text" name="ref_implants_total" id="ref_implants_total" value="<?=$ref_tot?>" /></td>
                                                
                                            </tr>
                                        </table>
                                    </div>
                                
                                    <div class="col-md-6">
                                        <h4 style="margin-top:20px;"><span class="green-clr-txt">Surgery Cases(Performed)</span></h4>
                                        <table class="table table-bordered">
                                            <tr>
                                                <td>&nbsp;</td>
                                                <?php
                                                $counter = 0;
                                                //loop
                                                foreach ($surgeyArr as $itemid => $data) {
                                                    $counter++;
                                                    ?>
                                                    <th><?php echo $data['name']; ?></th>
                                                    <?php
                                                }

                                                $arr = array('Static Center', 'Camp Cases');
                                                $counter = 1;
                                                //loop
                                                foreach ($arr as $val) {
                                                    ?>
                                                </tr>
                                                <td><?php echo $val; ?></td>
                                                <?php
                                                //loop
                                                //echo '<pre>';print_r($surgeyArr);exit;
                                                foreach ($surgeyArr as $itemid => $data) {
                                                    if ($isNewRpt == 1) {
                                                        $hf_data_pk = 0;
                                                    } else {
                                                        $hf_data_pk = $data['pk_id'];
                                                    }
                                                    //mcQry1
                                                    //gets
                                                    // male_static,
                                                    // male_camp
                                                    $mcQry1 = "SELECT
                                                                        tbl_hf_data_reffered_by.static AS male_static,
                                                                        tbl_hf_data_reffered_by.camp AS male_camp
                                                                FROM
                                                                        tbl_hf_data_reffered_by
                                                                WHERE
                                                                        tbl_hf_data_reffered_by.hf_data_id = $hf_data_pk ";
                                                    //result
                                                    $mcRow1 = @mysql_fetch_array(mysql_query($mcQry1));
                                                    //mcQry2
                                                    //gets
                                                    //female_static,
                                                    //female_camp
                                                    $mcQry2 = "SELECT
                                                                        tbl_hf_data_reffered_by.static AS female_static,
                                                                        tbl_hf_data_reffered_by.camp AS female_camp
                                                                FROM
                                                                        tbl_hf_data_reffered_by
                                                                WHERE
                                                                        tbl_hf_data_reffered_by.hf_data_id = $hf_data_pk ";
                                                    //result
                                                    $mcRow2 = @mysql_fetch_array(mysql_query($mcQry2));

                                                    if ($counter == 1 && $itemid == '31') {
                                                        $static_camp = $mcRow1['male_static'];
                                                        $total_male = $mcRow1['male_static'];
                                                    } else if ($counter == 1 && $itemid = '32') {
                                                        $static_camp = $mcRow2['female_static'];
                                                        $total_female = $mcRow2['female_static'];
                                                    } else if ($counter == 2 && $itemid == '31') {
                                                        $static_camp = $mcRow1['male_camp'];
                                                        $total_male += $mcRow1['male_camp'];
                                                    } else if ($counter == 2 && $itemid = '32') {
                                                        $static_camp = $mcRow2['female_camp'];
                                                        $total_female += $mcRow2['female_camp'];
                                                    }
                                                    ?>
                                                    <td><input type="text" class="form-control input-sm text-right totalStaticCampMale<?php echo $itemid; ?>" autocomplete="off" name="staticCamp<?php echo $itemid; ?>[]" value="<?php echo $static_camp; ?>" size="8" maxlength="10" /></td>
                                                    <?php
                                                }
                                                ?>
                                                </tr>
                                                <?php
                                                $counter++;
                                            }
                                            ?>
                                            <tr>
                                                <td>Gross Total /Net Total</td>

                                                <td><input class="form-control input-sm text-right" readonly type="text" id="totalStaticCampMale" value="<?php echo $total_male; ?>" /></td>
                                                <td><input class="form-control input-sm text-right" readonly type="text" id="totalStaticCampFemale" value="<?php echo $total_female; ?>" /></td>
                                            </tr>
                                        </table>
                                    </div>
                                <?php

                                if ($whProvId == 1 || $whProvId == 2) {
                                    $newText = 'New';
                                    $oldText = 'Old';
                                    $childText = 'Children';
                                } else {
                                    $newText = 'Children';
                                    $oldText = 'Adults';
                                    $childText = 'General Ailment';
                                }
                                //mcQry
                                $mcQry = "SELECT
                                    tbl_hf_mother_care.pre_natal_new,
                                    tbl_hf_mother_care.pre_natal_old,
                                    tbl_hf_mother_care.post_natal_new,
                                    tbl_hf_mother_care.post_natal_old,
                                    tbl_hf_mother_care.ailment_children,
                                    tbl_hf_mother_care.ailment_adults,
                                    tbl_hf_mother_care.general_ailment
                                FROM
                                    tbl_hf_mother_care
                                WHERE
                                    tbl_hf_mother_care.reporting_date = '$RptDate'
                                AND tbl_hf_mother_care.warehouse_id = $wh_id";
                                //result
                                $mcRow = mysql_fetch_array(mysql_query($mcQry));
                                
                                
                                ?>
                                
                                <?php
                                $hfPrograms = array(1, 2, 4, 11);
                                //check whProvId
                                if ($whProvId == 3 && !in_array($hfTypeId, $hfPrograms)) {
                                    ?>
                                    <div class="col-md-4">
                                        <h4 style="margin-top:20px;"><span class="green-clr-txt">Total Number of Centers for <?php echo $whName; ?></span></h4>
                                        <table class="table table-bordered">
                                            <?php
                                            $qry = "SELECT
                                                tbl_hf_non_program_count.total_facilities
                                            FROM
                                                tbl_hf_non_program_count
                                            WHERE
                                                tbl_hf_non_program_count.warehouse_id = $wh_id
                                            AND tbl_hf_non_program_count.reporting_date = '$RptDate'";
                                            //result
                                            $totalHf = mysql_fetch_array(mysql_query($qry));
                                            $totalHf = $totalHf['total_facilities'];
                                            ?>
                                            <tr>
                                                <td><input style="width:150px" class="form-control input-sm text-right" type="text" name="total_hf" id="total_hf" value="<?php echo (!empty($totalHf)) ? $totalHf : 0; ?>" autocomplete="off" /></td>
                                            </tr>
                                        </table>
                                    </div>
                                <?php }
                                ?>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="col-md-8">
                                    <h4 style="margin-top:20px;"><span class="green-clr-txt">Mother & Child Care (No. of Cases)</span></h4>
                                    <table class="table table-bordered">
                                        <tr>
                                            <th>&nbsp;</th>
                                            <th class="text-center" colspan="2">Ante-Natal</th>
                                            <th class="text-center" colspan="2">Post Natal</th>
                                            <th class="text-center" colspan="2">Children</th>
                                            <th class="text-center" colspan="1">General Ailments</th>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>New</td>
                                            <td>Old</td>
                                            <td>New</td>
                                            <td>Old</td>
                                            <td>New</td>
                                            <td>Old</td>
                                            <td>New</td>
                                        </tr>
                                        <?php
                                        
                                        
                                        foreach($sub_hf_types as $type_id => $type_name){
                                            if($type_id == 56) continue;
                                            echo '<tr>
                                                    <td>'.$type_name.'</td>
                                                    <td><input class="form-control input-sm text-right sum_it " data-cat="pre_natal_n"  data-tot="pre_natal_new"     type="text" name="t_pre_natal_new['.$type_id.']"    id="t_pre_natal_new['.$type_id.']" autocomplete="off"  value="'.$mc_ngo_arr[$type_id]['pre_natal_new'].'" /></td>
                                                    <td><input class="form-control input-sm text-right sum_it " data-cat="pre_natal_o"  data-tot="pre_natal_old"     type="text" name="t_pre_natal_old['.$type_id.']"    id="t_pre_natal_old['.$type_id.']" autocomplete="off"  value="'.$mc_ngo_arr[$type_id]['pre_natal_old'].'" /></td>
                                                    <td><input class="form-control input-sm text-right sum_it " data-cat="post_natal_n" data-tot="post_natal_new"    type="text" name="t_post_natal_new['.$type_id.']"   id="t_post_natal_new['.$type_id.']" autocomplete="off" value="'.$mc_ngo_arr[$type_id]['post_natal_new'].'" /></td>
                                                    <td><input class="form-control input-sm text-right sum_it " data-cat="post_natal_o" data-tot="post_natal_old"    type="text" name="t_post_natal_old['.$type_id.']"   id="t_post_natal_old['.$type_id.']" autocomplete="off" value="'.$mc_ngo_arr[$type_id]['post_natal_old'].'" /></td>
                                                    <td><input class="form-control input-sm text-right sum_it " data-cat="children_n"   data-tot="ailment_child"      type="text" name="t_children_new['.$type_id.']"     id="t_children_new['.$type_id.']" autocomplete="off"  value="'.$mc_ngo_arr[$type_id]['ailment_children'].'" /></td>
                                                    <td><input class="form-control input-sm text-right sum_it " data-cat="children_o"   data-tot="ailment_adult"      type="text" name="t_children_old['.$type_id.']"     id="t_children_old['.$type_id.']" autocomplete="off"  value="'.$mc_ngo_arr[$type_id]['ailment_adults'].'" /></td>
                                                    <td><input class="form-control input-sm text-right sum_it " data-cat="general"      data-tot="general_ailment"         type="text" name="t_general_ailment['.$type_id.']"  id="t_general_ailment['.$type_id.']" autocomplete="off" value="'.$mc_ngo_arr[$type_id]['general_ailment'].'" /></td>
                                                </tr>';
                                        }
                                        ?>
                                        
                                        <tr>
                                            <td>Total</td>
                                            
                                            <td><input class="form-control input-sm text-right" readonly type="text" name="pre_natal_new" id="pre_natal_new" autocomplete="off" value="<?php echo $mcRow['pre_natal_new']; ?>" /></td>
                                            <td><input class="form-control input-sm text-right" readonly type="text" name="pre_natal_old" id="pre_natal_old" autocomplete="off" value="<?php echo $mcRow['pre_natal_old']; ?>" /></td>
                                            <td><input class="form-control input-sm text-right" readonly type="text" name="post_natal_new" id="post_natal_new" autocomplete="off" value="<?php echo $mcRow['post_natal_new']; ?>" /></td>
                                            <td><input class="form-control input-sm text-right" readonly type="text" name="post_natal_old" id="post_natal_old" autocomplete="off" value="<?php echo $mcRow['post_natal_old']; ?>" /></td>
                                        
                                            <td><input class="form-control input-sm text-right" readonly type="text" name="ailment_child" id="ailment_child" autocomplete="off" value="<?php echo $mcRow['ailment_children']; ?>" /></td>
                                            <td><input class="form-control input-sm text-right" readonly type="text" name="ailment_adult" id="ailment_adult" autocomplete="off" value="<?php echo $mcRow['ailment_adults']; ?>" /></td>
                                            <td><input class="form-control input-sm text-right" readonly type="text" name="general_ailment" id="general_ailment" autocomplete="off" value="<?php echo $mcRow['general_ailment']; ?>" /></td>
                                        </tr>
                                        
                                    </table>
                                </div>
                            </div>
                                
                        </div>
                        
                        <div class="row">
                            <div class="col-md-12">
                                
                                
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="col-md-10 text-right" style="padding-top: 10px">
                                    <div id="eMsg" style="color:#060;"></div>
                                </div>
                                <div class="col-md-2 text-right">
                                    <button class="btn btn-primary" id="saveBtn" name="saveBtn" type="button" onClick="return formvalidate1()"> Save </button>
                                    <button class="btn btn-info" type="submit" onClick="document.frmF7.reset()"> Reset </button>
                                </div>
                            </div>
                        </div>

                        <input type="hidden" name="ActionType" value="Add">
                        <input type="hidden" name="RptDate" value="<?php echo $RptDate; ?>">
                        <input type="hidden" name="wh_id" value="<?php echo $wh_id; ?>">
                        <input type="hidden" name="yy" value="<?php echo $yy; ?>">
                        <input type="hidden" name="mm" value="<?php echo $mm; ?>">
                        <input type="hidden" name="isNewRpt" id="isNewRpt" value="<?php echo $isNewRpt; ?>" />
                        <input type="hidden" name="add_date" id="add_date" value="<?php echo $add_date; ?>" />
                    </form>
                    <?php
                }
                ?>
            </div>
        </div>
    </div>
    <script src="<?php echo PUBLIC_URL; ?>assets/global/plugins/jquery-1.11.0.min.js" type="text/javascript"></script> 
    <script language="javascript" type="text/javascript">
                                        var form_clean;
                                        $(document).ready(function () {
                                            
                                            $('.sum_it').on('blur keyup',function(e){
                                                var total_of_col = 0;
                                                var cat = $(this).data('cat');
                                                var tot = $(this).data('tot');
                                                
                                                $('.sum_it[data-cat='+cat+']').each(function () {
                                                    total_of_col += parseInt($(this).val());
                                                });
                                                if(isNaN(total_of_col)) total_of_col= 0;
                                                $('#'+tot).val(total_of_col);
                                            });

                                            form_clean = $("#frmF7").serialize();

                                            // Auto Save function call
                                            //setInterval('autoSave()', 20000);

                                            $('input[type="text"]').each(function () {
                                                if ($(this).val() == '')
                                                {
                                                    $(this).val(0);
                                                }
                                            });

                                            $('input[type="text"]').change(function (e) {
                                                if ($(this).val() == '')
                                                {
                                                    $(this).val('0');
                                                }
                                            });
                                            $('input[type="text"]').focus(function (e) {
                                                if ($(this).val() == '0')
                                                {
                                                    $(this).val('');
                                                }
                                            });
                                            $('input[type="text"]').focusout(function (e) {
                                                if ($(this).val() == '')
                                                {
                                                    $(this).val('0');
                                                }
                                            });
                                            $('input[type="text"]').keydown(function (e) {
                                                if (e.shiftKey || e.ctrlKey || e.altKey) { // if shift, ctrl or alt keys held down
                                                    e.preventDefault();         // Prevent character input
                                                } else {
                                                    var n = e.keyCode;
                                                    if (!((n == 8)              // backspace
                                                            || (n == 9)                // Tab
                                                            || (n == 46)                // delete
                                                            || (n >= 35 && n <= 40)     // arrow keys/home/end
                                                            || (n >= 48 && n <= 57)     // numbers on keyboard
                                                            || (n >= 96 && n <= 105))   // number on keypad
                                                            ) {
                                                        e.preventDefault();     // Prevent character input
                                                    }
                                                }
                                            });
                                        });

                                        function autoSave()
                                        {
//                                            var form_dirty = $("#frmF7").serialize();
//                                            if (form_clean != form_dirty)
//                                            {
//                                                $('#saveBtn').attr('disabled', 'disabled');
//                                                $("#eMsg").html('Saving...');
//                                                $.ajax({
//                                                    type: "POST",
//                                                    url: "data_entry_action_draft.php",
//                                                    data: $('#frmF7').serialize(),
//                                                    cache: false,
//                                                    success: function () {
//                                                        $("#eMsg").fadeTo(500, 1, function () {
//                                                            $(this).show();
//                                                            $(this).html('Your data is saved is draft.').fadeTo(3000, 0, function () {
//                                                                $(this).hide();
//                                                                $('#saveBtn').removeAttr('disabled');
//                                                            });
//                                                        });
//                                                    }
//                                                });
//                                                form_clean = form_dirty;
//                                            }
                                        }

                                        //Total Calculation
                                        $(".reffered31").on("keyup keydown", function () {
                                            calculateSum('reffered31');
                                        });

                                        $(".reffered32").on("keyup keydown", function () {
                                            calculateSum('reffered32');
                                        });

                                        $(".totalStaticCampMale31").on("keyup keydown", function () {
                                            calculateSum('totalStaticCampMale31');
                                        });
                                        $(".totalStaticCampMale32").on("keyup keydown", function () {
                                            calculateSum('totalStaticCampMale32');
                                        });

                                        function calculateSum(field) {

                                            var sum = 0;
                                            if (field == 'reffered31') {
                                                var total = 'FLDIsuueUP31';
                                            } else if (field == 'reffered32') {
                                                var total = 'FLDIsuueUP32';
                                            } else if (field == 'totalStaticCampMale31') {
                                                var total = 'totalStaticCampMale';
                                            } else if (field == 'totalStaticCampMale32') {
                                                var total = 'totalStaticCampFemale';
                                            }

                                            //iterate through each textboxes and add the values
                                            $("." + field).each(function () {
                                                var reffered_male = $(this).val();

                                                if (!isNaN(reffered_male) && reffered_male.length != 0) {
                                                    sum += parseFloat(reffered_male);
                                                } else if (reffered_male.length != 0) {
                                                }
                                            });
                                            $("input#" + total).val(sum);
                                        }


                                        function formvalidate1()
                                        {
                                            $('#saveBtn').attr('disabled', false);
                                            $('#errMsg').hide();
                                            var itmLength = $("input[name^='flitmrec_id']").length;
                                            var itmArr = $("input[name^='flitmrec_id']");
                                            var itmCategory = $("input[name^='flitm_category']");
                                            var FLDOBLAArr = $("input[name^='FLDOBLA']");
                                            var FLDRecvArr = $("input[name^='FLDRecv']");
                                            var FLDIsuueUPArr = $("input[name^='FLDIsuueUP']");
                                            var FLDCBLAArr = $("input[name^='FLDCBLA']");
                                            var FLDReturnToArr = $("input[name^='FLDReturnTo']");
                                            var FLDUnusableArr = $("input[name^='FLDUnusable']");
                                            var refferedTotalMale = $("#FLDIsuueUP31").val();
                                            var refferedTotalFemale = $("#FLDIsuueUP32").val();
                                            var StaticCampTotalMale = $("#totalStaticCampMale").val();
                                            var StaticCampTotalFemale = $("#totalStaticCampFemale").val();
                                            /*
                                             var fieldval = document.frmaddF7.itmrec_id[i].value;
                                             fieldconcat = fieldval.split('-');
                                             var whobla = 'WHOBLA'+fieldconcat[1];
                                             var whrecv = 'WHRecv'+fieldconcat[1];
                                             var whissue = 'IsuueUP'+fieldconcat[1];
                                             var fldobla = 'FLDOBLA'+fieldconcat[1];
                                             var fldrecv = 'FLDRecv'+fieldconcat[1];
                                             var fldissue = 'FLDIsuueUP'+fieldconcat[1];
                                             */
                                            for (i = 0; i < itmLength; i++)
                                            {
                                                if (itmCategory.eq(i).val() == 1)
                                                {
                                                    itm = itmArr.eq(i).val();
                                                    //var itmInfo = itm.split('-');
                                                    //itmId = itmInfo[1];
                                                    var FLDOBLA = parseInt(FLDOBLAArr.eq(i).val());
                                                    var FLDRecv = parseInt(FLDRecvArr.eq(i).val());
                                                    var FLDIsuueUP = parseInt(FLDIsuueUPArr.eq(i).val());
                                                    var FLDCBLA = parseInt(FLDCBLAArr.eq(i).val());
                                                    var FLDReturnTo = parseInt(FLDReturnToArr.eq(i).val());
                                                    var FLDUnusable = parseInt(FLDUnusableArr.eq(i).val());


                                                    if ((FLDIsuueUP + FLDUnusable) > (FLDOBLA + FLDRecv + FLDReturnTo))
                                                    {
                                                        alert('Invalid Closing Balance.\nClosing Balance = Opening Balance + Received + Adjustment(+) - Issued -  Adjustment(-)');
                                                        FLDOBLAArr.eq(i).css('background', '#F45B5C');
                                                        FLDRecvArr.eq(i).css('background', '#F45B5C');
                                                        FLDIsuueUPArr.eq(i).css('background', '#F45B5C');
                                                        FLDCBLAArr.eq(i).css('background', '#F45B5C');
                                                        FLDReturnToArr.eq(i).css('background', '#F45B5C');
                                                        FLDUnusableArr.eq(i).css('background', '#F45B5C');
                                                        return false;
                                                    }
                                                }

                                            }
                                            var hf_type_id = $("#hf_type_id").val();
                                            if (hf_type_id == 4)
                                            {
                                                if (refferedTotalMale < StaticCampTotalMale || refferedTotalFemale < StaticCampTotalFemale)
                                                {
                                                    alert("Performed Surgery Cases Gross Totals can not be greater than Reffered Surgery Cases Gross Totals");
                                                    $('#totalStaticCampMale').css('background', '#F45B5C');
                                                    $('#totalStaticCampFemale').css('background', '#F45B5C');
                                                    $('#FLDIsuueUP031').css('background', '#F45B5C');
                                                    $('#FLDIsuueUP032').css('background', '#F45B5C');
                                                    return false;
                                                } else
                                                {
                                                    $('#totalStaticCampMale').css('background', 'none');
                                                    $('#totalStaticCampFemale').css('background', 'none');
                                                    $('#FLDIsuueUP031').css('background', 'none');
                                                    $('#FLDIsuueUP032').css('background', 'none');
                                                }
                                            }

                                            $('#saveBtn').attr('disabled', true);
                                            $("#eMsg").html('Saving...');
                                            $('body').addClass("loading");
                                            $.ajax({
                                                url: 'data_entry_hf_ngo_modified_format_action.php',
                                                data: $('#frmF7').serialize(),
                                                type: 'POST',
                                                dataType: 'json',
                                                success: function (data) {
                                                    $('body').removeClass("loading");
                                                    if (data.resp == 'err')
                                                    {
                                                        $('#errMsg').html(data.msg).show();
                                                    } else if (data.resp == 'ok')
                                                    {
                                                        function RefreshParent() {
                                                            if (window.opener != null && !window.opener.closed) {
                                                                window.opener.location.reload();
                                                            }
                                                        }
                                                        $('#saveBtn').attr('disabled', false);
                                                        $('#errMsg').hide();
                                                        $('#eMsg').hide();
                                                        window.close();
                                                        RefreshParent();
                                                    }
                                                }
                                            })
                                        }
                                        function roundNumber(num, dec)
                                        {
                                            var result = Math.round(num * Math.pow(10, dec)) / Math.pow(10, dec);
                                            return result;
                                        }
                                        function cal_balance(itemId)
                                        {
                                            var y = document.getElementsByClassName('FLDSrcs' + itemId);
                                            var i;
                                            var total = 0;
                                            var totalvar = false;
                                            for (i = 0; i < y.length; i++) {
                                                total += parseInt(y[i].value) || 0;
                                                totalvar = true;
                                            }
                                            if (totalvar) {
                                                document.getElementById('FLDRecv' + itemId).value = (total);
                                            }
                                            
                                            if (document.getElementById('WHOBLA' + itemId))
                                                var wholba = (document.getElementById('WHOBLA' + itemId).value == "") ? 0 : parseInt(document.getElementById('WHOBLA' + itemId).value);
                                            else
                                                var wholba = 0;
                                            if (document.getElementById('WHRecv' + itemId))
                                                var WHRecv = (document.getElementById('WHRecv' + itemId).value == "") ? 0 : parseInt(document.getElementById('WHRecv' + itemId).value);
                                            else
                                                var WHRecv = 0;
                                            if (document.getElementById('IsuueUP' + itemId))
                                                var IsuueUP = (document.getElementById('IsuueUP' + itemId).value == "") ? 0 : parseInt(document.getElementById('IsuueUP' + itemId).value);
                                            else
                                                var IsuueUP = 0;
                                            //WH adj+
                                            if (document.getElementById('ReturnTo' + itemId))
                                                var ReturnTo = (document.getElementById('ReturnTo' + itemId).value == "") ? 0 : parseInt(document.getElementById('ReturnTo' + itemId).value);
                                            else
                                                var ReturnTo = 0;
                                            //WH adj-
                                            if (document.getElementById('Unusable' + itemId))
                                                var Unusable = (document.getElementById('Unusable' + itemId).value == "") ? 0 : parseInt(document.getElementById('Unusable' + itemId).value);
                                            else
                                                var Unusable = 0;
                                            if (document.getElementById('FLDOBLA' + itemId))
                                                var fldolba = (document.getElementById('FLDOBLA' + itemId).value == "") ? 0 : parseInt(document.getElementById('FLDOBLA' + itemId).value);
                                            else
                                                var fldolba = 0;
                                            if (document.getElementById('FLDRecv' + itemId))
                                                var FLDRecv = (document.getElementById('FLDRecv' + itemId).value == "") ? 0 : parseInt(document.getElementById('FLDRecv' + itemId).value);
                                            else
                                                var FLDRecv = 0;
                                            if (document.getElementById('FLDIsuueUP' + itemId))
                                                var FLDIsuueUP = (document.getElementById('FLDIsuueUP' + itemId).value == "") ? 0 : parseInt(document.getElementById('FLDIsuueUP' + itemId).value);
                                            else
                                                var FLDIsuueUP = 0;
                                            /*if(document.getElementById('FLDmyavg'+itemId))	
                                             var FLDmyavg = (document.getElementById('FLDmyavg'+itemId).value=="")? 0 : parseInt(document.getElementById('FLDmyavg'+itemId).value);
                                             else
                                             var FLDmyavg = 0;*/
                                            //Fld adj+
                                            if (document.getElementById('FLDReturnTo' + itemId))
                                                var FLDReturnTo = (document.getElementById('FLDReturnTo' + itemId).value == "") ? 0 : parseInt(document.getElementById('FLDReturnTo' + itemId).value);
                                            else
                                                var FLDReturnTo = 0;
                                            //Fld adj-
                                            if (document.getElementById('FLDUnusable' + itemId))
                                                var FLDUnusable = (document.getElementById('FLDUnusable' + itemId).value == "") ? 0 : parseInt(document.getElementById('FLDUnusable' + itemId).value);
                                            else
                                                var FLDUnusable = 0;
                                            /*if(document.getElementById('FLDmyavg'+itemId))
                                             {
                                             var myavg = document.getElementById('FLDmyavg'+itemId).value;
                                             }
                                             else {
                                             var myavg = document.getElementById('myavg'+itemId).value;
                                             }
                                             var mycalavg = myavg.split('-');
                                             if(document.getElementById('FLDIsuueUP'+itemId))
                                             var divisible = parseInt(mycalavg[1]+FLDIsuueUP);
                                             else
                                             var divisible = parseInt(mycalavg[1]+IsuueUP);
                                             var divider = parseInt(mycalavg[0]+1);
                                             if(parseInt(divider)>0)
                                             {
                                             var myactualavg = parseInt(divisible)/parseInt(divider);
                                             }
                                             else {
                                             var myactualavg = parseInt(divisible)/1;
                                             }*/
                                            if (document.getElementById('WHCBLA' + itemId))
                                                document.getElementById('WHCBLA' + itemId).value = (wholba + WHRecv + ReturnTo) - (IsuueUP + Unusable);
                                            if (document.getElementById('MOS' + itemId) && document.getElementById('WHCBLA' + itemId))
                                            {
                                                if (parseInt(myactualavg) > 0)
                                                {
                                                    document.getElementById('MOS' + itemId).value = roundNumber(parseInt(document.getElementById('WHCBLA' + itemId).value) / parseInt(myactualavg), 1);
                                                } else {
                                                    document.getElementById('MOS' + itemId).value = roundNumber(parseInt(document.getElementById('WHCBLA' + itemId).value) / 1, 1);
                                                }
                                            }
                                            if (document.getElementById('FLDCBLA' + itemId))
                                                document.getElementById('FLDCBLA' + itemId).value = (fldolba + FLDRecv + FLDReturnTo) - (FLDIsuueUP + FLDUnusable);
                                            if (document.getElementById('FLDMOS' + itemId) && document.getElementById('FLDCBLA' + itemId))
                                            {
                                                if (parseInt(myactualavg) > 0)
                                                {
                                                    document.getElementById('FLDMOS' + itemId).value = roundNumber(parseInt(document.getElementById('FLDCBLA' + itemId).value) / parseInt(myactualavg), 1);
                                                } else {
                                                    document.getElementById('FLDMOS' + itemId).value = roundNumber(parseInt(document.getElementById('FLDCBLA' + itemId).value) / 1, 1);
                                                }
                                            }
                                        }
                                        function get_browser_info() {
                                            var ua = navigator.userAgent, tem, M = ua.match(/(opera|chrome|safari|firefox|msie|trident(?=\/))\/?\s*(\d+)/i) || [];
                                            if (/trident/i.test(M[1])) {
                                                tem = /\brv[ :]+(\d+)/g.exec(ua) || [];
                                                return {name: 'IE', version: (tem[1] || '')};
                                            }
                                            if (M[1] === 'Chrome') {
                                                tem = ua.match(/\bOPR\/(\d+)/)
                                                if (tem != null) {
                                                    return {name: 'Opera', version: tem[1]};
                                                }
                                            }
                                            M = M[2] ? [M[1], M[2]] : [navigator.appName, navigator.appVersion, '-?'];
                                            if ((tem = ua.match(/version\/(\d+)/i)) != null) {
                                                M.splice(1, 1, tem[1]);
                                            }
                                            return {
                                                name: M[0],
                                                version: M[1]
                                            };
                                        }
                                        var browser = get_browser_info();
                                        //alert(browser.name + ' - ' + browser.version);
                                        if (browser.name == 'Firefox' && browser.version < 30)
                                        {
                                            alert('You are using an outdated version of the Mozilla Firefox. Please update your browser for data entry.');
                                            window.close();
                                        } else if (browser.name == 'Chrome' && browser.version < 35)
                                        {
                                            alert('You are using an outdated version of the Chrome. Please update your browser for data entry.');
                                            window.close();
                                        } else if (browser.name == 'Opera' && browser.version < 28)
                                        {
                                            alert('You are using an outdated version of the Opera. Please update your browser for data entry.');
                                            window.close();
                                        } else if (browser.name == 'MSIE')
                                        {
                                            alert('Please use Mozilla Firefox, Chrome or Opera for data entry.');
                                            window.close();
                                        }
    </script>
</body>
</html>