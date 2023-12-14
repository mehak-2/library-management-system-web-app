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
 <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
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
                            <a href="login.jsp">Student's Section</a>
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
                   
                    <span class="abtext">Student's List</span>
                </h4>
   
             <div class="row contact-block" style='margin-left:60px;'>
              <div class='col-md-4 contact-right'>
               <div class='input-grids'>
                 <div class="row">
 <form method="get">
                       
                               <select id="course" name="course" class="form-control" required="">
                                        <option value="">Choose Course</option>
                                        
                                        
                                          <% 
                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection myConnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD);

                        PreparedStatement mystatement = myConnection.prepareStatement("SELECT course FROM student");
                        ResultSet myresult = mystatement.executeQuery();
                        if(myresult.next()){
                            do{
                            out.print("<option>" + myresult.getString("course") + "</option>");
                        
                            }while(myresult.next());
                        }
                        else{
                            out.print("");
                        }
                    } catch (Exception e) {
                        out.print("Error in query or connection: " + e.getMessage());
                    }
                    
                    %>
                 
                    
                                    </select>
            <select name="courseyear" class="form-control" id='courseyear' required="">
                            <option>Choose Year first</option>
                        </select>
                    </form>
                </div>
            </div>
        </div>
               <div id='resultbox'>
   </div>
    </div>
             </div>
            </div>

 
      <%@include file="footer.jsp" %>
      
                <script  type="text/javascript">
$(document).ready(function(){
  $("#course").change(function(){
    $("#resultbox").html("");
    var course1 = $("#course").val();
    $.ajax({
      method: "POST",
      url: "ajax.jsp",
      data: { course : course1 }
    })
    .done(function( msg ) {
      $("#courseyear").html(msg);
    });
  });

  $("#courseyear").change(function(){
    var course1 = $("#course").val();
    var courseyear = $("#courseyear").val();
    $.ajax({
      method: "POST",
      url: "ajax.jsp",
      data: { course2 : course1, courseyear : courseyear }
    })
    .done(function( msg ) {
      $("#resultbox").html(msg);
    });
  });
    });
    </script>
</body>

</html>
                     
                     
                                    
