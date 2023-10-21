<?php
include_once("php/config.php");
session_start();
if (!isset($_SESSION["paymentId"])) {
    $_SESSION['paymentId'] = uniqid() . bin2hex(random_bytes(8));;
}

$paymentId = $_SESSION['paymentId'];






$api_url = "https://api.flutterwave.com/v3/payments";

$data = [
    "tx_ref" => $paymentId,
    "currency" => "NGN",
    "amount" => $_SESSION['amount'],
    "customer" => [
        "email" => $_SESSION['email'],
        "phonenumber" => $_SESSION["phone"],
        "name" => $_SESSION["name"]
    ],
    "customizations" => [
        "title" => "Course Payment",
        "logo"  => "http://localhost/GstQuizSite/images/gstlogo.png",
        "description" => "Checkout page for payment of your selected Courses on the GSTQuiz website",



    ],
    "meta" => [
        "reason" => "Product purchase",
        "address"  => "Federal University Lokoja Kogi state, Adankolo, Kogi state, Nigeria"
    ],
    "redirect_url" => "http://localhost/GstQuizSite/verify",
    "products" => $_SESSION['selectedCourses'],
    "user_id" =>  $_SESSION['unique_id']
];
//Init cURL handler

$ch = curl_init();

//set the endpoint
curl_setopt($ch, CURLOPT_URL, $api_url);

//turn on the cURL post method

curl_setopt($ch, CURLOPT_POST,1);

//Encode the post field
curl_setopt($ch, CURLOPT_POSTFIELDS,json_encode($data));

//Make it return data
curl_setopt($ch, CURLOPT_RETURNTRANSFER,true);

//set the waiting timeout
curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 200);
curl_setopt($ch, CURLOPT_TIMEOUT, 200);

//set the headers from endpoint
curl_setopt($ch, CURLOPT_HTTPHEADER, [
    'Authorization: Bearer FLWSECK_TEST-4d194c4dd74aa92509e651ea83473746-X',
    "Content-Type: Application/json",
    "Cache-Control: no-cache"
]);

//Execute the cURL session
$request = curl_exec($ch);

$result = json_decode($request);

//redkrect to payment link
header("location: " . $result ->data->link );
// var_dump($result);
// close cURL session
curl_close($ch);
unset( $_SESSION['paymentId']);









//