<?php 
include_once("./php/config.php");
session_start();
$errorlocation = "location: http://localhost/GstQuizSite/payment";



if (isset($_GET["reference"]) && isset($_GET["trxref"])) {
    echo "success";
        $trans_ref = htmlspecialchars($_GET["trxref"]);

//         // Verify the payment with Paystack
        $paystack_secret_key = "sk_live_37a3731efdb70c1b27e9edd76cceba68d1544519"; // Replace with your Paystack secret key
        $ref = $_GET['reference'];

//         // Create cURL session
        $url = "https://api.paystack.co/transaction/verify/" . $trans_ref;
    

    //Create cURL session

    $curl = curl_init($url);

//     //Turn off SSL checker
    curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, 0); 
    
//     //Decide the request that you want 
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, true); 

    curl_setopt($curl, CURLOPT_CUSTOMREQUEST, "GET"); 

//     //Set the API headers
    curl_setopt($curl, CURLOPT_HTTPHEADER, [
        "Authorization: Bearer " . $paystack_secret_key,
        "Content-Type: Application/json"
    ]);


//     //Run cURL 
    $run = curl_exec($curl);
    //Check for errors 
    $error = curl_error($curl);

    if($error){
        die("Curl returned some errors: " . $error);

    }


//     //Covert to json object
    $result = json_decode($run);
// print_r($result);
    $status = $result->data->status;
    $message = $result -> message;
    $id = $result -> data -> id;

    $reference = $result -> data->reference;
    $amount = $result -> data->amount;
    $fullName = $result -> data->customer->first_name;

    if($status != "success"){
        header($errorlocation . "?error=error");
        exit;

    }else{
        for( $i = 0; $i < count($_SESSION['selectedCourses']); $i++ ){
       $query = "INSERT INTO payment_table ( unique_id, course_id, paid, transaction_id,  matric_no, name, reference) VALUES
       ('{$_SESSION['unique_id']}', '{$_SESSION['selectedCourses'][$i]}', 1, '{$id}', '{$_SESSION['matric_no']}', '{$_SESSION['name']}', '{$reference}' )";
        $result = mysqli_query($conn, $query);
        }
        if($result){
            header($errorlocation . "?status=success");
        }


    }

     



    }
    curl_close($curl);

if(!isset($_GET["transaction_id"])) {
    header($errorlocation);
}