package kh.S07.copyCGV.movie.model;

public class ActorVo {
//	desc actor;
//	ACTORCD   NOT NULL VARCHAR2(20)    
//	ACTORNM            VARCHAR2(100) 
//	ACTORNMEN          VARCHAR2(100) 

	private String actorcd;
	private String actornm;
	private String actornmen;
	@Override
	public String toString() {
		return "ActorVo [actorcd=" + actorcd + ", actornm=" + actornm + ", actornmen=" + actornmen + "]";
	}
	public String getActorcd() {
		return actorcd;
	}
	public void setActorcd(String actorcd) {
		this.actorcd = actorcd;
	}
	public String getActornm() {
		return actornm;
	}
	public void setActornm(String actornm) {
		this.actornm = actornm;
	}
	public String getActornmen() {
		return actornmen;
	}
	public void setActornmen(String actornmen) {
		this.actornmen = actornmen;
	}



}
