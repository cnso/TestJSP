<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: majie
  Date: 2022/1/12
  Time: 10:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <jsp:useBean id="p2" class="edu.zhuoxun.testjsp.entry.Person" scope="session"/>
    <jsp:useBean id="list" class="java.util.ArrayList" scope="session"/>
</head>
<body>
    <p><c:out value="姓名:${ p2.name }"/></p>
    <ol>
        <c:if test="${ list.isEmpty() }">
            <li>无数据</li>
        </c:if>
        <c:if test="${ !list.isEmpty() }">
            <li>有数据</li>
        </c:if>

<%--        <c:forEach var="i" items="${ list }">--%>
<%--            <li><c:out value="普通循环 ${ i }"/></li>--%>
<%--        </c:forEach>--%>
    </ol>
</body>
</html>
