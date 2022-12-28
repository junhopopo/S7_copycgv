package kh.S07.copyCGV.member.model;

import java.sql.Connection;
import java.util.List;

import common.jdbc.JdbcTemplate;

public class MemberService {
	private MemberDao dao = new MemberDao();
//	insert - 등록
	public int insert(MemberVo vo) {
		int result = 0;
		Connection conn = JdbcTemplate.getConnection();
		result = dao.insert(conn, vo);
		JdbcTemplate.close(conn);
		return result;
	}
//	update - 수정
	public int update(MemberVo vo, int mcode) {
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
	public List<MemberVo> selectList(){
		List<MemberVo> volist = null;
		Connection conn = JdbcTemplate.getConnection();
		volist = dao.selectList(conn);
		JdbcTemplate.close(conn);
		return volist;
	}
//	selectOne - 상세조회
	public MemberVo selectOne(int mcode){
		MemberVo vo = null;
		Connection conn = JdbcTemplate.getConnection();
		vo = dao.selectOne(conn, mcode);
		JdbcTemplate.close(conn);
		return vo;
	}
// selectOne-Login 상세조회
	public MemberVo login(String memail, String mpwd){
		MemberVo vo = null;
		Connection conn = JdbcTemplate.getConnection();
		vo = dao.login(conn, memail, mpwd);
		JdbcTemplate.close(conn);
		return vo;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
