package kh.S07.copyCGV.movie.model;

import java.sql.Date;  // 중요 

public class MovieVo {
//	MOVIECD   NOT NULL NUMBER(10)    
//	MOVIENM            VARCHAR2(100) 
//	MOVIENMEN          VARCHAR2(100) 
//	PRDTYEAR           NUMBER(10)    
//	OPENDT             NUMBER(10)    
//	TYPENM             VARCHAR2(100) 
//	NATIONALT          VARCHAR2(100) 
//	GENREALT           VARCHAR2(100) 
//	DIRECTORS          VARCHAR2(100) 
//	COMPANYS           VARCHAR2(100) 
	private String moviecd;
	private String movienm;
	private String movienmen;
	private int prdtyear;
	private int opendt;
	private String typenm;
	private String nationalt;
	private String genrealt;
	private String directors;
	private String companys;
	@Override
	public String toString() {
		return "MovieVo [moviecd=" + moviecd + ", movienm=" + movienm + ", movienmen=" + movienmen + ", prdtyear="
				+ prdtyear + ", opendt=" + opendt + ", typenm=" + typenm + ", nationalt=" + nationalt + ", genrealt="
				+ genrealt + ", directors=" + directors + ", companys=" + companys + "]";
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
	public int getPrdtyear() {
		return prdtyear;
	}
	public void setPrdtyear(int prdtyear) {
		this.prdtyear = prdtyear;
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
	public String getNationalt() {
		return nationalt;
	}
	public void setNationalt(String nationalt) {
		this.nationalt = nationalt;
	}
	public String getGenrealt() {
		return genrealt;
	}
	public void setGenrealt(String genrealt) {
		this.genrealt = genrealt;
	}
	public String getDirectors() {
		return directors;
	}
	public void setDirectors(String directors) {
		this.directors = directors;
	}
	public String getCompanys() {
		return companys;
	}
	public void setCompanys(String companys) {
		this.companys = companys;
	}
	
	
}
