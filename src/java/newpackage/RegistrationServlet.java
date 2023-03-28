
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


public class RegistrationServlet extends HttpServlet {

   
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
       String uname=req.getParameter("name");
       String uemail=req.getParameter("email");
       String upwd=req.getParameter("pass");
       String umobile=req.getParameter("contact");
       RequestDispatcher dispatcher = null;
       Connection con =null;
       try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/carrental?useSSL=false","root","Hkagliwal@123");
            PreparedStatement pst=con.prepareStatement("insert into users(uname,upwd,uemail,umobile) values(?,?,?,?)");
            pst.setString(1,uname);
            pst.setString(2,upwd);
            pst.setString(3,uemail);
            pst.setString(4,umobile);
            
            int rowCount = pst.executeUpdate();
            dispatcher = req.getRequestDispatcher("registration.jsp");
            if(rowCount>0)
            {
                req.setAttribute("status","success");
            }
            else
            {
                req.setAttribute("status","failed");
            }
            dispatcher.forward(req,res);
       }
       catch(Exception e)
       {
           e.printStackTrace();
       }
       finally
       {
           try{
               con.close();
           }
           catch(SQLException e)
           {
               e.printStackTrace();
           }
       }
           
        }   
    }

    