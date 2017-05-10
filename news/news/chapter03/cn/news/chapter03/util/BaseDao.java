package cn.news.chapter03.util;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;

public class BaseDao {

	// ���������ļ��е����ݿ����ò���
	private static String DRIVER = "";
	private static String URL = "";
	private static String USERNAME = "";
	private static String PASSWORD = "";
	static {
		Properties params = new Properties();
		String configFile = "database.properties";// �����ļ�·��
		// ���������ļ�����������
		InputStream is = BaseDao.class.getClassLoader().getResourceAsStream(configFile);

		try {
			// ���������ж�ȡ�����б�
			params.load(is);
		} catch (IOException e) {
			e.printStackTrace();
		}
		// ����ָ���Ļ�ȡ��Ӧ��ֵ
		DRIVER = params.getProperty("driver");
		URL = params.getProperty("url");
		USERNAME = params.getProperty("user");
		PASSWORD = params.getProperty("password");
	}

	protected Connection conn;

	/**
	 * �������
	 * 
	 * @return
	 */
	public Connection getConn() {
		try {
			Class.forName(DRIVER);
			conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}

	public void closeAll(Connection conn, Statement stmt, ResultSet rs) {
		try {
			if (conn != null) {
				conn.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			if (stmt != null) {
				stmt.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			if (rs != null) {
				rs.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * ����޸�ɾ��
	 * 
	 * @param sql
	 * @param param
	 * @return
	 */
	protected int executeUpdate(String sql, Object... param) {
		int num = 0;
		conn = this.getConn();
		PreparedStatement pstmt = null;

		try {
			pstmt = conn.prepareStatement(sql);
			if (param != null) {
				for (int i = 0; i < param.length; i++) {
					pstmt.setObject(i + 1, param[i]);
				}
			}
			num = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			this.closeAll(conn, pstmt, null);
		}
		return num;
	}

	/**
	 * ��ѯ����
	 * 
	 * @param sql
	 * @param param
	 * @return
	 */
	protected ResultSet executeQuery(String sql, Object... param) {
		conn = getConn();
		PreparedStatement pstmt;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			for (int i = 0; i < param.length; i++) {
				pstmt.setObject(i + 1, param[i]);
			}
			rs = pstmt.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rs;
	}
}
