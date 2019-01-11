package net.sungjuk;

import java.sql.*;
import net.utility.*;

public class SungjukDAO {
	// Data Access Object	데이터베이스 관련 작업

	private DBOpen dbopen = null;
	private DBClose dbclose = null;

	public SungjukDAO() {
		dbopen = new DBOpen();
		dbclose = new DBClose();
	}

	// 비즈니스 로직 작성

	public void insert(String uname, int kor, int eng, int mat, int aver, String addr) {
		;
	}

	public int insert(SungjukDTO dto) {
		Connection con = null;
		PreparedStatement pstmt = null;
		StringBuilder sql = null;
		int res = 0;

		try {
			con=dbopen.getConnection();
			sql=new StringBuilder();

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
			
		}
		catch (Exception e) {
			System.out.println("*Error* 행 추가를 실패했습니다. \n" + e);
		}
		finally {
			dbclose.close(con, pstmt);
		}
		
		return res;

	}

}
