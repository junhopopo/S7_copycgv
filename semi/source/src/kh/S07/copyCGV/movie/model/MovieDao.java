package kh.S07.copyCGV.movie.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.jdbc.JdbcTemplate;

public class MovieDao {
//	insert
//	update
//	delete
//	selectList
//	selectOne
	// 최소 5개 
//	insert - 등록
	public int insert(Connection conn, MovieVo vo) {
		int result = 0;
//		MOVIECD            NOT NULL VARCHAR2(20)   
//		MOVIENM                     VARCHAR2(100) 
//		MOVIENMEN          VARCHAR2(100) 
//		MOVIENMOG          VARCHAR2(100) 
//		PRDTYEAR                    NUMBER(10)    
//		SHOWTM                      NUMBER(10)    
//		OPENDT                      NUMBER(10)    
//		TYPENM                      VARCHAR2(100) 
//		NATIONS                     VARCHAR2(100) 
//		CAST                        VARCHAR2(500) 
//		SHOWTYPES                   VARCHAR2(100) 
//		AUDITS                      VARCHAR2(100) 
//		POSTER                      VARCHAR2(500)
		String sql = "INSERT ";
		sql += " INTO MOVIE (	MOVIECD, MOVIENM, MOVIENMEN, MOVIENMOG, PRDTYEAR, "
							+ " SHOWTM, OPENDT, TYPENM, NATIONS, CAST, "
							+ " SHOWTYPES, AUDITS, POSTER) "
				+ " VALUES (?,?,?,?,?, 		?,?,?,?,?,	?,?,?)";
//		for(ActorVo a : vo.getActors()) {
//			sql += " INTO ACTOR (ACTORCD, ACTORNM, ACTORNMEM) VALUES ((select nvl(max(ACTORCD),0)+1 from ACTOR),'"+a.getActornm()+"','"+a.getActornmen()+"')";
//		}
//		for(int i=0; i<vo.getDirectors().size(); i++) {
//			sql += " INTO DIRECTOR (DIRECTORCD, DIRECTORNM, DIRECTORNMEM) VALUES (?,?,?)";
//		}
//		for(int i=0; i<vo.getCompanys().size(); i++) {
//			sql += " INTO COMPANY (COMPANYNM) VALUES (?)";
//		}
//		for(int i=0; i<vo.getGenres().size(); i++) {
//			sql += " INTO GENRE (GENRENM) VALUES (?)";
//		}
//		for(int i=0; i<vo.getActors().size(); i++) {
//			sql += " INTO MVACTOR (ACTORCD, MOVIECD) VALUES (?,?)";
//		}
//		for(int i=0; i<vo.getDirectors().size(); i++) {
//			sql += " INTO MVDIRECTOR (DIRECTORCD, MOVIECD) VALUES (?,?)";
//		}
//		for(int i=0; i<vo.getCompanys().size(); i++) {
//			sql += " INTO MVCOMPANY (COMPANYNM, MOVIECD) VALUES (?,?)";
//		}
//		for(int i=0; i<vo.getGenres().size(); i++) {
//			sql += " INTO MVGENRE (GENRENM, MOVIECD) VALUES (?,?)";
//		}
//		sql += "select * from dual";
//		private List<ActorVo> actors;
//		private List<DirectorVo> directors;
//		private List<String> companys;
//		private List<String> genres;
		
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
//			int i=1;
			pstmt.setString(1, vo.getMoviecd());
			pstmt.setString(2, vo.getMovienm());
			pstmt.setString(3, vo.getMovienmen());
			pstmt.setString(4, vo.getMovienmog());
			pstmt.setInt(5, vo.getPrdtyear());
			pstmt.setInt(6, vo.getShowtm());
			pstmt.setInt(7, vo.getOpendt());
			pstmt.setString(8, vo.getTypenm());
			pstmt.setString(9, vo.getNations());
			pstmt.setString(10, vo.getCast());
			pstmt.setString(11, vo.getShowtypes());
			pstmt.setString(12, vo.getAudits());
			pstmt.setString(13, vo.getPoster());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemplate.close(pstmt);
		}
		System.out.println(">>>>Movie Return:"+ result);
		return result;
	}


//	update - 수정
	public int update(Connection conn, MovieVo vo, int mcode) {
		int result = 0;
		return result;
	}
//	delete  - 삭제
	public int delete(Connection conn, int mcode) {
		int result = 0;
		return result;
	}
//	selectList  - 목록조회
	public List<MovieVo> selectList(Connection conn){
		List<MovieVo> volist = null;
		String query = "select MOVIECD, MOVIENM, MOVIENMEN, MOVIENMOG, PRDTYEAR, SHOWTM, OPENDT, TYPENM, NATIONS, CAST, SHOWTYPES, AUDITS, POSTER from movie";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				volist = new ArrayList<MovieVo>();
				do{
					MovieVo vo = new MovieVo();
					vo.setMoviecd(rs.getString("moviecd"));
					vo.setMovienm(rs.getString("MOVIENM"));
					vo.setMovienmen(rs.getString("movienmen"));
					vo.setMovienmog(rs.getString("movienmog"));
					vo.setPrdtyear(rs.getInt("prdtyear"));
					
					vo.setShowtm(rs.getInt("Showtm"));
					vo.setOpendt(rs.getInt("opendt"));
					vo.setTypenm(rs.getString("typenm"));
					vo.setNations(rs.getString("Nations"));
					vo.setCast(rs.getString("Cast"));

					vo.setShowtypes(rs.getString("Showtypes"));
					vo.setAudits(rs.getString("Audits"));
					vo.setPoster(rs.getString("Poster"));

					volist.add(vo);
				}while(rs.next());
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			JdbcTemplate.close(rs);
			JdbcTemplate.close(pstmt);
		}
		return volist;
	}

//	selectOne - 상세조회
	public MovieVo selectOne(Connection conn, String moviecd){
		MovieVo vo = null;
		//PK로 where했으므로 단일행 결과물
		// * 속도 저하의 원인. 필요한 컬럼명을 나열함.
		String query = "select MOVIECD, MOVIENM, MOVIENMEN, MOVIENMOG, PRDTYEAR, SHOWTM, OPENDT, TYPENM, NATIONS, CAST, SHOWTYPES, AUDITS, POSTER from movie where MOVIECD=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, moviecd);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				//PK로 where했으므로 단일행 결과물로 while문 작성하지 않음
				vo = new MovieVo();
				vo.setMoviecd(rs.getString("moviecd"));
				vo.setMovienm(rs.getString("MOVIENM"));
				vo.setMovienmen(rs.getString("movienmen"));
				vo.setMovienmog(rs.getString("movienmog"));
				vo.setPrdtyear(rs.getInt("prdtyear"));
				
				vo.setShowtm(rs.getInt("Showtm"));
				vo.setOpendt(rs.getInt("opendt"));
				vo.setTypenm(rs.getString("typenm"));
				vo.setNations(rs.getString("Nations"));
				vo.setCast(rs.getString("Cast"));

				vo.setShowtypes(rs.getString("Showtypes"));
				vo.setAudits(rs.getString("Audits"));
				vo.setPoster(rs.getString("Poster"));
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			JdbcTemplate.close(rs);
			JdbcTemplate.close(pstmt);
		}
		
		return vo;
	}
}
