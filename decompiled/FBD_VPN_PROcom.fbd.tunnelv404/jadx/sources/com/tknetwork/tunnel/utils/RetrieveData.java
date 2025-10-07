package com.tknetwork.tunnel.utils;

import android.net.TrafficStats;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class RetrieveData {
    static long totalDownload;
    static long totalUpload;

    public static List<Long> findData() {
        ArrayList arrayList = new ArrayList();
        if (totalDownload == 0) {
            totalDownload = TrafficStats.getTotalRxBytes();
        }
        if (totalUpload == 0) {
            totalUpload = TrafficStats.getTotalTxBytes();
        }
        long totalRxBytes = TrafficStats.getTotalRxBytes();
        long j = totalRxBytes - totalDownload;
        long totalTxBytes = TrafficStats.getTotalTxBytes();
        long j2 = totalTxBytes - totalUpload;
        totalDownload = totalRxBytes;
        totalUpload = totalTxBytes;
        arrayList.add(Long.valueOf(j));
        arrayList.add(Long.valueOf(j2));
        return arrayList;
    }
}
