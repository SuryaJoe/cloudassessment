<%-- 
    Document   : welcome
    Created on : 10 May, 2016, 5:23:26 PM
    Author     : cjp
--%>
<%-- LogIn page is for user authentication to enter to survey  --%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>CloudJournee - Login</title>
        <%@page import="nl.captcha.Captcha"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
        <!-- BEGIN META -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="keywords" content="your,keywords">
        <meta name="description" content="Short explanation about this website">
        <!-- END META -->
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
        <script src="js/jquery-3.0.0.min.js" type="text/javascript"></script>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link rel="stylesheet" href="/resources/demos/style.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <!-- BEGIN STYLESHEETS -->
        <link href='http://fonts.googleapis.com/css?family=Roboto:300italic,400italic,300,400,500,700,900' rel='stylesheet' type='text/css'/>
        <link type="text/css" rel="stylesheet" href="css/bootstrap.css?1422792965" />
        <link type="text/css" rel="stylesheet" href="css/cloudjurnee.css?1425466319" />
        <link type="text/css" rel="stylesheet" href="css/font-awesome.min.css?1422529194" />
        <link type="text/css" rel="stylesheet" href="css/material-design-iconic-font.min.css?1421434286" />
        <!-- END STYLESHEETS -->
        <link type="text/css" rel="stylesheet" href="css/custom.css" />
        <!-- CUSTOM STYLESHEETS STARTS-->


        <script  type="text/javascript">
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
        <script type="text/javascript">
            setTimeout(function () {
                location.reload();
            }, 3000 * 1000);
        </script>



        <!-- CUSTOM STYLESHEETS ENDS-->

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
        <script type="text/javascript" src="assets/js/libs/utils/html5shiv.js?1403934957"></script>
        <script type="text/javascript" src="assets/js/libs/utils/respond.min.js?1403934956"></script>
        <![endif]-->
    </head>
    <body class="menubar-hoverable header-fixed LoginPageBg">
        <!-- BEGIN HEADER-->
        <header id="header" width="58px;">
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
        <div id="dialog-confirm" title="Empty the recycle bin?">
            <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>These items will be permanently deleted and cannot be recovered. Are you sure?</p>
        </div>
        <section class="section-account">

            <div class="spacer"></div>
            <div class="card contain-sm style-transparent">
                <div class="card-body LoginBg paddingLftRt0" style="border-right:1px solid #3c5a9a;">
                    <div class="row MarginLftRt-12">
                        <div class="col-sm-7 PaddingLftRt30">

                            <br/>
                            <span class="LoginHead">LOGIN</span>
                            <br/>  


                            <form:form class="form floating-label" method="POST" action="SubmittedLogIn" accept-charset="utf-8" modelAttribute="userLogInForm">
                                <div class="PaddingLeft10">
                                    <c:if test="${errorMessage!=null}">
                                        <font color="red"> ${errorMessage}</font>
                                    </c:if>
                                    
                                   <font color="red"> <form:errors path="userorpassword"></form:errors>${userorpassword}</font>
                                    
                                    <font color="red"> <form:errors path="activate" htmlEscape="false" ></form:errors></font>
                                    </div>
                                    <div>

                                        <label>User Id </label>
                                    <form:input path="userId" class="form-control" placeholder="Your ID"/>                                   
                                    <font color="red"> <form:errors path="userId"></form:errors>
                                    </div>
                                    <div>
                                        <label>Password</label>
                                    <form:password path="password" class="form-control" placeholder="Password"/>
                                    <font color="red"> <form:errors path="password"></form:errors></font>

                                    </div>
                                    <div style="margin-top:13px;" id="captcha_div">
                                    <form:label path="captchaImage"  width="302" height="50" alt="" class="img-responsive"><img id="captchaImages" src="${pageContext.request.contextPath}/CaptchaServlet"> <%--<a id="captchaServlet" href=""><img src="img/refresh.png" width="40" height="40" alt="Cloud Journee" > </a>--%></form:label>

                                        <font color="red"> <form:errors path="captchas"></form:errors>${captchasMsg}</font>
                                    </div>
                                    <div class="form-group">
                                    <form:input  path="captchas" class="form-control"  placeholder="Enter the Text you see"/>
                                </div>

                                <div class="row" style="padding-top:10px">
                                    <div class="col-xs-8 text-left">

                                        <button class="btn btn-primary btn-raised" type="submit" >Login <span>>></span></button>
                                    </div>


                                    <div class="col-xs-4 text-right">
                                        <!--                                        <div class="checkbox checkbox-inline checkbox-styled">
                                                                                    <label for="remember"> <input type="checkbox" name="remember" id="remember" />
                                                                                        Remember </label>
                                                                                </div>-->
                                    </div><!--end .col -->
                                    <!--end .col -->
                                </div><!--end .row -->
                                <p class="ForgotPass">Forgot password? <a href="recovery">click here</a></p>
                            </form:form>
                        </div>

                        <!--end .col -->
                        <div class="col-sm-5 text-center LoginBoxBlue">

                            <h3 class="text-light">
                                Not a Member?
                            </h3>
                            <p class="SingnUpText">Will take you less than 30 seconds to complete the registration process</p>
                            <div class="UnderLine"></div>
                            <br><br>
                            <div class="RegisterNowButt">
                                <a href="Registration">Register now

                                    <span>>></span></a>
                            </div>
                        </div><!--end .col -->
                    </div><!--end .row -->
                </div><!--end .card-body -->
            </div><!--end .card -->
        </section>
        <!-- END LOGIN SECTION -->




    </body>
</html>




