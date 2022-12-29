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
//		MOVIECD   NOT NULL NUMBER(10)    
//		MOVIENM            VARCHAR2(100) 
//		MOVIENMEN          VARCHAR2(100) 
//		PRDTYEAR           NUMBER(10)    
//		OPENDT             NUMBER(10)    
//		TYPENM             VARCHAR2(100) 
//		NATIONALT          VARCHAR2(100) 
//		GENREALT           VARCHAR2(100) 
//		DIRECTORS          VARCHAR2(100) 
//		COMPANYS           VARCHAR2(100) 
//		private String moviecd;
//		private String movienm;
//		private String movienmen;
//		private int prdtyear;
//		private int opendt;
//		private String typenm;
//		private String nationalt;
//		private String genrealt;
//		private String directors;
//		private String companys;
		
//		String sql = "INSERT INTO MOVIE (MOVIECD,MOVIENM,MOVIENMEN,PRDTYEAR,OPENDT,TYPENM, NATIONALT, GENREALT, DIRECTORS, COMPANYS)";
		String sql = "INSERT INTO MOVIE (MOVIECD, MOVIENM)";
		sql += " VALUES (?,?)";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getMoviecd());
			pstmt.setString(2, vo.getMovienm());
//TODO
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
		String query = "select MOVIECD,MOVIENM,MOVIENMEN,PRDTYEAR,OPENDT,TYPENM, NATIONALT, GENREALT, DIRECTORS, COMPANYS from movie";
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
					vo.setPrdtyear(rs.getInt("prdtyear"));
					vo.setOpendt(rs.getInt("opendt"));
					vo.setTypenm(rs.getString("typenm"));
					//TODO
	//				vo.setTypenm(rs.getString("typenm"));
	//				vo.setTypenm(rs.getString("typenm"));
	//				vo.setTypenm(rs.getString("typenm"));
	//				vo.setTypenm(rs.getString("typenm"));
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
	public MovieVo selectOne(Connection conn, int moviecd){
		MovieVo vo = null;
		//PK로 where했으므로 단일행 결과물
		// * 속도 저하의 원인. 필요한 컬럼명을 나열함.
		String query = "select MOVIECD,MOVIENM,MOVIENMEN,PRDTYEAR,OPENDT,TYPENM, NATIONALT, GENREALT, DIRECTORS, COMPANYS from movie where MOVIECD=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, moviecd);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				//PK로 where했으므로 단일행 결과물로 while문 작성하지 않음
				vo = new MovieVo();
				vo.setMoviecd(rs.getString("moviecd"));
				vo.setMovienm(rs.getString("MOVIENM"));
//				vo.setMovienmen(rs.getString("movienmen"));
//				vo.setPrdtyear(rs.getInt("prdtyear"));
//				vo.setOpendt(rs.getInt("opendt"));
//				vo.setTypenm(rs.getString("typenm"));
				//TODO
//				vo.setTypenm(rs.getString("typenm"));
//				vo.setTypenm(rs.getString("typenm"));
//				vo.setTypenm(rs.getString("typenm"));
//				vo.setTypenm(rs.getString("typenm"));
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
