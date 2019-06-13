package misl.spring.model;

public class CowModel {
	private int cowId;
	private String cowName;
	private String zyanId;
	private String cowBirth;
	private String cowSex;
	private String cowImg;
	private MemberModel member;

	public String getCowImg() {
		return cowImg;
	}

	public void setCowImg(String cowImg) {
		this.cowImg = cowImg;
	}

	public int getCowId() {
		return cowId;
	}

	public void setCowId(int cowId) {
		this.cowId = cowId;
	}

	public String getCowName() {
		return cowName;
	}

	public void setCowName(String cowName) {
		this.cowName = cowName;
	}

	public String getZyanId() {
		return zyanId;
	}

	public void setZyanId(String zyanId) {
		this.zyanId = zyanId;
	}

	public String getCowBirth() {
		return cowBirth;
	}

	public void setCowBirth(String cowBirth) {
		this.cowBirth = cowBirth;
	}

	public String getCowSex() {
		return cowSex;
	}

	public void setCowSex(String cowSex) {
		this.cowSex = cowSex;
	}

	public MemberModel getMember() {
		return member;
	}

	public void setMember(MemberModel member) {
		this.member = member;
	}

}
