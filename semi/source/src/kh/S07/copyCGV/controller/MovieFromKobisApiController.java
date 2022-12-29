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
	private List<MovieVo> volist = new ArrayList<MovieVo>();
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
		
		getDailyBoxOfficeListFromKobisApi();
		

        System.out.println("============= 읽은 데이터===============");
        for(MovieVo vo : volist) {
        	System.out.println(vo);   // 확인차 display
// TODO       	MovieDeailVo vo = getDetailFromKobisApi(vo.getMoviecd());
        }
        System.out.println("============= 여기까지 ===============");
        
        
        // DB insert
        MovieService service = new MovieService();
        int resutl = service.insert(volist);
		
		
		
		out.append("insert movie from Kobis API finish~~~~");
		out.flush();
		out.close();
	}

//	/**
//	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}
	
	private void getDetailFromKobisApi(String moviecd)  {
    	try {
    		String d_str = "20221224";
//            String url = "http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt="+d_str;
//            String url = "http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.xml?key=f5eef3421c602c6cb7ea224104795888&targetDt="+d_str;
//    		http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieInfo.xml?key=f5eef3421c602c6cb7ea224104795888&movieCd=20124079
    		// 1.url생성
	        StringBuilder urlBuilder = new StringBuilder("http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieInfo.xml"); /*URL*/
	        urlBuilder.append("?" + URLEncoder.encode("key","UTF-8") + "=f5eef3421c602c6cb7ea224104795888"); /*Service Key*/
	        urlBuilder.append("&" + URLEncoder.encode("movieCd","UTF-8") + "=" + URLEncoder.encode(moviecd, "UTF-8")); /*  */
//	        urlBuilder.append("&" + URLEncoder.encode("targetDt","UTF-8") + "=" + URLEncoder.encode(d_str, "UTF-8")); /**/
//	        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("500", "UTF-8")); /*한 페이지 결과 수*/
//	        urlBuilder.append("&" + URLEncoder.encode("apiType","UTF-8") + "=" + URLEncoder.encode("xml", "UTF-8")); /*결과형식(xml/json)*/
//	        urlBuilder.append("&" + URLEncoder.encode("std_day","UTF-8") + "=" + URLEncoder.encode("2021-12-15", "UTF-8")); /*기준일자*/
	        
    		// 2.url로 연결
	        URL url = new URL(urlBuilder.toString());
	        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
	        conn.setRequestMethod("GET");
	        conn.setRequestProperty("Content-type", "application/json");
	        System.out.println("Response code: " + conn.getResponseCode());
	        
	        // 3.연결 Stream으로 부터 읽기
	        // conn --> inputstream --> Document --> xml 다룰수 있음
	        Document doc = parseXML(conn.getInputStream());
	        NodeList list = doc.getElementsByTagName("movieInfo");
	        System.out.println(list.getLength());
	        System.out.println(list.item(0));
	        
	        List<MovieVo> volist = new ArrayList<MovieVo>();
	        for(int i=0; i<list.getLength(); i++) {
	        	
	        	// list.item(i)의 결과를 변수명 item에 대입해주세요.
	        	Node item = list.item(i);
	        	// NullPointException 은 . 앞이 null 이어서 오류발생
	        	Node n = item.getFirstChild();  // deathCnt
	        	
//TODO	        	MovieDetailVo vo = new MovieDetailVo();	        	
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
	        			//TODO
		        		}
	        		}catch (Exception e) {
						e.printStackTrace();
					}
	        		
	        		n = n.getNextSibling();
	        	}
	        	
		        volist.add(vo);
	        }
	       
	        conn.disconnect();
	        
	        
    	} catch(IOException e) {
    		e.printStackTrace();
    	}
    }  
	
	private void getDailyBoxOfficeListFromKobisApi()  {
    	try {
    		String d_str = "20221224";
//            String url = "http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt="+d_str;
//            String url = "http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.xml?key=f5eef3421c602c6cb7ea224104795888&targetDt="+d_str;
//    		http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieInfo.xml?key=f5eef3421c602c6cb7ea224104795888&movieCd=20124079
    		// 1.url생성
	        StringBuilder urlBuilder = new StringBuilder("http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.xml"); /*URL*/
	        urlBuilder.append("?" + URLEncoder.encode("key","UTF-8") + "=f5eef3421c602c6cb7ea224104795888"); /*Service Key*/
//	        urlBuilder.append("&" + URLEncoder.encode("movieCd","UTF-8") + "=" + URLEncoder.encode("20124079", "UTF-8")); /*  */
	        urlBuilder.append("&" + URLEncoder.encode("targetDt","UTF-8") + "=" + URLEncoder.encode(d_str, "UTF-8")); /**/
//	        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("500", "UTF-8")); /*한 페이지 결과 수*/
//	        urlBuilder.append("&" + URLEncoder.encode("apiType","UTF-8") + "=" + URLEncoder.encode("xml", "UTF-8")); /*결과형식(xml/json)*/
//	        urlBuilder.append("&" + URLEncoder.encode("std_day","UTF-8") + "=" + URLEncoder.encode("2021-12-15", "UTF-8")); /*기준일자*/
	        
    		// 2.url로 연결
	        URL url = new URL(urlBuilder.toString());
	        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
	        conn.setRequestMethod("GET");
	        conn.setRequestProperty("Content-type", "application/json");
	        System.out.println("Response code: " + conn.getResponseCode());
	        
	        // 3.연결 Stream으로 부터 읽기
	        // conn --> inputstream --> Document --> xml 다룰수 있음
	        Document doc = parseXML(conn.getInputStream());
	        NodeList list = doc.getElementsByTagName("dailyBoxOffice");
	        System.out.println(list.getLength());
	        System.out.println(list.item(0));
	        
//	        List<MovieVo> volist = new ArrayList<MovieVo>();   // 위 field에 선언함
	        for(int i=0; i<list.getLength(); i++) {
	        	
	        	// list.item(i)의 결과를 변수명 item에 대입해주세요.
	        	Node item = list.item(i);
	        	// NullPointException 은 . 앞이 null 이어서 오류발생
	        	Node n = item.getFirstChild();  // deathCnt
	        	
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
	        			//TODO
		        		}
	        		}catch (Exception e) {
						e.printStackTrace();
					}
	        		
	        		n = n.getNextSibling();
	        	}

		        volist.add(vo);
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
