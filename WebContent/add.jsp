<%@page import="com.bit2016.guestbook.vo.GuestBookVo"%>
<%@page import="com.bit2016.guestbook.dao.GuestBookDao"%>
<%
request.setCharacterEncoding("UTF-8");   // 제일 처음 한글 인코딩, 포스트방식

String name = request.getParameter("name");
String password = request.getParameter("pass");
String content = request.getParameter("content");

GuestBookVo vo = new GuestBookVo();
vo.setName(name);
vo.setContent(content);
vo.setPassword(password);

GuestBookDao dao = new GuestBookDao();
dao.insert(vo);
//redirect

response.sendRedirect("/guestbook");
%>

