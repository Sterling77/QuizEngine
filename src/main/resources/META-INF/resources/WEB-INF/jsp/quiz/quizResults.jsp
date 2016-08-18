<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>QUIZ RESULTS</title>
</head>

<body
        bgcolor="#00FFFF">
</body>


<body>
<table>
<h1>QUIZ RESULTS</h1>

<c:if test="${not empty totalquizresults.correct}">
    <div style="color:green;font-weight: bold;">
        <c:out value="${totalquizresults.correct}" />
    </div>
 </c:if>

<c:if test="${not empty totalquizresults.incorrect}">
    <div style="color:green;font-weight: bold;">
        <c:out value="${totalquizresults.incorrect}" />
    </div>
</c:if>

<c:if test="${not empty totalquizresults.totalQuestions}">
    <div style="color:green;font-weight: bold;">
        <c:out value="${totalquizresults.totalQuestions}" />
    </div>
</c:if>

<c:if test="${not empty totalquizresults.name}">
    <div style="color:green;font-weight: bold;">
        <c:out value="${totalquizresults.name}" />
    </div>
</c:if>

<c:if test="${not empty totalquizresults.email}">
    <div style="color:green;font-weight: bold;">
        <c:out value="${totalquizresults.email}" />
    </div>
</c:if>


<br><br>
<br><br>
</table>
<a href="/">Quiz Me Again</a> | <a href="/admin/">admin</a>



</body>
</html>

