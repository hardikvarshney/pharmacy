
import com.mysql.jdbc.Connection;
import java.io.*;
import java.sql.*;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet ("/uploadServlet")
@MultipartConfig(maxFileSize = 16177215)


public class FileUploadDBServlet extends HttpServlet 
{
    private String dbURL = "jdbc:mysql://localhost:3306/pharma";
    private String dbUser = "root";
    private String dbPass = "";
    protected void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException
    {
        HttpSession session=request.getSession(true);
        String uname=(String) session.getAttribute("name");
        String email=(String) session.getAttribute("email");
        String contact=(String) session.getAttribute("contact");       
                
        String query = request.getParameter("ques");
        InputStream inputStream = null;
        Part filePart = request.getPart("photo");
        if(filePart != null)
        {
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
            inputStream = filePart.getInputStream();
        }
        Connection conn=null;
        String message=null;
        
        try
        {
            
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn=(Connection) DriverManager.getConnection(dbURL,dbUser,dbPass);
            String sql="insert into prescription (username,email,contact,query,presphoto) values (?,?,?,?,?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1,uname);
            statement.setString(2,email);
            statement.setString(3,contact);
            statement.setString(4,query);
            if(inputStream!=null)
            {
                statement.setBlob(5,inputStream);
            }
            int row=statement.executeUpdate();
            if(row>0)
            {
                message = "File Uploaded";
            }
        
        } catch (SQLException ex) {
            message="Error : "+ ex.getMessage();
            ex.printStackTrace();
        }finally
        {
            if(conn!=null)
            {
                try
                {
                    conn.close();
                }
                catch(SQLException ex)
                {   
                    ex.printStackTrace();
                }
            }
            request.setAttribute("Message",message);
            getServletContext().getRequestDispatcher("/Message.jsp").forward(request, response);
        }
       
        
    }
   

}
