package kh.S07.copyCGV.member.model;

import java.sql.Date;  // 중요 

public class MemberVo {
//	mcode	NUMBER(10,0)
//	memail	VARCHAR2(100 BYTE)
//	mpwd	VARCHAR2(100 BYTE)
//	mname	VARCHAR2(100 BYTE)
//	mnick	VARCHAR2(100 BYTE)
//	mbirth	VARCHAR2(100 BYTE)
//	mgender	NUMBER(10,0)
//	mcontact	NUMBER(10,0)
//	maddr	VARCHAR2(100 BYTE)
//	MAUTHCODE	VARCHAR2(20 BYTE)
//	MTYPE	NUMBER(1,0)
	
	private String mcode;
	private String memail;
	private String mpwd;
	private String mname;
	private String mnick;
	private String mbirth;
	private int mgender;
	private int mcontact;
	private String maddr;
	private String mauthcode;
	private int mtype;
	@Override
	public String toString() {
		return "MemberVo [mcode=" + mcode + ", memail=" + memail + ", mpwd=" + mpwd + ", mname=" + mname + ", mnick="
				+ mnick + ", mbirth=" + mbirth + ", mgender=" + mgender + ", mcontact=" + mcontact + ", maddr=" + maddr
				+ ", mauthcode=" + mauthcode + ", mtype=" + mtype + "]";
	}
	public String getMcode() {
		return mcode;
	}
	public void setMcode(String mcode) {
		this.mcode = mcode;
	}
	public String getMemail() {
		return memail;
	}
	public void setMemail(String memail) {
		this.memail = memail;
	}
	public String getMpwd() {
		return mpwd;
	}
	public void setMpwd(String mpwd) {
		this.mpwd = mpwd;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMnick() {
		return mnick;
	}
	public void setMnick(String mnick) {
		this.mnick = mnick;
	}
	public String getMbirth() {
		return mbirth;
	}
	public void setMbirth(String mbirth) {
		this.mbirth = mbirth;
	}
	public int getMgender() {
		return mgender;
	}
	public void setMgender(int mgender) {
		this.mgender = mgender;
	}
	public int getMcontact() {
		return mcontact;
	}
	public void setMcontact(int mcontact) {
		this.mcontact = mcontact;
	}
	public String getMaddr() {
		return maddr;
	}
	public void setMaddr(String maddr) {
		this.maddr = maddr;
	}
	public String getMauthcode() {
		return mauthcode;
	}
	public void setMauthcode(String mauthcode) {
		this.mauthcode = mauthcode;
	}
	public int getMtype() {
		return mtype;
	}
	public void setMtype(int mtype) {
		this.mtype = mtype;
	}
	
	
	
}
