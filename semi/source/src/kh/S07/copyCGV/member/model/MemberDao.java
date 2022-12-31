package kh.S07.copyCGV.member.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import common.jdbc.JdbcTemplate;

public class MemberDao {
//	insert
//	update
//	delete
//	selectList
//	selectOne
	// 최소 5개 
//	insert - 등록
	public int insert(Connection conn, MemberVo vo) {
		int result = 0;
		return result;
	}
//	update - 수정
	public int update(Connection conn, MemberVo vo, int mcode) {
		int result = 0;
		return result;
	}
//	delete  - 삭제
	public int delete(Connection conn, int mcode) {
		int result = 0;
		return result;
	}
//	selectList  - 목록조회
	public List<MemberVo> selectList(Connection conn){
		List<MemberVo> volist = null;

		return volist;
	}
//	selectOne - 상세조회
	public MemberVo selectOne(Connection conn, int mcode){
		MemberVo vo = null;
		return vo;
	}
//	selectOne - login - 상세조회
	public MemberVo login(Connection conn, String memail, String mpwd){
		MemberVo vo = null;
		//PK로 where했으므로 단일행 결과물
		// * 속도 저하의 원인. 필요한 컬럼명을 나열함.
		String query = "select mcode,memail,mname,mnick,mtype,mauthcode from member where memail=? and mpwd=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, memail);
			pstmt.setString(2, mpwd);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				//PK로 where했으므로 단일행 결과물로 while문 작성하지 않음
				vo = new MemberVo();
				vo.setMcode(rs.getString("mcode"));
				vo.setMemail(rs.getString("memail"));
				vo.setMname(rs.getString("mname"));
				vo.setMnick(rs.getString("mnick"));
				vo.setMtype(rs.getInt("mtype"));
				vo.setMauthcode(rs.getString("mauthcode"));
//				vo.setMid(rs.getString(1));
//				vo.setMname(rs.getString(2));
//				vo.setMauthcode(rs.getString(3));
//				vo.setMtype(rs.getInt(5));
//				vo.setBusno(rs.getString(4));
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
