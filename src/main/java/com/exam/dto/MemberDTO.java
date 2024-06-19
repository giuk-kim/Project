package com.exam.dto;

import javax.validation.constraints.Size;

import org.apache.ibatis.type.Alias;

@Alias("MemberDTO")
public class MemberDTO {
	
	String userid;

	@Size(min = 4, message = "4글자 이상 입력해주세요.")
	String passwd;
    
	String username;
    String gender;   
    String height;
    String weight;
    String post;
    String addr1;
    String addr2;
    String phone1;
    String phone2;
    String phone3;
	
    public MemberDTO() {}

	public MemberDTO(String userid, @Size(min = 4, message = "4글자 이상 입력해주세요.") String passwd, String username,
			String gender, String height, String weight, String post, String addr1, String addr2, String phone1,
			String phone2, String phone3) {
		this.userid = userid;
		this.passwd = passwd;
		this.username = username;
		this.gender = gender;
		this.height = height;
		this.weight = weight;
		this.post = post;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.phone1 = phone1;
		this.phone2 = phone2;
		this.phone3 = phone3;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getHeight() {
		return height;
	}

	public void setHeight(String height) {
		this.height = height;
	}

	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	public String getPost() {
		return post;
	}

	public void setPost(String post) {
		this.post = post;
	}

	public String getAddr1() {
		return addr1;
	}

	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}

	public String getAddr2() {
		return addr2;
	}

	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}

	public String getPhone1() {
		return phone1;
	}

	public void setPhone1(String phone1) {
		this.phone1 = phone1;
	}

	public String getPhone2() {
		return phone2;
	}

	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}

	public String getPhone3() {
		return phone3;
	}

	public void setPhone3(String phone3) {
		this.phone3 = phone3;
	}

	@Override
	public String toString() {
		return "MemberDTO [userid=" + userid + ", passwd=" + passwd + ", username=" + username + ", gender=" + gender
				+ ", height=" + height + ", weight=" + weight + ", post=" + post + ", addr1=" + addr1 + ", addr2="
				+ addr2 + ", phone1=" + phone1 + ", phone2=" + phone2 + ", phone3=" + phone3 + "]";
	}
    
    


	


	
	

}
