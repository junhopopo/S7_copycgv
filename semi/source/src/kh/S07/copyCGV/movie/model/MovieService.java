package kh.S07.copyCGV.movie.model;

import java.sql.Connection;
import java.util.List;

import common.jdbc.JdbcTemplate;

public class MovieService {
	private MovieDao dao = new MovieDao();
//	insert - 등록 - kobis
	public int insert(List<MovieVo> volist) {
		int result = 0;
		int totalInsertCnt = 0;
		Connection conn = JdbcTemplate.getConnection();
		for(MovieVo vo : volist) {
			result = dao.insert(conn, vo);
			if(result < 1) {
				System.out.println("insert  실패: "+ vo);
			} else {
				totalInsertCnt++;
				System.out.println("insert  누적: "+ totalInsertCnt);
			}
		}
		JdbcTemplate.close(conn);
		return totalInsertCnt;
	}
	
//	insert - 등록
	public int insert(MovieVo vo) {
		int result = 0;
		Connection conn = JdbcTemplate.getConnection();
		result = dao.insert(conn, vo);
		JdbcTemplate.close(conn);
		return result;
	}
//	update - 수정
	public int update(MovieVo vo, int mcode) {
		int result = 0;
		Connection conn = JdbcTemplate.getConnection();
		result = dao.update(conn, vo, mcode);
		JdbcTemplate.close(conn);
		return result;
	}
//	delete  - 삭제
	public int delete(int mcode) {
		int result = 0;
		Connection conn = JdbcTemplate.getConnection();
		result = dao.delete(conn, mcode);
		JdbcTemplate.close(conn);	
		return result;
	}
//	selectList  - 목록조회
	public List<MovieVo> selectList(){
		List<MovieVo> volist = null;
		Connection conn = JdbcTemplate.getConnection();
		volist = dao.selectList(conn);
		JdbcTemplate.close(conn);
		return volist;
	}
//	selectOne - 상세조회
	public MovieVo selectOne(int mcode){
		MovieVo vo = null;
		Connection conn = JdbcTemplate.getConnection();
		vo = dao.selectOne(conn, mcode);
		JdbcTemplate.close(conn);
		return vo;
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}