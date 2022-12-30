package kh.S07.copyCGV.likes.model;

import java.sql.Connection;
import java.util.List;

import common.jdbc.JdbcTemplate;

public class LikesService {
	private LikesDao dao =  new LikesDao();
//	insert - 등록
	public int insert(LikesVo vo) {
		int result = 0;
		Connection conn = JdbcTemplate.getConnection();
		result = dao.insert(conn, vo);
		JdbcTemplate.close(conn);
		return result;
	}
//	update - 수정
	public int update(LikesVo vo, String mcode) {
		int result = 0;
		Connection conn = JdbcTemplate.getConnection();
		result = dao.update(conn, vo, mcode);
		JdbcTemplate.close(conn);
		return result;
	}
//	delete  - 삭제
	public int delete(String mcode) {
		int result = 0;
		Connection conn = JdbcTemplate.getConnection();
		result = dao.delete(conn, mcode);
		JdbcTemplate.close(conn);	
		return result;
	}
//	selectList  - 목록조회
	public List<LikesVo> selectList(){
		List<LikesVo> volist = null;
		Connection conn = JdbcTemplate.getConnection();
		volist = dao.selectList(conn);
		JdbcTemplate.close(conn);
		return volist;
	}
//	selectOne - 상세조회
	public LikesVo selectOne(String mcode){
		LikesVo vo = null;
		Connection conn = JdbcTemplate.getConnection();
		vo = dao.selectOne(conn, mcode);
		JdbcTemplate.close(conn);
		return vo;
	}

}
