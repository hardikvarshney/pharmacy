<%-- 
    Document   : pharmadash
    Created on : Mar 7, 2020, 12:04:56 PM
    Author     : Hardik
--%>


<%@page import="java.io.OutputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
    if(session.getAttribute("username")==null)
    {%>
    <script>
            alert("You are not Loged In");
            window.open("pharma.jsp","_self");
            
    </script>
    <%}
%>





<!DOCTYPE html>
<html>
    <head>
        <link href="materialize/css/materialize.min.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <nav class="teal">
        <div class="nav-wrapper container">
            <a class="brand-logo">Pharmacy Management System</a>
            <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>
            <ul class="right hide-on-med-and-down">
              <li><a href="index.html">Home</a></li>
              <li><a href="#">Services</a></li>
              <li><a href="gallery.html" class="scrollspy">Gallery</a></li>
              <li><a href="about_us.html">About</a></li>
              <li><a href="contact_us.html">Contact Us</a></li>
            </ul>
        </div>
      <!--For Small Screen(Sidenav)-->
      </nav>
      <ul class="sidenav" id="mobile-demo">
        <li><a href="#">Home</a></li>
        <li><a href="#">Services</a></li>
        <li><a href="gallery.html" class="scrollspy">Gallery</a></li>
        <li><a href="about_us.html">About</a></li>
        <li><a href="contact_us.html">Contact Us</a></li>
      </ul>
        
        <!--SideBar-->
<div class="row">
  <div class="col l3 m3 s12  hide-on-med-and-down">
    <div class="card">
      <img src="pharma.png" alt="" class="responsive-img">
      <div class="card-content ">
        <span class="name flow-text">${username}</span>
        <br>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pharma","root","");
            String qry="select * from pharmacist where username='"+session.getAttribute("username")+"'";//DO prescription insted of user
            Statement stm=conn.createStatement();
            ResultSet rst=stm.executeQuery(qry);
            if(rst.next())
            {%>
        <span class="email"><%=rst.getString("email") %></span>
        <% } %>
      </div>
    </div>
    <ul>
        <form>
      <blockquote><input type="submit" name="view_profile" value="View Profile" class="btn-flat"><li></li><i class="material-icons"></i></a></blockquote>
        </form>
        <form action="pharmadash.jsp">
         <blockquote><input type="submit" value="View Prescription" name="submit" class="btn-flat" style="margin-top:10px;"></blockquote>
        </form>
        <form action="logout.jsp">
      <blockquote><input type="submit" name="logout" value="Logout" class="btn-flat"><li></li><i class="material-icons"></i></a></blockquote>
        </form>
        
    </ul>
  </div>
    <div class="col l9 m3 s12">
        
         
             <%
            if(request.getParameter("view_profile")!=null)
            {
                
            %>
                <form action="pharmadash.jsp">
                    <label><h5>Your Username</h5></label>
                    <input type="text" name="uname" value=<%=rst.getString("username")%>>
                    <label><h5>Your Password</h5></label>
                    <input type="text" name="password" value=<%=rst.getString("password")%>>
                    <label><h5>Your Contact No.</h5></label>
                    <input type="text" name="contact" value=<%=rst.getString("contactno")%>>
                    <label><h5>Your E-Mail</h5></label>
                    <input type="text" name="mail" value=<%=rst.getString("email")%>>
                    <input type="submit" name="update" value="Update" class="btn right">
                </form>
                    <% }
             
                   if(request.getParameter("update")!=null) 
                   {
                    //String uname=request.getParameter("uname");
                    String pass=request.getParameter("password");
                    String cont=request.getParameter("contact");
                    String mail=request.getParameter("mail");
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection connc=DriverManager.getConnection("jdbc:mysql://localhost:3306/pharma","root","");
                    String qryy="Update pharmacist set password=?, contactno=?, email=? where username='"+session.getAttribute("username")+"'";
                    PreparedStatement pst=connc.prepareStatement(qryy);
                    //pst.setString(1,uname);
                    pst.setString(1,pass);
                    pst.setString(2,cont);
                    pst.setString(3,mail);
                    pst.executeUpdate(); %>
        <script>
            alert("Record Updated");
            
        </script>
                 
                
                         
    if(request.getParameter("submit")!=null)
    {%><table class="responsive-table">
             <thead>
                 <tr>
                     <th>Name</th>
                     <th>E-Mail</th>
                     <th>Contact No</th>
                     <th>Prescription</th>
                     <th>Delete</th>
                 </tr>
             </thead>
       <% Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pharma","root","");
        String sql="select * from prescription";
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery(sql);
        
        while(rs.next())
        {
            
            //String id=rs.getString("id");
        
        %>
            <tbody>
                 <tr>
                     <td><%=rs.getString("username") %></td>
                     <td><%=rs.getString("email") %></td>
                     <td><%=rs.getString("contact") %></td>
                     <%/*
                     Blob blob=rs.getBlob("presphoto");
                     byte byteArray[]=blob.getBytes(1,(int) blob.length());
                     response.setContentType("image/png");
                     OutputStream o=response.getOutputStream();
                     //o.write(byteArray);
                     //o.flush();
                     //o.close();*/
                        
                        
                     %>
                     <td><% /*o.write(byteArray); o.flush(); o.close(); */ %></td>
                       
                     <td><a href="">Delete</a></td>
                 </tr>
            </tbody>
            
            <%
            }
        %>
          </table>
    <%}


%>
              
    </div>
</div>

        
           <!--Footer-->
    <footer class="page-footer teal">
      <div class="container">
        <div class="row">
          <div class="col l6 s12">
            <h5 class="white-text">Footer Content</h5>
            <p class="grey-text text-lighten-4">You can use rows and columns here to organize your footer content.</p>
          </div>
          <div class="col l4 offset-l2 s12">
            <h5 class="white-text">Common Links</h5>
            <ul>
              <li><a class="grey-text text-lighten-3" href="index.html">Home</a></li>
              <li><a class="grey-text text-lighten-3" href="about_us.html">About Us</a></li>
              <li><a class="grey-text text-lighten-3" href="gallery.html">Galary</a></li>
              <li><a class="grey-text text-lighten-3" href="contact_us.html">Contact Us</a></li>
            </ul>
          </div>
        </div>
      </div>
      <div class="footer-copyright">
        <div class="container">
        © 2020 Copyright 
        </div>
      </div>
    </footer>
    </body>
</html>
