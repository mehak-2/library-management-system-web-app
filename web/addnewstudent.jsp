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
        <!-- signin and signup form -->
        <div class="login-form section text-center">
            <div class="container">
                <h4 class="rad-txt">
                   
                    <span class="abtext">ADD STUDENT</span>
                </h4>
                 <%
                                   if(request.getParameter("savebtn")!=null)
        {
            
            String rollno1,email1,fname1,gender1,course1,courseyear1,phone1,address1;
            rollno1=request.getParameter("rollno");
            email1=request.getParameter("email");
            fname1=request.getParameter("fullname");
            gender1=request.getParameter("gender");
            course1=request.getParameter("course");
            courseyear1= request.getParameter("courseyear");
            phone1=request.getParameter("phone");
            address1=request.getParameter("address");
            
            try
            {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection myconnection = DriverManager.getConnection(PATH+PLACE, USERNAME, PASSWORD);

                try
                {
                    PreparedStatement mystatement = myconnection.prepareStatement("insert into student(rollno,email,fullname,gender,course,courseyear,phone,address) values(?,?,?,?,?,?,?,?)");
                    mystatement.setString(1, rollno1);
                    mystatement.setString(2, email1);
                    mystatement.setString(3, fname1);
                    mystatement.setString(4, gender1);
                    mystatement.setString(5, course1);
                    mystatement.setString(6, courseyear1);
                    mystatement.setString(7, phone1);
                    mystatement.setString(8, address1);
                 
                    if(mystatement.executeUpdate()>0)
                    {
                        out.print("Student Added successfully");
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
                 <form id="loginform" method="post">
                
     <div id="loginbox" style="margin-top:30px;" class="mainbox  loginbox">
                    <div class="panel panel-info">
                       
                                <div class="form-group" style="margin-top:30px;">
              
                                    <label class="col-md-3 col-sm-3 col-xs-3 control-label">Rollno</label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <input type="number" class="form-control" name="rollno" placeholder="Roll No" required="">
                                    </div>
                   
                        <div class="form-group">
                                    <label class="col-md-3 col-sm-3 col-xs-3 control-label">Email</label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <input type="text" class="form-control" name="email" placeholder="Email Address" required="">
                                    </div>
                     
                                <div class="form-group">
                                    <label class="col-md-3 col-sm-3 col-xs-3 control-label">Full Name</label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <input type="text" class="form-control" name="fullname" placeholder="Full Name" required="">
                                    </div>
                             
                              
                             <div class="form-group">
    <label class="col-md-3 col-sm-3 col-xs-3 control-label">Gender</label>
    <div class="col-md-9 col-sm-9 col-xs-9">
     
              <select name="gender" class="form-control" required="">
                                        <option>Choose Gender</option>
                                        <option value="male">Male</option>
                                        <option value="female">Female</option>
                                    </select>
        
    </div>
    
                              <div class="form-group">
                                    <label class="col-md-3 col-sm-3 col-xs-3 control-label">Course</label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                     
                       <select name="course" id='course' class="form-control" required="">
                                       <option>Choose Course</option>
                                       <option value="mtech">MTECH</option>
                                       <option value="btech">BTECH</option>
                                       <option value="bca">BCA</option>
                                       <option value="phd">PHD</option>
                                       <option value="mca">MCA</option>
                                    </select>
                 <div id="#answerbox"></div>
        </div>
    </div>
                                   
            <div class="form-group">
                                    <label class="col-md-3 col-sm-3 col-xs-3 control-label">Course Year</label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        
                                       
             <select name="courseyear" class="form-control" id='courseyear' required="">
                                        <option>Choose Course year</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                    </select>
            
        </div>
    </div>
                                    <br><br>     
                                   <div class="form-group">
                                    <label class="col-md-3 col-sm-3 col-xs-3 control-label">Phone</label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <input type="number" class="form-control" name="phone" placeholder="Phone Number" required="">
                                    </div>
                                </div>
            
                                   

              <div class="form-group">
                                    <label class="col-md-3 col-sm-3 col-xs-3 control-label">Address</label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <input type="address" class="form-control" name="address" placeholder="address" required="">
                                        
                                    </div>
                                </div>
            </div>
                                    
                                    
                                <div class="form-group" style="margin-left:60px;">
                                    <!-- Button -->
                                    <div class="signup-btn">
                                        <input id="btn-signup"  type="submit" class="btn btn-info" name="savebtn" value="ADD STUDENT">
                                           
                                    </div>
                                </div>
                                </div>
                                </div>
                 </form>
                        </div>
                    </div>
     </div>
            </div>
        </div>
    <!--//signin and signup form ends here-->
    <%@include file="footer.jsp" %>
</body>

</html>