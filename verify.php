<?php 

if(isset($_GET["status"]) && isset($_GET["transaction_id"]) && isset($_GET['tex_ref'])){
    $trans_id = htmlspecialchars($_GET["transaction_id"]);
    $trans_status = htmlspecialchars($_GET["status"]);
    $trans_ref = htmlspecialchars($_GET["tex_ref"]);

    //verify Endpoint
    $url = "https://api.flutterwave.com/v3/transactions/" . "$trans_id". "/verify";


    //Create cURL session

    $curl = curl_init();

}