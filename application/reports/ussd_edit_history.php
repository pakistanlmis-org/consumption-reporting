<?php
include("../includes/classes/Configuration.inc.php");
include(APP_PATH . "includes/classes/db.php");
include(PUBLIC_PATH . "html/header.php");
include("../includes/classes/ussd_functions.php");
 
?>

<div class="page-content" style="">
<div class="container" >
<div class="widget widget-tabs" style="">    
    <div class="widget-body" >
        
        <div class="text-center">USSD Data Edit History</div>
        <div  style="">
            <table class="table table-striped table-hover table-condensed">
                    <thead style="font-size: 10px">
                        <tr> 
                            <td>#</td>
                            <td>User</td>
                            <td>Time</td>
                            <td>Product</td>
                            <td>Received</td>
                            <td>Issued</td>
                            <td>Adjustment (+)</td>
                            <td>Adjustment (-)</td>
                        </tr>
                </thead>
                <tbody  style="font-size: 10px">
                    <?php
                                    $qry_sel= "SELECT
                                                    ussd_sessions_history.pk_id,
                                                    ussd_sessions_history.insert_date,
                                                    ussd_sessions_history.ussd_master_id,
                                                    ussd_sessions_history.item_id,
                                                    ussd_sessions_history.column_name,
                                                    ussd_sessions_history.value_entered,
                                                    ussd_sessions_history.user_id,
                                                    sysuser_tab.usrlogin_id,
                                                    sysuser_tab.sysusr_name,
                                                    itminfo_tab.itm_id,
                                                    itminfo_tab.itm_name
                                                    FROM
                                                    ussd_sessions_history
                                                    INNER JOIN sysuser_tab ON ussd_sessions_history.user_id = sysuser_tab.UserID
                                                    INNER JOIN itminfo_tab ON ussd_sessions_history.item_id = itminfo_tab.itm_id
                                                WHERE
                                                    ussd_sessions_history.ussd_master_id = '".$_REQUEST['master_id']."' ";
                                    if(!empty($_REQUEST['item_id']))
                                    $qry_sel .= " AND ussd_sessions_history.item_id  = '".$_REQUEST['item_id']."'  ";
                                    $qry_sel .= " ORDER BY ussd_sessions_history.insert_date desc  ";
//                                    echo $fqry_sel;exit;
                                    $rsp  = mysql_query($qry_sel) or die();
                                    $c=1;
                                    $hist_data = array();
                                    while ($row= mysql_fetch_array($rsp)) {
                                        $hist_data[$row['sysusr_name']][$row['insert_date']][$row['itm_name']][$row['column_name']] = $row['value_entered'];
                                        
                                    }
                                    foreach($hist_data as $user_name => $usr_data){
                                        foreach($usr_data as $time_s => $time_data){
                                            foreach($time_data as $itm_name => $itm_data){
    //                                            foreach($itm_data as $col_name => $val){
                                                        echo '<tr>';
                                                            echo '<td>'.$c++.'</td>';
                                                            echo '<td>'.$user_name.'</td>';
                                                            echo '<td>'.$time_s.'</td>';
                                                            echo '<td>'.$itm_name.'</td>';
                                                            
                                                            if(isset($itm_data['stock_received'])) echo '<td>'.$itm_data['stock_received'].'</td>';
                                                            else echo '<td class="danger">'.$itm_data['stock_received'].'</td>';
                                                            
                                                            if(isset($itm_data['stock_consumed'])) echo '<td>'.$itm_data['stock_consumed'].'</td>';
                                                            else echo '<td class="danger">'.$itm_data['stock_consumed'].'</td>';
                                                            if(isset($itm_data['stock_adjustment_p'])) echo '<td>'.$itm_data['stock_adjustment_p'].'</td>';
                                                            else echo '<td class="danger">'.$itm_data['stock_adjustment_p'].'</td>';
                                                            if(isset($itm_data['stock_adjustment_n'])) echo '<td>'.$itm_data['stock_adjustment_n'].'</td>';
                                                            else echo '<td class="danger">'.$itm_data['stock_adjustment_n'].'</td>';
                                                        echo '</tr>';
    //                                            }
                                            }
                                        }
                                    }

                                    
                                    ?> 
                </tbody>
            </table>
        </div>
    </div>
</div>
</div>
</div>