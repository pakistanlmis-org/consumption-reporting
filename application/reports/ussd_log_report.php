<?php
//include AllClasses
include("../includes/classes/AllClasses.php");
//include FunctionLib
include(APP_PATH . "includes/report/FunctionLib.php");
//include header
include(PUBLIC_PATH . "html/header.php");
include("../includes/classes/ussd_functions.php");
?>
<!-- END HEAD -->

<body class="page-header-fixed page-quick-sidebar-over-content">
    <!-- BEGIN HEADER -->
    <div class="page-container">
        <?php
//include top
        include PUBLIC_PATH . "html/top.php";
//include top_im
        include PUBLIC_PATH . "html/top_im.php";
        ?>
        <div class="page-content-wrapper">
            <div class="page-content">
                <h3 class="page-title row-br-b-wp">USSD Log Report</h3>
                <div class="row">
                    <div class="col-md-12">
                        <form name="searchfrm" id="searchfrm" action="<?php $actionpage ?>" method="post">
                            <div class="widget" data-toggle="collapse-widget">
                                <div class="widget-head">
                                    <h3 class="heading">Filter by</h3>
                                </div>
                                <div class="widget-body">
                                    <div class="row">                                    
                                        <div class="col-md-2">
                                            <div class="form-group">
                                                <label class="control-label">Enter phone number</label>
                                                <div class="form-group">
                                                    <input type="text" name="phone_num" id="phone_number" required="" value="<?php if(isset($_POST['phone_num']))echo $_POST['phone_num']?>">
                                                </div>
                                            </div>
                                        </div> 
                                        <div class="col-md-3">
                                            <label class="control-label">&nbsp;</label>
                                            <input type="submit" name="submit" id="submit"  onclick="return phonenumber(document.searchfrm.phone_num)" value="GO" class="btn btn-primary input-sm" style="display:block" />
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <?php
                        if (isset($_POST['submit'])) {
                            
                            $phone_number =phoneFormatting($_REQUEST['phone_num']);
//                            $phone_number = htmlspecialchars($_REQUEST['phone_num']);
                            //echo $phone_number;
//                            $phone_number = substr_replace($phone_number, 92, 0, 1);
                            $qry = "SELECT * from ussd_log
                            where ussd_log.phone_number='" . $phone_number . "'
                            ORDER BY
                                ussd_log.pk_id DESC    
                            ";
                            //print_r($qry);
                            $res = mysql_query($qry) or die();

                            if (mysql_num_rows($res) > 0) {
                                $count = 1;
                                ?>
                                <table class="table table-bordered">
                                    <thead>
                                    <th>S .No.</th>
                                    <th>Insertion Date</th>
                                    <th>Data Inserted</th>
                                    <th>Phone Number</th> 
                                    </thead>
                                    <tbody>
                                        <?php
                                        while ($row = mysql_fetch_array($res)) {
                                            ?>
                                            <tr>
                                                <td><?php echo $count; ?></td>
                                                <td><?php echo $row['insertion_date']; ?></td>
                                                <td><?php echo $row['data_inserted']; ?></td>
                                                <td><?php echo $row['phone_number']; ?></td>

                                            </tr>
                                            <?php
                                            $count++;
                                        }
                                    } else {
                                        echo 'No result found';
                                    }
                                    ?>
                                </tbody>
                            </table>
                            <?php
                        }
                        ?>

                    </div>
                </div>

            </div>   


        </div>
    </div>
</div>

<?php include PUBLIC_PATH . "/html/footer.php"; ?>
<?php
include PUBLIC_PATH . "/html/reports_includes.php";
//    include ('combos.php');
?>
<script>
    function phonenumber(inputtxt)
    {

        if ((inputtxt.value.match(/\d/g)).length === 11 || (inputtxt.value.match(/\d/g)).length === 12)
        {
            return true;
        } else
        {
            alert("Enter cell number in format 0333xxxxxxx OR 92333xxxxxxx");
            return false;
        }
    }

</script>
</body>
<!-- END BODY -->
</html>