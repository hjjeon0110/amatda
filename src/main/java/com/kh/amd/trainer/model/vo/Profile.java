package com.kh.amd.trainer.model.vo;

public class Profile implements java.io.Serializable {
	private int profileno; 			// 프로필번호
	private String tno;				// 트레이너번호
	private String lineProfile; 	// 한줄프로필
	private String proTitle; 		// 제목
	private String intro; 			// 트레이너소개
	private String media; 			// 미디어
	private String certificate; 	// 자격증
	private String keyword; 		// 키워드

	public Profile() {}

	public Profile(int profileno, String tno, String lineProfile, String proTitle, String intro, String media,
			String certificate, String keyword) {
		super();
		this.profileno = profileno;
		this.tno = tno;
		this.lineProfile = lineProfile;
		this.proTitle = proTitle;
		this.intro = intro;
		this.media = media;
		this.certificate = certificate;
		this.keyword = keyword;
	}

	public int getProfileno() {
		return profileno;
	}

	public String getTno() {
		return tno;
	}

	public String getLineProfile() {
		return lineProfile;
	}

	public String getProTitle() {
		return proTitle;
	}

	public String getIntro() {
		return intro;
	}

	public String getMedia() {
		return media;
	}

	public String getCertificate() {
		return certificate;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setProfileno(int profileno) {
		this.profileno = profileno;
	}

	public void setTno(String tno) {
		this.tno = tno;
	}

	public void setLineProfile(String lineProfile) {
		this.lineProfile = lineProfile;
	}

	public void setProTitle(String proTitle) {
		this.proTitle = proTitle;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public void setMedia(String media) {
		this.media = media;
	}

	public void setCertificate(String certificate) {
		this.certificate = certificate;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	@Override
	public String toString() {
		return "Profile [profileno=" + profileno + ", tno=" + tno + ", lineProfile=" + lineProfile + ", proTitle="
				+ proTitle + ", intro=" + intro + ", media=" + media + ", certificate=" + certificate + ", keyword="
				+ keyword + "]";
	}

	
	

}
