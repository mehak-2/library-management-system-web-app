<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>Chronicle Education Category Bootstrap Responsive website Template | Login :: w3layouts</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Chronicle Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- Custom Theme files -->
    <link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <!-- shop css -->
    <link href="css/shop.css" type="text/css" rel="stylesheet" media="all">
    <link href="css/style.css" type="text/css" rel="stylesheet" media="all">
    <!-- font-awesome icons -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- //Custom Theme files -->
    <!-- online-fonts -->
    <!-- logo -->
    <link href="//fonts.googleapis.com/css?family=Fredericka+the+Great" rel="stylesheet">
    <!-- titles -->
    <link href="//fonts.googleapis.com/css?family=Merriweather+Sans:300,300i,400,400i,700,700i,800,800i" rel="stylesheet">
    <!-- body -->
    <link href="//fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">
    <!-- //online-fonts -->
    <%@ page import="java.sql.*" %>

<%@include file="var.jsp" %>
</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
    <div id="home">
        <!-- header -->
        <%@include file="headermain.jsp" %>
    <!-- banner -->
        <div class="banner-bg-inner">
            <!-- banner-text -->
            <div class="banner-text-inner">
                <div class="container">
                    <h2 class="title-inner">
                        world of reading
                    </h2>

                </div>
            </div>
            <!-- //banner-text -->
        </div>
        <!-- //banner -->
       <!-- breadcrumbs -->
        <div class="crumbs text-center">
            <div class="container">
                <div class="row">
                    <ul class="btn-group btn-breadcrumb bc-list">
                        <li class="btn btn1">
                            <a href="index.jsp">
                                <i class="glyphicon glyphicon-home"></i>
                            </a>
                        </li>
                        <li class="btn btn2">
                            <a href="#">Student Section</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!--//breadcrumbs ends here-->
      
                                  <%
        
                                      
            String sid;
            String rollno1="",email1="",fullname1="",gender1="",course1="",courseyear1="",phone1="",role1="",address1="";
            sid=request.getParameter("studentid");            
          
           
            try
            {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection myconnection = DriverManager.getConnection(PATH+PLACE, USERNAME,PASSWORD);

                try
                {
                    PreparedStatement mystatement = myconnection.prepareStatement("select * from student where studentid=?");
                    mystatement.setString(1, sid);
                    

                    ResultSet myresult = mystatement.executeQuery();
                    if(myresult.next())                   
                    {                    
                        rollno1=myresult.getString("rollno");        
                        email1=myresult.getString("email");
                        fullname1=myresult.getString("fullname");
                        gender1=myresult.getString("gender");
                        course1 = myresult.getString("course");
                        courseyear1 =myresult.getString("courseyear");
                        phone1=myresult.getString("phone");
                        address1=myresult.getString("address");
                       

                    }
                    else
                    {
                        out.print("Wrong student id");
                    }

                }
                catch(Exception e)
                {
                    out.print("Error in Query due to " + e.getMessage());
                }
            }
            catch(Exception e)
            {
                out.print("Error in Connection due to " + e.getMessage());
            }
                
           
        
        
        
        
    %>
    
     <div class="login-form section text-center">
            <div class="container">
                <h4 class="rad-txt">
                   
                    <span class="abtext">Update Student</span>
                </h4>
                 <form id="loginform" method="post">
                          <%
        
        if(request.getParameter("updatebtn")!=null)
        {
                        rollno1=request.getParameter("rollno");        
                        email1=request.getParameter("email");
                        fullname1=request.getParameter("fullname");
                        gender1=request.getParameter("gender");
                        course1 =request.getParameter("course");
                        courseyear1 =request.getParameter("courseyear");
                        phone1=request.getParameter("phone");
                        address1=request.getParameter("address");
            String path,place,username,password;
            
            try
            {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection myconnection = DriverManager.getConnection(PATH+PLACE, USERNAME, PASSWORD);

                try
                {
                    PreparedStatement mystatement = myconnection.prepareStatement("update student set rollno=?, email=?,"
                    + "fullname=?, gender=?, course=?, courseyear=?, phone=?, address=? where studentid=?");
                    mystatement.setString(1, rollno1);
                    mystatement.setString(2, email1);
                    mystatement.setString(3, fullname1);
                    mystatement.setString(4, gender1);
                    mystatement.setString(5, course1);
                    mystatement.setString(6, courseyear1);
                    mystatement.setString(7, phone1);
                    mystatement.setString(8, address1);
                    mystatement.setString(9,sid);
                    if(mystatement.executeUpdate()>0)
                    {
                        out.print("Student Updated successfully");
                    }
                    else
                    {
                        out.print("Error Occured. Try again later");
                    }

                }
                catch(Exception e)
                {
                    out.print("Error in Query due to " + e.getMessage());
                }
            }
            catch(Exception e)
            {
                out.print("Error in Connection due to " + e.getMessage());
            }
        }
    %>
                
     <div id="loginbox" style="margin-top:30px;" class="mainbox  loginbox">
                    <div class="panel panel-info">
                       
                      
                                <div class="form-group" style="margin-top:30px;">
                               
                                  
    
                                       <label class="col-md-3 col-sm-3 col-xs-3 control-label">Rollno</label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <input type="number" class="form-control" name="rollno" placeholder="Roll No" required="" value="<%=rollno1%>"/>
                                    </div>
                                </div>
                        <div class="form-group">
                                    <label class="col-md-3 col-sm-3 col-xs-3 control-label">Email</label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <input type="text" class="form-control" name="email" placeholder="Email Address" required="" value="<%=email1%>"/>
                                    </div>
                                </div><br><br>
                                <div class="form-group">
                                    <label class="col-md-3 col-sm-3 col-xs-3 control-label">Full Name</label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <input type="text" class="form-control" name="fullname" placeholder="Full Name" required="" value="<%=fullname1%>"/>
                                    </div>
                                </div>
                                
                             <div class="form-group">
    <label class="col-md-3 col-sm-3 col-xs-3 control-label">Gender</label>
    <div class="col-md-9 col-sm-9 col-xs-9">
    
             <select name="gender" class="form-control" required="" value="<%=gender1%>"/>
                                        <option>Choose  Gender </option>
            <% if(gender1.equals("male"))
                                        {                                         
                                        out.print("<option value='male' selected>Male</option>");
                                        out.print("<option value='female'>Female</option>");
                                        }
                                        else
                                        {
                                        out.print("<option value='male'>Male</option>");
                                        out.print("<option value='female' selected>Female</option>");
                                        }
                                        %>
        </select>
        </div>
    </div>
                             

        
                               <div class="form-group">
    <label class="col-md-3 col-sm-3 col-xs-3 control-label">Course</label>
    <div class="col-md-9 col-sm-9 col-xs-9">
      
             <select name="course" class="form-control" required="" value="<%=course1%>"/>
                                        <option>Choose  Course </option>
                                        <% if(course1.equals("mtech"))
                                        {                                         
                                        out.print("<option value='mtech' selected>mtech</option>");
                                        out.print("<option value='btech'>btech</option>");
                                        out.print("<option value='bca'>bca</option>");
                                        out.print("<option value='phd'>phd</option>");
                                        out.print("<option value='mca'>mca</option>");
                                       
                                        }
                                        else if(course1.equals("btech"))
                                        {
                                         out.print("<option value='mtech'>mtech</option>");
                                        out.print("<option value='btech' selected>btech</option>");
                                        out.print("<option value='bca'>bca</option>");
                                        out.print("<option value='phd'>phd</option>");
                                        out.print("<option value='mca'>mca</option>");
                        
                                        }
                                         else if(course1.equals("bca"))
                                        {
                                         out.print("<option value='mtech'>mtech</option>");
                                        out.print("<option value='btech'>btech</option>");
                                        out.print("<option value='bca' selected>bca</option>");
                                        out.print("<option value='phd'>phd</option>");
                                        out.print("<option value='mca'>mca</option>");
                     
                                        }
                                         else if(course1.equals("phd"))
                                        {
                                         out.print("<option value='mtech'>1st</option>");
                                        out.print("<option value='btech'>2nd</option>");
                                        out.print("<option value='bca'>3rd</option>");
                                        out.print("<option value='phd' selected>4th</option>");
                                        out.print("<option value='mca'>5th</option>");
             
                                        }
                                         else if(course1.equals("mca"))
                                        {
                                         out.print("<option value='mtech'>mtech</option>");
                                        out.print("<option value='btech'>btech</option>");
                                        out.print("<option value='bca'>bca</option>");
                                        out.print("<option value='phd'>phd</option>");
                                        out.print("<option value='mca' selected>mca</option>");
                                       out.print("<option value='6' >6th</option>");
                                        out.print("<option value='7'>7th</option>");
                                        out.print("<option value='8'>8th</option>");
                                        out.print("<option value='9'>9th</option>");
                                        out.print("<option value='10'>10th</option>");
                                        }
                                        %>
                                        
                                    </select>
                                        <div id="#answerbox">
                                            
                                        </div>
        </div>
    </div>
                               
                                
            <div class="form-group">
                                    <label class="col-md-3 col-sm-3 col-xs-3 control-label" >Course Year</label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        
             <select name="courseyear" class="form-control" id='courseyear' required="" value="<%=courseyear1%>"/>>
                                        <% if(courseyear1.equals("1"))
                                        {                                         
                                        out.print("<option value='1' selected>1</option>");
                                        out.print("<option value='2'>2</option>");
                                        out.print("<option value='3'>3</option>");
                                        out.print("<option value='4'>4</option>");
                                        out.print("<option value='5'>5</option>");
                                       
                                        }
                                        else if(courseyear1.equals("2"))
                                        {
                                         out.print("<option value='1'>1</option>");
                                        out.print("<option value='2' selected>2</option>");
                                        out.print("<option value='3'>3</option>");
                                        out.print("<option value='4'>4</option>");
                                        out.print("<option value='5'>5</option>");
                        
                                        }
                                         else if(courseyear1.equals("3"))
                                        {
                                         out.print("<option value='1'>1</option>");
                                        out.print("<option value='2'>2</option>");
                                        out.print("<option value='3' selected>3</option>");
                                        out.print("<option value='4'>4</option>");
                                        out.print("<option value='5'>5</option>");
                     
                                        }
                                         else if(courseyear1.equals("4"))
                                        {
                                         out.print("<option value='1'>1</option>");
                                        out.print("<option value='2'>2</option>");
                                        out.print("<option value='3'>3</option>");
                                        out.print("<option value='4' selected>4</option>");
                                        out.print("<option value='5'>5</option>");
             
                                        }
                                         else if(courseyear1.equals("mca"))
                                        {
                                         out.print("<option value='1'>1</option>");
                                        out.print("<option value='2'>2</option>");
                                        out.print("<option value='3'>3</option>");
                                        out.print("<option value='4'>4</option>");
                                        out.print("<option value='5' selected>5</option>");
                                     
                                        }
                                        %>
                                        
                                    </select>
            
        </div>
    </div>
                                   
                                   <div class="form-group">
                                    <label class="col-md-3 col-sm-3 col-xs-3 control-label">Phone</label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <input type="number" class="form-control" name="phone" placeholder="Phone Number" required="" value="<%=phone1%>"/>
                                    </div>
                                </div>
            
                                

              <div class="form-group">
                                    <label class="col-md-3 col-sm-3 col-xs-3 control-label">Address</label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <input type="address" class="form-control" name="address" placeholder="address" required="" value="<%=address1%>"/>
                                        
                                    </div>
                                </div>
                               
                                <div class="form-group">
                                    <!-- Button -->
                                    <div class="signup-btn">
                                        <input id="btn-signup"  type="submit" class="btn btn-info" name="updatebtn" value="UPDATE STUDENT">
                                           
                                    </div>
                                </div>
                                </div>
                                </div>
                                </form>
    <!-- //contact block -->
    
                             </div>
                    </div>
                </div>
            </div>
    <!--//signin and signup form ends here-->
    <%@include file="footer.jsp" %>
   
   
</body>

</html>