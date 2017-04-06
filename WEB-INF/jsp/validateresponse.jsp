<%-- 
    Document   : validateResponse
    Created on : 22 Jun, 2016, 12:47:59 PM
    Author     : cjp
--%>
<%-- validateResponse is for when user got response from user.user get some link.
-when user click on link this page will displayed.then user validate reasonable questions from those  questions --%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<script src="js/jquery-3.0.0.min.js" type="text/javascript"></script>

<link href="css/all.css" rel="stylesheet">

<!DOCTYPE html>
<html>
    <head>
        <%--The Following submitForm method for link posting --%>
        <script type="text/javascript" >

            function submitForm(action) {

                document.getElementById("qtta").action = action; //Setting form action to "success.php" page
                document.getElementById("qtta").submit(); // Submitting form

                return true;

            }
        <%-- This jquery is for sorting table based on columns  --%>
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
                    <c:set var="pageTitle" scope="request" value="Validate Questions what you want answers From Your Friend?"/>
                    <jsp:include page="Header.jsp" flush="true" />
                </td>
            </tr>
            <tr height="78%">
                <td id="middle-wrap" valign="middle">
                     <%-- The following link is redirect colloboration request page --%>
                <form:form id="qtta" method="POST" >  

                    <a href="javascript:submitForm('welcome')">Back to LogIn Page</a>
                    
                </form:form>
                     <%-- This form:form is for posting link and redirecting to previous page --%>
       
            <%-- This form:form is for validating questions poting postvalidations context --%>
         <form:form id="qtta" method="POST" action="postValidations" modelAttribute="collaborationForm">  

            <table id="myTable" >
                <thead>
                    <tr>
                        <th class="QuestionId"> QuestionId</a>  </th>
                        <th class="Question">Question</a>  </th>
                        <th class="option"> Question Answered</a>  </th>
                        <th class="Validate">Option send to questionnaire</a>  </th>

                    </tr>
                </thead> 
                <%-- Here we display receipient selection to user --%>
                <tbody>
                    <c:forEach var="collaborationSubFormListValue" items="${collaborationFormList.collaborationSubForm}">
             
                    
                    <tr>
                        <td>${collaborationSubFormListValue.questionId}</td>
                        <form:hidden path="collaborationSubForm[${collaborationSubFormListValue.questionId}].userId" value="${collaborationSubFormListValue.userId}"></form:hidden>   
                         <form:hidden path="collaborationSubForm[${collaborationSubFormListValue.questionId}].appName" value="${collaborationSubFormListValue.appName}"></form:hidden>
                          <form:hidden path="collaborationSubForm[${collaborationSubFormListValue.questionId}].orgName" value="${collaborationSubFormListValue.orgName}"></form:hidden>
                          <form:hidden path="collaborationSubForm[${collaborationSubFormListValue.questionId}].email" value="${collaborationSubFormListValue.email}"></form:hidden>
                        <td><form:label path="collaborationSubForm[${collaborationSubFormListValue.questionId}].selectedOptions">${collaborationSubFormListValue.question}</form:label></td>

                            <td> <form:hidden path="collaborationSubForm[${collaborationSubFormListValue.questionId}].selectedOptions" value="${collaborationSubFormListValue.selectedOptions}"></form:hidden>
                            
                           ${collaborationSubFormListValue.selectedOptions}
                       

                        <form:hidden path="collaborationSubForm[${collaborationSubFormListValue.questionId}].questionId" value="${collaborationSubFormListValue.questionId}"></form:hidden>

                        <form:hidden  path="collaborationSubForm[${collaborationSubFormListValue.questionId}].question" value="${collaborationSubFormListValue.question}"></form:hidden>
                        <td> <form:radiobutton path="collaborationSubForm[${collaborationSubFormListValue.questionId}].validateQuestion" value="Yes"/>Yes
                             <form:radiobutton path="collaborationSubForm[${collaborationSubFormListValue.questionId}].validateQuestion" value="No"/>No
                        
                       </td>
                    
                    
                    </tr>
              
            </c:forEach>
                    
                </tbody>
            </table>
            <tr>
                <td>  <input type="submit" id="#rightSubmit" value="validate" ></td>
            </tr>
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
