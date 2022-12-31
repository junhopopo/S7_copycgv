package kh.S07.copyCGV.likes.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.S07.copyCGV.likes.model.LikesService;
import kh.S07.copyCGV.likes.model.LikesVo;
import kh.S07.copyCGV.member.model.MemberVo;

/**
 * Servlet implementation class Likescontroller
 */
@WebServlet("/Likes.ajax")
public class LikesDoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private LikesService service = new LikesService();
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

		
		MemberVo mvo = (MemberVo)request.getSession().getAttribute("loginSsInfo");
		if(mvo == null) {
			response.sendRedirect("login");
			return;
		}
		
		String moviecd = request.getParameter("moviecd");
		String like = request.getParameter("like");
		System.out.println("상품번호:"+ moviecd);
		
		LikesVo vo = new LikesVo();
		vo.setMcode(mvo.getMcode());
		vo.setMoviecd(moviecd);
		if(like.equals("wishlike")) {
			service.insert(vo);
		} else {
			service.delete(vo);
		}
		
		int islike = service.isLike(moviecd, mvo.getMcode());
		
		
		// ajax 들어왔으므로 페이지이동 하지 않음. forward, sendRedirect x, setattribute x
		// out에 print
		PrintWriter out = response.getWriter();
		out.print(islike);
		out.flush();
		out.close();
		
//		// TODO Auto-generated method stub
//		
//				//BoardVO bVo = new BoardVO();
//				
//				int bno = Integer.parseInt(request.getParameter("board_num"));
//				
//				BoardDAO bDao = BoardDAO.getInstance();
//				bDao.update_Like(bno);
//				
//				
//				int like=bDao.select_Like(bno);
//				System.out.println("LikeUpdateAction.java의 like 개수:"+ like);
//				
//				
//				JSONObject obj = new JSONObject();
//				obj.put("like",like);
//				
//				//request.setAttribute("json", json); 
//				
//				 response.setContentType("application/x-json; charset=UTF-8");
//				 response.getWriter().print(obj);
//	
	}
		
		
			
		

}
