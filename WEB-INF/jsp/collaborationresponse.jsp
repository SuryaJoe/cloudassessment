<%-- 
    Document   : collaborationrespone
    Created on : 22 Jun, 2016, 12:47:59 PM
    Author     : cjp
--%>
<%-- collaborationrespone is recipient click on link. this page will display --%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="css/all.css" rel="stylesheet">

<!DOCTYPE html>
<html>
    <head>
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
                    <c:set var="hidden" scope="request"  value="hidden"/>
                    <c:set var="pageTitle" scope="request" value="Help your Friend?"/>
                    <jsp:include page="Header.jsp" flush="true" />
                </td>
            </tr>
            <tr height="78%">
                <td id="middle-wrap" valign="middle">
                    <div id="Question-wrap">
                        <%--This form is displsying questions whatever user send to receipient  and here we get selection from receipient--%>
                        <form:form id="qtta" method="POST" action="SendUserMails" modelAttribute="collaborationForm">  
                            <c:forEach var="collaborationSubFormListValue" varStatus="questionStatus" items="${collaborationFormList.collaborationSubForm}">
                                <table>
                                    <tr> <td> 
                                            <form:hidden path="collaborationSubForm[${collaborationSubFormListValue.questionId}].questionId" value="${collaborationSubFormListValue.questionId}"></form:hidden>
                                            <form:hidden  path="collaborationSubForm[${collaborationSubFormListValue.questionId}].question" value="${collaborationSubFormListValue.question}"></form:hidden>
                                            <form:hidden path="collaborationSubForm[${collaborationSubFormListValue.questionId}].userId" value="${collaborationSubFormListValue.userId}"></form:hidden>   
                                            <form:hidden path="collaborationSubForm[${collaborationSubFormListValue.questionId}].appName" value="${collaborationSubFormListValue.appName}"></form:hidden>
                                            <form:hidden path="collaborationSubForm[${collaborationSubFormListValue.questionId}].orgName" value="${collaborationSubFormListValue.orgName}"></form:hidden>
                                            <form:hidden path="collaborationSubForm[${collaborationSubFormListValue.questionId}].email" value="${collaborationSubFormListValue.email}"></form:hidden>

                                            <form:label path="collaborationSubForm[${collaborationSubFormListValue.questionId}].selectedOptions">${questionStatus.count} ${collaborationSubFormListValue.question}</form:label></td>
                                        <br>
                                        <td> <form:select path="collaborationSubForm[${collaborationSubFormListValue.questionId}].selectedOptions" >
                                            <form:option selected="selected" value="" label="---selecte option--"/>       
                                            <form:options path="collaborationSubForm[${collaborationSubFormListValue.questionId}].selectedOptions" items="${collaborationSubFormListValue.options}"/>
                                        </form:select></td>
                                    <td id="error"><font color="red"> <form:errors path="collaborationSubForm[${collaborationSubFormListValue.questionId}].selectedOptions"></form:errors></font></td>


                                        </tr>

                                </c:forEach>
                                <%--When receipient click on send button user the user selection will be sent to user --%>
                                <tr>
                                    <td >  <input type="submit" id="rightSubmit" value="Send to Your Friend" ></td>
                                </tr>
                            </table>
                        </form:form>        
                    </div>
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
