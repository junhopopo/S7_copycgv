package kh.S07.copyCGV.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import kh.S07.copyCGV.movie.model.MovieService;
import kh.S07.copyCGV.movie.model.MovieVo;

/**
 * Servlet implementation class MovieFromKobisApiController
 */
@WebServlet("/MovieFromKobisApiController")
public class MovieFromKobisApiController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	// 영화정보담길 장소
	private List<MovieVo> movielist = new ArrayList<MovieVo>();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MovieFromKobisApiController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		out.append("insert movie from Kobis API");
		
		//예시 url 
		// /MovieFromKobisApiController?targetDt=20221220
		String targetDt = request.getParameter("targetDt");
		if(targetDt == null || targetDt.equals("")) {
			targetDt = "20221224";
		}
		
		// 주간/일간 영화목록으로 CD와 NM 을 movielist 넣기
		getDailyBoxOfficeListFromKobisApi(targetDt);
		
        System.out.println("============= 읽은 데이터===============");
        for(int i=0; i< movielist.size(); i++) {
        	System.out.println(movielist.get(i));   // 확인차 display
        	getDetailFromKobisApi(movielist.get(i));
        }
        System.out.println("============= 여기까지 ===============");
        
        
        // DB insert
        MovieService service = new MovieService();
        int resutl = service.insert(movielist);
		
		out.append("insert movie from Kobis API finish~~~~");
		out.flush();
		out.close();
	}

	private void getDetailFromKobisApi(MovieVo vo)  {
    	try {
//    		http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieInfo.xml?key=f5eef3421c602c6cb7ea224104795888&movieCd=20124079
    		// 1.url생성
	        StringBuilder urlBuilder = new StringBuilder("http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieInfo.xml"); /*URL*/
	        urlBuilder.append("?" + URLEncoder.encode("key","UTF-8") + "=f5eef3421c602c6cb7ea224104795888"); /*Service Key*/
	        urlBuilder.append("&" + URLEncoder.encode("movieCd","UTF-8") + "=" + URLEncoder.encode(vo.getMoviecd(), "UTF-8")); /*  */
	        
    		// 2.url로 연결
	        URL url = new URL(urlBuilder.toString());
	        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
	        conn.setRequestMethod("GET");
	        conn.setRequestProperty("Content-type", "application/json");
	        System.out.println("Response code: " + conn.getResponseCode());
//	        movieCd	문자열	영화코드를 출력합니다.
//	        movieNm	문자열	영화명(국문)을 출력합니다.
//	        movieNmEn	문자열	영화명(영문)을 출력합니다.
//	        movieNmOg	문자열	영화명(원문)을 출력합니다.
//	        prdtYear	문자열	제작연도를 출력합니다.
//	        showTm	문자열	상영시간을 출력합니다.
//	        openDt	문자열	개봉연도를 출력합니다.
//	        prdtStatNm	문자열	제작상태명을 출력합니다.
//	        typeNm	문자열	영화유형명을 출력합니다.
//	        nations	문자열	제작국가를 나타냅니다.
//	        nationNm	문자열	제작국가명을 출력합니다.
//	        genreNm	문자열	장르명을 출력합니다.
//	        directors	문자열	감독을 나타냅니다.
//	        peopleNm	문자열	감독명을 출력합니다.
//	        peopleNmEn	문자열	감독명(영문)을 출력합니다.
//	        actors	문자열	배우를 나타냅니다.
//	        peopleNm	문자열	배우명을 출력합니다.
//	        peopleNmEn	문자열	배우명(영문)을 출력합니다.
//	        cast	문자열	배역명을 출력합니다.
//	        castEn	문자열	배역명(영문)을 출력합니다.
//	        showTypes	문자열	상영형태 구분을 나타냅니다.
//	        showTypeGroupNm	문자열	상영형태 구분을 출력합니다.
//	        showTypeNm	문자열	상영형태명을 출력합니다.
//	        audits	문자열	심의정보를 나타냅니다.
//	        auditNo	문자열	심의번호를 출력합니다.
//	        watchGradeNm	문자열	관람등급 명칭을 출력합니다.
//	        companys	문자열	참여 영화사를 나타냅니다.
//	        companyCd	문자열	참여 영화사 코드를 출력합니다.
//	        companyNm	문자열	참여 영화사명을 출력합니다.
//	        companyNmEn	문자열	참여 영화사명(영문)을 출력합니다.
//	        companyPartNm	문자열	참여 영화사 분야명을 출력합니다.
//	        staffs	문자열	스텝을 나타냅니다.
//	        peopleNm	문자열	스텝명을 출력합니다.
//	        peopleNmEn	문자열	스텝명(영문)을 출력합니다.
//	        staffRoleNm	문자열	스텝역할명을 출력합니다.
//	        
	        // 3.연결 Stream으로 부터 읽기
	        // conn --> inputstream --> Document --> xml 다룰수 있음
	        Document doc = parseXML(conn.getInputStream());
	        NodeList list = doc.getElementsByTagName("movieInfo");
	        System.out.println(list.getLength());
	        System.out.println(list.item(0));
	        
	        for(int i=0; i<list.getLength(); i++) {
	        	// list.item(i)의 결과를 변수명 item에 대입해주세요.
	        	Node item = list.item(i);
	        	Node n = item.getFirstChild();  
        		while(n != null) {
	        		String nodeName = n.getNodeName();
	        		String nodeText = n.getTextContent();
	        		try {
		        		switch(nodeName) {
		        		case "movieCd":
		        			vo.setMoviecd(nodeText);
		        			break;
		        		case "movieNm":
		        			vo.setMovienm(nodeText);
		        			break;
		        		case "movieNmEn":
		        			vo.setMovienmen(nodeText);
		        			break;
		        		case "movieNmOg":
		        			vo.setMovienmog(nodeText);
		        			break;
		        		case "showTm":
		        			vo.setShowtm(Integer.parseInt(nodeText));
		        			break;
		        		case "prdtYear":
		        			vo.setPrdtyear(Integer.parseInt(nodeText));
		        			break;
		        		case "openDt":
		        			vo.setOpendt(Integer.parseInt(nodeText));
		        			break;
		        		case "typeNm":
		        			vo.setTypenm(nodeText);
		        			break;
		        		case "genres":
		        			Node genres = n.getFirstChild();
		        			List<String> genrelist = new ArrayList<String>();
		        			while(genres != null) {
		        				Node genre = genres.getFirstChild();
		    	        		String genreText = genre.getTextContent();
		    	        		genrelist.add(genreText);
		    	        		genres = genres.getNextSibling();
		        			}
		        			if(genrelist.size()>0) {
		        				vo.setGenres(genrelist);
		        			}
		        			break;
		        		// TODO: 아래 감독, 배우, 제작사도 추가해주세요
		        		}
	        		}catch (Exception e) {
						e.printStackTrace();
					}
	        		
	        		n = n.getNextSibling();
	        	}
	        	
	        }
	        conn.disconnect();
	        
    	} catch(IOException e) {
    		e.printStackTrace();
    	}
    }  
	
	private void getDailyBoxOfficeListFromKobisApi(String targetDt/*YYYYMMDD*/)  {
    	try {
//            String url = "http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt="+d_str;
//            String url = "http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.xml?key=f5eef3421c602c6cb7ea224104795888&targetDt="+d_str;
//    		http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchWeeklyBoxOfficeList.xml?key=f5eef3421c602c6cb7ea224104795888&targetDt=20221224
    		// 1.url생성
//    		기본 요청 URL : http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchWeeklyBoxOfficeList.xml (또는 .json)
//    		key	문자열(필수)	발급받은키 값을 입력합니다.
//    		targetDt	문자열(필수)	조회하고자 하는 날짜를 yyyymmdd 형식으로 입력합니다.
//    		weekGb	문자열	주간/주말/주중을 선택 입력합니다
//    		“0” : 주간 (월~일)
//    		“1” : 주말 (금~일) (default)
//    		“2” : 주중 (월~목)
//    		itemPerPage	문자열	결과 ROW 의 개수를 지정합니다.(default : “10”, 최대 : “10”)
//    		multiMovieYn	문자열	다양성 영화/상업영화를 구분지어 조회할 수 있습니다.
//    		“Y” : 다양성 영화 “N” : 상업영화 (default : 전체)
//    		repNationCd	문자열	한국/외국 영화별로 조회할 수 있습니다.
//    		“K: : 한국영화 “F” : 외국영화 (default : 전체)
//    		wideAreaCd	문자열	상영지역별로 조회할 수 있으며, 지역코드는 공통코드 조회 서비스에서 “0105000000” 로서 조회된 지역코드입니다. (default : 전체)
	        StringBuilder urlBuilder = new StringBuilder("http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchWeeklyBoxOfficeList.xml"); /*URL*/
	        urlBuilder.append("?" + URLEncoder.encode("key","UTF-8") + "=f5eef3421c602c6cb7ea224104795888"); /*Service Key*/
	        urlBuilder.append("&" + URLEncoder.encode("targetDt","UTF-8") + "=" + URLEncoder.encode(targetDt, "UTF-8")); /**/
	        
    		// 2.url로 연결
	        URL url = new URL(urlBuilder.toString());
	        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
	        conn.setRequestMethod("GET");
	        conn.setRequestProperty("Content-type", "application/json");
	        System.out.println("Response code: " + conn.getResponseCode());
	        
	        // 3.연결 Stream으로 부터 읽기
	        // conn --> inputstream --> Document --> xml 다룰수 있음
	        Document doc = parseXML(conn.getInputStream());
	        NodeList list = doc.getElementsByTagName("weeklyBoxOffice");
	        System.out.println(list.getLength());
	        System.out.println(list.item(0));
	        
	        for(int i=0; i<list.getLength(); i++) {
	        	// list.item(i)의 결과를 변수명 item에 대입해주세요.
	        	Node item = list.item(i);
	        	Node n = item.getFirstChild(); 
	        	
	        	MovieVo vo = new MovieVo();	        	
        		while(n != null) {
	        		String nodeName = n.getNodeName();
	        		String nodeText = n.getTextContent();
	        		try {
		        		switch(nodeName) {
		        		case "movieCd":
		        			vo.setMoviecd(nodeText);
		        			break;
		        		case "movieNm":
		        			vo.setMovienm(nodeText);
		        			break;
		        		}
	        		}catch (Exception e) {
						e.printStackTrace();
					}
	        		
	        		n = n.getNextSibling();
	        	}

		        movielist.add(vo);
	        }
	       
	        conn.disconnect();
	        
	        
    	} catch(IOException e) {
    		e.printStackTrace();
    	}
    }  

    // 기본자세 - 메소드정의 - 첫번째 return type 확인 void 아니면 return
    // InputStream 형태의 객체를 Document 바꿔줌
    private Document parseXML(InputStream stream) {
    	Document result = null;
    	DocumentBuilderFactory abc = null;
    	DocumentBuilder builder = null;
    	try { 
    		abc = DocumentBuilderFactory.newInstance();
    		builder = abc.newDocumentBuilder();
			result = builder.parse(stream);
		} catch (ParserConfigurationException e) {
			e.printStackTrace();
		} catch (SAXException e) {  // Simple API for XML
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} 
   	
    	return result;
    }
    
}


