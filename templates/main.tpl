<!DOCTYPE html>
<html lang="en">
<head>
    <title>Kalkulator Kredytowy</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,900|Playfair+Display:400,700,900 " rel="stylesheet">
    <link rel="stylesheet" href="{$app_url}/fonts/icomoon/style.css">

    <link rel="stylesheet" href="{$app_url}/css/bootstrap.min.css">
    <link rel="stylesheet" href="{$app_url}/css/jquery-ui.css">
    <link rel="stylesheet" href="{$app_url}/css/owl.carousel.min.css">
    <link rel="stylesheet" href="{$app_url}/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="{$app_url}/css/owl.theme.default.min.css">

    <link rel="stylesheet" href="{$app_url}/css/jquery.fancybox.min.css">

    <link rel="stylesheet" href="{$app_url}/css/bootstrap-datepicker.css">

    <link rel="stylesheet" href="{$app_url}/fonts/flaticon/font/flaticon.css">

    <link rel="stylesheet" href="{$app_url}/css/aos.css">

    <link rel="stylesheet" href="{$app_url}/css/style.css">

</head>
<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">

<div class="site-wrap">

    <div class="site-mobile-menu site-navbar-target">
        <div class="site-mobile-menu-header">
            <div class="site-mobile-menu-close mt-3">
                <span class="icon-close2 js-menu-toggle"></span>
            </div>
        </div>
        <div class="site-mobile-menu-body"></div>
    </div>


    <header class="site-navbar py-4 js-sticky-header site-navbar-target" role="banner">

        <div class="container">
            <div class="row align-items-center">

                <div class="col-6 col-xl-2">
                    <h1 class="mb-0 site-logo m-0 p-0"><a href="{$app_url}/app/calc.php" class="mb-0">ez</a></h1>
                </div>

                <div class="col-12 col-md-10 d-none d-xl-block">
                    <nav class="site-navigation position-relative text-right" role="navigation">

                        <ul class="site-menu main-menu js-clone-nav mr-auto d-none d-lg-block">
                            <li><a href="#home-section" class="nav-link">Główna</a></li>
                            <li><a href="#kalkulator" class="nav-link">Kalkulator</a></li>
                        </ul>
                    </nav>
                </div>


                <div class="col-6 d-inline-block d-xl-none ml-md-0 py-3"><a href="#" class="site-menu-toggle js-menu-toggle text-black float-right"><span class="icon-menu h3"></span></a></div>

            </div>
        </div>

    </header>



    <div class="site-blocks-cover overlay" style="background-image: url({$app_url}/images/hero_1.jpg);" data-aos="fade" id="home-section">


        <div class="container">
            <div class="row align-items-center justify-content-center">
                <div class="col-md-6 mt-lg-5 text-center">
                    <h1>Najlepszy kalkulator kredytowy</h1>
                </div>
            </div>
        </div>

        <a href="#kalkulator" class="smoothscroll arrow-down"><span class="icon-arrow_downward"></span></a>
    </div>


    <section class="site-section bg-light bg-image" id="kalkulator">
        {block name=content} Domyślna treść ...{/block}
    </section>


    <footer class="site-footer">
        <div class="container">
            <div class="row">
                <!--          <div class="col-md-4">-->
                <!--            -->
                <!--            <div class="">-->
                <!--              <h2 class="footer-heading mb-4">Follow Us</h2>-->
                <!--                <a href="#" class="pl-0 pr-3"><span class="icon-facebook"></span></a>-->
                <!--                <a href="#" class="pl-3 pr-3"><span class="icon-twitter"></span></a>-->
                <!--                <a href="#" class="pl-3 pr-3"><span class="icon-instagram"></span></a>-->
                <!--                <a href="#" class="pl-3 pr-3"><span class="icon-linkedin"></span></a>-->
                <!--            </div>-->
                <!--          </div>-->
            </div>
            <div class="row pt-5 mt-5 text-center">
                <div class="col-md-12">
                    <div class="border-top pt-5">
                        <p>
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        </p>
                    </div>
                </div>

            </div>
        </div>
    </footer>

</div> <!-- .site-wrap -->

<script src="{$app_url}/js/jquery-3.3.1.min.js"></script>
<script src="{$app_url}/js/jquery-migrate-3.0.1.min.js"></script>
<script src="{$app_url}/js/jquery-ui.js"></script>
<script src="{$app_url}/js/popper.min.js"></script>
<script src="{$app_url}/js/bootstrap.min.js"></script>
<script src="{$app_url}/js/owl.carousel.min.js"></script>
<script src="{$app_url}/js/jquery.stellar.min.js"></script>
<script src="{$app_url}/js/jquery.countdown.min.js"></script>
<script src="{$app_url}/js/bootstrap-datepicker.min.js"></script>
<script src="{$app_url}/js/jquery.easing.1.3.js"></script>
<script src="{$app_url}/js/aos.js"></script>
<script src="{$app_url}/js/jquery.fancybox.min.js"></script>
<script src="{$app_url}/js/jquery.sticky.js"></script>
{if $hide_intro}
    <script src="{$app_url}/js/skip.js"></script>
{/if}

<script src="{$app_url}/js/main.js"></script>

</body>
</html>