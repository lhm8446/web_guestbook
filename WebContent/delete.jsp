<%@page import="com.bit2016.guestbook.dao.GuestBookDao"%>
<%

Long no = Long.parseLong(request.getParameter("no")) ;
String password = request.getParameter("password");

GuestBookDao dao = new GuestBookDao();

dao.delete(no,password);

//redirect
response.sendRedirect("/guestbook");

%>