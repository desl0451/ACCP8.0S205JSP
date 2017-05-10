package cn.news.chapter03.dao.impl;

import cn.news.chapter03.dao.NewsUserDao;
import cn.news.chapter03.entity.NewsUser;
import cn.news.chapter03.util.BaseDao;

public class NewsUserDaoImpl extends BaseDao implements NewsUserDao {

	@Override
	public int insert(NewsUser newsUser) {
		int result = 0;
		try {
			String sql = "INSERT INTO `NEWS_USERS`(`uname`,`upwd`)values(?,?)";
			result = this.executeUpdate(sql, newsUser.getUname(), newsUser.getUpwd());
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			this.closeAll(conn, null, null);
		}
		return result;
	}

}
