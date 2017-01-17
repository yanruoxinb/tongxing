package com.siweisoft.utils.getDistance;
public class GetDistance {
    //google地图提供的方法：
 // S=2arc√Sin^2 a/2 +cos(Lat1)*cos(Lat2)*Sin^2 b/2 *6378.137
//    对上面的公式解释如下：
//            1.Lat1 Lung1 表示A点经纬度，Lat2 Lung2 表示B点经纬度；
//            2.a=Lat1 – Lat2 为两点纬度之差  b=Lung1 -Lung2 为两点经度之差；
//            3.6378.137为地球半径，单位为千米；
//    计算出来的结果单位为千米，若将半径改为米为单位则计算的结果单位为米。
//    计算精度与谷歌地图的距离精度差不多，相差范围在0.2米以下。
    private static final  double EARTH_RADIUS = 6378137;//赤道半径(单位m)



    /**

     * 转化为弧度(rad)

     * */

    private static double rad(double d)

    {

        return d * Math.PI / 180.0;

    }

    /**

     * 基于googleMap中的算法得到两经纬度之间的距离,计算精度与谷歌地图的距离精度差不多，相差范围在0.2米以下

     * @param lon1 第一点的经度

     * @param lat1 第一点的纬度

     * @param lon2 第二点的经度

     * @param lat2 第二点的纬度

     * @return 返回的距离，单位km

     * */

    public static double getDistance(double lon1,double lat1,double lon2, double lat2)

    {

        double radLat1 = rad(lat1);

        double radLat2 = rad(lat2);

        double a = radLat1 - radLat2;

        double b = rad(lon1) - rad(lon2);

        double s = 2 * Math.asin(Math.sqrt(Math.pow(Math.sin(a/2),2)+Math.cos(radLat1)*Math.cos(radLat2)*Math.pow(Math.sin(b/2),2)));

        s = s * EARTH_RADIUS;

        //s = Math.round(s * 10000) / 10000;

        return s;

    }
}
