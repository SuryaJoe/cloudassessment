<%-- 
    Document   : RegisterForm
    Created on : 13 May, 2016, 12:17:32 PM
    Author     : cjp
--%>

<%-- RegisterForm jsp for registering user  --%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript" src="js/countries.js"></script>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Cloud Journee - Registration</title>

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
            <div class="card contain-sm-Registration style-transparent">
                <div class="card-body LoginBg paddingLftRt0" style="border-right:1px solid #3c5a9a;">
                    <div class="row MarginLftRt-12">
                        <div class="col-sm-8 PaddingRight10" style="float:right;">
                            <ul> <div class="BackToLogin" ><a href="welcome" >  <font color="green"> 
                                        Back to Login Page</font></a></div></ul>
                            <br>
                            <font color="#007cae"> <span class="LoginHead" >New User Sign-up</span></font>
                            <br>

                        </div> 

                        <div class="col-sm-12 PaddingLftRt30">

                            <form:form class="form floating-label" accept-charset="utf-8" method="POST" action="Registered" modelAttribute="registrationForm">


                                <div class="col-sm-6 ">
                                    <div class="row PaddingRight10">

                                        <div>
                                            <label>First Name*</label>
                                            <form:input path="firstName" class="form-control" placeholder="Enter your first name"/>                                           
                                            <form:hidden path="pageTitle" value="first"></form:hidden>
                                            <font color="red"> <form:errors path="firstName"></form:errors>
                                            </div>
                                            <div>
                                                <label>Middle Name</label>                                           
                                            <form:input path="middleName" class="form-control" placeholder="Enter your middle name"/>                                          

                                        </div>
                                        <div>
                                            <label>Last Name*</label>                                           
                                            <form:input path="lastName" class="form-control" placeholder="Enter your last name"/> 
                                            <form:errors path="lastName"></form:errors>

                                            </div> 
                                            <div>
                                                <label>Work Email Id*</label>                                           
                                            <form:input path="emailId" class="form-control" placeholder="Enter work Email Id"/> 
                                            <form:errors path="emailId"></form:errors>
                                            </div>      

                                            <div>
                                                <label>Organization Name*</label>
                                            <form:input path="organazationName" class="form-control" placeholder="Enter organization Name"/>
                                            <font color="red"> <form:errors path="organazationName"></form:errors></font>
                                            </div>
                                            <div>
                                                <label>No of Employees*</label>
                                            <form:select path="employees" class="form-control">
                                                <form:option selected="selected"  value="" label="-- Choose one--"/>
                                                <form:options  items="${employee}"/>
                                            </form:select>
                                            <font color="red"> <form:errors path="employees"></form:errors>    
                                            </div>
                                        </div>
                                    </div>  

                                    <div class="col-sm-6">
                                        <div class="row PaddingLeft10">

                                            <div>
                                                <label>Contact Number*</label>
                                            <form:input path="phone" class="form-control" placeholder="Enter your Phone Number" />
                                            <font color="red"> <form:errors path="phone"></form:errors></font>
                                            </div>
                                            <div>
                                                <label>Country*</label>
                                                <input type="hidden" name="countryValue" id="countryValue" value="${registrationForm.countries}"/>
                                                 <input type="hidden" name="stateValue" id="stateValue"  value="${registrationForm.states}"/>

                                            <form:select path="countries"  class="form-control" >
                                                <form:option selected="selected"  value="${registrationForm.countries}" label="${registrationForm.countries}"/> 
                                                <%--  <form:options  items="${registrationFormObject.country}"/>--%>
                                            </form:select>
                                            <font color="red"> <form:errors path="countries"></form:errors></font>
                                            </div>
                                            <div>
                                                <label>State</label>
                                            <form:select path="states"  class="form-control">
                                                <form:option selected="selected"  value="${registrationForm.states}" label="${registrationForm.states}"/> 
                                                <%-- <form:options   items="${registrationFormObject.state}"/>--%>
                                            </form:select>
                                            <font color="red"> <form:errors path="states"></form:errors></font>
                                            </div>
                                            <script language="javascript">
                                                populateCountries("countries", "states");

                                            </script>

                                            <div>
                                                <label>User Id*</label>
                                            <form:input path="userId" class="form-control" placeholder="Enter new USER ID " />
                                            <font color="red"> <form:errors path="userId"></form:errors></font>
                                            </div> 
                                            <div>
                                                <label>Password*</label>
                                            <form:password path="pass1" class="form-control" placeholder="Enter password with minimum 6 characters" />
                                            <font color="red"> <form:errors path="pass1"></form:errors></font>
                                            </div> 
                                            <div>
                                                <label>Confirm Password*</label>
                                            <form:password path="pass2" class="form-control" placeholder="Confirm Password" />
                                            <font color="red"> <form:errors path="pass2"></form:errors></font>


                                            </div>

                                            <div class="col-xs-8 text-left">
                                                <div class="row PaddingTop20">
                                                    <button class="btn btn-primary btn-raised" type="submit">Create Account <span>>></span></button>
                                                </div>
                                            </div>   


                                        </div>
                                    </div>  

                                    <div class="clearfix"></div>
                            </form:form>
                        </div>

                        <!--end .col -->
                        <!--end .col -->
                        <!--                        <div class="col-sm-4 text-center LoginBoxBlue">
                        
                                                     
                        
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
                    </div><!--end .row -->
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
