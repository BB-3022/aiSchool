package com.model.member;

public class MemberDTO {
	private String mb_id;
	private String mb_pw;
	private String mb_name;
	private String mb_tel;
	private String mb_birth;
	
	public MemberDTO(String mb_id, String mb_pw, String mb_name, String mb_tel, String mb_birth) {
		this.mb_id = mb_id;
		this.mb_pw = mb_pw;
		this.mb_name = mb_name;
		this.mb_tel = mb_tel;
		this.mb_birth = mb_birth;
	}

	public MemberDTO(String mb_id, String mb_pw) {
		super();
		this.mb_id = mb_id;
		this.mb_pw = mb_pw;
	}

	public String getMb_id() {
		return mb_id;
	}

	public String getMb_pw() {
		return mb_pw;
	}

	public String getMb_name() {
		return mb_name;
	}

	public String getMb_tel() {
		return mb_tel;
	}

	public String getMb_birth() {
		return mb_birth;
	}

	
}


	
