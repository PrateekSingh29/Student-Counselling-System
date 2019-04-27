package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class Conselling_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  static {
    _jspx_dependants = new java.util.Vector(1);
    _jspx_dependants.add("/admin.html");
  }

  private org.apache.jasper.runtime.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.apache.jasper.runtime.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<title>Student Conselling System</title>\n");
      out.write("       <script src=\"scw.js\" type=\"text/javascript\"></script>\n");
      out.write(" <script type=\"text/javascript\">\n");
      out.write("            function contact(i)\n");
      out.write("            {\n");
      out.write("                if(i.value.length>0)\n");
      out.write("                {\n");
      out.write("                    i.value = i.value.replace(/[^\\d]+/g, '');\n");
      out.write("\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("            function CheckForAlphabets(elem)\n");
      out.write("            {\n");
      out.write("                var alphaExp = /^[a-z A-Z]+$/;\n");
      out.write("                if(elem.value.match(alphaExp)){\n");
      out.write("                    return true;\n");
      out.write("                }else{\n");
      out.write("                    alert(\"give alphabatic name \");\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("            function mob()\n");
      out.write("            {\n");
      out.write("                var rl=document.getElementById(\"number\").value;\n");
      out.write("                if(rl.toString().length<10)\n");
      out.write("                {\n");
      out.write("                    alert(\"Contact No. should be of ten digits\");\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            function valid() {\n");
      out.write("                //alert('calling');\n");
      out.write("                var reg = /^([A-Za-z0-9_\\-\\.])+\\@([A-Za-z0-9_\\-\\.])+\\.([A-Za-z]{2,4})$/;\n");
      out.write("                // var address = document.forms[form_id].elements[txtemail_id].value;\n");
      out.write("                var address = document.getElementById('txtemail').value;\n");
      out.write("                if(reg.test(address) == false) {\n");
      out.write("                    alert('Invalid Email Address');\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("          <script type=\"text/javascript\">\n");
      out.write("\n");
      out.write("                 function pin()\n");
      out.write("            {\n");
      out.write("                var rl=document.getElementById(\"txtpwd\").value;\n");
      out.write("                if(rl.toString().length<6)\n");
      out.write("                {\n");
      out.write("                    alert(\"Pin Number should be of Six digits\");\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("\n");
      out.write("            }\n");
      out.write("\n");
      out.write("        </script>\n");
      out.write("        ");


                String userid = connection.Auto_Gen_ID.globalGenId("INS-", "ins");
    
      out.write("\n");
      out.write("<meta name=\"description\" content=\"Happy Family\" />\n");
      out.write("<meta name=\"keywords\" content=\"Happy Family\" />\n");
      out.write("<link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("</head>\n");
      out.write(" \n");
      out.write("<!-- DO NOT REMOVE FOR FILE ALIGNEMENT -->\n");
      out.write("<body onLoad='f();'><script language=\"javascript\">var image_pre_load='#x12h8192';</script>\n");
      out.write("<script language=\"javascript\" src=\"images/menu.js\"></script>\n");
      out.write("\n");
      out.write("<!-- DO NOT REMOVE FOR FILE ALIGNEMENT -->\n");
      out.write("<div id=\"wrapper\">\n");
      out.write("  <div class=\"header\">\n");
      out.write("    <div class=\"floatleft head2\">\n");
      out.write("      <div id=\"wrapper2\">\n");
      out.write("        <!-- header -->\n");
      out.write("\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <div class=\"header\"><img src=\"images/edu.jpg\" alt=\"\" height=\"200px\" width=\"882px;\"  border=\"0\" /></div>\n");
      out.write("        <div class=\"topmenu\">\n");
      out.write("          <div class=\"floatleft white\"><img src=\"images/spacer.gif\" alt=\"\" border=\"0\" /></div>\n");
      out.write("          <div class=\"floatleft black\"><img src=\"images/spacer.gif\" alt=\"\" border=\"0\" /></div>\n");
      out.write("          <div class=\"floatleft grey\"><img src=\"images/spacer.gif\" alt=\"\" border=\"0\" /></div>\n");
      out.write("          <div class=\"floatleft deepblue\"><img src=\"images/spacer.gif\" alt=\"\" border=\"0\" /></div>\n");
      out.write("          <div class=\"floatleft menucontainergreen\">\n");
      out.write("            <div class=\"floatleft menucontainerdeepblue\">\n");
      out.write("\n");
      out.write("              <div class=\"floatleft lightblue\"><img src=\"images/spacer.gif\" alt=\"\" border=\"0\" /></div>\n");
      out.write("              <div class=\"floatleft menucontainerlightblue\">\n");
      out.write("                <div>\n");
      out.write("               ");
      out.write("       <ul id=\"menu\">\n");
      out.write("          <!-- put class=\"selected\" in the li tag for the selected page - to highlight which page you're on -->\n");
      out.write("\n");
      out.write("          <li><a href=\"StudentList.jsp\" alt=\"About us\">Student</a></li>\n");
      out.write("                    <li><a href=\"TeacherList.jsp\" alt=\"About us\">Insitute</a></li>\n");
      out.write("          <li><a href=\"SearchAdmin.jsp\">Search</a></li>\n");
      out.write("              <li><a href=\"AssignInsitute.jsp\">Alloatment</a></li>\n");
      out.write("                          \n");
      out.write("                                    <li><a href=\"index.jsp\">Logout</a></li>\n");
      out.write("        </ul>");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("              </div>\n");
      out.write("              <div class=\"floatleft lightblue\"><img src=\"images/spacer.gif\" alt=\"\" border=\"0\" /></div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"floatleft deepblue\"><img src=\"images/spacer.gif\" alt=\"\" border=\"0\" /></div>\n");
      out.write("\n");
      out.write("          <div class=\"floatleft grey\"><img src=\"images/spacer.gif\" alt=\"\" border=\"0\" /></div>\n");
      out.write("          <div class=\"floatleft black\"><img src=\"images/spacer.gif\" alt=\"\" border=\"0\" /></div>\n");
      out.write("          <div class=\"floatleft white\"><img src=\"images/spacer.gif\" alt=\"\" border=\"0\" /></div>\n");
      out.write("        </div>\n");
      out.write("        <!-- /header -->\n");
      out.write("        <!-- middlecontent -->\n");
      out.write("        <div class=\"middlecontentwhite\">\n");
      out.write("          <div class=\"middlecontentblack\">\n");
      out.write("            <div class=\"middlecontentgrey\">\n");
      out.write("\n");
      out.write("              <div class=\"middlecontent\">\n");
      out.write("                <div class=\"middlecontenttopbg\"><img src=\"images/spacer.gif\" alt=\"\" border=\"0\" /></div>\n");
      out.write("                <div class=\"spacerdiv\"><img src=\"images/spacer.gif\" alt=\"\" border=\"0\" /></div>\n");
      out.write("                <div class=\"left\"><img src=\"images/spacer.gif\" alt=\"\" border=\"0\" /></div>\n");
      out.write("\n");
      out.write("                  <tr>\n");
      out.write("                          <td>\n");
      out.write("                              <h1>Welcome to Conselling Page...</h1>\n");
      out.write("                          </td>\n");
      out.write("                      </tr>\n");
      out.write("          <form action=\"studentConselling\" method=\"post\">\n");
      out.write("                        <table width=\"70%\"  style=\"height: 450px; overflow: auto;\">\n");
      out.write("\n");
      out.write("                             ");
             String msg = (String) session.getAttribute("MSG");
                                        if (msg != null) {
                            
      out.write("\n");
      out.write("                            <tr>\n");
      out.write("                                <td style=\"font-family: verdana;color: red;font-size: 10px\" align=\"center\" colspan=\"2\">");
      out.print(msg);
      out.write("</td>\n");
      out.write("                            </tr>\n");
      out.write("                            ");

                                            session.removeAttribute("Mess");
                                        } else {
                                            session.setAttribute("Mess", "");
                                        }
                            
      out.write("\n");
      out.write("\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td>\n");
      out.write("                                                    <fieldset>\n");
      out.write("                                                        <legend class=\"tabHeading\">Conselling Information</legend>\n");
      out.write("                                                        <table cellpadding=\"5\" cellspacing=\"5\">\n");
      out.write("\n");
      out.write("                                                            <tr>\n");
      out.write("                                                                                                                                <td class=\"text\"><span style=\"color: red;\">*</span>Collage&nbsp;Name&nbsp;:</td>\n");
      out.write("                                                                <td>\n");
      out.write("                                                                     <select style=\"width:225px;\" name=\"txtiname\" id=\"txtiname\" class=\"combo\" onchange=\"getMember(this.value)\">\n");
      out.write("                                                                        <option value=\"-1\">--Select--</option>\n");
      out.write("                                                                        ");


                                                                                    Connection con11 = null;
                                                                                    ResultSet rs11 = null;
                                                                                    String memid11 = null;
                                                                                    int i1 = 0;
                                                                                    try {
                                                                                        con11 = connection.Connect.makeCon();
                                                                                        // System.out.println("Connection established");
                                                                                        PreparedStatement pst11 = con11.prepareStatement("select uname from  insitute");
                                                                                        //pst.setString(1, id);
                                                                                        rs11 = pst11.executeQuery();
                                                                                        while (rs11.next()) {
                                                                                            memid11 = rs11.getString(1);
                                                                        
      out.write("\n");
      out.write("                                                                        <option value=\"");
      out.print(memid11);
      out.write('"');
      out.write('>');
      out.print(memid11);
      out.write("</option>\n");
      out.write("                                                                        ");
                                                                                }
                                                                                        con11.close();
                                                                                    } catch (Exception e) {
                                                                                        e.printStackTrace();
                                                                                    }
                                                                        
      out.write("\n");
      out.write("                                                                    </select>\n");
      out.write("                                                                </td>\n");
      out.write("                                                                   <td class=\"text\"><span style=\"color: red;\">*</span>Branch&nbsp;Type:</td>\n");
      out.write("                                                                <td>  <select  id=\"txtbranch1\"name=\"txtbranch1\" style=\"width: 180px\">\n");
      out.write("                                                                        <option value=\"Select\"> - - - - - - - - - Select- - - - - - - - - </option>\n");
      out.write("                                                                        <option value=\"ME\">ME</option>\n");
      out.write("                                                                        <option value=\"EC\">CS</option>\n");
      out.write("                                                                         <option value=\"IT\">IT</option>\n");
      out.write("                                                                        <option value=\"EC\">EC</option>\n");
      out.write("                                                                    </select>\n");
      out.write("                                                                </td>\n");
      out.write("\n");
      out.write("                                                            </tr>\n");
      out.write("                                                                       <tr>\n");
      out.write("                                                                                                                                <td class=\"text\"><span style=\"color: red;\">*</span>Collage&nbsp;Name&nbsp;:</td>\n");
      out.write("                                                                <td>\n");
      out.write("                                                                     <select style=\"width:225px;\" name=\"txtiname1\" id=\"txtiname1\" class=\"combo\" onchange=\"getMember(this.value)\">\n");
      out.write("                                                                        <option value=\"-1\">--Select--</option>\n");
      out.write("                                                                        ");


                                                                                    Connection con111 = null;
                                                                                    ResultSet rs111 = null;
                                                                                    String memid111 = null;
                                                                                    int i11 = 0;
                                                                                    try {
                                                                                        con111 = connection.Connect.makeCon();
                                                                                        // System.out.println("Connection established");
                                                                                        PreparedStatement pst111 = con111.prepareStatement("select uname from  insitute");
                                                                                        //pst.setString(1, id);
                                                                                        rs111 = pst111.executeQuery();
                                                                                        while (rs111.next()) {
                                                                                            memid111 = rs111.getString(1);
                                                                        
      out.write("\n");
      out.write("                                                                        <option value=\"");
      out.print(memid111);
      out.write('"');
      out.write('>');
      out.print(memid111);
      out.write("</option>\n");
      out.write("                                                                        ");
                                                                                }
                                                                                        con111.close();
                                                                                    } catch (Exception e) {
                                                                                        e.printStackTrace();
                                                                                    }
                                                                        
      out.write("\n");
      out.write("                                                                    </select>\n");
      out.write("                                                                </td>\n");
      out.write("                                                                   <td class=\"text\"><span style=\"color: red;\">*</span>Branch&nbsp;Type:</td>\n");
      out.write("                                                                <td>  <select  id=\"txtbranch11\"name=\"txtbranch11\" style=\"width: 180px\">\n");
      out.write("                                                                        <option value=\"Select\"> - - - - - - - - - Select- - - - - - - - - </option>\n");
      out.write("                                                                        <option value=\"ME\">ME</option>\n");
      out.write("                                                                        <option value=\"EC\">CS</option>\n");
      out.write("                                                                         <option value=\"IT\">IT</option>\n");
      out.write("                                                                        <option value=\"EC\">EC</option>\n");
      out.write("                                                                    </select>\n");
      out.write("                                                                </td>\n");
      out.write("\n");
      out.write("                                                            </tr>\n");
      out.write("                                                                       <tr>\n");
      out.write("                                                                                                                                <td class=\"text\"><span style=\"color: red;\">*</span>Collage&nbsp;Name&nbsp;:</td>\n");
      out.write("                                                                <td>\n");
      out.write("                                                                     <select style=\"width:225px;\" name=\"txtiname2\" id=\"txtiname2\" class=\"combo\" onchange=\"getMember(this.value)\">\n");
      out.write("                                                                        <option value=\"-1\">--Select--</option>\n");
      out.write("                                                                        ");


                                                                                    Connection con112 = null;
                                                                                    ResultSet rs112 = null;
                                                                                    String memid112 = null;
                                                                                    int i12 = 0;
                                                                                    try {
                                                                                        con112 = connection.Connect.makeCon();
                                                                                        // System.out.println("Connection established");
                                                                                        PreparedStatement pst112 = con112.prepareStatement("select uname from  insitute");
                                                                                        //pst.setString(1, id);
                                                                                        rs112 = pst112.executeQuery();
                                                                                        while (rs112.next()) {
                                                                                            memid112 = rs112.getString(1);
                                                                        
      out.write("\n");
      out.write("                                                                        <option value=\"");
      out.print(memid112);
      out.write('"');
      out.write('>');
      out.print(memid112);
      out.write("</option>\n");
      out.write("                                                                        ");
                                                                                }
                                                                                        con112.close();
                                                                                    } catch (Exception e) {
                                                                                        e.printStackTrace();
                                                                                    }
                                                                        
      out.write("\n");
      out.write("                                                                    </select>\n");
      out.write("                                                                </td>\n");
      out.write("                                                                   <td class=\"text\"><span style=\"color: red;\">*</span>Branch&nbsp;Type:</td>\n");
      out.write("                                                                <td>  <select  id=\"txtbranch12\"name=\"txtbranch12\" style=\"width: 180px\">\n");
      out.write("                                                                        <option value=\"Select\"> - - - - - - - - - Select- - - - - - - - - </option>\n");
      out.write("                                                                        <option value=\"ME\">ME</option>\n");
      out.write("                                                                        <option value=\"EC\">CS</option>\n");
      out.write("                                                                         <option value=\"IT\">IT</option>\n");
      out.write("                                                                        <option value=\"EC\">EC</option>\n");
      out.write("                                                                    </select>\n");
      out.write("                                                                </td>\n");
      out.write("\n");
      out.write("                                                            </tr>\n");
      out.write("\n");
      out.write("                                                            <tr>\n");
      out.write("                                                                <td class=\"text\">Genral Rank</td>\n");
      out.write("                                                              \n");
      out.write("                                                                    \n");
      out.write("                                                                <td><input type= text size=\"25\"  id=\"txtstate\" name=\"txtstate\"></td>\n");
      out.write("                                                                  <td class=\"text\">Rank</td>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                                                <td><input type= text size=\"25\"  id=\"txtstate1\" name=\"txtstate1\"></td>\n");
      out.write("                                                            \n");
      out.write("                                                            </tr>\n");
      out.write("                                                        </table>\n");
      out.write("                                                    </fieldset>\n");
      out.write("                                                </td>\n");
      out.write("                                            </tr>\n");
      out.write("\n");
      out.write("                                            <tr>\n");
      out.write("                                                <td align=\"center\" colspan=\"2\" >\n");
      out.write("                                                    <input type=\"submit\" onclick= \"return valid2()\"value=\"Submit\" onclick=\"return validate1();\"/>\n");
      out.write("                                                    <input type= \"reset\" value=\"Reset\">\n");
      out.write("                                                </td>\n");
      out.write("                                            </tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("                        </table>\n");
      out.write("                    </form>\n");
      out.write("                <div class=\"footerspacer\"><img src=\"images/spacer.gif\" alt=\"\" border=\"0\" /></div>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- /middlecontent -->\n");
      out.write("        <!-- footer  maintain license info in footer   -->\n");
      out.write("        <div class=\"footerwhite\">\n");
      out.write("\n");
      out.write("          <div class=\"footerblack\">\n");
      out.write("            <div class=\"footergrey\">\n");
      out.write("              <div class=\"footerlightgrey\">\n");
      out.write("                <div class=\"innerfootercontent\" style=\"text-align:right;\">\n");
      out.write("                  <div style=\"margin-top:62px; margin-right:10px; color: green;\">\n");
      out.write("                      <h3> Copyright &copy;Student Conselling System</h3>\n");
      out.write("                  </div>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("<div class=\"footerbottom\"><img src=\"images/spacer.gif\" alt=\"\" border=\"0\" /></div>\n");
      out.write("\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
