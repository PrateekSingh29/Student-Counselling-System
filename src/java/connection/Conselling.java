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
public class Conselling extends HttpServlet {

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
        id = request.getParameter("cmbID");
        System.out.println("id is"+id);
        name = request.getParameter("txtbranch1");
        course = request.getParameter("txtiname");



        if (id != null) {
            try {
                conn = connection.Connect.makeCon();
                String query = "Insert into assigninsitute(id,branch,insitute)values(?,?,?)";
                System.out.println("cccccccc" + query);
                pst = conn.prepareStatement(query);
                pst.setString(1, id);
                pst.setString(2, name);
                pst.setString(3, course);




                int j = 0;
                j = pst.executeUpdate();
                if (j > 0) {


                    session.setAttribute("MSG", "New Assign Insitute is Registered !!");
                    response.sendRedirect("AssignInsitute.jsp");
                } else {
                    session.setAttribute("MSG", "New Result Is Not Registered!!");
                    response.sendRedirect("AssignInsitute.jsp");
                }

            } catch (Exception e) {
                e.printStackTrace();
            }

        }

    }
}
