package com.siweisoft.utils.jdbc;

import org.apache.commons.dbcp.BasicDataSource;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by 李威 on 2016-08-12.
 */
public class JDBCHelper {
    public static HashMap<String, JdbcTemplate> templateMap
            = new HashMap<String, JdbcTemplate>();

    public static JdbcTemplate createMysqlTemplate(String templateName,
                                                   String url, String username, String password,
                                                   int initialSize, int maxActive) {

        BasicDataSource dataSource = new BasicDataSource();
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        dataSource.setUrl(url);
        dataSource.setUsername(username);
        dataSource.setPassword(password);
        dataSource.setInitialSize(initialSize);
        dataSource.setMaxActive(maxActive);
        JdbcTemplate template = new JdbcTemplate(dataSource);
        templateMap.put(templateName, template);
        return template;
    }

    public static JdbcTemplate getJdbcTemplate(String templateName){
        return templateMap.get(templateName);
    }

    public static void main(String[] args) {
        JdbcTemplate jdbcTemplate = JDBCHelper.createMysqlTemplate("mysql1",
                "jdbc:mysql://192.168.1.44:3306/lwr-comment?useUnicode=true&characterEncoding=UTF-8&zeroDateTimeBehavior=convertToNull",
                "dev-lwr-root", "Aa111111", 5, 30);
        List<Map<String,Object>> results = jdbcTemplate.queryForList("select store_id,store_picurl from store_pic group by store_id");
        long start = System.currentTimeMillis();
        for(int i = 0;i < results.size();i++) {
            Map<String,Object> store = results.get(i);
            jdbcTemplate.update("update store set store_mainpic = ? where id = ?",store.get("store_picurl"),store.get("store_id"));
        }
        long end = System.currentTimeMillis();
        System.out.println("耗时：" + (end - start));
    }
}
