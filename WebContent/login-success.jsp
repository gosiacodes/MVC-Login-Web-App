<%@page import="aPackage.aBean"%>
<%@page import="aPackage.ControllerAndCookieCreatorServlet"%>

<p>You successfully logged in!</p>

<%
aBean bean=(aBean)request.getAttribute("bean");
out.println("<h3>Welcome, " + bean.getUserName() + "!</h3>");
session.setAttribute("session","TRUE"); 

response.setContentType("text/html");
out.print("<html><body>");

out.println("<a href = 'profile.jsp'>Secret profile</a><br/><br/>");

Cookie cookies[] = request.getCookies();

out.println("<b>Cookie 1: </b>" + cookies[0].getValue() + "<br/>");
out.println("<b>Cookie 2: </b>" + cookies[1].getValue() + "<br/>");
out.println("<b>Cookie 3: </b>" + cookies[2].getValue() + "<br/>");
out.println("<b>Cookie 4: </b>" + cookies[3].getValue() + "<br/>");

out.println("<br/><br/>");

out.println("<form action = 'profile.jsp' method='post'>");
out.println("<input type='text' value='Write your secret here' name='secret' style='width: 50%;'>");
out.println("<input type='submit' value='Save'>");
out.println("</form>");

String userName = bean.getUserName();
out.println("<br/> Your photo, " + userName + ":<br/><br/>");
out.println("<img src=" + userName + ".jpg>" + "<br/>");

%>

