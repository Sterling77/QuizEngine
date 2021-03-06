<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>QUIZ ANSWER</title>
    <c:if test="${quizQuestion.questionType == 'CODE'}">
        <link rel="stylesheet" href="https://highlightjs.org/static/demo/styles/dracula.css">
        <script src="https://highlightjs.org/static/highlight.pack.js"></script>
        <script>hljs.initHighlightingOnLoad();</script>
    </c:if>
</head>
<body bgcolor="#F4D03F"></body>
<body>
<h1>QUIZ ANSWER</h1>

<c:if test="${not empty correct}">
    <div style="color:green;font-weight: bold;">
        <c:out value="${correct}" />
        <img src="http://www.princetontutoring.com/blog/wp-content/uploads/2014/05/right.jpg"/>
    </div>
</c:if>
<c:if test="${not empty incorrect}">
    <div style="color:red;font-weight: bold;">
        <c:out value="${incorrect}" />
        <img src="http://ed101.bu.edu/StudentDoc/Archives/ED101sp07/jabird/wronganswerman.jpg"/>
    </div>
</c:if>
<br><br>

QUESTION: <c:out value="${quizQuestion.question}" /><br>
ANSWER:
    <c:if test="${quizQuestion.questionType == 'MULTIPLE_CHOICE'}">
        <c:out value="${quizQuestion.correctMultipleChoiceAnswer}" />
    </c:if>
    <c:if test="${quizQuestion.questionType == 'TRUE_FALSE'}">
        <c:out value="${quizQuestion.trueOrFalse}" />
    </c:if>
    <c:if test="${quizQuestion.questionType == 'CODE'}">
        <br>
        <c:choose>
            <c:when test="${quizQuestion.category == 'SQL'}">
                <pre><code class="sql">
            </c:when>
            <c:when test="${quizQuestion.category == 'HTML'}">
                <pre><code class="html">
            </c:when>
            <c:when test="${quizQuestion.category == 'CSS'}">
                <pre><code class="css">
            </c:when>
            <c:otherwise>
                <pre><code class="java">
            </c:otherwise>
        </c:choose>
        <c:forEach var="codeLine" items="${quizQuestion.codeLines}">
            <c:if test="${not empty codeLine && fn:length(codeLine)>0}">
                <c:out value="${codeLine}"/>
            </c:if>
        </c:forEach>
        </code></pre>
    </c:if>
<br><br>
<form action="/quiz/nextQuestion" method="POST">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    <input type="submit" style="background-color:orange" value="Next Question" />
</form>
</body>
</html>