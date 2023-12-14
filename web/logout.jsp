<%
    session.invalidate();

    Cookie mycookie2 = new Cookie("email", "0");
    mycookie2.setMaxAge(0);
    response.addCookie(mycookie2);
    
    Cookie mycookie3 = new Cookie("adminname", "0");
    mycookie3.setMaxAge(0);
    response.addCookie(mycookie3);
                                    
    response.sendRedirect("index.jsp");

%>