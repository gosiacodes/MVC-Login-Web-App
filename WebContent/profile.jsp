<%@page import="aPackage.ControllerAndCookieCreatorServlet"%>
<%@page import="aPackage.aBean"%>

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
	
	aBean bean = new aBean();
	bean.setUser(user);
	request.setAttribute("bean", bean);
	
	boolean userStatus = bean.validate2();
	
	if(userStatus) {
		out.println("Hello again, we are glad to see you " + user + "!<br/>");
	}
	else {
		String user2 = ck[1].getValue();
		out.println("Hello again, " + user2 + "!<br/>");
	}
	
	
	out.println("<br><b>Cookies: </b>");
	for(int i = 0; i < ck.length; i++) {  
		out.print("<br>" + "<b>" + ck[i].getName() + ":</b>" + " " + ck[i].getValue());
		} 		
	
}
catch (Exception e) {
	System.out.println(e);
}

out.print("<br/><br/>");
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

