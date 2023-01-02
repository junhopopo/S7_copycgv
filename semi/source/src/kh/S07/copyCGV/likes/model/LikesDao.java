package kh.S07.copyCGV.likes.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.jdbc.JdbcTemplate;
import kh.S07.copyCGV.movie.model.MovieVo;

public class LikesDao {
//	insert - 등록
	public int insert(Connection conn, LikesVo vo) {
		int result = 0;
		String sql ="INSERT INTO likes VALUES(?, ?)";
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getMoviecd());
			pstmt.setString(2, vo.getMcode());

			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JdbcTemplate.close(pstmt);
		}
		return result;
	}
	
//	update - 수정
	public int update(Connection conn, LikesVo vo, String mcode) {
		int result = 0;
		return result;
	}
//	delete  - 삭제
	public int delete(Connection conn, LikesVo vo) {
		int result = 0;
		String sql = "delete from likes where moviecd = ? and mcode = ?";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getMoviecd());
			pstmt.setString(2, vo.getMcode());

			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JdbcTemplate.close(pstmt);
		}
		return result;
	}
//	selectList  - 목록조회
	public List<LikesVo> selectList(Connection conn){
		List<LikesVo> volist = null;
		String sql = "select * from likes";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				volist = new ArrayList<LikesVo>();
				do {
					LikesVo vo = new LikesVo();

					vo = new LikesVo();			
					vo.setMoviecd(rs.getString("moviecd"));
					vo.setMcode(rs.getString("mcode"));
					volist.add(vo);
				} while(rs.next());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemplate.close(rs);
			JdbcTemplate.close(pstmt);
		}

		return volist;
	}
//	selectOne - 상세조회
	public LikesVo selectOne(Connection conn, String mcode){
		LikesVo vo = null;
		String sql = "select * from likes where  mcode = ?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mcode);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				vo = new LikesVo();			
				vo.setMoviecd(rs.getString("moviecd"));
				vo.setMcode(rs.getString("mcode"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemplate.close(rs);
			JdbcTemplate.close(pstmt);
		}

		return vo;
	}

	public int isLike(Connection conn, String moviecd, String mcode){
		int result = 0;
		String sql = "select count(*) from LIKES where moviecd=? and mcode=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, moviecd);
			pstmt.setString(2, mcode);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				result = rs.getInt(1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemplate.close(rs);
			JdbcTemplate.close(pstmt);
		}
		System.out.println(">>>>isLike Return:"+ result);
		return result;
	}
	
	public List<MovieVo> selectMyLikesList(Connection conn, String mcode){
		List<MovieVo> volist = null;
		String sql = "select * from movie join (select moviecd from  likes where mcode = ?) tmv using (moviecd)";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mcode);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				volist = new ArrayList<MovieVo>();
				do {
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
				} while(rs.next());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemplate.close(rs);
			JdbcTemplate.close(pstmt);
		}

		return volist;
	}
}
