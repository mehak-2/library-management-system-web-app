<%@ page import="java.sql.*" %>
<%@ include file="var.jsp" %>

<%
    if(request.getParameter("studentid1")!=null){
    String studentid = request.getParameter("studentid1");
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection myconnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD);

        try {
            PreparedStatement mystatement = myconnection.prepareStatement("DELETE FROM student WHERE studentid=?");
            mystatement.setString(1, studentid);

           
            if (mystatement.executeUpdate() > 0) {
                out.print("1"); 
            } else {
                out.print("0"); 
            }
        } catch (Exception e) {
            out.print("Error in Query due to " + e.getMessage());
        } 
    } catch (Exception e) {
        out.print("Error in Connection due to " + e.getMessage());
    }
    }
    
     else if(request.getParameter("bookno")!=null){
    String bookno = request.getParameter("bookno");
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection myconnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD);

        try {
            PreparedStatement mystatement = myconnection.prepareStatement("DELETE FROM book WHERE bookid=?");
            mystatement.setString(1,bookno);

            int rowsAffected = mystatement.executeUpdate();
            if (rowsAffected > 0) {
                out.print("1"); 
            } else {
                out.print("0"); 
            }
        } catch (Exception e) {
            out.print("Error in Query due to " + e.getMessage());
        } finally {
            if (myconnection != null) {
                myconnection.close(); 
            }
        }
    } catch (Exception e) {
        out.print("Error in Connection due to " + e.getMessage());
    }
    }
    else if(request.getParameter("studentid")!=null){
    String studentid = request.getParameter("studentid");
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection myconnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD);

        try {
            PreparedStatement mystatement = myconnection.prepareStatement("DELETE FROM issuebook WHERE studentid=?");
            mystatement.setString(1, studentid);

            int rowsAffected = mystatement.executeUpdate();
            if (rowsAffected > 0) {
                out.print("1"); 
            } else {
                out.print("0"); 
            }
        } catch (Exception e) {
            out.print("Error in Query due to " + e.getMessage());
        } finally {
            if (myconnection != null) {
                myconnection.close(); 
            }
        }
    } catch (Exception e) {
        out.print("Error in Connection due to " + e.getMessage());
    }
    }
     else if(request.getParameter("rollno")!=null){
    String rollno = request.getParameter("rollno");
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection myconnection = DriverManager.getConnection(PATH + PLACE, USERNAME, PASSWORD);

        try {
            PreparedStatement mystatement = myconnection.prepareStatement("DELETE FROM requestbook WHERE rollno=?");
            mystatement.setString(1, rollno);

            int rowsAffected = mystatement.executeUpdate();
            if (rowsAffected > 0) {
                out.print("1"); 
            } else {
                out.print("0"); 
            }
        } catch (Exception e) {
            out.print("Error in Query due to " + e.getMessage());
        } finally {
            if (myconnection != null) {
                myconnection.close(); 
            }
        }
    } catch (Exception e) {
        out.print("Error in Connection due to " + e.getMessage());
    }
    }
%>

