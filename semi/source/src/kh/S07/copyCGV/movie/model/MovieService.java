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
			// MOVIE테이블에 insert
			result = dao.insert(conn, vo);
			if(result < 1) {
				System.out.println("insert  실패: "+ vo);
				continue; // 실패시 다음 영화. 실패시 actor, director, company 등은 insert 하지 않음.
			} else {
				totalInsertCnt++;
				System.out.println("insert  누적: "+ totalInsertCnt);
			}
			if(vo.getActors() != null)
			for(ActorVo e : vo.getActors()) {
				// actor 테이블에 배우가 있다면 해당 actorcd 번호를 읽어온다.
				String actorcd = dao.searchActor(conn, e.getActornm());
				// actorcd 번호가 없다면 
				if(actorcd == null) {
					// actor 테이블에 insert하고
					result = dao.insertActor(conn, e);
					// 다시 배우의 actorcd 번호를 읽어온다.
					actorcd = dao.searchActor(conn, e.getActornm());
				}
				// actorcd 번호가 있다면
				if(actorcd != null) {
					result = dao.insertMVActor(conn, vo.getMoviecd(), actorcd); 
				}
			}
			if(vo.getDirectors() != null)
			for(DirectorVo e : vo.getDirectors()) {
				// directory 테이블에 감독가 있다면 해당 directorycd 번호를 읽어온다.
				String directorycd = dao.searchDirector(conn, e.getDirectornm());
				// directory 번호가 없다면 
				if(directorycd == null) {
					// directory 테이블에 insert하고
					result = dao.insertDirector(conn, e);
					// 다시 감독의 directorycd 번호를 읽어온다.
					directorycd = dao.searchDirector(conn, e.getDirectornm());
				}
				// directorycd 번호가 있다면
				if(directorycd != null) {
					result = dao.insertMVDirector(conn, vo.getMoviecd(), directorycd); 
				}
			}
			if(vo.getCompanys() != null)
			for(String companynm : vo.getCompanys()) {
				// company 테이블에 제작사 있다면
				result = dao.searchCompany(conn, companynm);
				// companynm 가 없다면 
				if(result == 0) {
					// company 테이블에 insert하고
					result = dao.insertCompany(conn, companynm);
				}
				// companynm 추가 됐다면
				if(result != 0) {
					result = dao.insertMVCompany(conn, vo.getMoviecd(), companynm);
				}
			}
			if(vo.getGenres() != null)
			for(String genrenm : vo.getGenres()) {
				// genre 테이블에 장르가 있다면
				result = dao.searchGenre(conn, genrenm);
				// genrenm 가 없다면 
				if(result == 0) {
					// genre 테이블에 insert하고
					result = dao.insertGenre(conn, genrenm);
				}
				// genrenm 추가 됐다면
				if(result != 0) {
					result = dao.insertMVGenre(conn, vo.getMoviecd(), genrenm);
				}
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
	public MovieVo selectOne(String moviecd){
		MovieVo vo = null;
		Connection conn = JdbcTemplate.getConnection();
		vo = dao.selectOne(conn, moviecd);
		JdbcTemplate.close(conn);
		return vo;
	}
	
	public List<DirectorVo> selectDirectorList(String moviecd){
		 List<DirectorVo> volist = null;
		Connection conn = JdbcTemplate.getConnection();
		volist = dao.selectDirectorList(conn, moviecd);
		JdbcTemplate.close(conn);
		return volist;
	}
	
	public List<ActorVo> selectActorList(String moviecd){
		List<ActorVo> volist = null;
		Connection conn = JdbcTemplate.getConnection();
		volist = dao.selectActorList(conn, moviecd);
		JdbcTemplate.close(conn);
		return volist;
	}
	
	public MovieVo searchMovienm(String moviecd){
		MovieVo vo = null;
		Connection conn = JdbcTemplate.getConnection();
		vo = dao.selectOne(conn, moviecd);
		JdbcTemplate.close(conn);
		return vo;
	}
//	selectList  - 목록조회
	public List<MovieVo> selectSearchList(String directorcd, String actorcd){
		List<MovieVo> volist = null;
		Connection conn = JdbcTemplate.getConnection();
		volist = dao.selectSearchList(conn,directorcd, actorcd );
		JdbcTemplate.close(conn);
		return volist;
	}
}
