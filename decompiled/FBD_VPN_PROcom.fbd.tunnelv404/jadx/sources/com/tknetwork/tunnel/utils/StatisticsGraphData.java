package com.tknetwork.tunnel.utils;

import android.annotation.TargetApi;
import android.net.TrafficStats;
import android.os.SystemClock;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public class StatisticsGraphData {
    private static StatisticsGraphData statisticData;
    private final DataTransferStats m_dataTransferStats = new DataTransferStats();
    private boolean m_displayDataTransferStats = false;

    /* loaded from: classes3.dex */
    public static class DataTransferStats {
        public static final long FAST_BUCKET_PERIOD_MILLISECONDS = 1000;
        public static final int MAX_BUCKETS = 288;
        public static final long SLOW_BUCKET_PERIOD_MILLISECONDS = 300000;
        private long mLastReceived;
        private long mLastSent;
        private long mReceived;
        private long mSent;
        private long m_connectedTime;
        private ArrayList<Bucket> m_fastBuckets;
        private long m_fastBucketsLastStartTime;
        private boolean m_isConnected;
        private ArrayList<Bucket> m_slowBuckets;
        private long m_slowBucketsLastStartTime;
        private long m_totalBytesSent = 0;
        private long m_totalBytesReceived = 0;

        /* loaded from: classes3.dex */
        public class Bucket {
            public long m_bytesReceived;
            public long m_bytesSent;

            public /* synthetic */ Bucket(DataTransferStats dataTransferStats, int i) {
                this();
            }

            private Bucket() {
                this.m_bytesSent = 0L;
                this.m_bytesReceived = 0L;
            }
        }

        public DataTransferStats() {
            stop();
        }

        private void addReceivedToBuckets(long j) {
            this.m_slowBuckets.get(r0.size() - 1).m_bytesReceived += j;
            this.m_fastBuckets.get(r0.size() - 1).m_bytesReceived += j;
        }

        private void addSentToBuckets(long j) {
            this.m_slowBuckets.get(r0.size() - 1).m_bytesSent += j;
            this.m_fastBuckets.get(r0.size() - 1).m_bytesSent += j;
        }

        private long bucketStartTime(long j, long j2) {
            return (j / j2) * j2;
        }

        private ArrayList<Long> getReceivedSeries(ArrayList<Bucket> arrayList) {
            ArrayList<Long> arrayList2 = new ArrayList<>();
            for (int i = 0; i < arrayList.size(); i++) {
                arrayList2.add(Long.valueOf(arrayList.get(i).m_bytesReceived));
            }
            return arrayList2;
        }

        private ArrayList<Long> getSentSeries(ArrayList<Bucket> arrayList) {
            ArrayList<Long> arrayList2 = new ArrayList<>();
            for (int i = 0; i < arrayList.size(); i++) {
                arrayList2.add(Long.valueOf(arrayList.get(i).m_bytesSent));
            }
            return arrayList2;
        }

        private void manageBuckets() {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long j = elapsedRealtime - this.m_slowBucketsLastStartTime;
            if (j >= 300000) {
                shiftBuckets(j, 300000L, this.m_slowBuckets);
                this.m_slowBucketsLastStartTime = bucketStartTime(elapsedRealtime, 300000L);
            }
            long j2 = elapsedRealtime - this.m_fastBucketsLastStartTime;
            if (j2 >= 1000) {
                shiftBuckets(j2, 1000L, this.m_fastBuckets);
                this.m_fastBucketsLastStartTime = bucketStartTime(elapsedRealtime, 1000L);
            }
        }

        private ArrayList<Bucket> newBuckets() {
            ArrayList<Bucket> arrayList = new ArrayList<>();
            int i = 0;
            for (int i2 = 0; i2 < 288; i2++) {
                arrayList.add(new Bucket(this, i));
            }
            return arrayList;
        }

        private void resetBytesTransferred() {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.m_slowBucketsLastStartTime = bucketStartTime(elapsedRealtime, 300000L);
            this.m_slowBuckets = newBuckets();
            this.m_fastBucketsLastStartTime = bucketStartTime(elapsedRealtime, 1000L);
            this.m_fastBuckets = newBuckets();
        }

        private void shiftBuckets(long j, long j2, ArrayList<Bucket> arrayList) {
            int i = 0;
            for (int i2 = 0; i2 < (j / j2) + 1; i2++) {
                arrayList.add(arrayList.size(), new Bucket(this, i));
                if (arrayList.size() >= 288) {
                    arrayList.remove(0);
                }
            }
        }

        public synchronized void addBytesReceived(long j) {
            this.m_totalBytesReceived += j;
            manageBuckets();
            addReceivedToBuckets(j);
        }

        public synchronized void addBytesSent(long j) {
            this.m_totalBytesSent += j;
            manageBuckets();
            addSentToBuckets(j);
        }

        public String byteCountNoDisplaySize(long j, boolean z) {
            int i;
            ObfuscatedString obfuscatedString;
            ObfuscatedString obfuscatedString2;
            if (z) {
                i = 1000;
            } else {
                i = 1024;
            }
            DecimalFormat decimalFormat = new DecimalFormat(new ObfuscatedString(new long[]{3683348348444100422L, -4690174890838019729L}).toString());
            if (j < i) {
                return decimalFormat.format(j / 1024.0d);
            }
            double d = j;
            double d2 = i;
            int log = (int) (Math.log(d) / Math.log(d2));
            long[] jArr = {-235396721515613373L, -7648164475063303263L};
            if (z) {
                // fill-array-data instruction
                jArr[0] = 8935543307538769114L;
                jArr[1] = 8349910581070607356L;
                obfuscatedString = new ObfuscatedString(jArr);
            } else {
                obfuscatedString = new ObfuscatedString(jArr);
            }
            obfuscatedString.toString().charAt(log - 1);
            if (z) {
                obfuscatedString2 = new ObfuscatedString(new long[]{-5274420250721637975L});
            } else {
                obfuscatedString2 = new ObfuscatedString(new long[]{5549258825543188983L, 8310073038232463513L});
            }
            obfuscatedString2.toString();
            return String.format(new ObfuscatedString(new long[]{-8747771705924771522L, 2035201611339281749L}).toString(), Double.valueOf(d / Math.pow(d2, log)));
        }

        public String byteCountToDisplaySize(long j, boolean z) {
            int i;
            ObfuscatedString obfuscatedString;
            ObfuscatedString obfuscatedString2;
            if (z) {
                i = 1000;
            } else {
                i = 1024;
            }
            if (j < i) {
                StringBuilder sb = new StringBuilder();
                sb.append(j);
                return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-3220303840448973811L, 8349128427128455339L}), sb);
            }
            double d = j;
            double d2 = i;
            int log = (int) (Math.log(d) / Math.log(d2));
            StringBuilder sb2 = new StringBuilder();
            long[] jArr = {6447290359068385112L, -2471813301260412792L};
            if (z) {
                // fill-array-data instruction
                jArr[0] = 7928408256504061239L;
                jArr[1] = 2683625007739568398L;
                obfuscatedString = new ObfuscatedString(jArr);
            } else {
                obfuscatedString = new ObfuscatedString(jArr);
            }
            sb2.append(obfuscatedString.toString().charAt(log - 1));
            if (z) {
                obfuscatedString2 = new ObfuscatedString(new long[]{-5703185468814231084L});
            } else {
                obfuscatedString2 = new ObfuscatedString(new long[]{-5148803802351576824L, -790578200219178256L});
            }
            sb2.append(obfuscatedString2.toString());
            return String.format(new ObfuscatedString(new long[]{-5127407545399969211L, -5890595917621769560L}).toString(), Double.valueOf(d / Math.pow(d2, log)), sb2.toString());
        }

        @TargetApi(9)
        public String elapsedTimeToDisplay(long j) {
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            long hours = timeUnit.toHours(j);
            TimeUnit timeUnit2 = TimeUnit.HOURS;
            long minutes = timeUnit.toMinutes(j - timeUnit2.toMillis(hours));
            return String.format(new ObfuscatedString(new long[]{3741451144852251777L, -7024567272521508686L, -745309547407321995L, 6653206560668053933L}).toString(), Long.valueOf(hours), Long.valueOf(minutes), Long.valueOf(timeUnit.toSeconds((j - timeUnit2.toMillis(hours)) - TimeUnit.MINUTES.toMillis(minutes))));
        }

        public synchronized long getBytesReceived() {
            long j;
            long totalRxBytes = TrafficStats.getTotalRxBytes();
            j = totalRxBytes - this.mLastReceived;
            this.mReceived = j;
            this.mLastReceived = totalRxBytes;
            return j;
        }

        public synchronized long getBytesSent() {
            long j;
            long totalTxBytes = TrafficStats.getTotalTxBytes();
            j = totalTxBytes - this.mLastSent;
            this.mSent = j;
            this.mLastSent = totalTxBytes;
            return j;
        }

        public synchronized long getElapsedTime() {
            return SystemClock.elapsedRealtime() - this.m_connectedTime;
        }

        public synchronized ArrayList<Long> getFastReceivedSeries() {
            manageBuckets();
            return getReceivedSeries(this.m_fastBuckets);
        }

        public synchronized ArrayList<Long> getFastSentSeries() {
            manageBuckets();
            return getSentSeries(this.m_fastBuckets);
        }

        public synchronized ArrayList<Long> getSlowReceivedSeries() {
            manageBuckets();
            return getReceivedSeries(this.m_slowBuckets);
        }

        public synchronized ArrayList<Long> getSlowSentSeries() {
            manageBuckets();
            return getSentSeries(this.m_slowBuckets);
        }

        public synchronized long getTotalBytesReceived() {
            return this.m_totalBytesReceived;
        }

        public synchronized long getTotalBytesSent() {
            return this.m_totalBytesSent;
        }

        public synchronized boolean isConnected() {
            return this.m_isConnected;
        }

        public long render_byteCount(Long l, boolean z) {
            int i;
            if (z) {
                i = 1000;
            } else {
                i = 1024;
            }
            if (l.longValue() < i) {
                return l.longValue();
            }
            return (long) (l.longValue() / Math.pow(i, (int) (Math.log(l.longValue()) / Math.log(r2))));
        }

        public synchronized void startConnected() {
            this.m_isConnected = true;
            this.m_connectedTime = SystemClock.elapsedRealtime();
        }

        public synchronized void startSession() {
            resetBytesTransferred();
        }

        public synchronized void stop() {
            this.m_isConnected = false;
            this.m_connectedTime = 0L;
            resetBytesTransferred();
        }
    }

    public static synchronized StatisticsGraphData getStatisticData() {
        StatisticsGraphData statisticsGraphData;
        synchronized (StatisticsGraphData.class) {
            try {
                if (statisticData == null) {
                    statisticData = new StatisticsGraphData();
                }
                statisticsGraphData = statisticData;
            } catch (Throwable th) {
                throw th;
            }
        }
        return statisticsGraphData;
    }

    public synchronized DataTransferStats getDataTransferStats() {
        return this.m_dataTransferStats;
    }

    public synchronized boolean getDisplayDataTransferStats() {
        return this.m_displayDataTransferStats;
    }

    public synchronized void setDisplayDataTransferStats(boolean z) {
        this.m_displayDataTransferStats = z;
    }
}
