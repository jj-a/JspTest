package net.sungjuk;

public class SungjukDTO extends Object {
	// Data Transfer Object	데이터 전송 객체
	// Value Object
	// SungjukVO, SungjukDataBean
	// 테이블의 칼럼과 1:1 매칭되는 Field를 private 접근 제어로 선언
	
	private int sno;
	private String uname, addr, wdate;
	private int kor, eng, mat, aver;
	
	// default constructor 기본 생성자
	public SungjukDTO() {
		;
	}

	public SungjukDTO(int sno, String uname,  int kor, int eng, int mat, String addr, String wdate) {
		this.sno = sno;
		this.uname = uname;
		this.addr = addr;
		this.wdate = wdate;
		this.kor = kor;
		this.eng = eng;
		this.mat = mat;
		this.aver = (kor+eng+mat)/3;
	}

	public int getSno() {
		return sno;
	}

	public void setSno(int sno) {
		this.sno = sno;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getWdate() {
		return wdate;
	}

	public void setWdate(String wdate) {
		this.wdate = wdate;
	}

	public int getKor() {
		return kor;
	}

	public void setKor(int kor) {
		this.kor = kor;
	}

	public int getEng() {
		return eng;
	}

	public void setEng(int eng) {
		this.eng = eng;
	}

	public int getMat() {
		return mat;
	}

	public void setMat(int mat) {
		this.mat = mat;
	}

	public int getAver() {
		return aver;
	}

	public void setAver(int aver) {
		this.aver = aver;
	}
	
	
	
	

}
