<%@page import="java.util.Random"%>
<%@page import="pack.DbConnector"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
     //  userid, season, str, end, focuse, dot, dy, ses, status_, tcost
            String me = request.getParameter("userid");
            String ss = request.getParameter("str");
            String str = request.getParameter("end");
            String end = request.getParameter("focuse");
            String dot = request.getParameter("dot");
            String dy = request.getParameter("dy");
            String ses = request.getParameter("ses");
            String s = "NOT CONFIRMED";
            String t = "NOT CONFIRMED";
            Random r = new Random();
            int ii = r.nextInt(100000-5000)+5000;
            String k = ii+"";
           Connection con =  DbConnector.getConnection();
            Statement st = con.createStatement();
            int i = st.executeUpdate("insert into plan values('"+me+"','"+ss+"','"+str+"','"+end+"','"+dot+"','"+dy+"','"+ses+"','"+s+"','"+t+"','"+k+"')");
            if (i != 0) {
               response.sendRedirect("userpage.jsp?msg=Send success");
            } else {
               response.sendRedirect("userpage.jsp?msgr=Register fails");
            }
            %>