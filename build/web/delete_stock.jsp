<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pharma","root","");
    String sql="delete from stock where id='"+request.getParameter("mid")+"'";
    PreparedStatement pst=con.prepareStatement(sql);
    pst.executeUpdate();%>
    <script>
        alert("Record Delete Successfull");
        window.open("manager_dash.jsp","_self");
    </script>


