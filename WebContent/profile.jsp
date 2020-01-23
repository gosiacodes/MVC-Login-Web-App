<%@page import="aPackage.ControllerAndCookieCreatorServlet"%>

<p>Welcome on your secret profile page!</p>

<% 
String secret = request.getParameter("secret");
if (secret == null) {
	out.print("You didn't write any secrets.<br/><br/>");
}
else {
	out.print("<b>Your secret: </b>" + secret + "<br/><br/>");
}

try {
	response.setContentType("text/html");
	
	Cookie ck[] = request.getCookies();
	
	String user = ck[0].getValue();
	if (user.contentEquals("Gosia") || user.contentEquals("Julia") || 
			user.contentEquals("Kacper") || user.contentEquals("Marcin")) {
		out.println("Hello again, " + user + "!<br/>");
	}
	else {
		String user2 = ck[1].getValue();
		out.println("Hello again, " + user2 + "!<br/>");
	}
	
	out.println("<br><b>Cookies: </b>");
	for(int i = 0; i < ck.length; i++) {  
		 out.print("<br>" + "<b>" + ck[i].getName() + ":</b>" + " " + ck[i].getValue());
		} 
	
	out.print("<br/><br/>");
		
	
}
catch (Exception e) {
	System.out.println(e);
}

out.print("<form action='IndexApp.jsp'>");
out.print("<input type='submit' value='Logout'>");

Cookie uname = new Cookie("uname","");
Cookie mail = new Cookie("mail","");
Cookie pass = new Cookie("pass","");
Cookie JSESSIONID = new Cookie("JSESSIONID","");

uname.setMaxAge(0);
mail.setMaxAge(0);
pass.setMaxAge(0);
JSESSIONID.setMaxAge(0);

response.addCookie(uname);
response.addCookie(mail);
response.addCookie(pass);
response.addCookie(JSESSIONID);

session.setAttribute("session","FALSE"); 

out.print("</form>");
out.close();

%>

