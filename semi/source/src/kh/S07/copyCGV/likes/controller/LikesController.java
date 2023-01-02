package kh.S07.copyCGV.likes.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.S07.copyCGV.likes.model.LikesService;
import kh.S07.copyCGV.likes.model.LikesVo;
import kh.S07.copyCGV.member.model.MemberVo;
import kh.S07.copyCGV.movie.model.DirectorVo;
import kh.S07.copyCGV.movie.model.MovieService;
import kh.S07.copyCGV.movie.model.MovieVo;

/**
 * Servlet implementation class Likescontroller
 */
@WebServlet("/likes")
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
//		
//		List<DirectorVo> directorlist = new MovieService().selectDirectorList(moviecd);
//		System.out.println("감독님들:"+directorlist);
//		request.setAttribute("directorlist", directorlist);
		
		MemberVo mvo = (MemberVo)request.getSession().getAttribute("loginSsInfo");// request.getParameter("mcode");
		if(mvo== null) {
			response.sendRedirect("login");
			return;
		}
		System.out.println("로그인한 계정:"+ mvo.getMcode());
		
		List<MovieVo> volist = new LikesService().selectMyLikesList(mvo.getMcode());
		
		request.setAttribute("likesmovielist", volist);
		
		
		String viewPath="/WEB-INF/view/member/usr/mypage.jsp";
		request.getRequestDispatcher(viewPath).forward(request, response);
	}

}
