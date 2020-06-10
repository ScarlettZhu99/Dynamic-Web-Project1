<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Exercise Planner</title>
<meta name="keywords" content="travel website, free CSS, web templates" />
<meta name="description" content="Travel Site - free website template from templatemo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>
<script type="text/javascript" >
	var categoryName = "Holidays";
	var appProp = {
            isSsoOn:'true',			
			 pageID:'home',
};

</script>
<script>
    function check(){
      
        var b = document.ff.str.value;
        var c = document.ff.en.value;
        var d = document.ff.focuse.value;
        var e = document.ff.dot.value;
        var f = document.ff.dy.value;
        var g = document.ff.ses.value;
        
   
         if(b==0){
            alert('Please Enter Starting Weight..!');
           document.getElementById("str").focus();            
            return false;
      
        } if(c==0){
            alert('Please Enter Target Weight..!');
            document.getElementById("en").focus();            
            return false;
            
        } if(d==0){
            alert('Please Enter Exercise Focuse..!');
            document.getElementById("focuse").focus();            
            return false;
            
        } if(e==0){
            alert('Please Enter Date of Training..!');
            document.getElementById("dot").focus();            
            return false;
            
        } if(f==0){
            alert('Please Enter  Total Days..!');
            document.getElementById("dy").focus();            
            return false;
            
        } if(g==0){
            alert('Please Enter NO of Session..!');
            document.getElementById("ses").focus();            
            return false;
            
        } 
        
    }
    
    
</script>
        <link href="combined_css.min.css" rel="stylesheet" />
        <script type="text/javascript" src="combined_lib.min.js"></script>
</head>
<body style="background: url(images/watercolor.png) repeat; " >
<div id="templatemo_container" 
	style="background: url(images/container01.png) repeat; padding: 0; border-style:solid;border-color:#ec8aac;" >
	<div id="templatemo_menu"
		style="background: #ec8aac; border-bottom: 1px solid #f79a8c;">
    	<ul>
            <li><a href="userpage.jsp" class="current">Home</a></li>
            <li><a href="mytrain.jsp">My Training Plans</a></li>
            <li><a href="userlog.jsp">Logout</a></li>
           
        </ul>
    </div>

	<div style="background: url(images/logo.jpg) repeat; "  >
    	
        <div id="site_title" >
            <center><h1 style="color:white" ><br>
            	<!--  Travel Site  <span>free css template</span>  -->
               <br />Self-Discipline Makes Life Better
               <br />
                <!--<img src="images/templatemo_logo.png" alt="free css template" /><span>free css template</span>-->
          </h1></center><br><br>
        </div>
        
        
    
    </div> <!-- templatemo_banner -->
    
    <div >
        <div  >
    
           <img src="images/a1.jpg" />
            
	    </div>
	 </div> 
            
    <div  >
    	<div >
    
            <img src="images/a2.jpg" />
            
	   </div>
    
    </div>
    
    <div id="templatemo_content">
    	
        <div id="side_column">
        	
            <div class="section_w280">
            
            	<h3>Join Us Now</h3><br />
                
              <div class="news_section">
                    	<img src="images/yoga.jpg" />
                        
                <%
                  //  userid, season, str, end, focuse, dot, dy, ses, status_, tcost
                String me = session.getAttribute("me").toString();
                %>
                
                <h4>  Welcome! USER: &nbsp;&nbsp;&nbsp;&nbsp; <font color="pink"><%=me%></font></h4>
                          </div>
                
          <form action="trainaction.jsp" name="ff"  method="get" onsubmit="return check()">
              <input type="hidden" name="userid" value="<%=me%>">     
              
              Trainning Season: <br><select name="name" id="name" style="background: pink; height: 28px;  width:250px;">
                            <option>Spring</option>
                            <option>Summer</option>
                            <option>Autumn</option>
                            <option>Winter</option>
                        </select>
                            <br><br>
                    Weight to Start: <br><input type="text" name="str" id="str" style="background: pink; height: 28px;  width:250px;"><br><br>
                    Target Weight: <br><input type="text" name="end" id="en" style="background: pink; height: 28px;  width:250px;"><br><br>
                    Exercise focuse: (upper, lower, core, weight lose)<br> <input type="text" name="focuse" id="focuse"   style="background: pink; height: 28px;  width:250px;"><br><br>
                    Date of Train:<br> <input type="date" name="dot" id="dot" style="background: pink; height: 28px;  width:250px;"><br><br>
                    Tarin Days:<br> <input type="text" name="dy" id="dy" style="background: pink; height: 28px;  width:250px;"><br><br>
                    NO. Of. Sessions:<br> <input type="text" name="ses" id="ses" style="background: pink; height: 28px;  width:250px;"><br><br>
                    
                   
                    <div style="margin-left: 3px;">  
                        <input type="submit" value="Design " style="background-color: wheat; width: 80px; height: 30px; border: 4px; font-weight: bold;">&nbsp;&nbsp;&nbsp;
                    </form>
                    <input type="reset" value="Clear" style="background-color: red; height: 30px; width: 80px; border: 4px; font-weight: bold;"></div>
                                    <br>
                                     
        		<%
if(request.getParameter("msgg")!=null) {
out.println("<script>alert('Error Found..!!')</script>");
}                       

%>
     
               
            </div>
        
        </div>
        
        <div id="main_column">
        
        	<img src="images/fit.jpg" />
            
       
            
            <div class="cleaner"></div>
        </div>
        
        <div class="cleaner"></div>
    </div>
<center><h3> <font color="pink">Want to get fit faster?</font></h3><p><h4><font color="green">For better and more personal Exercises Plans, Join the VIP program!</font></h4></p></center>
    <div id="templatemo_footer">

        
    
        Copyright © 2020 <a href="index.jsp">ABCDE Inc.</a> | | 
        
        
    
    </div> <!-- end of footer -->
    
</div> <!-- end of container -->
</body>
</html>