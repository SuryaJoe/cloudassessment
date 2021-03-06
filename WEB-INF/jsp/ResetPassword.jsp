<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Cloud Journee - Forgot Password</title>

        <!-- BEGIN META -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="keywords" content="your,keywords">
        <meta name="description" content="Short explanation about this website">
        <!-- END META -->

        <!-- BEGIN STYLESHEETS -->
        <link href='http://fonts.googleapis.com/css?family=Roboto:300italic,400italic,300,400,500,700,900' rel='stylesheet' type='text/css'/>
        <link type="text/css" rel="stylesheet" href="css/bootstrap.css" />
        <link type="text/css" rel="stylesheet" href="css/cloudjurnee.css" />
        <link type="text/css" rel="stylesheet" href="css/font-awesome.min.css" />
        <link type="text/css" rel="stylesheet" href="css/material-design-iconic-font.min.css" />
        <!-- END STYLESHEETS -->
        <link type="text/css" rel="stylesheet" href="css/custom.css" />
        <!-- CUSTOM STYLESHEETS STARTS-->


        <!-- CUSTOM STYLESHEETS ENDS-->

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
        <script type="text/javascript" src="js/libs/utils/html5shiv.js?1403934957"></script>
        <script type="text/javascript" src="js/libs/utils/respond.min.js?1403934956"></script>
        <![endif]-->
    </head>
    <body class="menubar-hoverable header-fixed LoginPageBg">
        <!-- BEGIN HEADER-->
        <header id="header" >
            <div class="headerbar">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="headerbar-left">
                    <ul class="header-nav header-nav-options">
                        <li class="header-nav-brand" >
                            <div class="brand-holder">
                                
                                    <span class="text-lg text-bold text-primary"><img src="img/logo-cloud-journee.gif" width="120" height="60" alt="Cloud Journee"></span>
                               
                            </div>
                        </li>

                    </ul>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <!--<div class="headerbar-right">
                        
                </div>--><!--end #header-navbar-collapse -->
            </div>
        </header>
        <!-- END HEADER-->
        <!-- BEGIN LOGIN SECTION -->
        <section class="section-account">

            <div class="spacer"></div>
            <div class="card contain-sm-Registration style-transparent" style=" width: 60%; height:250px; margin: 0 auto;  ">
                <div class="card-body LoginBg paddingLftRt30Rt0" style="border-right:1px solid #3c5a9a;">
                    <div >

                        <div class="BackToLogin paddingLftRt30"><a href="welcome">Back to Login</a></div>
                        <br/>
                        <div >                                

                            <span class="LoginHead" ><font  style="text-align: center; padding-left: 200px;">Reset Password</font></span>
                            <br/>
                            
                            <br>
                            <font color="#12b0e0" style="text-align: left; ">
                            <div class="col-xs-8">  
                           <form:form method="POST" action="resetPassword" modelAttribute="recoveryForm">
                            <form class="form floating-label" action="html/dashboards/dashboard.html" accept-charset="utf-8" method="post">
                                <div>
                                     <form:hidden path="id" value="${resetpassword}"></form:hidden>
                                    <label>New Password</label>
                                    <form:password path="rePassword" class="form-control" placeholder="NEW PASSWORD"/>
                                   <font color="red"> <form:errors path="rePassword"></form:errors></font>

                                </div>
                                
                                <div>
                                    <label>Confirm Password</label>
                                   
                                    <form:password path="rePasswordc" class="form-control" placeholder="Password"/>
                                    <font color="red"> <form:errors path="rePasswordc"></form:errors></font>

                                </div>
                                <div class="clearfix"></div>

                                <div class="row MarginTop20">
                                    <div class="col-xs-8 text-left">
                                        <button class="btn btn-primary btn-raised" type="submit">Reset Password <span>>></span></button>
                                    </div>


                                    <!--end .col -->
                                    <!--end .col -->
                                </div><!--end .row -->

                            </form:form>
                            <br/>
                            <br>
                            <br>
                            <br>
                            </font>
                            </div>

                        </div>
                    </div><!--end .col -->

                    <!--                         <div class="col-sm-4 text-center LoginBoxBlue">
                    
                                                 
                    
                                                <h3 class="text-light">
                                                    Not a<br>
                                                    member?
                                                </h3>
                                                <p class="SingnUpText">will take you less than 30 seconds to complete the registration process</p>
                                                <div class="UnderLine"></div>
                                                <br><br>
                                                <div class="RegisterNowButt">
                                                    <a href="Registration">Register now
                    
                                                        <span>>></span></a>
                                                </div>
                                            
                                            </div>end .col -->
                    <!--end .row -->
                </div><!--end .card-body -->
            </div><!--end .card -->
        </section>
        
        <!-- END LOGIN SECTION -->

        <!-- BEGIN JAVASCRIPT -->
        <script src="js/libs/jquery/jquery-1.11.2.min.js"></script>
        <script src="js/libs/jquery/jquery-migrate-1.2.1.min.js"></script>
        <script src="js/libs/bootstrap/bootstrap.min.js"></script>
        <script src="js/libs/spin.js/spin.min.js"></script>
        <script src="js/libs/autosize/jquery.autosize.min.js"></script>
        <script src="js/libs/nanoscroller/jquery.nanoscroller.min.js"></script>
        <script src="js/core/source/App.js"></script>
        <script src="js/core/source/AppNavigation.js"></script>
        <script src="js/core/source/AppOffcanvas.js"></script>
        <script src="js/core/source/AppCard.js"></script>
        <script src="js/core/source/AppForm.js"></script>
        <script src="js/core/source/AppNavSearch.js"></script>
        <script src="js/core/source/AppVendor.js"></script>
        <script src="js/core/demo/Demo.js"></script>
        <!-- END JAVASCRIPT -->

    </body>
</html>