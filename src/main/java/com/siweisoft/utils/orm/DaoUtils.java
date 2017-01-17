package com.siweisoft.utils.orm;

import java.util.List;
import java.util.Set;

/**
 * Created by 李威 on 2016-04-20.
 */
public class DaoUtils {

    /**
     * 自动生成sql语句，仅支持and语法查询
     * @param wheres 查询条件
     * @return where sql语句
     */
    public static String spliceSqlWhere(List<String> wheres) {
        String whereSql = " where 1=1";
        if(wheres != null && wheres.size() > 0) {
            for (int i = 0; i <= wheres.size(); i++) {
                String where = wheres.get(i);
                if(!"limit".equals(where) && !"offset".equals(where)) {
                    whereSql += " and " + where + "=?";
                }
            }
        }
        return whereSql;
    }

    /**
     * 自动生成sql语句，仅支持and语法查询
     * @param wheres 查询条件
     * @return where sql语句
     */
    public static String spliceSqlWhere(String[] wheres) {
        String whereSql = " where 1=1";
        if(wheres != null && wheres.length > 0) {
            for (int i = 0; i <= wheres.length; i++) {
                String where = wheres[i];
                if(!"limit".equals(where) && !"offset".equals(where)) {
                    whereSql += " and " + where + "=?";
                }
            }
        }
        return whereSql;
    }

    /**
     * 自动生成sql语句，仅支持and语法查询
     * @param wheres 查询条件
     * @return where sql语句
     */
    public static String spliceSqlWhere(Set<String> wheres) {
        String whereSql = " where 1=1";
        if(wheres != null && wheres.size() > 0) {
            for(String str : wheres) {
                if(!"limit".equals(str) && !"offset".equals(str)) {
                    whereSql += " and " + str + "=?";
                }
            }
        }
        return whereSql;
    }

    /**
     * 自动生成插入sql语句
     * @param inserts 插入字段列名集合
     * @param tableName 表名
     * @return where sql语句
     */
    public static String spliceSqlInsert(Set<String> inserts,String tableName) {
        String insertSql = "INSERT INTO " + tableName + " (%s) VALUES (%s) ;";
        String keyString = "";
        String valueString = "";
        for(String str : inserts) {
            keyString += str + ",";
            valueString += "?,";
        }
        keyString = keyString.substring(0,keyString.length() - 1);
        valueString = valueString.substring(0,valueString.length() - 1);
        insertSql = String.format(insertSql, keyString,valueString);
        return insertSql;
    }

    /**
     * 自动生成插入sql语句
     * @param updates 插入字段列名集合
     * @param tableName 表名
     * @param wheres 修改语句的条件集合
     * @return where sql语句
     */
    @Deprecated
    public static String spliceSqlUpdate(Set<String> updates,String tableName,Set<String> wheres) {
        String updateSql = "UPDATE "+tableName+" SET %s WHERE 1=1%s";
        String whereString = "";
        String setString = "";
        for(String str : updates) {
            if("id" != str) {
                setString += str + "=?,";
            }
        }
        setString = setString.substring(0,setString.length() - 1);
        for(String str : wheres) {
            whereString += " and " + str + "=?";
        }
        updateSql = String.format(updateSql, setString,whereString);
        return updateSql;
    }
}
