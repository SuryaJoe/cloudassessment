<%-- 
    Document   : Collaboration.jsp
    Created on : 8 Jun, 2016, 10:27:20 AM
    Author     : cjp
--%>
<%-- Blocks jsp for Adding,Editing ,updating and deleting blocks in admin User Interface --%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<script src="js/jquery-3.0.0.min.js" type="text/javascript"></script>

<link href="css/all.css" rel="stylesheet">
<!DOCTYPE html>
<html>
    <head>
        <%-- the submitForm useful for submitting links --%>
        <%-- The Following java script is useful for displaying table with sorting --%>
        <script type="text/javascript" >

            function submitForm(action) {

                document.getElementById("qtta").action = action; //Setting form action to "success.php" page
                document.getElementById("qtta").submit(); // Submitting form

                return true;

            }
            $(document).ready(function () {

                $('#myTable').DataTable();
                var qidValue = $('#qid').val();
                var nextId = $('#nextQid').val();

                $('#emailId' + qidValue).change(function () {

                    $('#emailId' + nextId).val($(this).val());

                });


            });

        </script>
        <script type="text/javascript">
            function openWindow1()
            {
                var URL = "help";
                window.open(URL, "RecoverPassword", "width=700,height=450");
            }
        </script>

    </head>
    <body>
        <table  width="100%" height="100%">
            <tr height="17%">
                <td  valign="top">
                    <c:set var="pageTitle" scope="request" value="Send Questions to your Colleague(S) "/>
                    <jsp:include page="Header.jsp" flush="true" />
                </td>
            </tr>
            <tr height="78%">
                <td id="middle-wrap" valign="middle">



                    <form:form id="qtta" method="POST" >  

                        <a href="javascript:submitForm('startQuestionnaire')">Previous</a>


                    </form:form>

                    <%--The below form:form is used for posting previous button and redirecting to some URL --%>


                    <%-- The below form:form is used for posting collaborationForm to senMails context--%>
                    <form:form  method="POST" action="questionnaireStatus?collaboration=true" modelAttribute="collaborationForm">  
                        <%--myTable is for displaying questionId,quesstion,option,Email  --%>
                        <table id="myTable" >
                            <thead>
                                <tr>
                                    <th class="Question" align="center">Question</a>  </th>
                                    <th class="Email"> Select</a>  </th>

                                </tr>
                            </thead> 
                            <%--${questionSubmittedFormList.questions} extracting  and displaying 
                            - values of questionId ,question ,questionAnswered & email.
                            - Set paths as collaborationMap object variables of questionId ,question ,questionAnswered & email.questionId ,question ,questionAnswered & email.
                            --%>
                            <tbody>
                                <form:hidden path="userId" value="${collaborationForm.userId}" />
                                 <form:hidden path="orgName" value="${collaborationForm.orgName}" />
                                <c:forEach var="app" items="${applicationsList}" varStatus="counted">
                                     <form:hidden path="appName[${counted.index}]" value="${app}" />
                                </c:forEach>
                                


                                <c:forEach var="question" items="${collaborationForm.questions}" varStatus="counted">
                                    <tr>
                                        <td>
                                           
                                            <form:hidden path="questionId" value="${question.key}" />
                                            ${counted.count}.  ${question.value}
                                        </td>

                                        <td class="multiselect">
                                          
                                                <label><input type="checkbox" name="selectedOptions" value="${question.key}" />  </label>
                                          
                                        </td>
                                    </tr>
                                </c:forEach>

                                <tr>
                                    <td>
                                        <form:label path="email" >Enter Email for Your Colleague</form:label></td>
                                    <td>  <form:input path="email"  title="Enter email" /> <font color="red"> 
                                    </td>

                                </tr>
                                <tr>

                                    <td class="third">  <input type="submit" value="Send Questions to Your Friend" ></td>
                                </tr>

                            </tbody>

                        </table>
                        <%--The send button is for submitting values of form --%>

                    </form:form>  
                </td>
            </tr>
            <tr>
                <td>
                    <jsp:include page="Footer.jsp" flush="true" />  
                </td>
            </tr>
        </table>

    </body>
</html>