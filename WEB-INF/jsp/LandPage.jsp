<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Cloud Journee</title>
        <meta name="viewport" content="width=device-width, user-scalable=no">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link href="css/style.css" rel="stylesheet" type="text/css" />
        <link href='http://fonts.googleapis.com/css?family=Roboto:300italic,400italic,300,400,500,700,900' rel='stylesheet' type='text/css'/>
        <link type="text/css" rel="stylesheet" href="css/bootstrap.css" />
        <link type="text/css" rel="stylesheet" href="css/cloudjurnee1.css" />
        <link type="text/css" rel="stylesheet" href="css/font-awesome.min.css" />
        <link type="text/css" rel="stylesheet" href="css/material-design-iconic-font.min.css" />
        <link type="text/css" rel="stylesheet" href="css/libs/wizard/wizard.css" />

        <!-- END STYLESHEETS -->      
        <script>
//            function preventBack() {
//                window.history.forward();
//            }
//            setTimeout("preventBack()", 0);
//            window.onunload = function () {
//                null;
//            };
             history.pushState(null, null, $(location).attr('href'));
            window.addEventListener('popstate', function () {
                history.pushState(null, null, $(location).attr('href'));
            });
        </script>
        <!-- CUSTOM STYLESHEETS STARTS-->

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
          <script src="js/html5shiv.js"></script>
          <script src="js/respond.min.js"></script>
        <![endif]-->
    </head>
    <body >
        <!-- BEGIN HEADER-->

        <header id="header" style="height:80px;" >
            <img id="image" src="images/logo.png" width="145" height="56" style="padding-left: 26px;" alt="LOGO" class="img-responsive">

            <div class="container" >
                <div class="contactno largescreen marginTop10"><font style="font-size: 13px; opacity: 0.6;">For Sales & Support drop an email to </font><span><img src="images/contact-icon.png" width="25" height="25" alt="" > <font style="font-size: 13px;opacity: 0.6;">info@cloudjournee.com</span></font></div>
                <div class="row">



                    <div class="socialmedia  largescreen marginTop10" style="padding-right:10px;" >

                        <ul class="header-nav header-nav-profile" >


                            <li class="dropdown">
                                <a href="javascript:void(0);" class="dropdown-toggle ink-reaction" data-toggle="dropdown">
                                    <img src="img/avatar1.jpg"  alt="" width="30" height="20"/>
                                    <span class="profile-info" style="text-transform: capitalize; font-size: 12px; top:0">
                                        Hello ${firstname} ${lastname}
                                    </span>
                                </a>
                                <ul class="dropdown-menu animation-dock" >                                    
                                    <!--                                        <li class="dropdown-header">Settings</li>
                                                                            <li><a href="#">My profile</a></li>
                                                                            <li class="divider"></li>
                                                                            <li><a href="#"><i class="fa fa-fw fa-lock"></i> Lock</a></li>-->
                                    <li class="divider1"></li>
                                    <li><a href="logout"><i class="fa fa-fw fa-power-off text-danger"></i> Logout</a></li>
                                </ul>
                                <!--                                        //end .dropdown-menu -->
                            </li>
                            <!--                                //end .dropdown -->
                        </ul>
                    </div>
                    <!--                        end .header-nav-profile -->


                    <!--                    </div>-->
                </div>
            </div>
        </header>
        <!-- BEGIN HEADER-->
        <!-- BEGIN LOGIN SECTION -->

        <div class="main-container marginTop80 pddingBot100">
            <!-- banner Starts -->
            <div class="banner carousel slide" id="myCarousel" data-interval="3000" data-ride="carousel">
                <img src="images/banner-bg.png" alt="" class="img-responsive imgHeight">
                <!-- Carousel indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>   
                <!-- Carousel items -->
                <div class="bannerText">
                    <div class="carousel-inner">
                        <div class="active item">
                            <h1>The <span>Assessment</span> is</h1>
                            <h3>intended to provide you a good baseline</h3>
                            <p>for appropriate cloud transformation initiatives and recommend the adoption of target public cloud</p>
                            <c:if test="${applications.size()==0}">
                                <form> <button class="assessmentbtn" formmethod="POST" formaction="Advise">Start Assessment</button></form>
                            </c:if>
                            <c:if test="${applications.size()!=0}">
                                <form> <button class="assessmentbtn" formmethod="GET" formaction="AdviceReport">Start Assessment</button></form>
                            </c:if>


                        </div>

                        <div class="item">
                            <h1>The <span>Assessment</span> is</h1>
                            <h3>intended to provide you a good baseline</h3>
                            <p>for appropriate cloud transformation initiatives and recommend the adoption of target public cloud</p>
                            <form> <button class="assessmentbtn" formmethod="GET" formaction="AdviceReport">Start Assessment</button></form>
                        </div>

                        <div class="item">
                            <h1>The <span>Assessment</span> is</h1>
                            <h3>intended to provide you a good baseline</h3>
                            <p>for appropriate cloud transformation initiatives and recommend the adoption of target public cloud</p>
                            <c:if test="${applications.size()==0}">
                                <form> <button class="assessmentbtn" formmethod="POST" formaction="Advise">Start Assessment</button></form>
                            </c:if>
                            <c:if test="${applications.size()!=0}">
                                <form> <button class="assessmentbtn" formmethod="GET" formaction="AdviceReport">Start Assessment</button></form>
                            </c:if>
                        </div>
                    </div>
                </div>
                <img src="images/cloud-stripe.png" height="21" alt="" class="imgNone" style="position:absolute; bottom:0px;"> 
            </div>
            <!-- body Content Starts -->
            <div class="bodycontent container alignCenter">
                <h2>Welcome to Bussiness Assessment</h2>
                <p>The assessment requires you to answer<font color="green"> approximately  30 questions</font> across the following categories:</p>
                <img src="images/graph.jpg" width="826" height="448" alt="" class="img-responsive graph"> 
                <c:if test="${applications.size()==0}">
                    <form> <button class="assessmentbtn" formmethod="POST" formaction="Advise">Start Assessment</button></form>
                </c:if>
                <c:if test="${applications.size()!=0}">
                    <form> <button class="assessmentbtn" formmethod="GET" formaction="AdviceReport">Start Assessment</button></form>
                </c:if>
            </div>
        </div>

    </div>

    <footer>
        <!--    <div class="copyright">Copyright 2016. All Rights Reserved</div>-->
        <!--    <div class="socialmedia smallscreen"><a href="#"><img src="images/facebook-icon.png" width="35" height="35" alt=""></a> <a href="#"><img src="images/twitter-icon.png" width="35" height="35" alt=""></a> 
            <a href="#"><img src="images/linkdin-icon.png" width="35" height="35"></a></div>-->
    </footer>
    <!-- BEGIN JAVASCRIPT -->

    <script src="js/libs/jquery/jquery-1.11.2.min.js"></script>
    <script src="js/libs/jquery/jquery-migrate-1.2.1.min.js"></script>
    <script src="js/libs/bootstrap/bootstrap.min.js"></script>
    <script src="js/libs/spin.js/spin.min.js"></script>
    <script src="js/libs/autosize/jquery.autosize.min.js"></script>
    <script src="js/libs/nanoscroller/jquery.nanoscroller.min.js"></script>
    <script src="js/libs/jquery-validation/dist/jquery.validate.min.js"></script>
    <script src="js/libs/jquery-validation/dist/additional-methods.min.js"></script>
    <script src="js/libs/wizard/jquery.bootstrap.wizard.min.js"></script>
    <script src="js/core/source/App.js"></script>
    <script src="js/core/source/AppNavigation.js"></script>
    <script src="js/core/source/AppOffcanvas.js"></script>
    <script src="js/core/source/AppCard.js"></script>
    <script src="js/core/source/AppForm.js"></script>
    <script src="js/core/source/AppNavSearch.js"></script>
    <script src="js/core/source/AppVendor.js"></script>
    <script src="js/core/demo/Demo.js"></script>
    <script src="js/core/demo/DemoFormWizard.js"></script>
    <!-- END JAVASCRIPT -->
</body>
</html>