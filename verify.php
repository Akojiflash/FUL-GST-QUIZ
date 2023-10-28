<?php 
include_once("./php/config.php");
session_start();
$errorlocation = "location: http://localhost/GstQuizSite/payment";



if(isset($_GET["status"]) && isset($_GET["transaction_id"]) && isset($_GET['tx_ref'])){
    if($_GET["status"] == "successful"){
    $trans_id = htmlspecialchars($_GET["transaction_id"]);
    $trans_status = htmlspecialchars($_GET["status"]);
    $trans_ref = htmlspecialchars($_GET["tx_ref"]);

    //verify Endpoint
    $url = "https://api.flutterwave.com/v3/transactions/" . $trans_id. "/verify";


    //Create cURL session

    $curl = curl_init($url);

    //Turn off SSL checker
    curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, 0); 
    
    //Decide the request that you want 
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, true); 

    curl_setopt($curl, CURLOPT_CUSTOMREQUEST, "GET"); 

    //Set the API headers
    curl_setopt($curl, CURLOPT_HTTPHEADER, [
        "Authorization: Bearer FLWSECK-d10d244f8866d0f2f9a7ae7e08b5efe1-18b7394dccevt-X",
        "Content-Type: Application/json"
    ]);


    //Run cURL 
    $run = curl_exec($curl);
    //Check for errors 
    $error = curl_error($curl);

    if($error){
        die("Curl returned some errors: " . $error);

    }


    //Covert to json object
    $result = json_decode($run);

    $status = $result->data->status;
    $message = $result -> message;
    $id = $result -> data -> id;

    $reference = $result -> data->tx_ref;
    $amount = $result -> data->amount;
    $fullName = $result -> data->customer->name;

    if($status != "successful" || ($trans_id != $id) ){
        header($errorlocation . "?error=error");
        exit;

    }else{
        for( $i = 0; $i < count($_SESSION['selectedCourses']); $i++ ){
       $query = "INSERT INTO payment_table ( unique_id, course_id, paid, transaction_id,  matric_no, name, reference) VALUES
       ('{$_SESSION['unique_id']}', '{$_SESSION['selectedCourses'][$i]}', 1, '{$trans_id}', '{$_SESSION['matric_no']}', '{$_SESSION['name']}', '{$reference}' )";
        $result = mysqli_query($conn, $query);
        }
        if($result){
            header($errorlocation . "?status=success");
        }


    }

     



    }else if($_GET["status"] == "cancelled"){
        header($errorlocation);
    }
    curl_close($curl);

}else if(!isset($_GET["transaction_id"])) {
    header($errorlocation);
}