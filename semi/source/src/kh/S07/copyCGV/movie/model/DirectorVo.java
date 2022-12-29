package kh.S07.copyCGV.movie.model;

public class DirectorVo {
//	desc director;
//	DIRECTORCD   NOT NULL VARCHAR2(20)    
//	DIRECTORNM            VARCHAR2(100) 
//	DIRECTORNMEN          VARCHAR2(100)
	private String directorcd;
	private String directornm;
	private String directornmen;
	@Override
	public String toString() {
		return "DirectorVo [directorcd=" + directorcd + ", directornm=" + directornm + ", directornmen=" + directornmen
				+ "]";
	}
	public String getDirectorcd() {
		return directorcd;
	}
	public void setDirectorcd(String directorcd) {
		this.directorcd = directorcd;
	}
	public String getDirectornm() {
		return directornm;
	}
	public void setDirectornm(String directornm) {
		this.directornm = directornm;
	}
	public String getDirectornmen() {
		return directornmen;
	}
	public void setDirectornmen(String directornmen) {
		this.directornmen = directornmen;
	}


}
