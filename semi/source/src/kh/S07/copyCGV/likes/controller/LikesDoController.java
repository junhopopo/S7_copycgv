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
@WebServlet("/Likes.do")
public class LikesDoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LikesDoController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String moviecd = request.getParameter("moviecd");
		System.out.println("상품번호:"+ moviecd);
		
		LikesVo vo = new LikesService().selectOne(moviecd);
		
		request.setAttribute("likes", vo);
		String viewPath="WEB-INF/view/product.jsp";
		request.getRequestDispatcher(viewPath).forward(request, response);
	}

}
