<%-- 
    Document   : ApllicationQuestionaaireForm
    Created on : 22 Jun, 2016, 12:47:59 PM
    Author     : cjp
--%>
<%--ApplicationQuestionnaireForm for displaying application Questions --%>
<link href="css/all.css" rel="stylesheet">

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%-- The submitForm is for posting save link  --%>
        <script type="text/javascript">

            function submitForm(action) {

                document.getElementById("save").action = action; //Setting form action to "success.php" page
                document.getElementById("save").submit();
                return true;

            }
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
                    <c:set var="pageTitle" scope="request" value="Application Name:${questionSubmittedFormList.pageTitle}"/>
                        <jsp:include page="Header.jsp" flush="true" />
                    </td>
                </tr>
                <tr height="78%">
                    <td id="middle-wrap" valign="middle" border="1">


                        <%-- The pageTitle is for displaying pageTitle --%>

                        <%-- The following link is redirect colloboration request page --%>
                        <a href="javascript:submitForm('Collaboration')"> Send Questions to Your Friend for Help?<img src="css/images/collaboration.jpg" alt="" height="70" width="70"/></a>

                        <%-- The Following form:form is for getting input from questions --%>
                        <form:form id="save"  modelAttribute="questionSubmittedForm">

                            <table >
                                <tr>

                                </tr>
                                <form:hidden path="applicationId" value="${applicationId}"/>
                                <form:hidden path="pageId" value="${questionSubmittedFormList.pageId}"/>
                                <form:hidden path="id" value="${questionSubmittedFormList.id}"/>
                                <form:hidden path="manadatedData" value="${questionSubmittedFormList.mandate}"/>
                                <td></td>

                                <%-- <form:hidden path="applications[${applicationId}].appName" value="${app}"/>
                                <tr><td>${app}</td></tr>--%>
                                <tr>
                                    <c:forEach var="questionslist" varStatus="questionIdStatus" items="${questionSubmittedFormList.questions}"  >
                                        <%-- Displaying questions and mandatory  --%>
                                        <td><form:label path="applications[${applicationId}].questions[${questionslist.questionId}].selectedOption" > ${questionIdStatus.count} ${questionslist.question}<c:if test="${questionslist.mandatory=='yes'}">
                                                    <font color="red">  *</font>
                                                </c:if></form:label>


                                            <form:hidden path="applications[${applicationId}].questions[${questionslist.questionId}].questionIdStatus" value="${questionIdStatus.count}"/>
                                            <form:hidden path="applications[${applicationId}].questions[${questionslist.questionId}].questionId" value="${questionslist.questionId}" />
                                            <form:hidden path="applications[${applicationId}].questions[${questionslist.questionId}].applications" value="${advices}"/>
                                            <form:hidden path="applications[${applicationId}].questions[${questionslist.questionId}].mandatory" value="${questionslist.mandatory}"/>
                                            <form:hidden path="applications[${applicationId}].questions[${questionslist.questionId}].questionType" value="${questionslist.questionType}" />
                                        </td>

                                        <td>    <%-- Here check UIItem if UIItem is select 
                                       
                                            --%>
                                            <c:choose>
                                                <c:when test="${questionslist.UIItem== 'select'}">
                                                    <%--setting path value as applications[applicationsId].questions[questionId].selectedOption --%>
                                                    <form:select path="applications[${applicationId}].questions[${questionslist.questionId}].selectedOption"> 
                                                        <%--Check selectedOptions is null or not 
                                                       - If it is null
                                                       -
                                                       -
                                                        --%>

                                                        <c:choose>

                                                            <c:when test="${questionslist.selectedOptions[questionslist.questionId]==null}" >
                                                                <%-- here displaying default options from questionnaire  --%>
                                                                <form:option selected="selected"  value="" label="-- Choose one--"/> 
                                                                <form:options  items="${questionslist.options}"/>     
                                                            </c:when>

                                                            <c:when test="${questionslist.selectedOptions[questionslist.questionId]!=null}">

                                                                <%--Extracting default options of questionnaire --%>
                                                                <c:forEach var="option" items="${questionslist.options}">
                                                                    <%--Extracting select options of survey --%>
                                                                    <c:forEach var="selectOption" items="${questionslist.selectedOptions[questionslist.questionId]}">
                                                                        <%--Check select option and option key if it is not true  --%>
                                                                        <c:if test="${selectOption!=option.key}">

                                                                            <form:option  label="${option.key}" value="${option.value}"/> 

                                                                        </c:if>
                                                                        <c:if test="${selectOption==option.key}">
                                                                            <%--Check select option and option key if it is  true  set application --%>
                                                                            <form:option selected="selected"  label="${questionslist.selectedOptions[questionslist.questionId]}" value="${questionslist.selectedOptions[questionslist.questionId]}" /> 

                                                                        </c:if>
                                                                    </c:forEach>
                                                                </c:forEach>
                                                            </c:when>

                                                        </c:choose>

                                                    </form:select>

                                                </c:when>



                                                <c:when test="${questionslist.UIItem== 'checkbox'}">                                   

                                                    <c:forEach var="option" items="${questionslist.options}" >

                                                        <c:choose>
                                                            <%-- here displaying default options from questionnaire  --%>
                                                            <c:when test="${questionslist.selectedOptions[questionslist.questionId]==null}" >
                                                                <form:checkbox path="applications[${applicationId}].questions[${questionslist.questionId}].selectedOption" label="${option.key}" value="${option.value}" />
                                                            </c:when> 
                                                            <%-- here displaying Selected options from survey  --%>
                                                            <c:when test="${questionslist.selectedOptions[questionslist.questionId]!=null}">

                                                                <c:choose>
                                                                    <c:when test="${option.value==questionslist.selectedOptions[questionslist.questionId]}">

                                                                        <form:checkbox path="applications[${applicationId}].questions[${questionslist.questionId}].selectedOption"  label="${option.key}" value="${option.value}" checked="checked"/> 
                                                                        <c:forEach var="subitems" items="${questionslist.options}">

                                                                            <c:if test="${subitems.key!=option.key}">
                                                                                <form:checkbox path="applications[${applicationId}].questions[${questionslist.questionId}].selectedOption"  label="${subitems.key}" value="${subitems.key}" />
                                                                            </c:if>

                                                                        </c:forEach>

                                                                    </c:when>
                                                                    <c:when test="${option.value!=questionslist.selectedOptions[applicationId]}">

                                                                        <%--Extracting selected options of survey --%>
                                                                        <c:forEach var="subselected" items="${questionslist.selectedOptions[questionslist.questionId]}">

                                                                            <c:choose>
                                                                                <c:when test="${option.value==subselected}">

                                                                                    <form:checkbox path="applications[${applicationId}].questions[${questionslist.questionId}].selectedOption"  label="${option.key}" value="${option.value}" checked="checked"/>
                                                                                </c:when>
                                                                                <c:when test="${option.value!=subselected}"> 

                                                                                </c:when>
                                                                            </c:choose>


                                                                        </c:forEach>


                                                                    </c:when>

                                                                </c:choose>




                                                            </c:when>    
                                                        </c:choose>


                                                    </c:forEach>
                                                </c:when>   

                                                <c:when test="${questionslist.UIItem== 'radio'}">
                                                    <%-- here displaying radiobox options from survey  --%>

                                                    <c:forEach var="option" items="${questionslist.options}">

                                                        <c:choose>
                                                            <c:when test="${option.key==questionslist.selectedOptions[questionslist.questionId]}">

                                                                <form:radiobutton  path="applications[${applicationId}].questions[${questionslist.questionId}].selectedOption" label="${option.key}" value="${option.value}" checked="checked"/>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <form:radiobutton  path="applications[${applicationId}].questions[${questionslist.questionId}].selectedOption" label="${option.key}" value="${option.value}"/>
                                                            </c:otherwise>         
                                                        </c:choose>

                                                    </c:forEach> 


                                                </c:when> 
                                                <c:otherwise>

                                                </c:otherwise>
                                            </c:choose>
                                        <td> <font color="red"><form:errors path="applications[${applicationId}].questions[${questionslist.questionId}].selectedOption" ></form:errors></font></td>       
                                        </tr> 
                                </c:forEach>


                    </tr>
                    <tr>
                        <td>  <input type="submit" value="PREVIOUS" formmethod="post"  formaction="previous"></td>
                           
                            <%--check applicationId is not equals applicationLength --%>
                            <c:if test="${applicationId!=applicationLength}">
                            <td>  <input type="submit" value="NEXT" formmethod="post" formaction="submitQuestionnaire"></td>


                        </c:if>
                        <%--check applicationId is  equals applicationLength --%>
                        <c:if test="${applicationId==applicationLength}">
                            <td>  <input type="submit" value="Submit"formmethod="post" formaction="submitApplicationSurvey" ></td>
                            </c:if>
                            <%--here saving form --%>
                            <td><font color="blue"><u><a href="javascript:submitForm('Save')" >Save</a></u></font></td> 
                    </tr>

                </table>  

            </table>  

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