<%-- 
    Document   : calc.jsp
    Created on : Mar 19, 2020, 11:23:44 AM
    Author     : Hardik
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String sell_amt=session.getAttribute("amt").toString();
    //String m_name=(String)session.getAttribute("mname");
    //String m_type=(String)session.getAttribute("mtype");
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/pharma","root","");
    String qry="select * from stock where name='"+session.getAttribute("mname")+"'and category='"+session.getAttribute("mtype")+"'";
    Statement st=conn.createStatement();
    ResultSet rs=st.executeQuery(qry);
    if(rs.next())
    {
        int avl=Integer.parseInt(rs.getString("available"));
        int x=avl-Integer.parseInt(sell_amt);
        String sql="update stock set available=? where name='"+session.getAttribute("mname")+"'and category='"+session.getAttribute("mtype")+"'";
        PreparedStatement pst=conn.prepareStatement(sql);
        pst.setInt(1,x);
        pst.executeUpdate();
        
    }
%>


