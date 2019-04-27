/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package connection;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Owner
 */
public class Result extends HttpServlet {

    static Connection conn = null;
    Statement st = null;
    PreparedStatement pst = null;
    ResultSet rs = null;
    String id = null;
    String name = null;
    String pep1 = null;
    String pep2 = null;
    String pep3 = null;
    String pep4 = null;
    String pep5 = null;
    String pep6 = null;
    String course = null;
    String sem = null;
    String total = null;
    String grade = null;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(true);
        id = request.getParameter("txtid");
        name = request.getParameter("txtname");
        course = request.getParameter("cmbcourse");
        sem = request.getParameter("cmbsem");
        pep1 = request.getParameter("pep1");
        pep2 = request.getParameter("pep2");
        pep3 = request.getParameter("pep3");
        pep4 = request.getParameter("pep4");
        pep5 = request.getParameter("pep5");
        pep6 = request.getParameter("pep6");
        total = request.getParameter("txttotal");
        grade = request.getParameter("txtgd");


        if (id != null) {
            try {
                conn = connection.Connect.makeCon();
                String query = "Insert into Result(id,name,course,sem,pep1,pep2,pep3,pep4,pep5,pep6,total,grade)values(?,?,?,?,?,?,?,?,?,?,?,?)";
                System.out.println("cccccccc" + query);
                pst = conn.prepareStatement(query);
                pst.setString(1, id);
                pst.setString(2, name);
                pst.setString(3, course);
                pst.setString(4, sem);
                pst.setString(5, pep1);
                pst.setString(6, pep2);
                pst.setString(7, pep3);
                pst.setString(8, pep4);
                pst.setString(9, pep5);
                pst.setString(10, pep6);
                pst.setString(11, total);
                pst.setString(12, grade);



                int j = 0;
                j = pst.executeUpdate();
                if (j > 0) {


                    session.setAttribute("MSG", "New Result is Registered !!");
                    response.sendRedirect("Result.jsp");
                } else {
                    session.setAttribute("MSG", "New Result Is Not Registered!!");
                    response.sendRedirect("Result.jsp");
                }

            } catch (Exception e) {
                e.printStackTrace();
            }

        }

    }
}
