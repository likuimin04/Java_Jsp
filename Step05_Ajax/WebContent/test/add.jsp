<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	// add.jsp?name=xxx&addr=xxx 형식으로 전송된 파라미터 추출하기
	String msgName=request.getParameter("msgName");
	String msgAddr=request.getParameter("msgAddr");
	System.out.println("Name:"+msgName+"Addr:"+msgAddr);
%>
added!