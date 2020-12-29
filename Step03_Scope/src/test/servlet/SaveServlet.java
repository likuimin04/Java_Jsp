package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/test/save")
public class SaveServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		//폼 전송되는 닉네임 읽어오기
		String nick=req.getParameter("nick");
		//session scope 에 저장하기 (어떻게 저장하지?)
		HttpSession session=req.getSession(); //HttpServletRequest 객체를 이용해서 얻어올수 있다.
		session.setAttribute("nick", nick);
		//간단 응답하기
		PrintWriter pw=resp.getWriter();
		pw.println("nick save ok!");
		pw.close();
	}
}