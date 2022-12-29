package kh.S07.copyCGV.movie.model;

import java.sql.Date;  // 중요 
import java.util.List;

public class MovieVo {
//	desc movie;
//	MOVIECD            NOT NULL VARCHAR2(20)   
//	MOVIENM                     VARCHAR2(100) 
//	MOVIENMEN          VARCHAR2(100) 
//	MOVIENMOG          VARCHAR2(100) 
//	PRDTYEAR                    NUMBER(10)    
//	SHOWTM                      NUMBER(10)    
//	OPENDT                      NUMBER(10)    
//	TYPENM                      VARCHAR2(100) 
//	NATIONS                     VARCHAR2(100) 
//	CAST                        VARCHAR2(500) 
//	SHOWTYPES                   VARCHAR2(100) 
//	AUDITS                      VARCHAR2(100) 
//	POSTER                      VARCHAR2(500)
	private String moviecd;
	private String movienm;
	private String movienmen;
	private String movienmog;
	private int prdtyear;
	private int showtm;
	private int opendt;
	private String typenm;
	private String nations;
	private String cast;
	private String showtypes;
	private String audits;
	private String poster;
	//// FK
	private List<ActorVo> actors;
	private List<DirectorVo> directors;
	private List<String> companys;
	private List<String> genres;
	
	@Override
	public String toString() {
		return "MovieVo [moviecd=" + moviecd + ", movienm=" + movienm + ", movienmen=" + movienmen + ", movienmog="
				+ movienmog + ", prdtyear=" + prdtyear + ", showtm=" + showtm + ", opendt=" + opendt + ", typenm="
				+ typenm + ", nations=" + nations + ", cast=" + cast + ", showtypes=" + showtypes + ", audits=" + audits
				+ ", poster=" + poster + ", actors=" + actors + ", directors=" + directors + ", companys=" + companys
				+ ", genres=" + genres + "]";
	}
	public String getMoviecd() {
		return moviecd;
	}
	public void setMoviecd(String moviecd) {
		this.moviecd = moviecd;
	}
	public String getMovienm() {
		return movienm;
	}
	public void setMovienm(String movienm) {
		this.movienm = movienm;
	}
	public String getMovienmen() {
		return movienmen;
	}
	public void setMovienmen(String movienmen) {
		this.movienmen = movienmen;
	}
	public String getMovienmog() {
		return movienmog;
	}
	public void setMovienmog(String movienmog) {
		this.movienmog = movienmog;
	}
	public int getPrdtyear() {
		return prdtyear;
	}
	public void setPrdtyear(int prdtyear) {
		this.prdtyear = prdtyear;
	}
	public int getShowtm() {
		return showtm;
	}
	public void setShowtm(int showtm) {
		this.showtm = showtm;
	}
	public int getOpendt() {
		return opendt;
	}
	public void setOpendt(int opendt) {
		this.opendt = opendt;
	}
	public String getTypenm() {
		return typenm;
	}
	public void setTypenm(String typenm) {
		this.typenm = typenm;
	}
	public String getNations() {
		return nations;
	}
	public void setNations(String nations) {
		this.nations = nations;
	}
	public String getCast() {
		return cast;
	}
	public void setCast(String cast) {
		this.cast = cast;
	}
	public String getShowtypes() {
		return showtypes;
	}
	public void setShowtypes(String showtypes) {
		this.showtypes = showtypes;
	}
	public String getAudits() {
		return audits;
	}
	public void setAudits(String audits) {
		this.audits = audits;
	}
	public String getPoster() {
		return poster;
	}
	public void setPoster(String poster) {
		this.poster = poster;
	}
	public List<ActorVo> getActors() {
		return actors;
	}
	public void setActors(List<ActorVo> actors) {
		this.actors = actors;
	}
	public List<DirectorVo> getDirectors() {
		return directors;
	}
	public void setDirectors(List<DirectorVo> directors) {
		this.directors = directors;
	}
	public List<String> getCompanys() {
		return companys;
	}
	public void setCompanys(List<String> companys) {
		this.companys = companys;
	}
	public List<String> getGenres() {
		return genres;
	}
	public void setGenres(List<String> genres) {
		this.genres = genres;
	}

	
}
