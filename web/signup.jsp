<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->

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
        <%@include file="header.jsp" %>
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
                            <a href="login.jsp">sign in & sign up</a>
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
                    <span class="abtxt1">Sign in</span>
                    <span class="abtext">sign up</span>
                </h4>
                <div id="loginbox" style="margin-top:30px;" class="mainbox  loginbox">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <div class="panel-title">Sign Up</div>
                            <div class="fpassword">
                                <a href="#">Forgot password?</a>
                            </div>
                        </div>
                                    
                        <br><br>
                        <form>
                            
                                                                     <%
                                      if(request.getParameter("signup")!=null){
                            String email1, firstname1, lastname1, password1;
                          
                            email1=request.getParameter("email");
                            firstname1=request.getParameter("firstname");
                            lastname1=request.getParameter("lastname");
                            password1=request.getParameter("password");
  
                           
                                try{
                                    Class.forName("com.mysql.cj.jdbc.Driver");
                                    Connection myConnection=DriverManager.getConnection(PATH+PLACE, USERNAME, PASSWORD);
                                    try{
                                        PreparedStatement mystatement = myConnection.prepareStatement("insert into usertable values(?,?,?,SHA(?),?)");
                                        mystatement.setString(1, email1);
                                        mystatement.setString(2, firstname1);
                                        mystatement.setString(3, lastname1);
                                        mystatement.setString(4, password1 + SALT);
                                        mystatement.setString(5, "user");
                                        if(mystatement.executeUpdate()>0){
                                            out.print("Signup Successfully. Now you can login");
                                        }
                                  else
                    {
                        out.print("Incorrect username/password");
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
                                   
                                  <div class="form-group">

                                
                                    <label class="col-md-3 col-sm-3 col-xs-3 control-label">Email</label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <input type="text" class="form-control" name="email" placeholder="Email Address" required="">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 col-sm-3 col-xs-3 control-label">First Name</label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <input type="text" class="form-control" name="firstname" placeholder="First Name" required="">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 col-sm-3 col-xs-3 control-label">Last Name</label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <input type="text" class="form-control" name="lastname" placeholder="Last Name" required="">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 col-sm-3 col-xs-3 control-label">Password</label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <input type="password" class="form-control" name="password" placeholder="Password" required="">
                                    </div>
                                </div>
                                  <br><br>
                                          <div class="form-group">
                                
                                    <!-- Button -->
                                        <button id="btn-login" type="submit" class="btn btn-success" name="signup">Signup</button>
                                    </div>
                                  
        
                                  
                                <div style="border-top: 1px solid #999; padding-top:20px" class="form-group">

                                    <div class="f-btn">
                                        <button id="btn-fbsignup" type="button" class="btn btn-primary">
                                            <i class="icon-facebook"></i>   Sign Up with Facebook</button>
                                    </div>
         </div>
                                </div>
                                </div>
                      
                                </div>
                                         </form>
                        </div>
                    </div>
                </div>
    <!--//signin and signup form ends here-->
    <%@include file="footer.jsp" %>
 

</body>

</html>