package com.siweisoft.utils.gps;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.siweisoft.model.Distance;
import com.siweisoft.utils.http.HttpUtils;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by sw003 on 2016-9-27.
 */
public class GPSDianping {
    //google地图
    private static final String _AK = "AIzaSyCRta8_PZSZA3FErKq5Cp_kCYPDr4BrxtA";
    private static final String _AKT="AIzaSyBLNoQl-F84GutCwTrwivKVDvlQ-Qbh_04";


    /**
     * 根据经纬度获取地理位置信息
     *
     * @param lng 经度
     * @param lat 纬度
     * @return
     */
    public static JSONObject getAddress(String lng, String lat) {
        String url="https://maps.googleapis.com/maps/api/geocode/json?language=zh$s&latlng="+lat+","+lng+"&key="+_AKT;
        JSONObject jsonObject = HttpUtils.sendHttpRequest(url, "GET", null);
       // System.out.println("jsonobject==="+jsonObject);
        JSONObject addressComponent = new JSONObject();
        if (jsonObject != null) {
            JSONArray result = jsonObject.getJSONArray("results");
            addressComponent = result.getJSONObject(0);
        }
       // System.out.println(jsonObject);
        return addressComponent;
    }
    /**
     * 获取经纬度
     *
     * @param address
     * @return
     */
    public static Map getLatLngBysendHttpReq(String address,Integer id) {
        Map map = new HashMap();
        try {
            String url = "https://maps.googleapis.com/maps/api/geocode/json?address=" + address + "&key=" + _AKT;
            JSONObject jsonObject = HttpUtils.sendHttpRequest(url, "GET", null);
            System.out.println("jsonObject==="+jsonObject);
            if (jsonObject != null) {
                JSONArray result = jsonObject.getJSONArray("results");
                System.out.println("result===" + result);
                try {
                    JSONObject jsonObject1 = result.getJSONObject(0);
                    System.out.println("jsonObject1===" + jsonObject1);
                    JSONObject jsonObject2 = jsonObject1.getJSONObject("geometry");
                    System.out.println("jsonObject2===" + jsonObject2);
                    JSONObject jsonObject3 = jsonObject2.getJSONObject("location");
                    System.out.println("jsonObject3====" + jsonObject3);
                    Double lng = Double.parseDouble(jsonObject3.get("lng").toString());
                    Double lat = Double.parseDouble(jsonObject3.get("lat").toString());
                    System.out.println("lng=====" + lng + "\n" + "lat=====" + lat);
                     map.put("id",id);
                     map.put("lng", lng);
                     map.put("lat", lat);
                } catch (Exception e) {
                    System.out.println("异常信息====" + e);
                    e.printStackTrace();
                }
            }

        }catch (Exception e){
            System.out.println("发送https请求出现异常==="+e);
            e.printStackTrace();
        }
        return map;
    }
    /**
     * 生成以中心点为中心的四方形经纬度
     *
     * @param lat 纬度
     * @param lon 经度
     * @param raidus 半径（以米为单位）
     * @return
     */
    public static Distance getAround(double lat, double lon, int raidus) {
        Double latitude = lat;
        Double longitude = lon;
        Double degree = (24901 * 1609) / 360.0;
        double raidusMile = raidus;
        Double dpmLat = 1 / degree;
        Double radiusLat = dpmLat * raidusMile;
        Double minLat = latitude - radiusLat;
        Double maxLat = latitude + radiusLat;
        Double mpdLng = degree * Math.cos(latitude * (Math.PI / 180));
        Double dpmLng = 1 / mpdLng;
        Double radiusLng = dpmLng * raidusMile;
        Double minLng = longitude - radiusLng;
        Double maxLng = longitude + radiusLng;
        return new Distance( minLat, minLng, maxLat, maxLng);
    }


    //根据当前位置的经纬度和范围，计算出经纬度范围
    public static Distance getBycityName(String cityName,double lng,double lat,int raduis){
        Distance distance=new Distance();
        switch (cityName){
            case "Toronto":
                distance= GPSDianping.getAround(43.6532,-79.3832,raduis);
                break;
            case "Downtown":
                distance= GPSDianping.getAround(43.654262,-79.385975,raduis);
                break;
            case "Scarborough":
                distance= GPSDianping.getAround(43.7764258,-79.2317521,raduis);
                break;
            case "Markham":
                distance= GPSDianping.getAround(43.8561002,-79.3370188,raduis);
                break;
            case "Mississauga":
                distance= GPSDianping.getAround(43.5890452,-79.6441198,raduis);
                break;
            case "North York":
                distance= GPSDianping.getAround(43.7615377,-79.4110794,raduis);
                break;
            case "Richmond Hill":
                distance= GPSDianping.getAround(43.8828401,-79.4402808,raduis);
                break;
            case "Thornhill":
                distance= GPSDianping.getAround(43.8079675,-79.4591378,raduis);
            case "Vaughan":
                distance= GPSDianping.getAround(43.8372079,-79.508276,raduis);
                break;
            case "Etobicoke":
                distance= GPSDianping.getAround(43.6204946,-79.5131983,raduis);
                break;
            case "East York":
                distance= GPSDianping.getAround(43.6912006,-79.3416638,raduis);
                break;
            default:
                distance= GPSDianping.getAround(43.7417,-79.3181,raduis);
                break;

        }
        return  distance;
    }
}
