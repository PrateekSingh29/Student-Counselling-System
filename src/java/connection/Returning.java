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
public class Returning extends HttpServlet {

    static Connection conn = null;
    Statement st = null;
    PreparedStatement pst = null;
    ResultSet rs = null;
    String regid = null;
    String branchid = null;
    String username = null;
    String branchname = null;
    String bookid = null;
    String bookname = null;
    String issue = null;
    String returning = null;
    String renewal = null;
    String extend = null;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(true);
        regid = request.getParameter("cmbProID");
        branchid = request.getParameter("txtbranchid");
        username = request.getParameter("txtname");
        branchname = request.getParameter("txtbranchname");
        bookid = request.getParameter("cmbid");
        bookname = request.getParameter("txtbookname");
        issue = request.getParameter("txtissue");





        if (regid != null) {
            try {
                conn = connection.Connect.makeCon();
                String query = "Insert into returning(regid,branchid,username,branchname,bookid,bookname,issue) values(?,?,?,?,?,?,?)";
                System.out.println("cccccccc" + query);
                pst = conn.prepareStatement(query);
                pst.setString(1, regid);
                pst.setString(2, branchid);
                pst.setString(3, username);
                pst.setString(4, branchname);
                pst.setString(5, bookid);
                pst.setString(6, bookname);
                pst.setString(7, issue);



                int j = 0;
                j = pst.executeUpdate();
                if (j > 0) {


                    session.setAttribute("MSG", "Your Returning is Accepted Successfully !!");
                    response.sendRedirect("Returning.jsp");
                } else {
                    session.setAttribute("MSG", "Your  Returning is Not Accepted Successfully !!");
                    response.sendRedirect("Returning.jsp");
                }

            } catch (Exception e) {
                e.printStackTrace();
            }

        }

    }
}
