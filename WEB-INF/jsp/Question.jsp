
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Cloud Journee - Questionnaire 1</title>

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
<!--        <link type="text/css" rel="stylesheet" href="css/style.css" />-->

        <!-- CUSTOM STYLESHEETS ENDS-->
        <script>
            function submitForm(action) {

                document.getElementById("qtta").action = action; //Setting form action to "success.php" page
                document.getElementById("qtta").submit(); // Submitting form

                return true;

            }
        </script>  
        <script>
            function submitForm1(action) {

                document.getElementById("save").action = action; //Setting form action to "success.php" page
                document.getElementById("save").submit(); // Submitting form

                return true;

            }
        </script>  
         <script type="text/javascript">
            function openHelp()
            {
                var URL = "help";
                window.open(URL, "Help", "width=700,height=450");
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
<script language="javascript" type="text/javascript">
    //this code handles the F5/Ctrl+F5/Ctrl+R
    document.onkeydown = checkKeycode;
    function checkKeycode(e) {
        var keycode;
        if (window.event)
            keycode = window.event.keyCode;
        else if (e)
            keycode = e.which;

        // Mozilla firefox
        if ($.browser.mozilla) {
            if (keycode === 116 ||(e.ctrlKey && keycode === 82)) {
                if (e.preventDefault)
                {
                    e.preventDefault();
                    e.stopPropagation();
                }
            }
        } 
        // IE
        else if ($.browser.msie) {
            if (keycode === 116 || (window.event.ctrlKey && keycode === 82)) {
                window.event.returnValue = false;
                window.event.keyCode = 0;
                window.status = "Refresh is disabled";
            }
        }
    }
    </script>


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
                    <li>Start Assessment</li><li>>></li><li>${assessmentForm.pageTitle}</li>
                </ul>
            </div>
            <div class="clearfix"></div>
            <div class="PageHeading">
                <!--Page Heading Starts-->
                <form:form id="qtta" method="POST" >  
                    <h1><c:if test="${assessmentForm.pageId==1}">
                            <a href="javascript:submitForm('Advise?previous=true')">
                        </c:if>
                        <%--check pageId is not equals 1 --%>
                        <c:if test="${assessmentForm.pageId!=1}">
                             <a href="javascript:submitForm('questionnaireStatus?previous=true')">
                           
                             </c:if><i class="fa fa-arrow-left" aria-hidden="true"></i></a> ${assessmentForm.pageTitle}</h1>
                                    
                </form:form>
<!--                 <div class="col-md-12 paddingLftRt0">
                <div class="row">
                    <div class="col-md-3 col-xs-12 IconTopRt paddingLftRt0">

                        <ul>
                           
                                                             <li> <span class="share"></span>Share with your friends</li>
                            <li> <span class="help"></span><a href="javascript:openHelp()" >Need Help?</a></li>
                           
                           
                        </ul>

                    </div>
                </div>

            </div>-->
                   
            </div>
            <!--Page Heading Ends-->

            <!--Top Right Help/Share button starts-->

           
            <!--Top Right Help/Share button ends-->

            <div class="Controller BgWhite" style="overflow:hidden;">
                <div class="col-md-12">
                    <div class="row">

                        <!--Assessment Slider Starts-->
                        <div id="rootwizard1" class="form-wizard form-wizard-horizontal">
                            <div class="form-wizard-nav">
                                <div class="progress"><div class="progress-bar progress-bar-primary"></div></div>
                                <ul class="nav nav-justified">

                                    <%--<li><a href="#" data-toggle="tab"  class="disabled"><span class="step">1</span> <span class="title">introduction</span></a></li>
                                        <c:set var="lastPageId" value=""/>--%>
                                        <c:forEach var="page" items="${pagesList}">
                                            <c:if test="${page.pageId==assessmentForm.pageId}">
                                            <li class="active"><a href="#tab" data-toggle="tab"  class="disabled"><span class="step">${page.pageId}</span> <span class="title">${page.pageTitle}</span></a></li>
                                                </c:if>
                                                <c:if test="${page.pageId!=assessmentForm.pageId}">
                                            <li><a href="#" data-toggle="tab"  class="disabled"><span class="step"> ${page.pageId}</span> <span class="title"> ${page.pageTitle}</span></a></li>
                                            </c:if>
                                            <c:set var="lastPageId" value="${page.pageId+1}"/>
                                        </c:forEach>

<%--                                    <li><a href="#" data-toggle="tab"  class="disabled"><span class="step">${lastPageId+1}</span> <span class="title">Report</span></a></li>  --%>

                                </ul>
                            </div><!--end .form-wizard-nav -->

                        </div>

                        <!--Assessment Slider Ends-->


                    </div>
                </div>



            </div>


            <div class="clearfix"></div>  

            <!--Data Table starts-->
            <div class="col-md-12 BgWhite">

                <div class="row">


                    <form:form id="save"  modelAttribute="assessmentForm" class="form floating-label">
                        <div class="tab-content clearfix">
                            <div class="tab-pane active" id="tab1">


                                <div class="col-md-12">

                                    <div class="row">
                                        <form:hidden path="organization" value="${assessmentForm.organization}" />
                                        <form:hidden path="userId" value="${assessmentForm.userId}" />
                                        <form:hidden path="pageId" value="${assessmentForm.pageId}" />
                                        <%--   <c:forEach var="questions" varStatus="counted" items="${assessmentForm.questions}">
                                            <div class="col-md-4">  


                                                <form:hidden path="questions[${counted.index}].questionId" value="${questions.questionId}" />
                                                <label> ${questions.question}</label>

                                                <c:choose>
                                                    <c:when test="${questions.UIItem== 'select'}">
                                                        <form:select path="questions[${counted.index}].selectedOption"  class="form-control">                                                                                                                                     
                                                            <c:if test="${questions.selectedOption==null || questions.selectedOption==''}">
                                                                <form:option selected="selected"  value="" label="-- Choose one--"/> 
                                                                <form:options items="${questions.optionMap}" /> 
                                                            </c:if>
                                                            <c:if test="${questions.selectedOption!=null  }">
                                                                <c:forEach var="option" items="${questions.optionMap}">
                                                                    <c:if test="${questions.selectedOption eq option.key}">                                                                                
                                                                        <form:option selected="selected"  value="${option.key}" label="${option.value}"/> 
                                                                    </c:if>  
                                                                    <c:if test="${questions.selectedOption ne option.key}">
                                                                        <form:option  value="${option.key}" label="${option.value}"/>  
                                                                    </c:if>
                                                                </c:forEach>

                                                            </c:if>
                                                        </form:select>    
                                                    </c:when>
                                                    <c:when test="${questions.UIItem== 'checkbox'}">  
                                                        <c:forEach var="option" items="${questions.optionMap}">
                                                            <c:if test="${questions.selectedOption==null}">
                                                                <form:checkbox path="questions[${counted.index}].selectedOption" label="${option.key}" value="${option.value}"  class="form-control" />
                                                            </c:if>
                                                            <c:if test="${questions.selectedOption!=null && questions.selectedOption!=''}">
                                                                <c:set var="choosen" value="no"/>
                                                                <c:forTokens var="token" items="${questions.selectedOption}" delims=",">

                                                                    <c:if test="${token eq option.key && choosen=='no'}"> 
                                                                        <form:checkbox path="questions[${counted.index}].selectedOption" label="${option.key}" value="${option.value}" checked="checked"  class="form-control" />
                                                                        <c:set var="choosen" value="yes"/>
                                                                    </c:if>

                                                                </c:forTokens>
                                                                <c:if test="${token ne option.key && choosen=='no'}">
                                                                    <form:checkbox path="questions[${counted.index}].selectedOption" label="${option.key}" value="${option.value}"  class="form-control" />

                                                                </c:if> 
                                                            </c:if>

                                                        </c:forEach>

                                                    </c:when>  
                                                    <c:when test="${questions.UIItem== 'radio'}">
                                                        <c:forEach var="option" items="${questions.optionMap}">
                                                            <c:if test="${questions.selectedOption==null}">
                                                                <form:radiobutton path="questions[${counted.index}].selectedOption" label="${option.key}" value="${option.value}"  class="form-control" />
                                                            </c:if>
                                                            <c:if test="${questions.selectedOption!=null}">
                                                                <c:if test="${questions.selectedOption==option.key}"> 
                                                                    <form:radiobutton path="questions[${counted.index}].selectedOption" label="${option.key}" value="${option.value}" checked="checked"  class="form-control" />
                                                                </c:if>
                                                                <c:if test="${questions.selectedOption!=option.key}">
                                                                    <form:radiobutton path="questions[${counted.index}].selectedOption" label="${option.key}" value="${option.value}"  class="form-control" />
                                                                </c:if>    


                                                            </c:if>

                                                        </c:forEach>
                                                    </c:when>
                                                </c:choose>    
                                               
                                                 <font color="red"><form:errors path="questions[${counted.index}].selectedOption" ></form:errors></font>	
                                                </div>
                                        </c:forEach>

                                        <div class="clearfix"></div> --%>
                                        <c:forEach var="applications" varStatus="maincounted" items="${assessmentForm.applications}">

                                            <form:hidden path="applications[${maincounted.index}].applicationName" value="${applications.applicationName}" />
                                            <c:forEach var="questions" varStatus="counted" items="${applications.questions}">
                                                <div class="col-md-4">  
                                                    <form:hidden path="applications[${maincounted.index}].questions[${counted.index}].questionId" value="${questions.questionId}" />

                                                    <label> ${counted.count}-${questions.question}<c:if test="${questions.mandatory=='yes'}"><font color="red">*</font></c:if></label>	                           								
                                                     <div class="clearfix"></div>
                                                   
                                                    <c:choose>
                                                        <c:when test="${questions.UIItem== 'select'}">
                                                            <form:select path="applications[${maincounted.index}].questions[${counted.index}].selectedOption" class="form-control"> 
                                                                <c:if test="${questions.selectedOption==null  || questions.selectedOption==''}">
                                                                    <form:option selected="selected"  value="" label="-- Choose one--"/> 
                                                                    <form:options items="${questions.optionMap}" /> 
                                                                </c:if>
                                                                <c:if test="${questions.selectedOption!=null  && questions.selectedOption!=''}">
                                                                    
                                                                    <c:forEach var="option" items="${questions.optionMap}">
                                                                        <c:if test="${questions.selectedOption==option.key}">                                                                               
                                                                            <form:option selected="selected"  label="${option.value}" value="${option.key}"/> 
                                                                        </c:if>  
                                                                        <c:if test="${questions.selectedOption!=option.key}">
                                                                            <form:option  label="${option.value}" value="${option.key}"/>  
                                                                        </c:if>
                                                                    </c:forEach>

                                                                </c:if>
                                                            </form:select>  
                                                        </c:when>
                                                        <c:when test="${questions.UIItem== 'checkbox'}">
                                                           
                                                            <c:forEach var="option" items="${questions.optionMap}">
                                                                <c:if test="${questions.selectedOption==null}">
                                                                    <form:checkbox path="applications[${maincounted.index}].questions[${counted.index}].selectedOption" label="${option.value}" value="${option.key}" />
                                                                </c:if>
                                                                <c:if test="${questions.selectedOption!=null && questions.selectedOption!=''}">
                                                                    <c:set var="choosen" value="no"/>
                                                                    <c:forTokens var="token" items="${questions.selectedOption}" delims=",">

                                                                        <c:if test="${token eq option.key && choosen=='no'}"> 
                                                                            <form:checkbox path="applications[${maincounted.index}].questions[${counted.index}].selectedOption"  label="${option.value}" value="${option.key}" checked="checked" />
                                                                            <c:set var="choosen" value="yes"/>
                                                                        </c:if>

                                                                    </c:forTokens>
                                                                    <c:if test="${token ne option.key && choosen=='no'}">
                                                                        <form:checkbox path="applications[${maincounted.index}].questions[${counted.index}].selectedOption" label="${option.value}" value="${option.key}" />

                                                                    </c:if> 
                                                                </c:if>

                                                            </c:forEach>
                                                            
                                                               <div style="height:25px;"></div>
                                                        </c:when>  
                                                        <c:when test="${questions.UIItem== 'radio'}">
                                                          
                                                            <c:forEach var="option" items="${questions.optionMap}">
                                                                <c:if test="${questions.selectedOption==null}">
                                                                    <form:radiobutton path="applications[${maincounted.index}].questions[${counted.index}].selectedOption" label="${option.value}" value="${option.key}" />
                                                                </c:if>
                                                                <c:if test="${questions.selectedOption!=null}">
                                                                    <c:if test="${questions.selectedOption==option.key}"> 
                                                                        <form:radiobutton path="applications[${maincounted.index}].questions[${counted.index}].selectedOption" label="${option.value}" value="${option.key}" checked="checked" />
                                                                    </c:if>
                                                                    <c:if test="${questions.selectedOption!=option.key}">
                                                                        <form:radiobutton path="applications[${maincounted.index}].questions[${counted.index}].selectedOption" label="${option.value}" value="${option.key}" />
                                                                    </c:if>    


                                                                </c:if>

                                                            </c:forEach>
                                                            <div style="height:25px;"></div>
                                                        </c:when>
                                                        <c:when test="${questions.UIItem== 'text'}">                                                                                                
                                                            <form:input  path="applications[${maincounted.index}].questions[${counted.index}].selectedOption" class="form-control" value="${fn:replace(questions.selectedOption, '`!',',')}"/>
                                                        </c:when>
                                                        
                                                    </c:choose>    

                                                    <font color="red"><form:errors path="applications[${maincounted.index}].questions[${counted.index}].selectedOption" ></form:errors></font>

                                                    </div>
                                                   
                                            </c:forEach>
                                        </c:forEach>     
                                          
                                        <div class="clearfix"></div>
                                        <div Style="height:25px;"></div>
                                        <div class=" col-md-2 col-xs-12 text-left PaddingTop10 " ></div>
                                        <div class=" col-md-2 col-xs-12 text-left PaddingTop10 " ></div>
                                         <div class=" col-md-2 col-xs-12 text-left PaddingTop10 " ></div>
                                        <div class=" col-md-2 col-xs-12 text-left PaddingTop10 " >
                                            <c:if test="${assessmentForm.pageId==1}">
                                                <input type="submit" value="&#8606; PREVIOUS" formmethod="post" formaction="Advise?previous=true" class="btn btn-info btn-raised">

                                            </c:if>
                                            <%--check pageId is not equals 1 --%>
                                            <c:if test="${assessmentForm.pageId!=1}">
                                                <input type="submit" value="&#8606; PREVIOUS" formmethod="post"  formaction="questionnaireStatus?previous=true" class="btn btn-info btn-raised">

                                            </c:if>
                                        </div> 
                                        <div class=" col-md-2 col-xs-12 text-left PaddingTop10">        
                                            <u><a href="javascript:submitForm1('questionnaireStatus?save=true')" class="btn btn-info btn-raised">Save</a></u>
                                        </div>      
                                        <div class=" col-md-2 col-xs-12 text-left PaddingTop10">    
                                            <%--check pageId is not equals last pageId--%>
                                            <c:if test="${assessmentForm.pageId<assessmentForm.lastPageId}">
                                                <input type="submit" value="NEXT &#8608;" formmethod="post" formaction="startQuestionnaire" class="btn btn-info btn-raised">


                                            </c:if>
                                            <%--check pageId is equals last pageId--%>
                                            <c:if test="${assessmentForm.pageId==assessmentForm.lastPageId}">
                                                <input type="submit" value="Submit &#8623;" formmethod="post" formaction="submitQuestionnaire" class="btn btn-info btn-raised">
                                            </c:if>
                                        </div> 
                                        


                                    </div>

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