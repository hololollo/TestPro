package org.ganreung.ctrl.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.gangreung.dao.MemberDAO;
import org.gangreung.dto.Member;


@WebServlet("/JoinPro.do")
public class JoinProCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public JoinProCtrl() {
        super();

    }


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		Member mem = new Member(request.getParameter("id"),
				request.getParameter("pw"),
				request.getParameter("name"),
				request.getParameter("email"),
				request.getParameter("tel"));		
		
		MemberDAO dao = new MemberDAO();
		int cnt = dao.join(mem);
		
		if(cnt>0) {
			response.sendRedirect("/pro01");
		} else {
			response.sendRedirect("/Join.do");
		}
	}

}
