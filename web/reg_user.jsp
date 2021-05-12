<%-- 
    Document   : reg_user
    Created on : Mar 7, 2020, 6:46:35 PM
    Author     : Hardik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
    if(request.getParameter("submit")!=null)
    {
        String name=request.getParameter("name");
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        String email=request.getParameter("email");
        String contact=request.getParameter("contact");
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pharma","root","");
        String sql="Insert into user (name,username, password, email, contact) values (?,?,?,?,?)";
        PreparedStatement pst=con.prepareStatement(sql);
        pst.setString(1,name);
        pst.setString(2,username);
        pst.setString(3,password);
        pst.setString(4,email);
        pst.setString(5,contact);
        pst.executeUpdate();
        %>
        <script> alert ("Record Added successfuly"); </script>
        <%
        response.sendRedirect("user.jsp");
    }
    else
    {%>
    <script>alert ("Sometning Went Wrong"); </script>
    <%}


%>




<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="materialize/css/materialize.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <!--Form-->
        <div class="row teal lighten-2">
    <div class="col l3 m3 s12"></div>
    <div class="col l6 m6 s12">
        <div class="card">
            <img src="2.jpg" alt="" class="responsive-img">
            <div class="card-content">
                <form action="reg_user.jsp" method="post">
                    <label><h5>Full Name</h5></label>
                    <input type="text" name="name" placeholder="Name" required="required">
                    <label><h5>UserName</h5></label>
                    <input type="text" name="username" placeholder="Username" required="required">
                    <label><h5>Password</h5></label>
                    <input type="password" name="password" placeholder="Password" required="required">
                    <label><h5>E-Mail</h5></label>
                    <input type="text" name="email" placeholder="E-Mail" required="required">
                    <label><h5>Contact No</h5></label>
                    <input type="text" name="contact" placeholder="Contact No" required="required">
                    <br><br>
                    <div class="right">
                        <input type="submit" value="Submit" name="submit" class="btn">
                    </div>
                </form><br><br>
                
            </div>
        </div>
    </div>
    <div class="col l3 m3 s12"></div>
</div>
    </body>
</html>
