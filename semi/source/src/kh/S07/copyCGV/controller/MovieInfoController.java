package kh.S07.copyCGV.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.S07.copyCGV.likes.model.LikesService;
import kh.S07.copyCGV.likes.model.LikesVo;
import kh.S07.copyCGV.member.model.MemberVo;
import kh.S07.copyCGV.movie.model.MovieService;
import kh.S07.copyCGV.movie.model.MovieVo;

/**
 * Servlet implementation class MainController
 */
@WebServlet("/movieinfo")
public class MovieInfoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MovieInfoController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("/movieinfo 컨트롤러");
		
		// 영화 상세 정보 전달
		String moviecd = request.getParameter("moviecd");
		System.out.println("moviecd:" + moviecd);
		MovieVo vo = new MovieService().selectOne(moviecd);
		request.setAttribute("movievo", vo);
		
		// 좋아요 여부 정보 전달
		MemberVo mvo = (MemberVo)request.getSession().getAttribute("loginSsInfo");
		if(mvo != null) {
			LikesService likeService = new LikesService();
			int islike = likeService.isLike(moviecd, mvo.getMcode());
			request.setAttribute("islike", islike);
		}else {
			request.setAttribute("islike", 0);
		}
		String viewPage="/WEB-INF/view/movie/movie_info.jsp";
		request.getRequestDispatcher(viewPage).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}

}
