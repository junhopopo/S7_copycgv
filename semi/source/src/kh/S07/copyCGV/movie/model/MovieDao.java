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
		String query = "select ";
		query+= " (select count(*) from  likes where moviecd = tmv.moviecd) likecnt,";
		query+= " MOVIECD, MOVIENM, MOVIENMEN, MOVIENMOG, PRDTYEAR, SHOWTM, OPENDT, TYPENM, NATIONS, CAST, SHOWTYPES, AUDITS, POSTER ";
		query+= " from movie tmv";
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

					// 좋아요 갯수
					vo.setLikecnt(rs.getInt("likecnt"));
					
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
	
	public String searchMovienm(Connection conn, String moviecd){
		String movienm = null;
		//PK로 where했으므로 단일행 결과물
		// * 속도 저하의 원인. 필요한 컬럼명을 나열함.
		String query = "select MOVIENM from movie where MOVIECD=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, movienm);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				movienm = rs.getString(1);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			JdbcTemplate.close(rs);
			JdbcTemplate.close(pstmt);
		}
		System.out.println(">>>>searchActor Return:"+ movienm);
		return movienm;
	}
	
	//////////////////////////////////////////////
	// 배우 찾기 searchActor : return 찾은 actorcd
	public String searchActor(Connection conn, String actornm){
		String actorcd = null;
		//PK로 where했으므로 단일행 결과물
		// * 속도 저하의 원인. 필요한 컬럼명을 나열함.
		String query = "select ACTORCD from ACTOR where ACTORNM=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, actornm);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				actorcd = rs.getString(1);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			JdbcTemplate.close(rs);
			JdbcTemplate.close(pstmt);
		}
		System.out.println(">>>>searchActor Return:"+ actorcd);
		return actorcd;
	}
	// 감독 찾기 searchDirector : return 찾은 directorcd
	public String searchDirector(Connection conn, String directornm){
		String directorcd = null;
		//PK로 where했으므로 단일행 결과물
		// * 속도 저하의 원인. 필요한 컬럼명을 나열함.
		String query = "select directorcd from director where directornm=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, directornm);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				directorcd = rs.getString(1);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			JdbcTemplate.close(rs);
			JdbcTemplate.close(pstmt);
		}
		System.out.println(">>>>searchDirector Return:"+ directorcd);
		return directorcd;
	}
	// 제작사 찾기 searchCompany : return 찾은 갯수 0/1
	public int searchCompany(Connection conn, String companynm){
		int resultCnt = 0;
		//PK로 where했으므로 단일행 결과물
		// * 속도 저하의 원인. 필요한 컬럼명을 나열함.
		String query = "select count(companynm) from company where companynm=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, companynm);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				resultCnt = rs.getInt(1);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			JdbcTemplate.close(rs);
			JdbcTemplate.close(pstmt);
		}
		System.out.println(">>>>searchCompany Return:"+ resultCnt);
		return resultCnt;
	}
	// 장르 찾기 searchGenre : return 찾은 갯수 0/1
	public int searchGenre(Connection conn, String genrenm){
		int resultCnt = 0;
		//PK로 where했으므로 단일행 결과물
		// * 속도 저하의 원인. 필요한 컬럼명을 나열함.
		String query = "select count(genrenm) from genre where genrenm=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, genrenm);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				resultCnt = rs.getInt(1);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			JdbcTemplate.close(rs);
			JdbcTemplate.close(pstmt);
		}
		System.out.println(">>>>searchGenre Return:"+ resultCnt);
		return resultCnt;
	}
	// insertActor : return 성공시 1 / 실패시 0
	public int insertActor(Connection conn, ActorVo vo) {
		int result = 0;
		String sql = "INSERT ";
		sql += " INTO ACTOR (ACTORCD, ACTORNM, ACTORNMEN) VALUES ((select nvl(max(to_number(ACTORCD)),0)+1 from ACTOR),'"+vo.getActornm()+"','"+vo.getActornmen()+"')";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("#########"+vo);
			e.printStackTrace();
		} finally {
			JdbcTemplate.close(pstmt);
		}
		System.out.println(">>>>insertActor Return:"+ result);
		return result;
	}
	// insertDirector : return 성공시 1 / 실패시 0
	public int insertDirector(Connection conn, DirectorVo vo) {
		int result = 0;
		String sql = "INSERT ";
		sql += " INTO Director (DirectorCD, DirectorNM, DirectorNMEN) VALUES ((select nvl(max(to_number(Directorcd)),0)+1 from Director),'"+vo.getDirectornm()+"','"+vo.getDirectornmen()+"')";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemplate.close(pstmt);
		}
		System.out.println(">>>>insertDirector Return:"+ result);
		return result;
	}
	// insertCompany : return 성공시 1 / 실패시 0
	public int insertCompany(Connection conn, String companynm) {
		int result = 0;
		String sql = "INSERT ";
		sql += " INTO company (companynm) VALUES ('"+companynm+"')";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemplate.close(pstmt);
		}
		System.out.println(">>>>insertCompany Return:"+ result);
		return result;
	}
	// insertGenre : return 성공시 1 / 실패시 0
	public int insertGenre(Connection conn, String genrenm) {
		int result = 0;
		String sql = "INSERT ";
		sql += " INTO genre (genrenm) VALUES ('"+genrenm+"')";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemplate.close(pstmt);
		}
		System.out.println(">>>>insertGenre Return:"+ result);
		return result;
	}
////////////////////////
	// insertMVActor : return 성공시 1 / 실패시 0
	public int insertMVActor(Connection conn, String moviecd, String actorcd) {
		int result = 0;
		String sql = "INSERT ";
		sql += " INTO MVACTOR (moviecd, actorcd) VALUES (?,?)";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, moviecd);
			pstmt.setString(2, actorcd);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemplate.close(pstmt);
		}
		System.out.println(">>>>insertMVActor Return:"+ result);
		return result;
	}
	// insertMVDirector : return 성공시 1 / 실패시 0
	public int insertMVDirector(Connection conn, String moviecd, String directorcd) {
		int result = 0;
		String sql = "INSERT ";
		sql += " INTO MVDirector (moviecd, directorcd) VALUES (?,?)";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, moviecd);
			pstmt.setString(2, directorcd);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemplate.close(pstmt);
		}
		System.out.println(">>>>insertMVDirector Return:"+ result);
		return result;
	}
	// insertMVCompany : return 성공시 1 / 실패시 0
	public int insertMVCompany(Connection conn, String moviecd, String companynm) {
		int result = 0;
		String sql = "INSERT ";
		sql += " INTO MVcompany (moviecd, companynm) VALUES (?,?)";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, moviecd);
			pstmt.setString(2, companynm);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// 같은 회사가 2번 나오는 경우가 있어 오류가 자주 발생함.
			e.printStackTrace();
		} finally {
			JdbcTemplate.close(pstmt);
		}
		System.out.println(">>>>insertMVCompany Return:"+ result);
		return result;
	}
	// insertMVGenre : return 성공시 1 / 실패시 0
	public int insertMVGenre(Connection conn, String moviecd, String genrenm) {
		int result = 0;
		String sql = "INSERT ";
		sql += " INTO MVgenre (moviecd, genrenm) VALUES (?,?)";
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, moviecd);
			pstmt.setString(2, genrenm);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcTemplate.close(pstmt);
		}
		System.out.println(">>>>insertMVGenre Return:"+ result);
		return result;
	}
	
	
// moviecd로 부터 감독이름 알아오기
//	selectList  - 목록조회
	public List<DirectorVo> selectDirectorList(Connection conn, String moviecd){
		List<DirectorVo> volist = null;
		String query = "select DirectorCD, DirectorNM, DirectorNMEN ";
		query		+="    from director join (select * from  mvdirector where moviecd = ?) tmv using (directorcd) ";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, moviecd);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				volist = new ArrayList<DirectorVo>();
				do{
					DirectorVo vo = new DirectorVo();
					vo.setDirectorcd(rs.getString("DirectorCD"));
					vo.setDirectornm(rs.getString("directornm"));
					vo.setDirectornmen(rs.getString("directornmen"));
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
	
	public List<ActorVo> selectActorList(Connection conn, String moviecd){
		List<ActorVo> volist = null;
		String query = "select ActorCD, ActorNM, ActorNMEN ";
		query		+="    from actor join (select * from  mvActor where moviecd = ?) tmv using (Actorcd) ";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, moviecd);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				volist = new ArrayList<ActorVo>();
				do{
					ActorVo vo = new ActorVo();
					vo.setActorcd(rs.getString("ActorCD"));
					vo.setActornm(rs.getString("ActorNM"));
					vo.setActornmen(rs.getString("ActorNMEN"));
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
	public List<MovieVo> selectSearchList(Connection conn, String directorcd, String actorcd){
		List<MovieVo> volist = null;
		String query = "select MOVIECD, MOVIENM, MOVIENMEN, MOVIENMOG, PRDTYEAR, SHOWTM, OPENDT, TYPENM, NATIONS, CAST, SHOWTYPES, AUDITS, POSTER ";
		if(directorcd != null) {
			query	+= " from movie where moviecd in (select moviecd from mvdirector where directorcd=?) ";
		} else if(actorcd != null) {
			query	+= " from movie where moviecd in (select moviecd from mvactor where actorcd=?) ";
		} else {
			query	+= " from movie";
		}
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(query);
			if(directorcd != null) {
				pstmt.setString(1, directorcd );
			} else if(actorcd != null) {
				pstmt.setString(1, actorcd );
			}
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

}
