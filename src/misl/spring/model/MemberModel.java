package misl.spring.model;

public class MemberModel {
	private int memberId;
	private String memberName;
	private String memberSurname;
	private String memberAddr;
	private String memberTel;

	public int getMemberId() {
		return memberId;
	}

	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getMemberSurname() {
		return memberSurname;
	}

	public void setMemberSurname(String memberSurname) {
		this.memberSurname = memberSurname;
	}

	public String getMemberAddr() {
		return memberAddr;
	}

	public void setMemberAddr(String memberAddr) {
		this.memberAddr = memberAddr;
	}

	public String getMemberTel() {
		return memberTel;
	}

	public void setMemberTel(String memberTel) {
		this.memberTel = memberTel;
	}

}
