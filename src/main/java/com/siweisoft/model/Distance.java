package com.siweisoft.model;

/**
 * Created by sw003 on 2016-10-9.
 */
public class Distance {
    private double minLat;//最小纬度
    private double minLng;//最小经度
    private double maxLat;//最大纬度
    private double maxLng;//最大经度

    public Distance() {
    }

    public Distance(double minLat, double minLng, double maxLat, double maxLng) {
        this.minLat = minLat;
        this.minLng = minLng;
        this.maxLat = maxLat;
        this.maxLng = maxLng;
    }

    public double getMinLat() {
        return minLat;
    }

    public void setMinLat(double minLat) {
        this.minLat = minLat;
    }

    public double getMinLng() {
        return minLng;
    }

    public void setMinLng(double minLng) {
        this.minLng = minLng;
    }

    public double getMaxLat() {
        return maxLat;
    }

    public void setMaxLat(double maxLat) {
        this.maxLat = maxLat;
    }

    public double getMaxLng() {
        return maxLng;
    }

    public void setMaxLng(double maxLng) {
        this.maxLng = maxLng;
    }
}
