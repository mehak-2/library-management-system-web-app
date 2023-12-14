<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>Chronicle Education Category Bootstrap Responsive website Template | Login :: w3layouts</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Chronicle Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
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
                            <a href="login.jsp">Book's Section</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <!-- //breadcrumbs ends here -->
        <!-- signin and signup form -->
        <div class="login-form section text-center">
            <div class="container">
                <h4 class="rad-txt">
                    <span class="abtext">UPDATE BOOK</span>
                </h4>
                       <%
                                 String bookid1 = "", bookname1 = "", publisher1 = "", price1 = "",category1 = "", publishyear1 = "";
                                 String bid = request.getParameter("bookno");


                                try {
                                    Class.forName("com.mysql.cj.jdbc.Driver");
                                    Connection myconnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD);
                                    try{
                                    PreparedStatement mystatement = myconnection.prepareStatement("select * from book where bookno=?");
                                    mystatement.setString(1, bid);
                                    ResultSet myresult = mystatement.executeQuery();

                                    if (myresult.next()) {                    
                                        bookid1 = myresult.getString("bookid");
                                        bookname1 = myresult.getString("bookname");
                                        publisher1 = myresult.getString("publisher");
                                        price1 = myresult.getString("price");
                                        category1 = myresult.getString("category1");
                                        publishyear1 = myresult.getString("publishyear");
                                      
                                    } else {
                                        out.print("Wrong book id");
                                    }
                                    
                                } catch (Exception e) {
                                    out.print("Error in Query due to " + e.getMessage());
                                }
                                } catch (Exception e) {
                                    out.print("Error in Connection due to " + e.getMessage());
                                }
                                %>
                                
                   <%
                                    if (request.getParameter("issuebtn") != null) {
                                        bookid1 = request.getParameter("bookid");
                                        bookname1 = request.getParameter("bookname");
                                        publisher1 = request.getParameter("publisher");
                                        price1 = request.getParameter("price");
                                        category1 = request.getParameter("category1");
                                        publishyear1 = request.getParameter("publishyear");
                                        
                                        try {
                                            Class.forName("com.mysql.cj.jdbc.Driver");
                                            Connection myconnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD);

                                            try {
                                                PreparedStatement mystatement = myconnection.prepareStatement("update book set bookid=?, bookname=?, publisher=?,  price=?, category1=?, publishyear=?  where bookno=?");
                                                mystatement.setString(1, bookid1);
                                                mystatement.setString(2, bookname1);
                                                mystatement.setString(3, publisher1);
                                                mystatement.setString(4, price1);
                                                mystatement.setString(5, category1);
                                                mystatement.setString(6, publishyear1);
                                                mystatement.setString(7, bid);
                                 

                                                if (mystatement.executeUpdate() > 0) {
                                                    out.print("Book Updated successfully");
                                                } else {
                                                    out.print("Error Occurred. Try again later");
                                                }
                                            } catch (Exception e) {
                                                out.print("Error in Query due to " + e.getMessage());
                                            }
                                        } catch (Exception e) {
                                            out.print("Error in Connection due to " + e.getMessage());
                                        }
                                    }
                                %>
                       <form id="loginform" method="post">
                
     <div id="loginbox" style="margin-top:30px;" class="mainbox  loginbox">
                    <div class="panel panel-info">
                       
                                <div class="form-group" style="margin-top:30px;">
              
                                    <label class="col-md-3 col-sm-3 col-xs-3 control-label">Book ID</label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <input type="number" class="form-control" name="bookid" placeholder="BOOK ID" required="" value="<%=bookid1%>" />
                                    </div>
                                </div>
                         <div class="form-group">
                                    <label class="col-md-3 col-sm-3 col-xs-3 control-label">Book Name</label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <input type="text" class="form-control" name="bookname" placeholder="BOOK NAME" required="" value="<%=bookname1%>" />
                                    </div>
                                </div>
                        <div class="form-group">
                                    <label class="col-md-3 col-sm-3 col-xs-3 control-label">Publisher</label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <input type="text" class="form-control" name="publisher" placeholder="PUBLISHER" required="" value="<%=publisher1%>" />
                                    </div>
                                </div><br><br>
                                <div class="form-group">
                                    <label class="col-md-3 col-sm-3 col-xs-3 control-label">Price</label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <input type="number" class="form-control" name="price" placeholder="PRICE" required="" value="<%=price1%>" />
                                    </div>
                                </div>
                                   <div class="form-group">
                                    <label class="col-md-3 col-sm-3 col-xs-3 control-label">Category</label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <input type="text" class="form-control" id="category1" name="category1" placeholder="CATEGORY" required="" value="<%=category1%>" />
                                    </div>
                                </div>
                          
              <div class="form-group">
                                    <label class="col-md-3 col-sm-3 col-xs-3 control-label">Publish Year</label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <input type="number" class="form-control" name="publishyear" placeholder="PUBLISH YEAR" required="" value="<%=publishyear1%>" />
                                        
                                    </div>
                                </div>
                               
                                <div class="form-group">
                                    <!-- Button -->
                                    <div class="signup-btn" style="margin-left: 60px;">
                                        <input id="btn-signup"  type="submit" class="btn btn-info" name="issuebtn" value="UPDATE BOOK">
                                           
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