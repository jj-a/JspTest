package net.sungjuk;

import java.sql.*;
import java.util.*;

import net.utility.*;

public class SungjukDAO {
	// Data Access Object	데이터베이스 관련 작업

	private DBOpen dbopen = null;
	private DBClose dbclose = null;

	public SungjukDAO() {
		dbopen = new DBOpen();
		dbclose = new DBClose();
	}

	//////////  비즈니스 로직 작성  //////////

	public void insert(String uname, int kor, int eng, int mat, int aver, String addr) {
		;
	} // insert() end

	public int insert(SungjukDTO dto) {
		Connection con = null;
		PreparedStatement pstmt = null;
		StringBuilder sql = null;
		int res = 0;

		try {
			con = dbopen.getConnection();
			sql = new StringBuilder();

			sql.append(" INSERT INTO sungjuk(sno, uname, kor, eng, mat, aver, addr, wdate) ");
			sql.append(" VALUES( (SELECT NVL(MAX(sno),0)+1 FROM sungjuk), ?, ?, ?, ?, ?, ?, sysdate) ");

			pstmt = con.prepareStatement(sql.toString());

			pstmt.setString(1, dto.getUname());
			pstmt.setInt(2, dto.getKor());
			pstmt.setInt(3, dto.getEng());
			pstmt.setInt(4, dto.getMat());
			pstmt.setInt(5, dto.getAver());
			pstmt.setString(6, dto.getAddr());

			res = pstmt.executeUpdate();

		} catch (Exception e) {
			System.out.println("*Error* 행 추가를 실패했습니다. \n" + e);
		} finally {
			dbclose.close(con, pstmt);
		}

		return res;

	} // insert() end

	public ArrayList<SungjukDTO> list() {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		StringBuilder sql = null;
		ArrayList<SungjukDTO> list = null;

		try {
			con = dbopen.getConnection();
			sql = new StringBuilder();
			sql.append(" SELECT sno, uname, kor, eng, mat, aver, addr, wdate");
			sql.append(" FROM sungjuk");
			sql.append(" ORDER BY sno DESC");

			pstmt = con.prepareStatement(sql.toString());
			rs = pstmt.executeQuery();
			if (rs.next()) {
				list = new ArrayList<>();
				do {

					SungjukDTO dto = new SungjukDTO(); // 한줄 저장
					dto.setSno(rs.getInt("sno"));
					dto.setUname(rs.getString("uname"));
					dto.setKor(rs.getInt("kor"));
					dto.setEng(rs.getInt("eng"));
					dto.setMat(rs.getInt("mat"));
					dto.setAver(rs.getInt("aver"));
					dto.setAddr(rs.getString("addr"));
					dto.setWdate(rs.getString("wdate"));
					list.add(dto);

				} while (rs.next());
			}

		} catch (Exception e) {
			System.out.println("*Error* 자료 조회를 실패했습니다. \n" + e);
		} finally {
			dbclose.close(con, pstmt, rs);
		}

		return list;

	} // list() end

	public SungjukDTO read(int sno) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		StringBuilder sql = null;
		SungjukDTO dto = null;

		try {
			con = dbopen.getConnection();
			sql = new StringBuilder();
			sql.append(" SELECT sno, uname, kor, eng, mat, aver, addr, wdate");
			sql.append(" FROM sungjuk");
			sql.append(" WHERE sno=?");

			pstmt = con.prepareStatement(sql.toString());
			pstmt.setInt(1, sno);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				dto = new SungjukDTO();
				dto.setSno(rs.getInt("sno"));
				dto.setUname(rs.getString("uname"));
				dto.setKor(rs.getInt("kor"));
				dto.setEng(rs.getInt("eng"));
				dto.setMat(rs.getInt("mat"));
				dto.setAver(rs.getInt("aver"));
				dto.setAddr(rs.getString("addr"));
				dto.setWdate(rs.getString("wdate"));

			}

		} catch (Exception e) {
			System.out.println("*Error* 상세 보기를 실패했습니다. \n" + e);
		} finally {
			dbclose.close(con, pstmt, rs);
		}

		return dto;

	} // read() end

}
