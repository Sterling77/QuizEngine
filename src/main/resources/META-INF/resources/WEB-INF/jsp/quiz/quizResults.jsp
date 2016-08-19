<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>QUIZ RESULTS</title>
</head>

<%--<body--%>
       <%----%>
<%--</body>--%>


<body
bgcolor="#00FFFF">

<h1>QUIZ RESULTS</h1>
<table>

<c:if test="${not empty totalquizresults.correct}">Correct Quiz Results:
    <div style="color:darkorange;font-weight: bold;">
        <c:out value="${totalquizresults.correct}" />
    </div>
 </c:if>

<c:if test="${not empty totalquizresults.incorrect}">Incorrect Quiz Results:
    <div style="color:darkorange;font-weight: bold;">
        <c:out value="${totalquizresults.incorrect}" />
    </div>
</c:if>

<c:if test="${not empty totalquizresults.totalQuestions}">Total Questions Answered:
    <div style="color:darkorange;font-weight: bold;">
        <c:out value="${totalquizresults.totalQuestions}" />
    </div>
</c:if>


<c:if test="${not empty totalquizresults.name}">Name:
    <div style="color:darkorange;font-weight: bold;">
        <c:out value="${totalquizresults.name}" />
    </div>
</c:if>

<c:if test="${not empty totalquizresults.email}">Email:
    <div style="color:darkorange;font-weight: bold;">
        <c:out value="${totalquizresults.email}" />
    </div>
</c:if>
    </br>


</table>

<br><br>
<a href="/">Quiz Me Again</a> | <a href="/admin/">admin</a>



</body>
</html>

