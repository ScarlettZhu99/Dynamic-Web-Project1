<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="pack.DbConnector"%>
<%@page import="java.lang.String"%>
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
	function clearText(field) {
		if (field.defaultValue == field.value)
			field.value = '';
		else if (field.value == '')
			field.value = field.defaultValue;
	}
</script>
<script type="text/javascript">
	var categoryName = "Holidays";
	var appProp = {
		isSsoOn : 'true',
		pageID : 'home',
	};
</script>
<script>
	function check() {

		var b = document.ff.str.value;
		var c = document.ff.en.value;
		var d = document.ff.focuse.value;
		var e = document.ff.dot.value;
		var f = document.ff.dy.value;
		var g = document.ff.ses.value;

		if (b == 0) {
			alert('Please Enter Starting Place..!');
			document.getElementById("str").focus();
			return false;

		}
		if (c == 0) {
			alert('Please Enter Ending Place..!');
			document.getElementById("en").focus();
			return false;

		}
		if (d == 0) {
			alert('Please Enter the Interest Place..!');
			document.getElementById("focuse").focus();
			return false;

		}
		if (e == 0) {
			alert('Please Enter Date of Travel..!');
			document.getElementById("dot").focus();
			return false;

		}
		if (f == 0) {
			alert('Please Enter Your Total Days..!');
			document.getElementById("dy").focus();
			return false;

		}
		if (g == 0) {
			alert('Please Enter NO of Person..!');
			document.getElementById("ses").focus();
			return false;

		}

	}
</script>
<link href="combined_css.min.css" rel="stylesheet" />
<script type="text/javascript" src="combined_lib.min.js"></script>
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

					<h4>
						Welcome &nbsp;&nbsp;&nbsp;&nbsp; <font color="pink">Admin..!</font><br></br>

						<ul>
							<li><a href="adminpage.jsp" class="current">Home</a></li>
							<li><a href="admintrain.jsp">Training Details</a></li>
							<li><a href="userd.jsp">User Details</a></li>
							<li><a href="index.jsp">Logout</a></li>

						</ul>
					</h4>

				</div>



			</div>

		</div>

		<div id="main_column">

			<img src="images/fit.jpg" />



			<div class="cleaner"></div>
		</div>

		<div class="cleaner"></div>
	</div>
	<center>
		<h3>
			<font color="pink"></font>
		</h3>
		<p>
			<h4>
				<font color="gray">For better and more personal Exercises
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