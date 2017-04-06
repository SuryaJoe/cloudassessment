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
            <div class="card contain-sm-Registration style-transparent" style=" width: 60%; height:200px; margin: 0 auto;  ">
                <div class="card-body LoginBg paddingLftRt30Rt0" style="border-right:1px solid #3c5a9a;">
                    <div >

                        <div class="BackToLogin paddingLftRt30"><a href="welcome">Back to Login</a></div>
                        <br/>
                        <div >                                

                            <span class="LoginHead" ><font  style="text-align: center; padding-left: 200px;">Resending or Updating Email</font></span>
                            <br/>
                            <br>
                            <br>
                            
                            <font color="#12b0e0" style="text-align: left; ">

                          <form:form class="form floating-label" accept-charset="utf-8" method="POST"  modelAttribute="registrationForm">
                                
                              <div class="col-sm-8">
                                        <font color="blue"> Hello ${userId}, <br>Your registered e-mail Id is: ${emailIds}</font>
                                       
                                        <br>If you want Resend Link. 
                                        <br>
                                       
                                    </div> 
                                        <div class="col-sm-8">
                                            
                                              <div class="col-sm-6">
                                            <button class="btn btn-primary btn-raised" type="submit" formaction="resendingLink">Resend Link <span>>></span></button>
                                        </div>
                                        </div> 
                                       
                                     
                                    <div class="col-sm-8">
                                         OR
                                         <br>If you want change Email.<br>
                                        <label>Email Id</label>
                                        <form:hidden path="pageTitle" value="second"></form:hidden>
                                        <form:hidden path="userId" value="${userId}"></form:hidden>
                                        <form:input path="emailId" class="form-control" placeholder="Registered Email Id"/>
                                        <font color="red"> <form:errors path="emailId"></form:errors></font>

                                        </div>
                                        <div>

                                        </div>    
                                       
                                        <div class="clearfix"></div>

                                        <div class="row MarginTop20">
                                            <div class="col-xs-6 text-left">
                                                <button class="btn btn-primary btn-raised" type="submit" formaction="updatingMail">Update Email <span>>></span></button>
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