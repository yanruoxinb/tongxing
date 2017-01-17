package com.siweisoft.utils.bean;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by 李威 on 2016-04-21.
 */
public class BeanConvertUtils {

    private final Logger log = LoggerFactory.getLogger(BeanConvertUtils.class);
    /**
     * Object的字段转换成map
     * @param obj 待转换的obj
     * @return 转换后的map
     */
    public static Map beanConvertMap(Object obj) {
        Map map = new HashMap();
        Class c;
        try {
            c = Class.forName(obj.getClass().getName());
            Field[] fs  = c.getDeclaredFields();
            for (int i = 0; i < fs.length; i++) {
                Field f = fs[i];
                f.setAccessible(true); //设置些属性是可以访问的
                String fieldName = fs[i].getName();
                if(!"serialVersionUID".equals(fieldName)) { //过滤掉不需要的值
                    Object value = f.get(obj);//得到此属性的值
                    try {
                        if (value != null) {
                            map.put(fieldName, value);
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return map;
    }
}
