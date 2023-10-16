<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Make Payment</title>
    <link rel="stylesheet" href="css/score.css">
    <link rel="stylesheet" href="css/courses-and-payment.css">
    <link rel="icon" href="icons/favicon.ico" sizes="32x32" type="image/x-icon">
    <link rel="shortcut icon" href="icons/favicon.ico" sizes="32x32" type="image/x-icon">

</head>

<body>

<?php include "includes/header.php" ?> 
<?php include "php/timeout.php" ?>
    <main class="container course_selection-main">
        <div role="contentinfo">

            <h3 class="course-selection_heading payment">Select the course(s) you wish to pay for</h3>

            <p class="selection__text payment">
                Each course cost (&#8358;100) only
            </p>
        </div>

        <section role="contentinfo" class="payment-for-courses__wrapper row">
            <div class="courses gsts">
                <!-- <div class="courses_wrapper gsts">

                    <div class="course row gst gst101">
                        <span>Gst 101</span>
                        
                    </div>
                    <div id="gst102" class="course gst gst102 gstcourse">
                        <span>Gst 102</span>
                        <img class="course-selected-indicator" src="icons/radio-button-checked-svgrepo-com.svg" alt="">
                    </div>
                    <div id="gst103" class="course gst gst103">
                        <span id="gst103">Gst 103</span>
                    </div>
                    <div class="course gst gst104">
                        <span>Gst 104</span>
                    </div>
                    <div class="course gst 
                   course-4 
                    gst107">
                        <span>Gst 107</span>
                    </div>
                </div>
                <div class="courses_wrapper">
                    <div class="course gst gst110">
                        <span>Gst 110</span>
                    </div>
                    <div class="course gst gst202">
                        <span>Gst 202</span>
                    </div>
                    <div class="course gst gst204">
                        <span>Gst 204</span>
                    </div>
                    <div class="course gst gst204">
                        <span>Gst 205</span>
                    </div>
                </div> -->
            </div>
            <div class="payment-cta_wrapper">
                <h3>Cart Total</h3>
                <div class="row selected-courses">
                    <p>selected Courses</p>
                    <span class="number-of-courses-to-pay-for">0</span>
                </div>
                <div class="row total-courses">
                    <p>Total</p>
                    <p>&#8358;<span class="total-price-of-courses-to-pay-for">0</span></p>
                </div>

                <button class="payment_cta-btn">Check Out (&#8358;<span class="total-cost-of-courses">0</span>)</button>
            </div>
        </section>
    </main>
    <div role="alert" class="course_bought_alert">
                <img src="icons/warning-svgrepo-com.png" alt="">
                <p>You have exhausted your trials</p>
            </div>




    <script src="Js/nav.js"></script>
    <script src="Js/payment.js"></script>
    <script src="Js/paymentCourse.js"></script>
    <script src="Js/checkLogin.js"></script>
</body>

</html>