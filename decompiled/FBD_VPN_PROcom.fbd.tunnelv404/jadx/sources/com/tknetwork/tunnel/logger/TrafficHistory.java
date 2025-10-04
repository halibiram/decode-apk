package com.tknetwork.tunnel.logger;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Vector;

/* loaded from: classes3.dex */
public class TrafficHistory implements Parcelable {
    public static final Parcelable.Creator<TrafficHistory> CREATOR = new Parcelable.Creator<TrafficHistory>() { // from class: com.tknetwork.tunnel.logger.TrafficHistory.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TrafficHistory createFromParcel(Parcel parcel) {
            return new TrafficHistory(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TrafficHistory[] newArray(int i) {
            return new TrafficHistory[i];
        }
    };
    public static final long PERIODS_TO_KEEP = 5;
    public static final int TIME_PERIOD_HOURS = 3600000;
    public static final int TIME_PERIOD_MINTUES = 60000;
    private TrafficDatapoint lastMinuteUsedForHours;
    private TrafficDatapoint lastSecondUsedForMinute;
    private final LinkedList<TrafficDatapoint> trafficHistoryHours;
    private final LinkedList<TrafficDatapoint> trafficHistoryMinutes;
    private final LinkedList<TrafficDatapoint> trafficHistorySeconds;

    /* loaded from: classes3.dex */
    public static class LastDiff {
        private final TrafficDatapoint lasttdp;
        private final TrafficDatapoint tdp;

        public /* synthetic */ LastDiff(TrafficDatapoint trafficDatapoint, TrafficDatapoint trafficDatapoint2, int i) {
            this(trafficDatapoint, trafficDatapoint2);
        }

        public long getDiffIn() {
            return Math.max(0L, this.tdp.in - this.lasttdp.in);
        }

        public long getDiffOut() {
            return Math.max(0L, this.tdp.out - this.lasttdp.out);
        }

        public long getIn() {
            return this.tdp.in;
        }

        public long getOut() {
            return this.tdp.out;
        }

        private LastDiff(TrafficDatapoint trafficDatapoint, TrafficDatapoint trafficDatapoint2) {
            this.lasttdp = trafficDatapoint;
            this.tdp = trafficDatapoint2;
        }
    }

    /* loaded from: classes3.dex */
    public static class TrafficDatapoint implements Parcelable {
        public static final Parcelable.Creator<TrafficDatapoint> CREATOR = new Parcelable.Creator<TrafficDatapoint>() { // from class: com.tknetwork.tunnel.logger.TrafficHistory.TrafficDatapoint.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public TrafficDatapoint createFromParcel(Parcel parcel) {
                return new TrafficDatapoint(parcel, 0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public TrafficDatapoint[] newArray(int i) {
                return new TrafficDatapoint[i];
            }
        };
        public final long in;
        public final long out;
        public final long timestamp;

        public /* synthetic */ TrafficDatapoint(long j, long j2, long j3, int i) {
            this(j, j2, j3);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeLong(this.timestamp);
            parcel.writeLong(this.in);
            parcel.writeLong(this.out);
        }

        public /* synthetic */ TrafficDatapoint(Parcel parcel, int i) {
            this(parcel);
        }

        private TrafficDatapoint(long j, long j2, long j3) {
            this.in = j;
            this.out = j2;
            this.timestamp = j3;
        }

        private TrafficDatapoint(Parcel parcel) {
            this.timestamp = parcel.readLong();
            this.in = parcel.readLong();
            this.out = parcel.readLong();
        }
    }

    public TrafficHistory() {
        this.trafficHistorySeconds = new LinkedList<>();
        this.trafficHistoryMinutes = new LinkedList<>();
        this.trafficHistoryHours = new LinkedList<>();
    }

    private void addDataPoint(TrafficDatapoint trafficDatapoint) {
        this.trafficHistorySeconds.add(trafficDatapoint);
        if (this.lastSecondUsedForMinute == null) {
            this.lastSecondUsedForMinute = new TrafficDatapoint(0L, 0L, 0L, 0);
            this.lastMinuteUsedForHours = new TrafficDatapoint(0L, 0L, 0L, 0);
        }
        removeAndAverage(trafficDatapoint, true);
    }

    public static LinkedList<TrafficDatapoint> getDummyList() {
        LinkedList<TrafficDatapoint> linkedList = new LinkedList<>();
        long j = 0;
        linkedList.add(new TrafficDatapoint(j, 0L, System.currentTimeMillis(), 0));
        return linkedList;
    }

    private void removeAndAverage(TrafficDatapoint trafficDatapoint, boolean z) {
        LinkedList<TrafficDatapoint> linkedList;
        LinkedList<TrafficDatapoint> linkedList2;
        TrafficDatapoint trafficDatapoint2;
        long j;
        HashSet hashSet = new HashSet();
        new Vector();
        if (z) {
            linkedList = this.trafficHistorySeconds;
            linkedList2 = this.trafficHistoryMinutes;
            trafficDatapoint2 = this.lastSecondUsedForMinute;
            j = 60000;
        } else {
            linkedList = this.trafficHistoryMinutes;
            linkedList2 = this.trafficHistoryHours;
            trafficDatapoint2 = this.lastMinuteUsedForHours;
            j = 3600000;
        }
        if (trafficDatapoint.timestamp / j > trafficDatapoint2.timestamp / j) {
            linkedList2.add(trafficDatapoint);
            if (z) {
                this.lastSecondUsedForMinute = trafficDatapoint;
                removeAndAverage(trafficDatapoint, false);
            } else {
                this.lastMinuteUsedForHours = trafficDatapoint;
            }
            Iterator<TrafficDatapoint> it = linkedList.iterator();
            while (it.hasNext()) {
                TrafficDatapoint next = it.next();
                if ((trafficDatapoint.timestamp - next.timestamp) / j >= 5) {
                    hashSet.add(next);
                }
            }
            linkedList.removeAll(hashSet);
        }
    }

    public LastDiff add(long j, long j2) {
        TrafficDatapoint trafficDatapoint = new TrafficDatapoint(j, j2, System.currentTimeMillis(), 0);
        LastDiff lastDiff = getLastDiff(trafficDatapoint);
        addDataPoint(trafficDatapoint);
        return lastDiff;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public LinkedList<TrafficDatapoint> getHours() {
        return this.trafficHistoryHours;
    }

    public LastDiff getLastDiff(TrafficDatapoint trafficDatapoint) {
        TrafficDatapoint last;
        if (this.trafficHistorySeconds.size() == 0) {
            long j = 0;
            last = new TrafficDatapoint(j, 0L, System.currentTimeMillis(), 0);
        } else {
            last = this.trafficHistorySeconds.getLast();
        }
        if (trafficDatapoint == null) {
            if (this.trafficHistorySeconds.size() < 2) {
                trafficDatapoint = last;
            } else {
                this.trafficHistorySeconds.descendingIterator().next();
                trafficDatapoint = this.trafficHistorySeconds.descendingIterator().next();
            }
        }
        return new LastDiff(last, trafficDatapoint, 0);
    }

    public LinkedList<TrafficDatapoint> getMinutes() {
        return this.trafficHistoryMinutes;
    }

    public LinkedList<TrafficDatapoint> getSeconds() {
        return this.trafficHistorySeconds;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeList(this.trafficHistorySeconds);
        parcel.writeList(this.trafficHistoryMinutes);
        parcel.writeList(this.trafficHistoryHours);
        parcel.writeParcelable(this.lastSecondUsedForMinute, 0);
        parcel.writeParcelable(this.lastMinuteUsedForHours, 0);
    }

    public TrafficHistory(Parcel parcel) {
        LinkedList<TrafficDatapoint> linkedList = new LinkedList<>();
        this.trafficHistorySeconds = linkedList;
        LinkedList<TrafficDatapoint> linkedList2 = new LinkedList<>();
        this.trafficHistoryMinutes = linkedList2;
        LinkedList<TrafficDatapoint> linkedList3 = new LinkedList<>();
        this.trafficHistoryHours = linkedList3;
        parcel.readList(linkedList, getClass().getClassLoader());
        parcel.readList(linkedList2, getClass().getClassLoader());
        parcel.readList(linkedList3, getClass().getClassLoader());
        this.lastSecondUsedForMinute = (TrafficDatapoint) parcel.readParcelable(getClass().getClassLoader());
        this.lastMinuteUsedForHours = (TrafficDatapoint) parcel.readParcelable(getClass().getClassLoader());
    }
}
