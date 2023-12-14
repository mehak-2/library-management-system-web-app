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


</head>


<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
    <div id="home">
        <%@include file="var.jsp" %>
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
                            <a href="login.jsp">Login Section</a>
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
                    <span class="abtext">Login</span>
                </h4>
                <div id="loginbox" style="margin-top:30px;" class="mainbox  loginbox">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <div class="panel-title">Login</div>
                           
                        </div>
                        <div style="padding-top:30px" class="panel-body">
                            <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                            <form id="loginform" class="form-horizontal" action="login.jsp" method="post">
                                 <% 
    if (request.getParameter("loginbtn") != null) {
         String email1,password1;
           
            email1=request.getParameter("email");            
            password1=request.getParameter("password");
           
            try
            {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection myconnection = DriverManager.getConnection(PATH+PLACE, USERNAME,PASSWORD);

                try
                {
                    PreparedStatement mystatement = myconnection.prepareStatement("select * from usertable where email=? and password=SHA(?)");
                    mystatement.setString(1, email1);
                    mystatement.setString(2, password1 + SALT);

                    ResultSet myresult = mystatement.executeQuery();
                   if(myresult.next()){
                                if(myresult.getString("usertype").equals("admin"))
                        {
                             if(request.getParameter("rememberme")!=null)    
                            {
                                    Cookie mycookie = new Cookie("adminname", myresult.getString("firstname"));
                                    mycookie.setMaxAge(60*60*24*7);
                                    response.addCookie(mycookie);
    
                            }
                            session.setAttribute("adminname", myresult.getString("firstname"));
                            response.sendRedirect("adminpanel.jsp");
                        }
                        else
                        {
                            if(request.getParameter("rememberme")!=null)    
                            {
                                    
                                    Cookie mycookie2 = new Cookie("email", email1);
                                    mycookie2.setMaxAge(60*60*24*7);
                                    response.addCookie(mycookie2);
    
                            }
                            session.setAttribute("firstname", myresult.getString("firstname"));
                            session.setAttribute("email", email1);
                            response.sendRedirect("welcome.jsp");
                        }
                            }
                            else{
                                out.print("<center><label class='col-form-label'>Incorrect username or password</label></center>");
                            }
                }
           catch(Exception e)
            {
                out.print("Error in Connection due to " + e.getMessage());
            }
            }
            catch(Exception e)
            {
                out.print("Error in Connection due to " + e.getMessage());
            }
        }
       
    %>
                                <div style="margin-bottom: 25px" class="input-group">
                                    
    
                                    <span class="input-group-addon">
                                        <i class="glyphicon glyphicon-user"></i>
                                    </span>
                                    
 
   
                                    <input id="login-username" type="text" class="form-control" name="email" value="" placeholder="username or email" required="">
                                </div>

                                <div style="margin-bottom: 25px" class="input-group">
                                    <span class="input-group-addon">
                                        <i class="glyphicon glyphicon-lock"></i>
                                    </span>
                                    <input id="login-password" type="password" class="form-control" name="password" placeholder="password" required="">
                                </div>
                                <div class="input-group">
                                    <div class="checkbox">
                                        <label>
                                            <input id="login-remember" type="checkbox" name="rememberme" value="1"> Remember me
                                        </label>
                                    </div>
                                </div>
                              
                                      <div class="form-group">
                                        <button id="btn-login" type="submit" href="adminpanel.jsp" class="btn btn-success" name="loginbtn" >Login </button>
                                        
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
                                </div>
                 </form>
                        </div>
                    </div>
                </div>
    <!--//signin and signup form ends here-->
    <%@include file="footer.jsp" %>
    
   
</body>

</html>