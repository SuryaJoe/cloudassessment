<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Resume Assessment / View Assessment Report</title>

        <!-- BEGIN META -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="keywords" content="your,keywords">
        <meta name="description" content="Short explanation about this website">
        <!-- END META -->

        <!-- BEGIN STYLESHEETS -->
        <link href='http://fonts.googleapis.com/css?family=Roboto:300italic,400italic,300,400,500,700,900' rel='stylesheet' type='text/css'/>
        <link type="text/css" rel="stylesheet" href="css/bootstrap.css" />
        <link type="text/css" rel="stylesheet" href="css/pagination.css" />
        <link type="text/css" rel="stylesheet" href="css/cloudjurnee.css" />
        <link type="text/css" rel="stylesheet" href="css/font-awesome.min.css" />
        <link type="text/css" rel="stylesheet" href="css/material-design-iconic-font.min.css" />
        <link type="text/css" rel="stylesheet" href="css/libs/DataTables/jquery.dataTables.css" />
        <link type="text/css" rel="stylesheet" href="css/libs/DataTables/extensions/dataTables.colVis.css" />
        <link type="text/css" rel="stylesheet" href="css/libs/DataTables/extensions/dataTables.tableTools.css" />
        <!-- END STYLESHEETS -->       
        <!-- CUSTOM STYLESHEETS STARTS-->
        <link type="text/css" rel="stylesheet" href="css/custom.css" />

        <!-- BEGIN JAVASCRIPT -->

        <script src="js/libs/jquery/jquery-1.11.2.min.js"></script>
        <script src="js/libs/jquery/jquery-migrate-1.2.1.min.js"></script>
        <script src="js/libs/bootstrap/bootstrap.min.js"></script>
        <script src="js/libs/spin.js/spin.min.js"></script>
        <script src="js/libs/autosize/jquery.autosize.min.js"></script>
        <script src="js/libs/DataTables/jquery.dataTables.min.js"></script>
        <script src="js/libs/DataTables/extensions/ColVis/js/dataTables.colVis.min.js"></script>
        <script src="js/libs/DataTables/extensions/TableTools/js/dataTables.tableTools.min.js"></script>
        <script src="js/libs/nanoscroller/jquery.nanoscroller.min.js"></script>
        <script src="js/core/source/App.js"></script>
        <script src="js/core/source/AppNavigation.js"></script>
        <script src="js/core/source/AppOffcanvas.js"></script>
        <script src="js/core/source/AppCard.js"></script>
        <script src="js/core/source/AppForm.js"></script>
        <script src="js/core/source/AppNavSearch.js"></script>
        <script src="js/core/source/AppVendor.js"></script>
        <script src="js/core/demo/Demo.js"></script>
        <script src="js/demoDynamicTable1.js"></script>
        <!-- END JAVASCRIPT -->
        <script type="text/javascript">

            function submitForm(action) {

                document.getElementById("qtta").action = action; //Setting form action to "success.php" page
                document.getElementById("qtta").submit(); // Submitting form

                return true;

            }

        </script>
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
                    <!--                    <li><a href="#">Homepage</a></li>-->

                </ul>
            </div>
            <div class="clearfix"></div>
            <div class="PageHeading">
                <!--Page Heading Starts-->
                <h1><a href="LandLogin"><i class="fa fa-arrow-left" aria-hidden="true"></i></a> Resume Assessment / View Assessment Report</h1>

                <!--Page Heading Ends-->

                <div class="Content">
                    <form:form id="qtta" action="Advise" method="POST" >
                        <div class="col-md-10 col-sm-9">
                            <div class="row">
                                <%-- for multiple applications --%>
                                <c:if test="${applicationsStr!=null}">

                                    <font color="#007cae">
                                    Your assessment successfully completed for your multiple applications. Click on the respective reports for
                                    <b>${applicationsStr}</b>  Applications below.
                                    </font>

                                </c:if>

                                <%-- If data not available in applcation --%>    



                                <c:if test="${isAssessmentReady==true }" >
                                    <font color="#007cae">
                                    <c:if test="${assessmentStatus eq 'start' }">
                                        <p >  <font color="#007cae">It looks like your assessments are not ready for your applications.
                                            We encourage you start your assessment now. Please click on for your assessments.</font></p>

                                    </c:if>

                                    <c:if test="${assessmentStatus=='partly_completed'}">
                                        <c:if test="${isAllowedAppAssessment==false }">                                    
                                            <p>  <font color="#007cae">Your assessments are below. Take Appropriate Step to complete partly 
                                                filled assessments or Click on the button for new assessment for Application.</font></p>
                                            Click On the respective link for the Reports.
                                        </c:if>
                                        <c:if test="${isAllowedAppAssessment==true }">
                                            <p>  <font color="#007cae">Your assessments are below. Take appropriate Step to complete partly 
                                                filled assessments.</font></p>
                                            Click on the respective link for the Reports.
                                        </c:if>


                                    </c:if>

                                    <c:if test="${assessmentStatus=='partly_filled'}">
                                        <c:if test="${isAllowedAppAssessment==false }"> 
                                            <p><font color="#007cae">Your assessments are below. Take further steps to complete the assessments, simply by having the answers ready for the questionnaire left.
                                                Click on the button for new assessment for application.</font></p>
                                            </c:if>
                                            <c:if test="${isAllowedAppAssessment==true }"> 
                                            <p>  <font color="#007cae"> Click on the below provided link(s) to resume the Assessment / view the completed Assessment report.<br>
                                                </font></p>
                                            </c:if>

                                    </c:if>

                                    <c:if test="${assessmentStatus=='completed'}">
                                        <c:if test="${isAllowedAppAssessment==false }">
                                            <p>  <font color="#007cae">Your assessments are below. Click on the button for new assessment for Application.</font></p>

                                            Click on the respective link for the Reports.
                                        </c:if>
                                        <c:if test="${isAllowedAppAssessment==true }">
                                            <p> <font color="#007cae"> 
                                            Click on the below provided link(s) to resume the Assessment / view the completed Assessment report.</font></p>
                                        </c:if>

                                    </c:if>
                                    </font>
                                </c:if>
                                <c:if test="${isAssessmentReady==false }">

                                    <font color="#007cae"><p>Your assessment for cloud is not enabled. Please  contact your sales representative. 
                                        You can reach at info@cloudjournee.com.</p>
                                    </font>
                                </c:if>

                                <c:if test="${isAllowedAppAssessment==true }">

                                    <p><font color="#007cae">You are allowed to perform the Assessment only for one application. For assessing more applications, Please drop an email to info@cloudjournee.com</font></p>

                                </c:if>

                                </td>


                            </div>
                        </div>
                        <div class="col-md-2 col-sm-3">
                            <div class="row">
                                <c:if test="${isAllowedAppAssessment==false }">
                                    <div class="Butt"><a href="javascript:submitForm('Advise')">Start Assessment</a></div>
                                </c:if>
                            </div>

                        </div>

                    </form:form>                  
                </div>
            </div>

            <div class="clearfix"></div>  

            <!--Data Table starts-->
            <div class="col-md-12 BgWhite">

                <div class="row">

                    <div class="col-lg-12">
                        <div class="table-responsive">
                            <form:form id="qtta" method="POST" >
                                <table id="datatable1" class="table table-striped table-hover">
                                    <thead>
                                        <tr class="BgGray">
                                            <th>Organization Name</th>
                                            <th>Application Name</th>
                                            <th>Report generated on</th>
                                            <th>Status</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="application" items="${applicationsList}">
                                            <tr>
                                                <td>${application.organization}</td>
                                                <td>${application.application}</td>
                                                <td>${application.reportGeneratedDate}</td>
                                                <c:set var="statuskey" value="${application.organization}${application.application}"></c:set>

                                                <c:if test="${assessments[statuskey]==0}">
                                                    <td> Completed</td>  
                                                    <td class="reportcol"> <u><a href="javascript:submitForm('ResultAnalysis?orgName=${application.organization}&appName=${application.application}')" > View report</a></u>
        <!--                                                <br>  <u><a href="javascript:submitForm('ResultAnalysisForOrganization?orgName=${application.organization}')" >  Organization report</a></u>-->
                                                    </td>
                                                </c:if>
                                                <c:if test="${assessments[statuskey]!=0}">
                                                    <td >  You Paused at the category ${assessments[statuskey]}</td>
                                                    <td class="reportcol"> 

                                                        <u><a href="javascript:submitForm('questionnaireStatus?resumePageId=${assessments[statuskey]}&appName=${application.application}&orgName=${application.organization}')" >  <font color="red">Resume Assessment</font></a></u> 
                                                    </td>

                                                </c:if>

                                                </td>
                                            </tr>
                                        </c:forEach>



                                    </tbody>
                                </table>
                            </form:form>  
                        </div><!--end .table-responsive -->
                    </div><!--end .col -->
                </div>
            </div> 

            <!--Data Table ends-->
            <!--end .card -->
        </section>
        <!-- END LOGIN SECTION -->



    </body>
</html>