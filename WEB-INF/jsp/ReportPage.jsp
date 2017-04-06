<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>CloudJournee - Assessment Report</title>
        <!-- BEGIN META -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="keywords" content="your,keywords">
        <meta name="description" content="Short explanation about this website">
        <!-- END META -->
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jspdf/0.9.0rc1/jspdf.min.js"></script>

        <!-- BEGIN STYLESHEETS -->
        <link href='http://fonts.googleapis.com/css?family=Roboto:300italic,400italic,300,400,500,700,900' rel='stylesheet' type='text/css'/>
        <link type="text/css" rel="stylesheet" href="css/bootstrap.css" />
        <link type="text/css" rel="stylesheet" href="css/cloudjurnee.css" />
        <link type="text/css" rel="stylesheet" href="css/report.css" />
        <link type="text/css" rel="stylesheet" href="css/font-awesome.min.css" />
        <link type="text/css" rel="stylesheet" href="css/material-design-iconic-font.min.css" />
        <link type="text/css" rel="stylesheet" href="css/libs/DataTables/jquery.dataTables.css" />
        <link type="text/css" rel="stylesheet" href="css/libs/DataTables/extensions/dataTables.colVis.css" />
        <link type="text/css" rel="stylesheet" href="css/libs/DataTables/extensions/dataTables.tableTools.css" />
        <link type="text/css" rel="stylesheet" href="css/libs/wizard/wizard.css" />
        <link type="text/css" media="print" rel="stylesheet" href="css/reportprint.css" />
        <!-- END STYLESHEETS -->       
        <!-- CUSTOM STYLESHEETS STARTS-->
        <script src="js/libs/jquery/jquery-1.11.2.min.js"></script>
        <script src="js/libs/jquery/jquery-migrate-1.2.1.min.js"></script>
        <link type="text/css" rel="stylesheet" href="css/custom.css" />
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
        <%--The Following script is for displaying pie chart based on user selction and rules --%>
        <script type="text/javascript">
//            google.charts.load('current', {packages: ['corechart', 'bar', 'scatter', 'table']});
//            google.charts.setOnLoadCallback(drawPieChart);
//            // google.charts.setOnLoadCallback(drawTable);
//            function drawPieChart() {
//                // Define the chart to be drawn.
//
//
//                var data = new google.visualization.DataTable();
//                data.addColumn('string', 'Public cloud vendor');
//                data.addColumn('number', 'Percentage');
//                var value =<%--${cloudList};--%>
//                var options = {
//                    legend: 'none',
//                    pieSliceText: 'label',
//                    title: 'Cloud Compatability',
//                    pieStartAngle: 100,
//                    chartArea: {
//                        left: 200,
//                        top: 20,
//                        right: 100,
//                        bottom: 50,
//                        width: 300,
//                        height: 250
//                    }
//                };
//                data.addRows([
//                    ['AWS', value[0]],
//                    ['Google', value[1]],
//                    ['Azure', value[2]]
//                ]);
//                // Instantiate and draw the chart.
//                var chart = new google.visualization.PieChart(document.getElementById('pieChart'));
//                var table = new google.visualization.Table(document.getElementById('table_div'));
//                chart.draw(data, options);
//                var formatter = new google.visualization.BarFormat({width: 120});
//                //var formatter = new google.visualization.ColorFormat();
//                //formatter.addRange(5, 0, 'white', 'orange');
//                //formatter.addRange(10, null, 'red', '#33ff33');
//                formatter.format(data, 1);
//                table.draw(data, {allowHtml: true, showRowNumber: true, width: '70%', height: '50%', top: 50});
//                // table.draw(data, {showRowNumber: true, width: '60%', height: '50%', top: 50});
//            }

        </script>

        <script type="text/javascript">
            google.charts.load('current', {'packages': ['table']});
            google.charts.setOnLoadCallback(drawTable);
            var clouddata;

            function drawTable() {

                var map = '${reportView.finalCloud}';

                var arry_final = new Array();
                var array_keys = new Array();
                var array_values = new Array();
                var z = map.substr(1, map.length - 2);

                var y = z.split(',');
                for (var i = 0; i < y.length; i++)
                {
                    var new_Array = new Array();
                    var k = y[i];
                    var m = k.split("=");

                    new_Array.push(m[0]);
                    new_Array.push(m[1]);
                    array_keys.push(m[1]);
                    array_values.push(m[0]);
                    arry_final.push(new_Array);
                }
                var options = {
                    legend: 'none',
                    pieSliceText: 'label',
                    title: 'Cloud Compatability',
                    pieStartAngle: 100,
                    chartArea: {
                        left: 25,
                        top: 20,
                        right: 25,
                        bottom: 50,
                        width: 300,
                        height: 250
                    }
                };
                
                var data = new google.visualization.DataTable();
                data.addColumn('string', 'Public Cloud Vendor');
                data.addColumn('string', 'Cloudability Status in %');

//                data.addRows([
//                    [array_values[0], array_keys[0]],
//                    [array_values[1], array_keys[1]],
//                    [array_values[2], array_keys[2]],
//                    [array_values[3], array_keys[3]]
//                ]);
                data.addRows(arry_final);
                data.sort({column: 1, desc: true});
                var formatter = new google.visualization.ColorFormat();
                var formatternew = new google.visualization.NumberFormat({                   
                    suffix: '%'
                });
                 formatternew.format(data, 1); 
                formatter.addRange(Math.min.apply(Math, array_keys), Math.min.apply(Math, array_keys) + 0.000001, 'white', 'red');
                formatter.addRange(Math.min.apply(Math, array_keys) + 0.000002, Math.max.apply(Math, array_keys) - 0.00001, 'white', '#FFC200');
                formatter.addRange(Math.max.apply(Math, array_keys), null, 'white', 'green');

                formatter.format(data, 1); 
                // Apply formatter to second column
               
                var table = new google.visualization.Table(document.getElementById('table_div'));
                table.sortAscending;
                table.draw(data, {allowHtml: true, showRowNumber: true, width: '100%', height: '100%', title: 'Cloud Compatibility Analysis', 'legend': 'right'});

            }
        </script>    

        <script>
            function openHelp()
            {
                var URL = "help";
                window.open(URL, "Help", "width=700,height=450");
            }
            function doit() {
                if (!window.print) {
                    alert("You need NS4.x to use this print button!");
                    return this;
                }
                window.print();
            }
        </script>  

        <script>


            $(function () {

                var specialElementHandlers = {
                    '#editor': function (element, renderer) {
                        return true;
                    }
                };
                $('#cmd').click(function () {
                    var doc = new jsPDF();
                    doc.fromHTML($('#datatable1').html(), 15, 15, {
                        'width': 170, 'elementHandlers': specialElementHandlers
                    });
                    pdf.addImage(chart, 'JPEG', 0, 0);
                    doc.save('sample-file.pdf');
                });
            });
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
        <script>
            function submitForm(action) {

                document.getElementById("qtta").action = action; //Setting form action to "success.php" page
                document.getElementById("qtta").submit(); // Submitting form

                return true;

            }
        </script>  

        <!-- CUSTOM STYLESHEETS ENDS-->

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
        <script type="text/javascript" src="js/libs/utils/html5shiv.js"></script>
        <script type="text/javascript" src="js/libs/utils/respond.min.js"></script>
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

                                <span class="text-lg text-bold text-primary"><img id="logoImage" src="img/logo-cloud-journee.gif" width="120" height="60" alt="Cloud Journee"></span>

                            </div>
                        </li>

                    </ul>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="headerbar-right">

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
                                <!--								<li class="dropdown-header">Settings</li>
                                                                                                <li><a href="#">My profile</a></li>-->
                                <li class="divider"></li>
                                <!--								<li><a href="#"><i class="fa fa-fw fa-lock"></i> Lock</a></li>-->
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
                    <li>Assessment Report</li>
                </ul>
            </div>
            <div class="clearfix"></div>
            <div class="PageHeading">
                <!--Page Heading Starts-->
                <h1><a href="AdviceReport"><i class="fa fa-arrow-left" aria-hidden="true"></i></a> Assessment Report</h1>

                <center><font color="#007cae" size="3">${reportsendmessage}</font></center>
            </div>
            <!--Page Heading Ends-->
            <div class="clearfix"></div> 


            <!--Top Right Help/Share button starts-->

            <div class="col-md-12 paddingLftRt0 downloadHead">
                <div class="row">
                    <div class="col-md-4 col-xs-12 IconTopRt paddingLftRt0">

                        <ul>

                            <li><span class="downloads"></span> <a href="javascript:doit()">Download PDF</a></li>
                            <li>  <form:form id="qtta" method="POST" >  
                                    <span class="share"></span> <a href="javascript:submitForm('EmailReport?organization=${organization}&application=${application}')">Send report to email</a>    
                                </form:form></li>

                        </ul>

                    </div>
                </div>

            </div>

            <!--Page Heading Ends-->

            <div class="clearfix"></div>  

            <!--Data Table starts-->
            <div class="col-md-12 BgWhite" >

                <div class="row">

                    <div class="col-lg-12">
                        <div class="table-responsive">
                            <h3 style=" text-align: center;color:#007cae;">Summary of the Assessment report</h3>
                            <table id="datatable1" class="table table-striped table-hover">

                                <thead>
                                    <tr class="BgGray" style="display:none">
                                        <th></th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:set var="counts" value=""/>
                                    <c:forEach var="question" items="${reportView.questions}" varStatus="counted">
                                        <c:if test="${counted.count%2 !=0}">
                                            <tr class="gradeX AssReport">
                                                <td width="98%">    
                                                </c:if>    

                                                <div class="col-md-6 col-sm-12" id="report">
                                                    <h5>${counted.count}. ${question.question}</h5>
                                                    <p> Ans:  ${question.answer}</p>
                                                </div>
                                                <c:if test="${counted.count%2 ==0 }">
                                                </td> 
                                                <td width="2%">
                                                    &nbsp;
                                                </td>
                                            </tr>
                                        </c:if>
                                        <c:set var="counts" value="${counted.count}"/>
                                    </c:forEach>

                                    <c:if test="${counts%2!=0}">
                                        </td> 
                                    <td width="2%">
                                        &nbsp;
                                    </td>
                                    </tr>
                                </c:if>            


                                </tbody>
                            </table>
                        </div><!--end .table-responsive -->
                    </div><!--end .col -->


                    <div class="col-md-12 BgWhite paddingLftRt20">

                        <div class="row">
                            <div  >
                                <h3 style="text-align:center;color:#007cae;"> Cloud Compatibility Analysis</h3>
                            </div>
                            <div class="clearfix"></div>  

                            <div id="table_div" class="col-lg-8"  style="width: 370px; height:200px; left:35%; vertical-align: middle; ">

                            </div>

                        </div>
                    </div>    
                    <div class="clearfix"></div>  
                    <div class="col-lg-12">
                        <div class="table-responsive"  style="padding-left: 250px;padding-right:  250px;">
                            <h3 style=" text-align: center; color:#007cae">Key considerations to arrive at the Cloud Compatability Analysis</h3>
                            <table  class="table table-striped table-hover" width="50%">

                                <thead>
                                    <tr class="BgGray" style="display:none">
                                        <th></th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <c:forEach var="question" items="${reportView.questions}" varStatus="counted">
                                       
                                            <tr class="gradeX AssReport">

                                                <td width="98%">    
                                                    <div class="col-md-6 col-sm-12" id="report">
                                                        <p> ${question.remarks}</p>

                                                    </div>

                                                </td> 
                                                <td width="2%">
                                                    &nbsp;
                                                </td>
                                            </tr>
                                       
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div><!--end .table-responsive -->
                    </div><!--end .col -->


                </div> 
            </div> 
            <div class="spacer"></div>
            <div class="spacer"></div>
            <div class="spacer"></div>                        
            <div class="clearfix"></div>   
            <div class="clearfix"></div>   
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
        <!--        <script src="js/core/demo/DemoTableDynamic.js"></script>-->
        <script src="js/libs/wizard/jquery.bootstrap.wizard.min.js"></script>
        <script src="js/core/demo/DemoFormWizard.js"></script>
        <!-- END JAVASCRIPT -->
    </body>
</html>