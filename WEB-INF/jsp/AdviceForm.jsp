<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<script type="text/javascript" src="js/application.js"></script>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Cloud Journee - Start Assessment</title>

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
        <link type="text/css" rel="stylesheet" href="css/libs/wizard/wizard.css" />
        <!-- END STYLESHEETS -->       
        <!-- CUSTOM STYLESHEETS STARTS-->
        <link type="text/css" rel="stylesheet" href="css/custom.css" />
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
        <!-- CUSTOM STYLESHEETS ENDS-->

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
        <script type="text/javascript" src="js/libs/utils/html5shiv.js?1403934957"></script>
        <script type="text/javascript" src="js/libs/utils/respond.min.js?1403934956"></script>
        <![endif]-->
    </head>
    <body class="menubar-hoverable header-fixed MainPageBg">
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
                <div class="headerbar-right">
                    <ul class="header-nav header-nav-options">

                        <!--end .dropdown -->
                        <!--end .dropdown -->
                    </ul><!--end .header-nav-options -->
                    <ul class="header-nav header-nav-profile">
                        <li class="dropdown">
                            <a href="javascript:void(0);" class="dropdown-toggle ink-reaction" data-toggle="dropdown">
                                <img src="img/avatar1.jpg" alt="" />
                                <span class="profile-info">
                                    Hello <font style="text-transform: capitalize;">${firstname} ${lastname}</font>
                                    <small></small>
                                </span>
                            </a>
                            <ul class="dropdown-menu animation-dock">
                                <!--                                <li class="dropdown-header">Settings</li>
                                                                <li><a href="#">My profile</a></li>-->
                                <li class="divider"></li>
                                <!--                                <li><a href="#"><i class="fa fa-fw fa-lock"></i> Lock</a></li>-->
                                <li><a href="logout"><i class="fa fa-fw fa-power-off text-danger"></i> Logout</a></li>
                            </ul><!--end .dropdown-menu -->
                        </li><!--end .dropdown -->
                    </ul><!--end .header-nav-profile -->
                    <!--end .header-nav-toggle -->
                </div><!--end #header-navbar-collapse -->
            </div>
        </header>
        <!-- END HEADER-->
        <!-- BEGIN LOGIN SECTION -->
        <section class="section-account">

            <div class="spacerMain"></div>

            <div class="BreadCrumb">
                <ul>
                    <li><a href="AdviceReport">Homepage</a></li>
                    <li>>></li>
                    <li>Start Assessment</li>
                </ul>
            </div>
            <div class="clearfix"></div>
            <div class="PageHeading">
                <!--Page Heading Starts-->
                <h1><a href="AdviceReport"><i class="fa fa-arrow-left" aria-hidden="true"></i></a> Assessment - New Application</h1>

                <!--Page Heading Ends-->

                <!--                <div class="Controller">
                                    <div class="col-md-12">
                                        <div class="row">
                
                <%--    Assessment Slider Starts
                    <div id="rootwizard1" class="form-wizard form-wizard-horizontal">
                        <div class="form-wizard-nav">
                            <div class="progress"><div class="progress-bar progress-bar-primary"></div></div>
                            <ul class="nav nav-justified">
                                <li class="active"><a href="#tab1" data-toggle="tab" class="disabled"><span class="step">1</span> <span class="title">introduction</span></a></li>
                                 <c:set var="lastPageId" value=""/>
                                 <c:forEach var="page" items="${pagesList}">
                                <li><a href="#" data-toggle="tab" class="disabled"><span class="step" > ${page.pageId+1}</span><span><span class="title"> ${page.pageTitle}</span></span></a></li>
                                <c:set var="lastPageId" value="${page.pageId+1}"/>
                                </c:forEach>
                               
                                <li><a href="#" data-toggle="tab" class="disabled"><span class="step">${lastPageId+1}</span> <span class="title">Report</span></a></li>
                               
                            </ul>
                        </div>end .form-wizard-nav 

                            </div>--%>

                            Assessment Slider Ends


                        </div>
                    </div>



                </div>-->


                <div class="clearfix"></div>  
                <div class="spacer"></div> 
                <!--Data Table starts-->
                <div class="col-md-12 BgWhite" >

                    <div class="row">


                        <form:form method="POST" action="StartAdvice" modelAttribute="assessmentForm" class="form floating-label">
                            <div class="tab-content clearfix">

                                <div class="tab-pane active" id="tab1">
                                    <div class="clearfix"></div>
                                    <div class="col-md-4">

                                        <div class=" PaddingLeft10">

                                            <label class="head">*Organization Name</label>
                                            <form:hidden path="pageId" value="${assessmentForm.pageId}" class="form-control" />
                                            <form:input path="organization" class="form-control" title="Enter Organization Name" value="${assessmentFormList.organization}" placeholder="Organization Name"/> <font color="red"> 
                                            <div class="spacerMain"></div>											</div>


                                    </div>

                                    <div class="col-md-4">
                                        <div>
                                            <label class="head">*Application Name</label>

                                            <!--                                         <table  class="table table-hover small-text" id="tbApp" >-->

                                            <c:if test="${not empty assessmentFormList.applications}">
                                                <c:forEach  varStatus="counted" var="application" items="${assessmentFormList.applications}">

                                                    <c:if test="${assessmentFormList.applications.size()==1}">
                                                        <tr id="items">  
                                                            <td id="0"><input type="text" name="applications[0].applicationName" id="applications[0].applicationName" value="${application.applicationName}" class="form-control"/><font color="red"> </td>
                                                        </tr>
                                                    </c:if>    
                                                    <c:if test="${assessmentFormList.applications.size()>1}">
                                                        <c:if test="${application.applicationName!=null || application.applicationName!=''}">
                                                            <tr id="items">  
                                                                <c:set var="appId" value="applications[${counted.index}].applicationName"></c:set>
                                                                <td ><input type="text" name="${appId}" id="${appId}" value="${application.applicationName}" class="form-control"/><font color="red"> </td>
                                                            </tr> 
                                                        </c:if>
                                                    </c:if>
                                                </c:forEach>
                                            </c:if>

                                            <%--  <c:forEach items="assessmentForm.applications" var="application">--%>
                                            <c:if test="${empty assessmentFormList.applications}">
                                                <tr id="items" class=" PaddingLeft10">               
                                                    <td id="0"><input type="text" name="applications[0].applicationName" id="applications[0].applicationName" class="form-control" placeholder="Application Name"/><font color="red"> </td>
                                                </tr> 
                                            </c:if>
                                        </div>
                                        <div class=" col-md-8 col-xs-12 text-left PaddingTop20 paddingRt0 paddingBttm20">
                                            <input type="submit" value=" Start Assessment >>" class="btn btn-block ink-reaction btn-warning"/>

                                        </div>

                                        <%-- </c:forEach>--%>
                                        <!--                                    </table>-->


                                        <!--                                        <div class=" col-md-4 col-xs-12 text-left PaddingTop10 paddingLft0">
                                                                                    
                                                                                    <button class="btn btn-primary btn-raised" type="button" id="addMore">Add Application <span>>></span></button>
                                                                                    <button class="btn btn-primary btn-raised" type="button" id="delete">Remove Application <span>>></span></button>
                                                                                    
                                                                                </div>-->
                                    </div>
                                    <div class="col-md-4">
                                        <font color="red"><form:errors path="*" /></font>
                                    </div>


                                </div><!--end #tab1 -->

                            </div><!--end .tab-content -->
                        </form:form>




                    </div>

                </div> 

                <!--Data Table ends-->
                <!--end .card -->
        </section>
        <!-- END LOGIN SECTION -->

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