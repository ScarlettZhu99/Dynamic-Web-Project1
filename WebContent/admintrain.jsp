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
		style="background: url(images/container02.png) repeat; padding: 0; border-style:solid;border-color:#ec8aac;">
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



					<div class="news_section"></div>

					<div class="news_section"></div>

					</BR>
					</BR>

				</div>

			</div>

			<div id="main_column">

				<div class="section_w560">
					<div style="position: absolute; left: 470px; top: 450px;">
						<center><h3>Training Plans Details:</h3></center>
						<BR>
							<center><table border="2"
								style="width: 550px; alignment-adjust: central;">

								<tr
									style="color: black; background-color:pink; alignment-adjust: auto; font-family: fantasy; font-size: 18px;">
									<td><font size="3">NAME</font></td>
									<td align="center"><font size="3">STARTING weight</font></td>
									<td align="center"><font size="3">Target weight</font></td>
									<td align="center"><font size="3">Training focuse</font></td>
									<td align="center"><font size="3">D.O.T</font></td>
									<td align="center"><font size="3">TOTAL training
											DAYS</font></td>
									<td align="center"><font size="3">N.O.P</font></td>
									<td align="center"><font size="3">STATUS</font></td>
									<td align="center"><font size="3">TOTAL COST</font></td>
									<td align="center"><font size="3">ACTION</font></td>
									<td align="center"><font size="3">CANCEL</font></td>


								</tr>
								<%               
    
    //userid, str, end, focuse, dot, dy, ses, status_, tcost, key_
        String  u=null,st=null,en=null,focuse=null,dot=null,dy=null,ses=null,sta=null,toc=null,key=null;
        
Class.forName("com.mysql.jdbc.Driver");	
Connection conn = DbConnector.getConnection();
Statement st1 = conn.createStatement();

ResultSet rs1 = st1.executeQuery("select * from  plan ");
while(rs1.next()){
u=rs1.getString("userid");
st=rs1.getString("str");
en=rs1.getString("end");
focuse=rs1.getString("focuse");
dot=rs1.getString("dot");
dy=rs1.getString("dy");
ses=rs1.getString("ses");
sta=rs1.getString("status_");
toc=rs1.getString("tcost");
key=rs1.getString("key_");

       %>
								<tr style="color: black; background-color: white">
									<form name="ff" action="update.jsp" method="get"
										onsubmit="return check()">
										<!--<td><input type="text" name="file" value="<%=u%>" style="height: 40px; background-color: #ffccff; font-family: monospace; font-weight: bold" readonly ></td>-->
										<input type="hidden" value="<%=key%>" name="key" />
										<td align="center"><%=u%></td>
										<td align="center"><%=st%></td>
										<td align="center"><%=en%></td>
										<td align="center"><%=focuse%></td>
										<td align="center"><%=dot%></td>
										<td align="center"><%=dy%></td>
										<td align="center"><%=ses%></td>
										<td align="center"><%=sta%></td>

										<td align="center"><input type="text" name="totoalcost"
											value="<%=toc%>" style="width: 80px;" /></td>
										<td align="center"><input type="submit" value="Go"></td>
									</form>
									<td align="center"><a href="delete.jsp?<%=key%>">Delete</a></td>

									<%
										}
									%>
								</tr></center>
							</table>
							<BR></BR>
					</div>

					<div class="cleaner"></div>
				</div>



				<div class="cleaner"></div>
			</div>

			<div class="cleaner"></div>
		</div>
		<BR></BR> <BR></BR> <BR></BR> <BR></BR> <BR></BR> <BR></BR> <BR></BR>
		<center>
			<h3>
				<font color="pink">Want to get fit faster?</font>
			</h3>
			<p>
				<h4>
					<font color="black">For better and more personal Exercises
						Plans, Join the VIP program!</font>
				</h4>
			</p>
		</center>
		<div id="templatemo_footer">



			Copyright � 2020 <a href="index.jsp">ABCDE Inc.</a> |



		</div>
		<!-- end of footer -->

	</div>
	<!-- end of container -->
</body>
</html>