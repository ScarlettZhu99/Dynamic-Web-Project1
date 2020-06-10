<%@page import="pack.DbConnector"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Exercise Planner</title>
<meta name="keywords" content="travel website, free CSS, web templates" />
<meta name="description"
	content="Travel Site - free website template from templatemo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>
</head>
<body style="background: url(images/watercolor.png) repeat;">
	<div id="templatemo_container"
		style="background: url(images/container4.png) repeat;padding: 0; border-style:solid;border-color:#ec8aac;">
		<div id="templatemo_menu"
			style="background: #ec8aac; border-bottom: 1px solid #f79a8c;">
			<ul>
				<li><a href="adminpage.jsp" class="current">Home</a></li>
				<li><a href="admintrain.jsp">Training Details</a></li>
				<li><a href="userd.jsp">User Details</a></li>
				<li><a href="index.jsp">Logout</a></li>


			</ul>
		</div>

		<div style="background: url(images/logo.jpg) repeat;">

			<div id="site_title">
				<center>
					<h1 style="color: white">
						<br> <!--  Travel Site  <span>free css template</span>  --> <br />Self-Discipline Makes Life Better <br /> <!--<img src="images/templatemo_logo.png" alt="free css template" /><span>free css template</span>-->
					</h1>
				</center>
				<br><br>
			</div>



		</div>
		<!-- templatemo_banner -->

		<div>
			<div>

				<img src="images/a1.jpg" />

			</div>
		</div>

		<div>
			<div>

				<img src="images/a2.jpg" />

			</div>

		</div>

		<div id="templatemo_content">

			<div id="side_column">

				<div class="section_w280">

					<h3 style="font-family: Tempus Sans ITC;">Join Us Now</h3>

					<div class="news_section">
						<img src="images/yoga.jpg" />
					</div>

					<div class="news_section">
						<img src="images/exercise2.jpg" />
					</div>

					<div class="button_01">
						<a href="index.jsp">Read All</a>
					</div>

				</div>

			</div>

			<div id="main_column">


				<h3>USER DETAILS..!</h3>
				<BR>
					<table border="2" style="width: 550px; alignment-adjust: central;">
						<!--name, userid, pass, mail, age, loc, sex, time_-->
						<tr
							style="color: purple; background-color: bage; alignment-adjust: auto; font-family: fantasy; font-size: 18px;">
							<td><font size="3">NAME</font></td>
							<td align="center"><font size="3">USER ID</font></td>
							<!--<td align="center"><font size="3">PASSWORD</font></td>-->
							<td align="center"><font size="3">MAIL ID</font></td>
							<td align="center"><font size="3">D.O.B</font></td>
							<td align="center"><font size="3">LOCATION</font></td>
							<td align="center"><font size="3">GENDER</font></td>
							<td align="center"><font size="3">REGISTERED TIME</font></td>



						</tr>
						<%               
    
    //name, userid, pass, mail, age, loc, sex, time_
        String  u=null,st=null,en=null,focuse=null,dot=null,dy=null,ses=null,sta=null,toc=null,key=null;
        
Class.forName("com.mysql.jdbc.Driver");	
Connection conn = DbConnector.getConnection();
Statement st1 = conn.createStatement();

ResultSet rs1 = st1.executeQuery("select * from  regpage ");
while(rs1.next()){
u=rs1.getString("name");
st=rs1.getString("userid");
en=rs1.getString("pass");
focuse=rs1.getString("mail");
dot=rs1.getString("age");
dy=rs1.getString("loc");
ses=rs1.getString("sex");
sta=rs1.getString("time_");


       %>
						<tr style="color: #0000cc; background-color: pink">
							<form action="update.jsp" method="get">
								<!--<td><input type="text" name="file" value="<%=u%>" style="height: 40px; background-color: #ffccff; font-family: monospace; font-weight: bold" readonly ></td>-->

								<td align="center"><%=u%></td>
								<td align="center"><%=st%></td>
								<td align="center"><%=focuse%></td>
								<td align="center"><%=dot%></td>
								<td align="center"><%=dy%></td>
								<td align="center"><%=ses%></td>
								<td align="center"><%=sta%></td>

							</form>
							<%
								}
							%>
						</tr>
					</table>
					<BR></BR>

					<div class="cleaner"></div>
			</div>



			<div class="cleaner"></div>
		</div>

		<div class="cleaner"></div>
	</div>
	<center>
		<h3>
			<font color="pink"> </font>
		</h3>
		<p>
			<h4>
				<font color="black">For better and more personal Exercises
					Plans, Join the VIP program!</font>
			</h4>
		</p>
	</center>
	<div id="templatemo_footer">



		Copyright © 2020 <a href="index.jsp">ABCDE Inc.</a> |



	</div>
	<!-- end of footer -->

	</div>
	<!-- end of container -->
</body>
</html>