<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>Chronicle Education Category Bootstrap Responsive website Template | Contact :: w3layouts</title>
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
</head>
<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
   
    <div id="home">
        <%@include file="header.jsp" %>
          <%@page import="javax.mail.*"%>
    <%@page import="javax.mail.internet.*"%>
    <%@page import="java.util.Properties"%>

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
                            <a href="contact.jsp">contact us</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!--//breadcrumbs ends here-->
        <!-- contact -->
        <div class="section contact" id="contact">
            <div class="container">
                <h4 class="rad-txt text-center">
                    <span class="abtxt1">contact</span>
                    <span class="abtext">us</span>
                </h4>
                <div class="contact-form">
                    <div class="col-md-7">
                        <!-- contact form grid -->
                        <div class="contact-top1">
                            <h5>send us a note</h5>
                            <form action="#" class="form_w3layouts" method="post">
                                <input type="text" name="firstname" placeholder="First Name" required="">
                                <input type="text" name="lastname" placeholder="Last Name" required="">

                                <input class="email" type="email" name="email" placeholder="Email" required="">
                                <textarea name="message" placeholder="Message" required=""></textarea>
                                <input type="submit" value="Submit" name = "submit">
                            </form>
                        </div>
                                     <%
                          if (request.getParameter("submit") != null) {
    String firstname = request.getParameter("firstname");
    String lastname = request.getParameter("lastname");
    String email = request.getParameter("email");
    String message = request.getParameter("message");

                            Properties props = new Properties();
                            props.put("mail.smtp.host", "smtp.office365.com");
                            props.put("mail.smtp.socketFactory.port", "587");
                            props.put("mail.smtp.socketFactory.class",
                            "javax.net.ssl.SSLSocketFactory");
                            props.put("mail.smtp.auth", "true");
                            props.put("mail.smtp.port", "587");
                            props.put("mail.smtp.starttls.enable", true);
                            props.put("mail.smtp.ssl.trust", "*");
                            props.put("mail.smtp.ssl.protocols", "TLSv1.2");

                            Session session2 = Session.getInstance(props,
                            new javax.mail.Authenticator() {
                            protected PasswordAuthentication getPasswordAuthentication() {
                            return new PasswordAuthentication("library2210@outlook.com","mehak123");
                            }
                            });
                            try {
                            Message message1 = new MimeMessage(session2);
                            message1.addHeader("Content-type", "text/html; charset=UTF-8");
                            message1.setFrom(new InternetAddress("library2210@outlook.com"));
                            message1.setRecipients(Message.RecipientType.TO, InternetAddress.parse("kangmehak167@gmail.com"));
                            message1.setSubject("Feedback from website");

                            message1.setText("firstname : " + request.getParameter("firstname") + "\nlastname :" + request.getParameter("lastname")  + "\nEmail : "+ request.getParameter("email") +
                             "\nMessage : " + request.getParameter("message"));
                            Transport.send(message1);
                            out.print("Mail has been sent successfully");
                            }
                            catch(Exception e)
                            {
                            out.print("Mail does not works due to " + e.getMessage());
                            }
                        }
                    %>
                    
                         
                    
                    
                    
                        <!--  //contact form grid ends here -->
                    </div>
                    <!-- contact map grid -->
                    <div class="col-md-5 map contact-right">
                        <div class="contact-top1">
                            <h5>get directions</h5>
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3023.9503398796587!2d-73.9940307!3d40.719109700000004!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25a27e2f24131%3A0x64ffc98d24069f02!2sCANADA!5e0!3m2!1sen!2sin!4v1441710758555"
                                allowfullscreen></iframe>
                        </div>
                    </div>
                    <!--//contact map grid ends here-->
                    <div class="clearfix"></div>
                </div>
                <!-- contact details -->
                <div class="contact-bottom">
                    <h6>contact info</h6>
                    <!-- contact details left -->
                    <div class="col-md-6 col-sm-6">
                        <div class="contact-left">
                            <div class="address">
                                <h5>Address:</h5>
                                <p>
                                    1185 Maria St
                                    <br> Burlington Canada.</p>
                            </div>
                            <div class="address address-mdl">
                                <h5>phone:</h5>
                                <p>
                                    +1 234 5678</p>
                                <p>
                                    +11 222 333</p>
                            </div>
                        </div>
                    </div>
                    <!-- //contact details left -->
                    <!-- contact details right -->
                    <div class="col-md-6 col-sm-6">
                        <div class="contact-right">
                            <div class="address">
                                <h5>Email:</h5>
                                <p>
                                    <a href="mailto:info@example.com">mail@library.com</a>
                                </p>
                                <p>
                                    <a href="mailto:info@example.com">mail@chronicle.com</a>
                                </p>
                            </div>
                            <div class="footer-social address  address-mdl">
                                <h5>let's get social</h5>
                                <ul>
                                    <li>
                                        <a href="#">
                                            <span class="fa fa-facebook icon_facebook"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="fa fa-twitter icon_twitter"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="fa fa-dribbble icon_dribbble"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="fa fa-google-plus icon_g_plus"></span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <!-- //contact-details right -->
                    <div class="clearfix"></div>
                </div>
                <!-- //contact details ends here -->
            </div>
        </div>
        <!-- //contact -->
   <!-- footer -->
   <div class="footer-bottom section">
    <div class="container">
        <!-- newsletter -->
        <div class="subscribe-main section-w3layouts text-center">
            <h4 class="rad-txt">
                <span class="abtxt1">keep yourself</span>
                <span class="abtext">updated</span>
            </h4>
            <h5>subscribe to our newsletter to stay up-to-date with our projects.</h5>
            <div class="subscribe-form">
                <form action="#" method="post" class="subscribe_form">
                    <div class="email-news">
                        <input type="email" placeholder="Email" required="">
                    </div>
                    <div class="sub-news">
                        <input type="submit" value="subscribe">
                    </div>
                </form>
                <div class="clearfix"> </div>
            </div>
            <p>We respect your privacy.No spam ever!</p>
        </div>
        <!-- //newsletter ends here -->
        <!-- footer grids-->
        <div class="footer-cpy">
            <!-- footer-grid1 -->
            <div class="col-md-3 col-sm-6 footer-logo">
                <h3>
                    <a href="index.html">Chronicle</a>
                </h3>
                <h4>about us</h4>
                <p>Vallis Molestie Arcu Morbi Dapibus Suscipit Ante Sit Efficitur Eu estie Arcu Mor Anestie Ate Vesti.</p>
            </div>
            <!-- //footer-grid1 -->
            <!-- footer-grid2 -->
            <div class="col-md-3 col-sm-6 footer-nav text-center">
                <h4>navigation</h4>
                <ul>
                    <li>
                        <a href="index.html">Home</a>
                    </li>
                    <li>
                        <a href="about.html">About us</a>
                    </li>
                    <li>
                        <a href="shop.html">shop</a>
                    </li>
                    <li>
                        <a href="contact.html">contact us</a>
                    </li>
                </ul>
            </div>
            <!-- //footer-grid2 -->
            <!-- footer-grid3 -->
            <div class="col-md-3 col-sm-6 blog-footer">
                <h4>latest from blog</h4>
                <div class="blog1">
                    <div class="col-md-3 col-sm-3 col-xs-2 bl1">
                        <a href="#">
                            <img src="images/b1.jpg" alt="" class="img-responsive" />
                        </a>
                    </div>
                    <div class="col-md-9 col-sm-9 col-xs-10 bl2">
                        <a href="#">Dapibus Suscipit Ante Sit by instagram</a>
                        <p>February 15, 2018</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="blog1">
                    <div class="col-md-3 col-sm-3 col-xs-2 bl1">
                        <a href="#">
                            <img src="images/b2.jpg" alt="" class="img-responsive" />
                        </a>
                    </div>
                    <div class="col-md-9 col-sm-9 col-xs-10 bl2">
                        <a href="#">Dapibus Suscipit Ante Sit by instagram</a>
                        <p>February 20, 2018</p>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <!-- //footer-grid3 -->
            <!-- footer-grid4 -->
            <div class="col-md-3 col-sm-6 contact-foot text-right">
                <h4>contact us</h4>
                <ul>
                    <li>
                        <span class="fa fa-home"></span>
                        1185 Burlington
                        <br> Canada.
                    </li>
                    <li>
                        <span class="fa fa-phone"></span>
                        +12 345 678
                    </li>
                    <li>
                        <span class="fa fa-envelope"></span>
                        <a href="mailto:info@example.com">mail@chronicle.com</a>
                    </li>
                </ul>
            </div>
            <!-- //footer-grid4 -->
            <div class="clearfix"></div>
        </div>
        <!-- //footer-grids -->
        <!-- footer social -->
        <div class="footer-social text-center">
            <h4>stay connected</h4>
            <ul>
                <li>
                    <a href="#">
                        <span class="fa fa-facebook icon_facebook"></span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="fa fa-twitter icon_twitter"></span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="fa fa-dribbble icon_dribbble"></span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="fa fa-google-plus icon_g_plus"></span>
                    </a>
                </li>
            </ul>
        </div>
        <!-- //footer social -->
    </div>
    <!-- //footer container -->
</div>
<!-- //footer -->
<div class="cpy-right">
    <p>� 2018 Chronicle. All rights reserved | Design by
        <a href="http://w3layouts.com"> W3layouts.</a>
    </p>
</div>
</div>
<!-- //home -->
    <!-- js -->
   
</body>

</html>