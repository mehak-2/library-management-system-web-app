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
    <%@page import="java.sql.*" %>
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
                    <span class="abtext">Re-issue Book</span>
                </h4>
                       <%
                                String bookid1 = "", rollno1 = "", email1 = "", address1 = "", publisher1 = "", category1 = "", issuedate1 = "", returndate1 = "";
                                String sid = request.getParameter("studentid");

                                try {
                                    Class.forName("com.mysql.cj.jdbc.Driver");
                                    Connection myconnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD);
                                    try{
                                    PreparedStatement mystatement = myconnection.prepareStatement("select * from issuebook where studentid=?");
                                    mystatement.setString(1, sid);
                                    ResultSet myresult = mystatement.executeQuery();

                                    if (myresult.next()) {                    
                                        bookid1 = myresult.getString("bookid");
                                        rollno1 = myresult.getString("rollno");
                                        email1 = myresult.getString("email");
                                        address1 = myresult.getString("address");
                                        publisher1 = myresult.getString("publisher");
                                        category1 = myresult.getString("category");
                                        issuedate1 = myresult.getString("issuedate");
                                        returndate1 = myresult.getString("returndate");
                                    } else {
                                        out.print("Wrong roll no");
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
                                        rollno1 = request.getParameter("rollno");
                                        email1 = request.getParameter("email");
                                        address1 = request.getParameter("address");
                                        publisher1 = request.getParameter("publisher");
                                        category1 = request.getParameter("category");
                                        issuedate1 = request.getParameter("issuedate");
                                        returndate1 = request.getParameter("returndate");
                                        
                                        try {
                                            Class.forName("com.mysql.cj.jdbc.Driver");
                                            Connection myconnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD);

                                            try {
                                                PreparedStatement mystatement = myconnection.prepareStatement("update issuebook set bookid=?, rollno=?, email=?, address=?, publisher=?, category=?, issuedate=?, returndate=?  where studentid=?");
                                                mystatement.setString(1, bookid1);
                                                mystatement.setString(2, rollno1);
                                                mystatement.setString(3, email1);
                                                mystatement.setString(4, address1);
                                                mystatement.setString(5, publisher1);
                                                mystatement.setString(6, category1);
                                                mystatement.setString(7, issuedate1);
                                                mystatement.setString(8, returndate1);
                                                mystatement.setString(9, sid);

                                                if (mystatement.executeUpdate() > 0) {
                                                    out.print("Book Reissued successfully");
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
                    <div id="loginbox" style="margin-top:30px;" class="mainbox  loginbox">
                        
                <form id="loginform" method="post">
                        <div class="panel panel-info">
                            <div class="form-group" style="margin-top:30px;">
                         
                                
                                
                               
                                
                                    <label class="col-md-3 col-sm-3 col-xs-3 control-label">Book ID</label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <input type="text" class="form-control" name="bookid" placeholder="BOOK ID" required="" value="<%=bookid1%>" />
                                    </div>
                                </div>
                          <div class="form-group">
              
                                    <label class="col-md-3 col-sm-3 col-xs-3 control-label">Rollno</label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <input type="number" id="rollno" name="rollno" class="form-control" required="" value="<%=rollno1%>" />     
                                    </div>
                                     
                                </div>
   
                          <div class="form-group">
                                    <label class="col-md-3 col-sm-3 col-xs-3 control-label">Email</label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <input type="email" class="form-control" name="email" placeholder="Email" required="" value="<%=email1%>" />
                                    </div>
                                </div>
                         <div class="form-group">
              
                                    <label class="col-md-3 col-sm-3 col-xs-3 control-label">Address</label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <input type="text" class="form-control" name="address" placeholder="Address" required="" value="<%=address1%>" />
                                    </div>
                                </div>
                        
                        <div class="form-group">
                                    <label class="col-md-3 col-sm-3 col-xs-3 control-label">Publisher</label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <input type="text" class="form-control" name="publisher" placeholder="PUBLISHER" required="" value="<%=publisher1%>" />
                                    </div>
                                </div><br><br>
                              
                                   <div class="form-group">
                                    <label class="col-md-3 col-sm-3 col-xs-3 control-label">Category</label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <input type="text" class="form-control" name="category" placeholder="CATEGORY" required="" value="<%=category1%>" />
                                    </div>
                                </div>
                           <div class="form-group">
                                    <label class="col-md-3 col-sm-3 col-xs-3 control-label">Issue Date</label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <input type="date" class="form-control" name="issuedate" placeholder="ISSUE DATE" required="" value="<%=issuedate1%>" />
                                    </div>
                                </div><br><br>
             
                                  <div class="form-group">
                                    <label class="col-md-3 col-sm-3 col-xs-3 control-label">Return Date</label>
                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                        <input type="date" class="form-control" name="returndate" placeholder="RETURN DATE" required="" value="<%=returndate1%>" />
                                    </div>
                                </div><br><br>
                              
                                <div class="form-group">
                                    <!-- Button -->
                                    <div class="signup-btn">
                                        <input id="btn-signup"  type="submit" class="btn btn-info" name="issuebtn" value="Re-Issue Book">
                                           
                                    
                           
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
                                     <%@include file="footer.jsp" %>
</body>

</html>
