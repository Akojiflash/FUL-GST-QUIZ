<?php
include_once ("php/config.php");
session_start();
if(!isset($_SESSION["paymentId"])){
    $_SESSION['paymentId'] = uniqid() . bin2hex(random_bytes(8));;
}

$paymentId = $_SESSION['paymentId'];

echo $_SESSION['amount'] . "<br>";
print_r($_SESSION['selectedCourses'] );


echo  "<br>" . $_SESSION['unique_id'] . "<br>";

echo $_SESSION['email'] . "<br>";

echo $_SESSION['phone'] . "<br>";

echo $_SESSION['name'] . "<br>";

echo $paymentId . "<br>";


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
                "logo"  => "http://localhost/GstQuizSite/icons/Logo.svg",
                "description" => "Checkout page for payment of your selected Courses on the GSTQuiz website",
                


            ],
            "meta" => [
                "reason" => "Product purchase",
                "address"  => "Federal University Lokoja Kogi state, Adankolo, Kogi state, Nigeria"
            ],
            "redirect_url" => "http://localhost/GstQuizSite/myCourses",
];
//Init cURL handler

$ch = curl_init();


print_r($data);
