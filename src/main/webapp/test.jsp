<%--
  Created by IntelliJ IDEA.
  User: majie
  Date: 2022/1/12
  Time: 9:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:useBean id="p1" class="edu.zhuoxun.testjsp.entry.Person" scope="application"/>
    <jsp:useBean id="p2" class="edu.zhuoxun.testjsp.entry.Person" scope="session"/>
    <jsp:useBean id="p3" class="edu.zhuoxun.testjsp.entry.Person" scope="request"/>
    <jsp:useBean id="p4" class="edu.zhuoxun.testjsp.entry.Person" scope="page"/>
</head>
<body>
    <p>p1: <jsp:getProperty name="p1" property="name"/></p>
    <p>p2: <jsp:getProperty name="p2" property="name"/></p>
    <p>p3: <jsp:getProperty name="p3" property="name"/></p>
    <p>p4: <jsp:getProperty name="p4" property="name"/></p>
    <a href="hello-servlet">Hello Servlet</a>
    <jsp:element name="a">
        <jsp:attribute name="href">hello-servlet</jsp:attribute>
        <jsp:attribute name="target">_blank</jsp:attribute>
        <jsp:body>JSP Hello Servlet</jsp:body>
    </jsp:element>
</body>
</html>
