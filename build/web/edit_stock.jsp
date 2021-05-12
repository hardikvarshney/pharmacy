
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%//=request.getParameter("mid")%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="materialize/css/materialize.min.css" rel="stylesheet" type="text/css"/>
        <title></title>
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
<%
    //String mid=request.getParameter("mid");
  
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pharma","root","");
    String sql="Select * from stock where id='"+request.getParameter("mid")+"'";
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery(sql);
    if(rs.next())
    {%>
    <div class="row">
    <div class="col l6 m6 s12"></div>
    <div class="col l3 m6 s12">
        <form action="edit_stock.jsp" method="post">
            <label><h5>Medicine Name</h5></label>
            <input type="text" name="med_name" value=<%=rs.getString("name")%> required style="width:300px">
            <label><h5>Medicine Category</h5></label>
            <input type="text" name="med_category" value=<%=rs.getString("category")%> required style="width:300px">
            <label><h5>Medicine Description</h5></label>
            <input type="text" name="med_description" value=<%=rs.getString("Description")%> required style="width:300px">
            <label><h5>Stock</h5</label><br>
            <input type="number" name="med_stock" value=<%=rs.getString("available")%> required style="width:300px"><br><br><br>
            <input type="submit" value="Submit" name="submit" class="btn">
        </form>
    </div>
            <div class="col l3 m6 s12"></div>
    </div>
    <%}

%>
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
    if(request.getParameter("submit")!=null)
    {
        String name=request.getParameter("med_name");
        String category=request.getParameter("med_category");
        String description=request.getParameter("med_description");
        String available=request.getParameter("med_stock");
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/pharma","root","");
        String qry="update stock set name=?, category=?, Description=?, available=? where id='"+request.getParameter("mid")+"'";
        PreparedStatement pst=conn.prepareStatement(qry);
        pst.setString(1,name);
        pst.setString(2,category);
        pst.setString(3,description);
        pst.setString(4,available);
        pst.executeUpdate();%>
        <script>
            alert ("Record Update Successfull");
            window.open("manager_dash.jsp","_self");
        </script>
    <%}
    %>


%>





