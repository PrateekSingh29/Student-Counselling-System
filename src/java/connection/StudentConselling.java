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
public class StudentConselling extends HttpServlet {

    static Connection conn = null;
    Statement st = null;
    PreparedStatement pst = null;
    ResultSet rs = null;
    String collage1 = null;
    String branch1 = null;
    String collage2 = null;
    String branch2 = null;
    String collage3 = null;
    String branch3 = null;
    String name = null;
    String name1 = null;
 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(true);
        collage1 = request.getParameter("txtiname");
         branch1= request.getParameter("txtbranch1");
        collage2 = request.getParameter("txtiname1");
        branch2 = request.getParameter("txtbranch11");
        collage3 = request.getParameter("txtiname2");
        branch3 = request.getParameter("txtbranch12");
        name = request.getParameter("txtstate");
           name1 = request.getParameter("txtstate1");



        if (collage1 != null) {
            try {
                conn = connection.Connect.makeCon();
                String query = "Insert into conselling(collage1,branch1,collage2,branch2,collage3,branch3,name,name1)values(?,?,?,?,?,?,?,?)";
                System.out.println("cccccccc" + query);
                pst = conn.prepareStatement(query);
                pst.setString(1, collage1);
                pst.setString(2, branch1);
                pst.setString(3, collage2);
                  pst.setString(4, branch2);
                pst.setString(5, collage3);
                pst.setString(6, branch3);
                pst.setString(7, name);
                 pst.setString(8, name1);




                int j = 0;
                j = pst.executeUpdate();
                if (j > 0) {


                    session.setAttribute("MSG", "New Your Conselling is Registered !!");
                    response.sendRedirect("Conselling.jsp");
                } else {
                    session.setAttribute("MSG", "New Conselling Is Not Registered!!");
                    response.sendRedirect("Conselling.jsp");
                }

            } catch (Exception e) {
                e.printStackTrace();
            }

        }

    }
}
