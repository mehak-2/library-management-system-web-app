<!DOCTYPE html>
<html lang="en">
<head>
 <title>Chronicle Education Category Bootstrap Responsive website Template | Home :: w3layouts</title>
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
 
     <%@include file="headeruser.jsp" %>
        <%@page import="java.sql.*" %>
</head>
<body>
    <%@include file="var.jsp" %>
    <br>
    <br>
    
    <br><br>
    <div class="profile-container">
        <center><h1>Your Profile</h1>
          <img src="assets/images/avatar.png" alt="Profile Picture" class="profile-image" id="profile-image">
        <div class="upload-button">
            <label for="image-upload" class="update-button">Upload Image</label>
            <input class="profile-image"  type="file" id="image-upload" accept="image/*">
        </div>
        </center>
        <form>
        <div class="profile-details">
            <br>
            <strong><label for="name">Name : </label></strong>
            <%
                if(session.getAttribute("firstname")!=null){
                 out.print(session.getAttribute("firstname").toString());
                }
            %><br><br>
            <strong><label for="email">Email : </label></strong>
             <%
                if(session.getAttribute("firstname")!=null){
                 out.print(session.getAttribute("email").toString());
                }
                %><br>
     
        </div><br>
        <center><input type="submit" class="update-button" name="update" value="Update">
        <a class="update-button" href="logout.jsp">Logout</a></center>
                <%
                    if(request.getParameter("update")!=null){
                        response.sendRedirect("welcome.jsp");
                    }
                %>
        </form>
    
     </div>
      <%--<%@include file="footer.jsp" %>--%>
      <script>
       
        document.getElementById('image-upload').addEventListener('change', function () {
          image = document.getElementById('profile-image');
         file = this.files[0];
            if (file) {
               reader = new FileReader();
                reader.onload = function (e) {
                    image.src = e.target.result;
                };
                reader.readAsDataURL(file);
            }
        });
       
    </script>
    <%@include file="footer.jsp" %>
</body>
</html>