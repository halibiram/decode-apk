package com.google.zxing.client.result;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes3.dex */
public final class GeoParsedResult extends ParsedResult {
    private final double altitude;
    private final double latitude;
    private final double longitude;
    private final String query;

    public GeoParsedResult(double d, double d2, double d3, String str) {
        super(ParsedResultType.GEO);
        this.latitude = d;
        this.longitude = d2;
        this.altitude = d3;
        this.query = str;
    }

    public double getAltitude() {
        return this.altitude;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        StringBuilder sb = new StringBuilder(20);
        sb.append(this.latitude);
        sb.append(new ObfuscatedString(new long[]{3408160469869367801L, 2379962120596292433L}).toString());
        sb.append(this.longitude);
        if (this.altitude > 0.0d) {
            sb.append(new ObfuscatedString(new long[]{5566142085913364867L, -5748427336591657697L}).toString());
            sb.append(this.altitude);
            sb.append('m');
        }
        if (this.query != null) {
            sb.append(new ObfuscatedString(new long[]{-5167497216834640167L, 7852332183450456277L}).toString());
            sb.append(this.query);
            sb.append(')');
        }
        return sb.toString();
    }

    public String getGeoURI() {
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{3715850046389486649L, 4156692666088250879L}).toString());
        sb.append(this.latitude);
        sb.append(',');
        sb.append(this.longitude);
        if (this.altitude > 0.0d) {
            sb.append(',');
            sb.append(this.altitude);
        }
        if (this.query != null) {
            sb.append('?');
            sb.append(this.query);
        }
        return sb.toString();
    }

    public double getLatitude() {
        return this.latitude;
    }

    public double getLongitude() {
        return this.longitude;
    }

    public String getQuery() {
        return this.query;
    }
}
