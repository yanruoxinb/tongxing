package com.siweisoft.utils.gps;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.siweisoft.utils.http.HttpUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

/**
 * @author lance
 * @date 2016-9-12
 */
public class GPSUtil {
    public static final String _KEY = "44e606a9c5a628e9a8bd42226249f84c";
    //百度地图
    private static final String _AK = "CU6mx6YoKm60lOmYwqXCUdBaTypeOe9G";
    private static final Logger logger = LoggerFactory.getLogger(GPSUtil.class);
    /**
     * 根据经纬度获得当前城市
     *
     * @param lng 经度
     * @param lat 纬度
     * @return
     */
    @SuppressWarnings("unused")
    public static String geocodeAddress(String lng, String lat) {
        String address = null;
        BufferedReader in = null;
        try {
            String url = "http://restapi.amap.com/v3/geocode/regeo?location=" + lng + "," + lat + "&batch=false&output=json&key=" + _KEY;
            URL tirc = new URL(url);
            in = new BufferedReader(new InputStreamReader(tirc.openStream(), "UTF-8"));
            String res;
            StringBuilder sb = new StringBuilder("");
            while ((res = in.readLine()) != null) {
                sb.append(res.trim());
            }
            String str = sb.toString();
            JSONObject jsonObject = JSONObject.parseObject(str);
            JSONObject addressObject = JSON.parseObject(JSON.parseObject(jsonObject.get("regeocode").toString()).get("addressComponent").toString());
            
			String city = addressObject.get("city").toString();
            String province = jsonObject.getJSONObject("regeocode").getString("formatted_address");
            address = province;
        } catch (Exception e) {
            e.printStackTrace();
            address = null;
        } finally {
            try {
                in.close();
            } catch (IOException e) {
                logger.error("获取地理位置信息出错了");
                e.printStackTrace();
            }
        }
        return address;
    }


    /**
     * 根据经纬度获取地理位置信息
     *
     * @param lng 经度
     * @param lat 纬度
     * @return
     */
    public static JSONObject getAddressComponent(String lng, String lat) {
        String url = "http://api.map.baidu.com/geocoder/v2/?location=" + lat + "," + lng + "&output=json&ak=" + _AK;
        JSONObject jsonObject = HttpUtils.sendHttpRequest(url, "GET", null);
        JSONObject addressComponent = new JSONObject();
        if (jsonObject != null) {
            JSONObject result = jsonObject.getJSONObject("result");
             addressComponent = result.getJSONObject("addressComponent");
        }
        return addressComponent;
    }


    /**
     * 根据地址获取经纬度
     *
     * @param address
     * @return
     */
    public static Map getLngLat(String address) {
        Map<String, String> map = new HashMap();
        BufferedReader in = null;
        String url = "http://api.map.baidu.com/geocoder/v2/?address=" + address + "&output=json&ak=" + _AK;
        try {
            URL tirc = new URL(url);
            in = new BufferedReader(new InputStreamReader(tirc.openStream(), "UTF-8"));
            String res;
            StringBuilder sb = new StringBuilder("");
            while ((res = in.readLine()) != null) {
                sb.append(res.trim());
            }
            String str = sb.toString();
            JSONObject jsonObject = JSONObject.parseObject(str);
//            System.out.println(jsonObject);
            JSONObject location = JSONObject.parseObject(JSONObject.parseObject(jsonObject.get("result").toString()).get("location").toString());
            String lng = location.get("lng").toString();
            String lat = location.get("lat").toString();
            map.put("lng", lng);
            map.put("lat", lat);

            return map;
        } catch (Exception e) {

            e.printStackTrace();
            return null;
        }

    }

    /**
     * 获取经纬度
     *
     * @param address
     * @return
     */
    public static Map getLatLngBysendHttpReq(String address) {
        JSONObject jsonObject = HttpUtils.sendHttpRequest("http://api.map.baidu.com/geocoder/v2/", "GET", "address=" + address + "&output=json&ak=" + _AK);
        Map map = new HashMap();
        if (jsonObject != null) {
            JSONObject location = JSONObject.parseObject(JSONObject.parseObject(jsonObject.get("result").toString()).get("location").toString());
            map.put("lng", location.get("lng").toString());
            map.put("lat", location.get("lat").toString());
        }
        return map;
    }

    /**
     * 获取两点间的距离
     *
     * @param startLong
     * @param startLat
     * @param endLong
     * @param endLat
     * @return KM
     */
    public static double getDistance(double startLong, double startLat,
                                     double endLong, double endLat) {
        double EARTH_RADIUS = 6378.137;
        double DEF_PI180 = 0.01745329252;
        double s = 0;
        double radLatStart = startLat * DEF_PI180;
        double radLatEnd = endLat * DEF_PI180;
        double a = radLatStart - radLatEnd;
        double b = startLong * DEF_PI180 - endLong * DEF_PI180;
        s = 2 * Math.asin(Math.sqrt(Math.pow(Math.sin(a / 2), 2) + Math.cos(radLatStart) * Math.cos(radLatEnd) * Math.pow(Math.sin(b / 2), 2)));
        s = s * EARTH_RADIUS;
        return s;
    }

    public static void main(String[] args) {
//        Map map = getLngLat("广东省东莞市东莞市大朗镇美景大道新世纪长盛广场B区商铺首层1H08A");
//        System.out.println(map.get("lng") + "," + map.get("lat"));
//       System.out.println(geocodeAddress("31.210197","121.593079"));
//        System.out.println(getDistance(116.41318,39.940387,121.485887,31.226684))
//       System.out.println(getDistance(121.602226,31.285707,121.600214,31.285553));
//        System.out.println(getAddressComponent("121.481224", "31.236500"));
        //System.out.println(getAddressComponent("113.93476321926","22.937307626566"));
        System.out.println(getLatLngBysendHttpReq("3250 Midland Ave, Unit 126, Scarborough, ON M1V 4W9"));
    }
}
