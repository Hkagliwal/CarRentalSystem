
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


public class bookingform extends HttpServlet {

   
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
//            String uemail=req.getParameter("customername");
              HttpSession session = req.getSession();
            String customername=req.getParameter("customername");
            String pickuploc=req.getParameter("pickuploc");
            String pickupdate=req.getParameter("pickupdate");
            String dropoffloc=req.getParameter("dropoffloc");
            String dropoffdate=req.getParameter("dropoffdate");
            String carname =req.getParameter("carname");
            
            RequestDispatcher dispatcher = null;
            Connection con =null;
            try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/carrental?useSSL=false","root","Hkagliwal@123");
            PreparedStatement pst=con.prepareStatement("insert into carbook(uemail,customername,pickuploc,pickupdate,droppoffloc,dropoffdate,carname) values(?,?,?,?,?,?,?)");
            pst.setString(1,(String)session.getAttribute("email"));
            pst.setString(2,customername);
            pst.setString(3,pickuploc);
            pst.setString(4,pickupdate);
            pst.setString(5,dropoffloc);
            pst.setString(6,dropoffdate);
            pst.setString(7,carname);
               
            
            int rowCount = pst.executeUpdate();
            dispatcher = req.getRequestDispatcher("contact.jsp");
            if(rowCount>0)
            {
                req.setAttribute("status","success");
                
            }
            else
            {
                req.setAttribute("status","failed");
//                dispatcher = req.getRequestDispatcher("contact.jsp");
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

    