package kh.S07.copyCGV.likes.model;

public class LikesVo {
//	MOVIECD	VARCHAR2(20 BYTE)
//	MCODE	NUMBER(10,0)
	
	private String moviecd;
	private String mcode;
	@Override
	public String toString() {
		return "LikesVo [moviecd=" + moviecd + ", mcode=" + mcode + "]";
	}
	public String getMoviecd() {
		return moviecd;
	}
	public void setMoviecd(String moviecd) {
		this.moviecd = moviecd;
	}
	public String getMcode() {
		return mcode;
	}
	public void setMcode(String mcode) {
		this.mcode = mcode;
	}


}
