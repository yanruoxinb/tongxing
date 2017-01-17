package com.siweisoft.utils.cache;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/**
 * 缓存管理类，待优化
 * Created by lance on 2017-01-16.
 */
public class CacheManager {
    private static HashMap cacheMap = new HashMap();
    private static CacheManager cacheManager=null;

    //单实例构造方法
    private CacheManager(){
        super();
    }

//    /**
//     * 获取缓存实例（单例）
//     * @return
//     */
//    public static CacheManager getCacheManager() {
//        if (cacheManager == null) {
//            cacheManager = new CacheManager();
//        }
//        return cacheManager;
//    }

    /**
     * 清除制定的缓存
      * @param key 待清除缓存项的key
     */
    public synchronized static void clearOnly(String key) {
        cacheMap.remove(key);
    }

    //获取缓存信息
    public static Object getCache(String key) {
        if(key == null || "".equals(key)) {
            throw new NullPointerException("待获取缓存对象的key为null");
        }
        return cacheMap.get(key);
    }

    //设置缓存
    public static synchronized  boolean setCache(String key,Object object) {
        if(key == null || "".equals(key)) {
            throw new NullPointerException("待获取缓存对象的key为null");
        }
        if(hasCache(key)) {
            throw new CacheManagerException("同名缓存已经存在！");
        }
        cacheMap.put(key,object);
        return true;
    }

    //判断缓存key是否已经存在
    public static boolean hasCache(String key) {
        return cacheMap.containsKey(key);
    }

    //获取缓存的数目
    public static int getCacheSize() {
        return cacheMap.size();
    }

    //获取缓存对象中的所有键值名称
    public static ArrayList getCacheAllkey() {
        ArrayList a = new ArrayList();
        try {
            Iterator i = cacheMap.entrySet().iterator();
            while (i.hasNext()) {
                java.util.Map.Entry entry = (java.util.Map.Entry) i.next();
                a.add((String) entry.getKey());
            }
        } catch (Exception ex) {} finally {
            return a;
        }
    }

    //清除所有缓存
    public synchronized static void clearAll() {
        cacheMap.clear();
    }

    public static void main(String[] args) {
        CacheManager.setCache("1",1);
        System.out.println("cache:"+ CacheManager.getCache("1"));

        CacheManager.setCache("2",2);

        System.out.println(CacheManager.getCache(""));
    }
}
