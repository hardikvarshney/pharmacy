<%-- 
    Document   : cashier_dash
    Created on : Mar 16, 2020, 6:33:16 PM
    Author     : Hardik
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if(session.getAttribute("username")==null)
    {%>
    <script>
            alert("You are not Loged In");
            window.open("cashier.jsp","_self");
            
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
      <img src="1.png" alt="" class="responsive-img">
      <div class="card-content ">
        <span class="name flow-text">${username}</span>
        <br>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pharma","root","");
            String sql="select * from cashier where username='"+session.getAttribute("username")+"'";//DO prescription insted of user
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
      <blockquote><input type="submit" name="view_order" value="View Order" class="btn-flat"><li></li><i class="material-icons"></i></a></blockquote>   
      <blockquote><input type="submit" name="sell_med" value="Sell Medicine" class="btn-flat"><li></li><i class="material-icons"></i></a></blockquote>
      <blockquote><input type="submit" name="view_sale" value="View Sale" class="btn-flat"><li></li><i class="material-icons"></i></a></blockquote>
        </form>
        <form action="logout.jsp">
      <blockquote><input type="submit" name="logout" value="Logout" class="btn-flat"><li></li><i class="material-icons"></i></a></blockquote>
    </form>
    </ul>
  </div>
     <div class="col l6 m6 s12">
         
         
            
          <%  if(request.getParameter("view_profile")!=null)
            {
                
            %>
                <form action="cashier_dash.jsp">
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
                    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/pharma","root","");
                    String qry="Update cashier set password=?, contact=?, email=? where username='"+session.getAttribute("username")+"'";
                    PreparedStatement pst=conn.prepareStatement(qry);
                    //pst.setString(1,uname);
                    pst.setString(1,pass);
                    pst.setString(2,cont);
                    pst.setString(3,mail);
                    pst.executeUpdate(); %>
        <script>
            alert("Record Updated");
            
        </script>
                    
                       
                   <%}
                        
                       
            
            
           
            if(request.getParameter("sell_med")!=null)
        {%>
        <form action="cashier_dash.jsp" method="post">
             <label><h5>Customer Name</h5></label>
             <input type="text" name="cust_name" placeholder="Customer Name" required="required">
             <label><h5>Medicine Name</h5></label>
             <input type="text" name="med_name" placeholder="Medicine Name" required="required">
             <label><h5>Medicine Type</h5></label>
             <input type="text" name="med_type" placeholder="" required="required">            
             <label><h5>Amount</h5></label>
             <input type="number" name="amount" placeholder="Amount" required="required">
             <input type="submit" value="Save" name="save" class="btn ">
        </form>
        <form action="getbill" method="post">
             <input type="submit" value="Generate Reciept" name="submit" class="btn right">
        </form>
         
            <%}
            
        
        if(request.getParameter("save")!=null)
        {
        String cname=request.getParameter("cust_name");
        String mname=request.getParameter("med_name");
        String mtype=request.getParameter("med_type");
        int amt=Integer.parseInt(request.getParameter("amount"));
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/pharma","root","");
        String qry="Insert into sale (cus_name, med_name, med_type, amount) values (?,?,?,?)";
        PreparedStatement pst=conn.prepareStatement(qry);
        pst.setString(1,cname);
        pst.setString(2,mname);
        pst.setString(3,mtype);
        pst.setInt(4,amt);       
        pst.executeUpdate(); %>
        <script>
            alert("Record Added Successfully");
            
        </script>
        
    <%
        session.setAttribute("amt",amt);
        session.setAttribute("mname",mname);
        session.setAttribute("mtype",mtype);
        response.sendRedirect("calc.jsp");
        }
         if(request.getParameter("view_sale")!=null)
    {%>
        <table class="responsive-table">
             <thead>
                 <tr>
                     <th>Id</th>
                     <th>Customer Name</th>
                     <th>Medicine Name</th>
                     <th>Medicine Type</th>
                     <th>Amount sold</th>
                     
                 </tr>
             </thead>
        <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pharma","root","");
        String qry="select * from sale";
        Statement stm=conn.createStatement();
        ResultSet rst=stm.executeQuery(qry);
        
        while(rst.next())
        {
            
            //String id=rs.getString("id");
        
        %>
            <tbody>
                 <tr>
                     <td><%=rst.getString("id") %></td>
                     <td><%=rst.getString("cus_name") %></td>
                     <td><%=rst.getString("med_name") %></td>
                     <td><%=rst.getString("med_type") %></td>
                     <td><%=rst.getString("amount") %></td>
                 </tr>
            </tbody>
            
            <%
            }
        %>
    </table>
   <% }
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
