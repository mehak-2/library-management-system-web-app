<%@ page import="java.sql.*" %>
<%@ include file="var.jsp" %>
<%@page import="java.sql.Connection"%>

<%
    if(request.getParameter("email")!=null){
    
        String email1 = request.getParameter("email");
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection myConnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD);
            try {
                PreparedStatement mystatement = myConnection.prepareStatement("SELECT * FROM usertable WHERE email = ?");
                mystatement.setString(1, email1);
                ResultSet myresult = mystatement.executeQuery();

                if (myresult.next()) {
                   out.print("Email Id Already Exist");
                } else { 
                out.print("UserName is Available");

                }
            } catch (Exception e) {
                out.print("<label class='col-form-label'>" + "Error in query due to " + e.getMessage() + "</label>");
            }
        } catch (Exception e) {
            out.print("<label class='col-form-label'>" + "Error in Connection due to " + e.getMessage() + "</label>");
        }
    }
     else if(request.getParameter("course")!=null)
    {
            String course=request.getParameter("course");
    try
            {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection myconnection = DriverManager.getConnection(PATH+PLACE, USERNAME,PASSWORD);

                try
                {
                    PreparedStatement mystatement = myconnection.prepareStatement("select distinct(courseyear) from student where course=? order by courseyear");
                    mystatement.setString(1, course);


                    ResultSet myresult = mystatement.executeQuery();
                    if(myresult.next())
                    {
                       
                        out.print("<option>Choose courseyear</option>");
                        do
                        {
                            out.print("<option>" + myresult.getString("courseyear") + "</option>");
                        }
                        while(myresult.next());
  
                    }
                    else
                    {
                        out.print("<option>No Students added in this course</option>");
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
    else if(request.getParameter("course2")!=null && request.getParameter("courseyear")!=null)
    {
       try
            {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection myconnection = DriverManager.getConnection(PATH+PLACE, USERNAME,PASSWORD);

                try
                {
                    PreparedStatement mystatement = myconnection.prepareStatement("select * from student where course=? and courseyear=?");
                    mystatement.setString(1, request.getParameter("course2"));
                    mystatement.setString(2, request.getParameter("courseyear"));

                    ResultSet myresult = mystatement.executeQuery();
                    if(myresult.next())
                    {
                            out.print("<div class='col-md-12 contact-right'>");
                      out.print("<div class='input-grids'>"
                        + "<div class='table-responsive-sm'>"
                        + "<table class='table table-bordered table-dark'> "
                        + "<tr>"
                        + "<td>RollNo</td>"
                        + "<td>Email</td>"
                        + "<td>Fullname</td>"
                        + "<td>Gender</td>"
                        + "<td>Course</td>"
                        + "<td>CourseYear</td>"
                         + "<td>Phone</td>"
                        + "<td>Address</td>"
                        + "<td>Update</td>"
                        + "<td>Delete</td>"
                        + "</tr>");
                        do
                        {
                          out.print("<tr><td>" + myresult.getString("rollno") + "</td><td>"
                            + myresult.getString("email") + "</td>"
                            + "<td>" + myresult.getString("fullname") + "</td><td>"
                            + myresult.getString("gender") + "</td>"
                            + "<td>" + myresult.getString("course") + "</td><td>"
                            + myresult.getString("courseyear") + "</td>"
                            + "<td>" + myresult.getString("phone") + "</td>"
                            + "<td>" + myresult.getString("address") + "</td>"
                            + "<td><a href='updatestudent.jsp?studentid=" + myresult.getString("studentid") + "'><img src='images/arrow.png'></a></td>"
                            + "<td><a href='#' class='student' stuid=" + myresult.getString("studentid") + "><img src='images/delete.png'></a></td></tr>");
                        }
                        while(myresult.next());
                        out.print("</table>"); 
                    }
                    else
                    {
                        out.print("No Records found");
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
else if(request.getParameter("bookname")!=null) {
    String selectedClass = request.getParameter("bookname");
    if (selectedClass != null && !selectedClass.isEmpty()) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection myConnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD);

            PreparedStatement mystatement = myConnection.prepareStatement("SELECT * FROM requestbook WHERE bookname=?");
              mystatement.setString(1,  request.getParameter("bookname"));
                    session.setAttribute("bookname", request.getParameter("bookname"));
                    
   

            ResultSet myresult = mystatement.executeQuery();
            if (myresult.next()) {
                out.print("<div class='col-md-12 contact-right'>"
                        + "<div class='input-grids'>"
                        + "<div class='table-responsive'>"
                        + "<table class='table table-bordered table-dark'>"
                        + "<tr>"
                        + "<td>rollno</td>"
                        + "<td>email</td>"
                        + "<td>fullname</td>"
                        + "<td>Gender</td>"
                        + "<td>Course</td>"
                        + "<td>Courseyear</td>"
                        + "<td>Phone</td>"
                        + "<td>Address</td>"
                        + "<td>Request Book name</td>"
                         + "<td>Delete</td>"
                        + "</tr>");

                do {
                    out.print("<tr><td>" + myresult.getString("rollno") + "</td><td>"
                            + myresult.getString("email") + "</td>"
                            + "<td>" + myresult.getString("fullname") + "</td><td>"
                            + myresult.getString("gender") + "</td>"
                            + "<td>" + myresult.getString("course") + "</td><td>"
                            + myresult.getString("courseyear") + "</td>"
                            + "<td>" + myresult.getString("phone") + "</td>"
                            + "<td>" + myresult.getString("address") + "</td>"
                            + "<td>" + myresult.getString("bookname") + "</td>"
                            + "<td><a href='#' class='requestbook' rollno=" + myresult.getString("rollno") + "><img src='images/delete.png'></a></td>"
                            + "</tr>");
                } while (myresult.next());
                out.print("</table>");            
            } else {
                out.print("<div>No records found for subject " + selectedClass + "</div>");
            }
        } catch (Exception e) {
            out.print("Error in query or connection: " + e.getMessage());
        }
    } else {
        out.print("<div>Please select a valid bookname and click 'Go' to view the data.</div>");
    }
}        

else if(request.getParameter("category1")!=null) {
   
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection myConnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD);
            
      try{
            PreparedStatement mystatement = myConnection.prepareStatement("SELECT * FROM book WHERE category1=?");
              mystatement.setString(1,  request.getParameter("category1"));
                    session.setAttribute("category1", request.getParameter("category1"));
     
            ResultSet myresult = mystatement.executeQuery();
            if (myresult.next()) {
                out.print("<div class='col-md-12 contact-right'>"
                        + "<div class='input-grids'>"
                        + "<div class='table-responsive'>"
                        + "<table class='table table-bordered table-dark'>"
                        + "<tr>"
                        + "<td>Book ID</td>"
                        + "<td>Book Name</td>"
                        + "<td>PUBLISHER</td>"
                        + "<td>PRICE</td>"
                        + "<td>CATEGORY</td>"
                        + "<td>PUBLISH YEAR</td>"
                        + "<td>Update</td>"
                         + "<td>Delete</td>"
                        + "</tr>");

                do {
                    out.print("<tr><td>" + myresult.getString("bookid") + "</td><td>"
                            + myresult.getString("bookname") + "</td>"
                            + "<td>" + myresult.getString("publisher") + "</td><td>"
                            + myresult.getString("price") + "</td>"
                            + "<td>" + myresult.getString("category1") + "</td><td>"
                            + myresult.getString("publishyear") + "</td>"
                            + "<td><a href='updatebook.jsp?bookno= " + myresult.getString("bookno") + "'><img src='images/arrow.png'></a></td>"
                            + "<td><a href='#' class='book' bid=" + myresult.getString("bookid") + "><img src='images/delete.png'></a></td>"
                            + "</tr>");
                    }
                        while(myresult.next());
                        out.print("</table>"); 
                    }
                    else
                    {
                        out.print("No Records found");
                    }
} catch (Exception e) {
            out.print("Error in query or connection: " + e.getMessage());
        }
    } catch (Exception e) {
            out.print("Error in query or connection: " + e.getMessage());
        }
}        

      else if(request.getParameter("category")!=null) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection myConnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD);
try{
            PreparedStatement mystatement = myConnection.prepareStatement("SELECT * FROM issuebook WHERE category=?");
              mystatement.setString(1,  request.getParameter("category"));
                    session.setAttribute("category", request.getParameter("category"));
  
            ResultSet myresult = mystatement.executeQuery();
            if (myresult.next()) {
               out.print("<div class='col-md-12 contact-right'>");
                      out.print("<div class='input-grids'>"
                        + "<div class='table-responsive'>"
                        + "<table class='table table-bordered table-dark'>"
                        + "<tr>"
                        + "<td>Book ID</td>"
                        + "<td>Rollno</td>"
                        + "<td>Email</td>"
                        + "<td>Address</td>"
                        + "<td>PUBLISHER</td>"
                        + "<td>CATEGORY</td>"
                        + "<td>ISSUE DATE</td>"
                        + "<td>RETURN DATE</td>"
                        + "<td>RE-ISSUE</td>"
                        + "<td>RETURN</td>"
                        + "</tr>");

                do {
                    out.print("<tr><td>" + myresult.getString("bookid") + "</td><td>"
                            + myresult.getString("rollno") + "</td>"
                            + "<td>" + myresult.getString("email") + "</td><td>"
                            + myresult.getString("address") + "</td>"
                            + "<td>" + myresult.getString("publisher") + "</td><td>"
                            + myresult.getString("category") + "</td>"
                            + "<td>" + myresult.getString("issuedate") + "</td><td>"
                            + myresult.getString("returndate") + "</td>"
                            + "<td><a href='updateissuebook.jsp?studentid= " + myresult.getString("studentid") + "'><img src='images/open-book.png'></a></td>"
                            + "<td><a href='#' class='issuebook' studentid=" + myresult.getString("studentid") + "><img src='images/return book.png'></a></td>"
                            + "</tr>");
                } while (myresult.next());
                out.print("</table>");
                
            } else {
                out.print("No records found for book ");
            }
        } catch (Exception e) {
            out.print("Error in query or connection: " + e.getMessage());
        }
    } catch (Exception e) {
            out.print("Error in query or connection: " + e.getMessage());
        }
}        

%>


<script type="text/javascript">
   $(document).ready(function () {
  $(".student").click(function (e) {
    e.preventDefault();
    var answer = confirm("Do you really want to delete?");
    if (answer) {
      var parenttr = $(this).parent().parent();
      var studentid = $(this).attr("stuid");
      $.ajax({
        method: "POST",
        url: "ajax2.jsp",
        data: {studentid1: studentid}
      }).done(function (msg) {
        if ($.trim(msg) === "1") {
          $(parenttr).css("background-color", "red");
          $(parenttr).slideUp(500, function () {
            $(parenttr).remove();
          });
        }
      });
    }
  });
});
   $(document).ready(function () {
  $(".book").click(function (e) {
    e.preventDefault();
    var answer = confirm("Do you really want to remove?");
    if (answer) {
      var parenttr = $(this).parent().parent();
      var bookno = $(this).attr("bid");
      $.ajax({
        method: "POST",
        url: "ajax2.jsp",
        data: {bookno: bookno}
      }).done(function (msg) {
        if ($.trim(msg) === "1") {
          $(parenttr).css("background-color", "red");
          $(parenttr).slideUp(500, function () {
            $(parenttr).remove();
          });
        }
      });
    }
  });
});
$(document).ready(function () {
  $(".issuebook").click(function (e) {
    e.preventDefault();
    var answer = confirm("Do you really want to return?");
    if (answer) {
      var parenttr = $(this).parent().parent();
      var studentid = $(this).attr("studentid");
      $.ajax({
        method: "POST",
        url: "ajax2.jsp",
        data: { studentid:studentid}
      }).done(function (msg) {
        if ($.trim(msg) === "1") {
          $(parenttr).css("background-color", "red");
          $(parenttr).slideUp(500, function () {
            $(parenttr).remove();
          });
        }
      });
    }
  });
});
$(document).ready(function () {
  $(".requestbook").click(function (e) {
    e.preventDefault();
    var answer = confirm("Do you really want to delete request?");
    if (answer) {
      var parenttr = $(this).parent().parent();
      var rollno = $(this).attr("rollno");
      $.ajax({
        method: "POST",
        url: "ajax2.jsp",
        data: { rollno:rollno}
      }).done(function (msg) {
        if ($.trim(msg) === "1") {
          $(parenttr).css("background-color", "red");
          $(parenttr).slideUp(500, function () {
            $(parenttr).remove();
          });
        }
      });
    }
  });
});
</script>

     