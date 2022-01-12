<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="WEB-INF/web.xml"%>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <jsp:useBean id="p1" class="edu.zhuoxun.testjsp.entry.Person" scope="application"/>
    <jsp:useBean id="p2" class="edu.zhuoxun.testjsp.entry.Person" scope="session"/>
    <jsp:useBean id="p3" class="edu.zhuoxun.testjsp.entry.Person" scope="request"/>
    <jsp:useBean id="p4" class="edu.zhuoxun.testjsp.entry.Person" scope="page"/>
<%--    <jsp:setProperty name="p1" property="name" value="张三"/>--%>
<%--    <jsp:setProperty name="p2" property="name" value="李四"/>--%>
<%--    <jsp:setProperty name="p3" property="name" value="王五"/>--%>
<%--    <jsp:setProperty name="p4" property="name" value="赵六"/>--%>
    <%
        p1.setName("张三");
        p2.setName("李四");
        p3.setName("王五");
        p4.setName("赵六");
        List<String> list = new ArrayList<>();
        for (int i = 0; i < 100; i++) {
            list.add(String.format("item %03d", i));
        }
        request.setAttribute("list", list);
        session.setAttribute("list", list);
    %>
    <jsp:forward page="test.jsp"/>
</head>
<body>
<h1>
    <%--  %!在类的内部  --%>
    <%!
        private int i = 0;
        private int init = 0;
        private int destroy = 0;
    %>
    <%!
        public void jspInit() {
            init++;
        }
        public void jspDestroy() {
            destroy++;
        }
    %>
    <%--  %在 doGet和 doPost 方法的内部  --%>
    <%
        i++;
    %>
    被访问<%= i %>次
</h1>
<p>初始化:<%= init %>次</p>
<p>销毁:<%= destroy %>次</p>
<p>p1: <jsp:getProperty name="p1" property="name"/></p>
<p>p2: <jsp:getProperty name="p2" property="name"/></p>
<p>p3: <jsp:getProperty name="p3" property="name"/></p>
<p>p4: <jsp:getProperty name="p4" property="name"/></p>
<br/>
<a href="hello-servlet">Hello Servlet</a>
</body>
</html>