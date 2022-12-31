package kh.S07.copyCGV.likes.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.S07.copyCGV.likes.model.LikesService;
import kh.S07.copyCGV.likes.model.LikesVo;

/**
 * Servlet implementation class Likescontroller
 */
@WebServlet("/Likes")
public class LikesController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LikesController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mcode = request.getParameter("mcode");
		System.out.println("상품번호:"+ mcode);
		
		LikesVo vo = new LikesService().selectOne(mcode);
		
		request.setAttribute("likes", vo);
		String viewPath="/WEB-INF/view/member/usr/mypage.jsp";
		request.getRequestDispatcher(viewPath).forward(request, response);
	}

}
