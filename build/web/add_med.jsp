<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
        String name=request.getParameter("med_name");
        String category=request.getParameter("med_category");
        String desc=request.getParameter("med_description");
        String stok=request.getParameter("med_stock");
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pharma","root","");
        String qry="Insert into stock (name, category, Description, available) values (?,?,?,?)";
        PreparedStatement pst=conn.prepareStatement(qry);
        pst.setString(1,name);
        pst.setString(2,category);
        pst.setString(3,desc);
        pst.setString(4,stok);
        pst.executeUpdate();
 %>
 <script> alert ("Recort Added successfuly"); </script>
        <%
        response.sendRedirect("manager_dash.jsp");
    %>