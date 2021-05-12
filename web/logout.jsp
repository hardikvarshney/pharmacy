<%-- 
    Document   : logout
    Created on : Mar 20, 2020, 11:58:11 AM
    Author     : Hardik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session.invalidate();
    response.sendRedirect("index.jsp");
%>