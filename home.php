<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GST Quiz Application</title>
    <link rel="stylesheet" href="css/score.css">
    <link rel="stylesheet" href="css/styles.css">
    <link rel="shortcut icon" href="icons/favicon.ico" sizes="32x32" type="image/x-icon">
    <!-- Link Swiper's CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />
</head>

<body>

    <header>
        <nav class="container row main-nav home-page_nav">
            <div class="gst-logo_container">
                <a href="home">
                    <img src="icons/Logo.svg" alt="">
                </a>
            </div>

            <button style="color: #000;" class="mobile-nav-toggle" aria-controls="#menu-bar" aria-expanded="false">
                <span class="sr-only">menu</span>
            </button>

            <div id="menu-bar" data-visible="false">
                <ul class="row">
                    <li class="contact nav-link">
                        <a href="index#contact-us">Contact Us</a>
                    </li>
                    <li class="log-in nav-link">
                        <a href="login">Log In</a>
                    </li>
                    <li class="register nav-link">
                        <a href="createAccount">Register</a>
                    </li>
                </ul>

            </div>
        </nav>
    </header>

    <main id="home_page" class=" container landing-page__container">
        <section class=" first__section row">
            <div class="col col-1">
                <div class="welcome-text__container">
                    <h1 class="welcome-text"><span class="excel">Excel</span> In Your <br> GST CBT Exams</h1>
                    <a class="createAccount-link" href="createAccount">
                        <img loading="lazy" class="background__design grouped__angles2" src="images/Group 90.png"
                            alt="">
                        <button class="get-started__btn">Get Started</button>
                        <img loading="lazy" class="background__design grouped__angles1" src="images/Group 89.png"
                            alt="">

                        <img loading="lazy" class="background__design ellipse__1" src="images/Ellipse 11.png" alt="">
                    </a>


                </div>
                <div>
                    <img loading="lazy" class="text-side-bold-circle" src="images/pngwing.com (2).png" alt="">
                </div>
            </div>
            <div class="col col-2">

                <picture>
                    <source media="(min-width:600px)" srcset="images/Group_110.png">
                    <img src="images/Group_130.png" alt="">
                </picture>

                <img loading="lazy" class="under-phone-bold-circle" src="images/pngwing.com (2).png" alt="">
                <img class="background__design ellipse__2" src="images/Ellipse 8.png" alt="">
                <img class="background__design ellipse__3" src="images/Ellipse 10.png" alt="">
                <img loading="lazy" class="background__design ellipse__4" src="images/Ellipse 11.png" alt="">
            </div>
        </section>

        <!-- =================== KEY BENEFITS SECTION====================== -->

        <section class="benefits__section">

            <h2 class="benefits__heading">Key Benefits</h2>
            <div class="benefits__section-image-container">
                <figure>
                    <img src="images/Group 97.png" alt="">
                    <figcaption>
                        <h3>Comprehensive Quizzes</h3>
                        <p>Access a vast library of GST quizzes covering every topic you need for success.</p>
                    </figcaption>
                </figure>
                <figure>
                    <img src="images/Group 96.png" alt="">
                    <figcaption>
                        <h3>Realistic Exam Experience</h3>
                        <p>Simulate the GST exam environment with timed quizzes and authentic question formats.</p>
                    </figcaption>
                </figure>
                <figure>
                    <img src="images/Group 95.png" alt="">
                    <figcaption>
                        <h3>Study Anywhere</h3>
                        <p>Prepare for your GST exam on-the-go with our mobile app.</p>
                    </figcaption>
                </figure>
            </div>

            <img class="background__design elipse__5" src="images/Ellipse 17.png" alt="">
            <img class="background__design elipse__6" src="images/Ellipse 16.png" alt="">
        </section>
        <!-- =================== END OF KEY BENEFITS SECTION====================== -->

    </main>

    <!-- ===================== STUDENT TESTIMONIES SECTION =================== -->
    <main>
        <section class="Students-testimonies__section">
            <h2>Students Testimonies</h2>
            <div class="swiper mySwiper">
                <div class="Testimonies-article__wrapper swiper-wrapper">
                <article class="row swiper-slide">
                        <div class="Students-testimonies__img-container">
                            <img class="Students-testimonies__img" src="images/Rectangle 12.png" alt="">
                        </div>
                        <div class="Testimonies-article_text-container">
                            <h3>Rosco</h3>
                            <p class="department">Computer Science Edu. (300 Level)</p>
                            <p>
                                I went to the New Friends list on the app and saw something I wasn't prepared for:
                                @anal.a*********
                                I learned that you don't know what you don't know. Your outstanding kid might not fully
                                understand the possible ramifications of seemingly innocent actions on social media."
                            </p>
                        </div>
                    </article>                   
                    
                    <article class="row swiper-slide">
                        <div class="Students-testimonies__img-container">
                            <img class="Students-testimonies__img" src="images/Asmau.jpg" alt="">
                        </div>
                        <div class="Testimonies-article_text-container">
                            <h3>Yusuf Asmau</h3>
                            <p class="department">Bio Technology (100 Level)</p>
                            <p>
                                I went to the New Friends list on the app and saw something I wasn't prepared for:
                                @anal.a*********
                                I learned that you don't know what you don't know. Your outstanding kid might not fully
                                understand the possible ramifications of seemingly innocent actions on social media."
                            </p>
                        </div>
                    </article>
                    <article class="row swiper-slide">
                        <div class="Students-testimonies__img-container">
                            <img class="Students-testimonies__img" src="images/Arome.jpg" alt="">
                        </div>
                        <div class="Testimonies-article_text-container">
                            <h3>Aikoye Arome</h3>
                            <p class="department">Mathematics Edu. (100 Level)</p>
                            <p>
                                I went to the New Friends list on the app and saw something I wasn't prepared for:
                                @anal.a*********
                                I learned that you don't know what you don't know. Your outstanding kid might not fully
                                understand the possible ramifications of seemingly innocent actions on social media."
                            </p>
                        </div>
                    </article>
                    <article class="row swiper-slide">
                        <div class="Students-testimonies__img-container">
                            <img class="Students-testimonies__img" src="images/Treasure.jpg" alt="">
                        </div>
                        <div class="Testimonies-article_text-container">
                            <h3>Treasure</h3>
                            <p class="department">Bio Technology (100 Level)</p>
                            <p>
                                I went to the New Friends list on the app and saw something I wasn't prepared for:
                                @anal.a*********
                                I learned that you don't know what you don't know. Your outstanding kid might not fully
                                understand the possible ramifications of seemingly innocent actions on social media."
                            </p>
                        </div>
                    </article>

                    <article class="row swiper-slide">
                        <div class="Students-testimonies__img-container">
                            <img class="Students-testimonies__img" src="images/Damola.jpg" alt="">
                        </div>
                        <div class="Testimonies-article_text-container">
                            <h3>Damola Isreal</h3>
                            <p class="department">Bio Technology (100 Level)</p>
                            <p>
                                I went to the New Friends list on the app and saw something I wasn't prepared for:
                                @anal.a*********
                                I learned that you don't know what you don't know. Your outstanding kid might not fully
                                understand the possible ramifications of seemingly innocent actions on social media."
                            </p>
                        </div>
                    </article>
                </div>
                <div class="navigators">
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
        </section>

        <!-- ===================== DEVELOPERS SECTION =================== -->
        <!-- using the same styling used for student testimonies section for developers section -->
        <section class="Students-testimonies__section developers">
            <h2>Developers</h2>
            <div class="swiper mySwiper">
                <div class="Testimonies-article__wrapper swiper-wrapper">
                    <article class="row swiper-slide">
                        <div class="Students-testimonies__img-container">
                            <img class="Students-testimonies__img" src="images/Rectangle 12.png" alt="">
                        </div>
                        <div class="Testimonies-article_text-container">
                            <h3>Joseph Olarewaju Destiny</h3>
                            <p class="department">Computer Science Education</p>
                            <p>
                                I went to the New Friends list on the app and saw something I wasn't prepared for:
                                @anal.a*********
                                I learned that you don't know what you don't know. Your outstanding kid might not fully
                                understand the possible ramifications of seemingly innocent actions on social media."
                            </p>
                        </div>
                    </article>
                    <article class="row swiper-slide">
                        <div class="Students-testimonies__img-container">
                            <img class="Students-testimonies__img" src="images/Rectangle 12.png" alt="">
                        </div>
                        <div class="Testimonies-article_text-container">
                            <h3>Akele Dolly_Pee</h3>
                            <p class="department">Computer Science Education</p>
                            <p>
                                I went to the New Friends list on the app and saw something I wasn't prepared for:
                                @anal.a*********
                                I learned that you don't know what you don't know. Your outstanding kid might not fully
                                understand the possible ramifications of seemingly innocent actions on social media."
                            </p>
                        </div>
                    </article>
                    <article class="row swiper-slide">
                        <div class="Students-testimonies__img-container">
                            <img class="Students-testimonies__img" src="images/Rectangle 12.png" alt="">
                        </div>
                        <div class="Testimonies-article_text-container">
                            <h3>Ameh David</h3>
                            <p class="department">Computer Science Education</p>
                            <p>
                                I went to the New Friends list on the app and saw something I wasn't prepared for:
                                @anal.a*********
                                I learned that you don't know what you don't know. Your outstanding kid might not fully
                                understand the possible ramifications of seemingly innocent actions on social media."
                            </p>
                        </div>
                    </article>
                    <!-- <article class="row swiper-slide">
                        <div class="Students-testimonies__img-container">
                            <img class="Students-testimonies__img" src="images/Rectangle 12.png" alt="">
                        </div>
                        <div class="Testimonies-article_text-container">
                            <h3>John Smith</h3>
                            <p class="department">Bio Chemistry 100 Level</p>
                            <p>
                                I went to the New Friends list on the app and saw something I wasn't prepared for:
                                @anal.a*********
                                I learned that you don't know what you don't know. Your outstanding kid might not fully
                                understand the possible ramifications of seemingly innocent actions on social media."
                            </p>
                        </div>
                    </article> -->
                </div>
                <div class="navigators">
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
            <img class="background__design elipse__7" src="images/Ellipse 16.png" alt="">
        </section>

        <!-- =============== CONTACT US SECTION =============== -->
        <section class="container contact-us__container" id="contact-us">
            <h2>Get in touch</h2>
            <div class="row contact__wrapper">
                <div class="form-wrapper">
                    <form action="" class="row">
                        <div class="contact-input__container">
                            <input class="contact-input" type="text" placeholder="Your Name*" required>
                            <input class="contact-input" type="email" placeholder="Your email*">
                            <input class="contact-input" type="text" placeholder="Phone Number*">
                            <input class="contact-input" type="text" placeholder="Subject*">
                        </div>
                        <div class="contact-textarea__container">
                            <div>
                                <textarea name="" id="" cols="30" rows="11.2" placeholder="Message*"></textarea>
                            </div>
                            <div>
                                <input class="contact-submit__btn" type="submit" value="Submit">
                            </div>
                        </div>
                    </form>
                </div>
                <div class="social-medias">
                    <a href="">
                        <img class="social__icon" src="icons/Icons.png" alt="">
                    </a>
                    <a href="">
                        <img class="social__icon" src="icons/facebook-1-svgrepo-com.png" alt="">
                    </a>
                    <a href="">
                        <img class="social__icon" src="icons/linkedin-1-svgrepo-com.png" alt="">
                    </a>
                    <a href="">
                        <img class="social__icon" src="icons/instagram-2-1-logo-svgrepo-com.png" alt="">
                    </a>
                    <a href="">
                        <img class="social__icon" src="icons/twitter-x-seeklogo.com-4.png" alt="">
                    </a>
                </div>
            </div>
        </section>
    </main>
    <footer>
        <small>&copy; 2023 Future Max | All Rights Reserved | UniHive Quiz Web App</small>
    </footer>


    <a href="home#home_page">
        <div class="top-btn">
            <img src="icons/up-arrow-svgrepo-com.png" alt="">
        </div>
    </a>

    <!-- Swiper JS -->
    <script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>

    <script>
        var swiper = new Swiper(".mySwiper", {
            slidesPerView: 3,
            centeredSlides: true,
            spaceBetween: 30,
            pagination: {
                el: ".swiper-pagination"
            },
            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
            },

            breakpoints: {
                1000: {
                    slidesPerView: 3
                },

                900: {
                    slidesPerView: 2
                },
                600: {
                    slidesPerView: 2
                },
                200: {
                    slidesPerView: 1
                }
            }
        });
    </script>
    
    <script src="Js/landingpage-nav.js"></script>
</body>

</html>