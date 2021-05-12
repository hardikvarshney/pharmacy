<%-- 
    Document   : user_dash
    Created on : Mar 7, 2020, 10:38:57 PM
    Author     : Hardik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
    if(session.getAttribute("username")==null)
    {%>
    <script>
            alert("You are not Loged In");
            window.open("manager.jsp","_self");
            
    </script>
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
      <img src="manager.png" alt="" class="responsive-img">
      <div class="card-content ">
        <span class="name flow-text">${username}</span>
        <br>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pharma","root","");
            String sql="select * from manager where username='"+session.getAttribute("username")+"'";//DO prescription insted of user
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery(sql);
            if(rs.next())
            {%>
        
        <span class="email"><%=rs.getString("email") %></span>
        <% } %>
      </div>
    </div>
    <ul>
        <form>
      <blockquote><input type="submit" name="view_profile" value="View Profile"class="btn-flat"><li></li><i class="material-icons"></i></a></blockquote>
      <blockquote><input type="submit" name="view_user" value="View User" class="btn-flat"><li></li><i class="material-icons"></i></a></blockquote>    
      <blockquote><input type="submit" name="view_stock" value="View Stock" class="btn-flat"><li></li><i class="material-icons"></i></a></blockquote>
      <blockquote><input type="submit" name="edit_stock" value="Edit Stock" class="btn-flat"><li></li><i class="material-icons"></i></a></blockquote>
      <blockquote><input type="submit" name="add_new_med" value="Add New Medicine" class="btn-flat"><li></li><i class="material-icons"></i></a></blockquote>
        </form>
        <form action="logout.jsp">
      <blockquote><input type="submit" name="logout" value="Logout" class="btn-flat"><li></li><i class="material-icons"></i></a></blockquote>
    </form>
    </ul>
  </div>
    
    <div class="col l9 m3 s12" >
 
             <%
            if(request.getParameter("view_profile")!=null)
            {
                
            %>
                <form action="manager_dash.jsp">
                    <label><h5>Your Username</h5></label>
                    <input type="text" name="uname" value=<%=rs.getString("username")%>>
                    <label><h5>Your Password</h5></label>
                    <input type="text" name="password" value=<%=rs.getString("password")%>>
                    <label><h5>Your Contact No.</h5></label>
                    <input type="text" name="contact" value=<%=rs.getString("contact")%>>
                    <label><h5>Your E-Mail</h5></label>
                    <input type="text" name="mail" value=<%=rs.getString("email")%>>
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
                    String qryy="Update manager set password=?, contact=?, email=? where username='"+session.getAttribute("username")+"'";
                    PreparedStatement pst=connc.prepareStatement(qryy);
                    //pst.setString(1,uname);
                    pst.setString(1,pass);
                    pst.setString(2,cont);
                    pst.setString(3,mail);
                    pst.executeUpdate(); %>
        <script>
            alert("Record Updated");
            
        </script>
        <%}%>
                
   <%  if(request.getParameter("view_user")!=null)
    {%>
    <table class="responsive-table">
             <thead>
                 <tr>
                     <th>Name</th>
                     <th>E-Mail</th>
                     <th>Contact No</th>
                     
                 </tr>
             </thead>
        <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pharma","root","");
        String qry="select * from user";
        Statement stm=conn.createStatement();
        ResultSet rst=stm.executeQuery(qry);
        
        while(rst.next())
        {
            
            //String id=rs.getString("id");
        
        %>
            <tbody>
                 <tr>
                     <td><%=rst.getString("name") %></td>
                     <td><%=rst.getString("email") %></td>
                     <td><%=rst.getString("contact") %></td>
                 </tr>
            </tbody>
            
            <%
            }
        %>
    </table>
    <%}
    

    else if(request.getParameter("view_stock")!=null)
    {%> 
        <table class="responsive-table">
             <thead>
                 <tr>
                     <th>Id</th>
                     <th>Name</th>
                     <th>Category</th>
                     <th>Description</th>
                     <th>Stock</th>
                 </tr>
             </thead>
            <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pharma","root","");
            String qry="select * from stock";
            Statement stm=conn.createStatement();
            ResultSet rst=stm.executeQuery(qry);
            while(rst.next())
            {
            
                
        %>
            <tbody>
                 <tr>
                     <td><%=rst.getString("id") %></td>
                     <td><%=rst.getString("name") %></td>
                     <td><%=rst.getString("category") %></td>
                     <td><%=rst.getString("description") %></td>
                     <td><%=rst.getString("available") %></td>

                 </tr>
            </tbody>
              <%
            }
        %>
    </table>
              
    <%} 
        


else if(request.getParameter("edit_stock")!=null)
    {%> 
        <table class="responsive-table">
             <thead>
                 <tr>
                     <th>Id</th>
                     <th>Name</th>
                     <th>Category</th>
                     <th>Description</th>
                     <th>Stock</th>
                     <th>Edit</th>
                     <th>Delete</th>
                 </tr>
             </thead>
            <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pharma","root","");
            String qry="select * from stock";
            Statement stm=conn.createStatement();
            ResultSet rst=stm.executeQuery(qry);
            while(rst.next())
            {
            
                
        %>
            <tbody>
                 <tr>
                     <td><%=rst.getString("id") %></td>
                     <td><%=rst.getString("name") %></td>
                     <td><%=rst.getString("category") %></td>
                     <td><%=rst.getString("description") %></td>
                     <td><%=rst.getString("available") %></td>
                     <td><a href="edit_stock.jsp?mid=<%=rst.getString("id")%>" class="btn-floating">Edit</td>
                     <td><a href="delete_stock.jsp?mid=<%=rst.getString("id")%>" class="btn-floating">Delete</td> 
                     
                 </tr>
            </tbody>
            <% 
                     
            }
        %>
    </table>
              
    <%}
        

else if(request.getParameter("add_new_med")!=null)
    {%> 
        <form action="add_med.jsp" method="post">
            <label><h5>Medicine Name</h5></label>
            <input type="text" name="med_name" placeholder="Medicine Name" required style="width:300px">
            <label><h5>Medicine Category</h5></label>
            <input type="text" name="med_category" placeholder="Medicne Type" required style="width:300px">
            <label><h5>Medicine Description</h5></label>
            <input type="text" name="med_description" placeholder="Medicine Salt" required style="width:300px">
            <label><h5>Stock</h5</label><br>
            <input type="number" name="med_stock" placeholder="Amount Available" required style="width:300px"><br><br><br>
            <input type="submit" value="Add" name="add_med" class="btn">
        </form>
    
    
    
    
    
              
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

<%
      //String name=rs.getString("username");
      //String email=rs.getString("email");
      //String contact=rs.getString("contact");
      //session.setAttribute("name",name);
      //session.setAttribute("email",email);
      //session.setAttribute("contact",contact);
      
%>

<%
/*    if(request.getParameter("submit")!=null)
    {
        String name=rs.getString("username");
        String email=rs.getString("email");
        String query=request.getParameter("ques");
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pharma","root","");
        String str="insert into prescription values (?,?,?)";
        PreparedStatement pst=conn.prepareStatement(str);
        pst.setString(1,name);
        pst.setString(2,email);
        pst.setString(3,query);
        
        pst.executeUpdate();*/
%>
                <!--<script> alert("Done"); </script>-->       
    <%//}


%>


