<?php
$locationStat = "http://localhost/GstQuizSite/";

include_once("php/config.php");
session_start();

if (!isset($_SESSION["paymentId"])) {
    $_SESSION['paymentId'] = uniqid() . bin2hex(random_bytes(8));
}

$paymentId = $_SESSION['paymentId'];

$paystack_secret_key = "sk_live_37a3731efdb70c1b27e9edd76cceba68d1544519"; // Replace with your Paystack secret key

$data = [
    "reference" => $paymentId,
    "amount" => $_SESSION['amount'] * 100, // Paystack uses kobo, so convert amount to kobo
    "email" => $_SESSION['email'],
    "metadata" => [
        "custom_fields" => [
            [
                "display_name" => "Course Payment",
                "variable_name" => "course_payment",
                "value" => "Payment for selected courses",
            ],
        ],
    ],
    "callback_url" => $locationStat . "verify",
];

$api_url = "https://api.paystack.co/transaction/initialize";

$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, $api_url);
curl_setopt($ch, CURLOPT_POST, 1);
curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($data));
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 200);
curl_setopt($ch, CURLOPT_TIMEOUT, 200);
curl_setopt($ch, CURLOPT_HTTPHEADER, [
    'Authorization: Bearer ' . $paystack_secret_key,
    'Content-Type: application/x-www-form-urlencoded',
]);

$request = curl_exec($ch);

$result = json_decode($request);
print_r($result);


if ($result->status && $result->status === true) {
    $payment_url = $result->data->authorization_url;
    header("Location: " . $payment_url);
} else {
//     // Handle the case where payment initiation fails
    echo "Payment initiation failed. Please try again.";
}

curl_close($ch);
unset($_SESSION['paymentId']);
// ?>
