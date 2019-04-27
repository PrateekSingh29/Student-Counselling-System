/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package connection;

/*import java.io.IOException;
import java.io.PrintWriter;*/
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;
import java.io.*;
import org.apache.commons.fileupload.*;
import org.apache.commons.fileupload.servlet.*;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletConfig;

public class Upload extends HttpServlet {

    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    String bookid = null;
    String bookname = null;
    String bookauthor = null;
    String bookcategrory = null;
    String price = null;
    String bookstutus = null;
    String pname = null;
    String pname1 = null;
    String fullprojectpath = null;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(true);

        PrintWriter out = response.getWriter();
        int i = 0;
        response.setContentType("text/html");
        ServletConfig config = getServletConfig();
        String context = config.getServletContext().getRealPath("/");
        String projectPath = context + "UploadedImage";
        boolean status = false;
        String fullfilename = null;
        java.util.Date d = new java.util.Date();
        long timestamp = d.getTime();
        try {
            File projectDir = new File("projectPath");
            if (!projectDir.exists()) {
                projectDir.mkdirs();

            }
        } catch (Exception e) {
        }
        boolean isMultipart = ServletFileUpload.isMultipartContent(new ServletRequestContext(request));
        if (isMultipart) {
            FileItemFactory factory = new DiskFileItemFactory();
            ServletFileUpload upload = new ServletFileUpload(factory);
            try {
                List/*FileItem*/ items = upload.parseRequest(request);
                Iterator iter = items.iterator();
                while (iter.hasNext()) {
                    FileItem item = (FileItem) iter.next();
                    if (item.isFormField()) {
                        if (item.getFieldName().equalsIgnoreCase("cmbid")) {
                            bookid = item.getString();


                        }
                        if (item.getFieldName().equalsIgnoreCase("txtbookname")) {
                            bookname = item.getString();


                        }
                        if (item.getFieldName().equalsIgnoreCase("txtauthor")) {
                            bookauthor = item.getString();

                            System.out.println("fffffffffffffffff");
                        }
                        if (item.getFieldName().equalsIgnoreCase("txtcat")) {
                            bookcategrory = item.getString();


                        }
                        if (item.getFieldName().equalsIgnoreCase("txtstatus")) {
                            bookstutus = item.getString();


                        }
                        if (item.getFieldName().equalsIgnoreCase("txtprice")) {
                            price = item.getString();


                        }




                    } else {
                        fullfilename = "images" + "_" + timestamp;

                        if (item.getFieldName().equalsIgnoreCase("fileproject")) {
                            String filename = item.getName();
                            if (!filename.equalsIgnoreCase("")) {
                                pname = filename.substring(filename.lastIndexOf("."), filename.length());
                                pname1 = projectPath + File.separator + fullfilename + pname;
                                fullprojectpath = fullfilename + pname;
                                File file3 = new File(pname1);
                                try {

                                    item.write(file3);
                                    status = true;

                                } catch (Exception e1) {
                                    e1.printStackTrace();
                                    status = false;
                                }
                            }
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
                status = false;

            }
        }

        if (status == true) {
            try {
                Connection con2 = connection.Connect.makeCon();
                PreparedStatement pst = null;
                String sqlquery = "Insert into book(bookid,bookname,bookauthor,bookcategrory,bookstatus,image,price)values(?,?,?,?,?,?,?)";
                System.out.println(" sql query : " + sqlquery);

                pst = con2.prepareStatement(sqlquery);

                pst.setString(1, bookid);
                pst.setString(2, bookname);
                pst.setString(3, bookauthor);
                pst.setString(4, bookcategrory);
                pst.setString(5, bookstutus);
                pst.setString(6, fullprojectpath);
                pst.setString(7, price);


                i = pst.executeUpdate();
            } catch (Exception e) {
                e.printStackTrace();

            }
            if (i > 0) {


                response.sendRedirect("CreateNewBook.jsp");
                session.setAttribute("MSG", "data is inserted  successfully!!!");
            } else {

                response.sendRedirect("CreateNewBook.jsp");
                session.setAttribute("MSG", "data is inserted  successfully!!!");
            }
        }

    }
}
