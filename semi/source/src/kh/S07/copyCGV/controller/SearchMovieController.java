package kh.S07.copyCGV.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.S07.copyCGV.movie.model.DirectorVo;
import kh.S07.copyCGV.movie.model.MovieService;
import kh.S07.copyCGV.movie.model.MovieVo;

/**
 * Servlet implementation class MainController
 */
@WebServlet("/searchMovie")
public class SearchMovieController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchMovieController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		List<DirectorVo> directorlist = new MovieService().selectDirectorList(moviecd);
//		System.out.println("감독님들:"+directorlist);
//		request.setAttribute("directorlist", directorlist);
		
		String directorcd = request.getParameter("directorcd");
		String actorcd = request.getParameter("actorcd");
		
		System.out.println("/searchMovie 컨트롤러");
		System.out.println(directorcd);
		System.out.println(actorcd);
		
		List<MovieVo> volist = new MovieService().selectSearchList(directorcd,  actorcd);
		System.out.println("######### search movie list\n"+volist);
		request.setAttribute("movielist", volist);
		String viewPage="/WEB-INF/view/movie/searchmovie.jsp";
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
