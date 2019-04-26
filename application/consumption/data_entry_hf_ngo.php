<?php
include("../includes/classes/AllClasses.php");
//@session_start();
//echo $_SESSION['user_province1'];exit;
if($_SESSION['user_province1']==1 )
{
    include "data_entry_hf_ngo_modified_format.php";
}
else
{
    include "data_entry_hf_ngo_standard_format.php";
}

?>