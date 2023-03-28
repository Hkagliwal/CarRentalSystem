
package newpackage;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.http.*;
import javax.servlet.*;


public class login extends HttpServlet {

    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String uemail=request.getParameter("username");
        String upwd=request.getParameter("password");
        HttpSession session = request.getSession();    
        RequestDispatcher dispatcher = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/carrental?useSSL=false","root","Hkagliwal@123");
            PreparedStatement pst=con.prepareStatement("select * from users where uemail=? and upwd=?");
            pst.setString(1,uemail);
            pst.setString(2,upwd);       
            ResultSet rs=pst.executeQuery();

           if(rs.next())
           {
               session.setAttribute("name",rs.getString("uname"));
                session.setAttribute("email",rs.getString("uemail"));
               dispatcher = request.getRequestDispatcher("index.jsp");
           }
           else
           {
               request.setAttribute("status","failed");
               dispatcher = request.getRequestDispatcher("login.jsp");
           }
           dispatcher.forward(request,response);
        
        }
         catch(Exception e)
        {
            PrintWriter pw = response.getWriter(); 
            pw.println(e);
        }
    }
}
        
            
        
    

  