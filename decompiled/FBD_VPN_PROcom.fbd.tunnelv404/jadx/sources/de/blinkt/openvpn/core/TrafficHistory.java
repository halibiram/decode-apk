package de.blinkt.openvpn.core;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.C0636x205c8375;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Vector;

/* loaded from: classes3.dex */
public class TrafficHistory implements Parcelable {
    public static final Parcelable.Creator<TrafficHistory> CREATOR = new C0636x205c8375(2);
    public static final long PERIODS_TO_KEEP = 5;
    public static final int TIME_PERIOD_HOURS = 3600000;
    public static final int TIME_PERIOD_MINTUES = 60000;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final LinkedList f1036xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final LinkedList f1037x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final LinkedList f1038x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public TrafficDatapoint f1039x75d576dc;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public TrafficDatapoint f1040x9738a56c;

    /* loaded from: classes3.dex */
    public static class LastDiff {

        /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
        public final TrafficDatapoint f1041xfbe0c504;

        /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
        public final TrafficDatapoint f1042x3271d0aa;

        public LastDiff(TrafficDatapoint trafficDatapoint, TrafficDatapoint trafficDatapoint2) {
            this.f1042x3271d0aa = trafficDatapoint;
            this.f1041xfbe0c504 = trafficDatapoint2;
        }

        public long getDiffIn() {
            return Math.max(0L, this.f1041xfbe0c504.in - this.f1042x3271d0aa.in);
        }

        public long getDiffOut() {
            return Math.max(0L, this.f1041xfbe0c504.out - this.f1042x3271d0aa.out);
        }

        public long getIn() {
            return this.f1041xfbe0c504.in;
        }

        public long getOut() {
            return this.f1041xfbe0c504.out;
        }
    }

    public TrafficHistory() {
        this.f1036xfbe0c504 = new LinkedList();
        this.f1037x3271d0aa = new LinkedList();
        this.f1038x1378447b = new LinkedList();
    }

    public static LinkedList<TrafficDatapoint> getDummyList() {
        LinkedList<TrafficDatapoint> linkedList = new LinkedList<>();
        linkedList.add(new TrafficDatapoint(0L, 0L, System.currentTimeMillis()));
        return linkedList;
    }

    public LastDiff add(long j, long j2) {
        TrafficDatapoint trafficDatapoint = new TrafficDatapoint(j, j2, System.currentTimeMillis());
        LastDiff lastDiff = getLastDiff(trafficDatapoint);
        this.f1036xfbe0c504.add(trafficDatapoint);
        if (this.f1039x75d576dc == null) {
            this.f1039x75d576dc = new TrafficDatapoint(0L, 0L, 0L);
            this.f1040x9738a56c = new TrafficDatapoint(0L, 0L, 0L);
        }
        m1744xfbe0c504(trafficDatapoint, true);
        return lastDiff;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public LinkedList<TrafficDatapoint> getHours() {
        return this.f1038x1378447b;
    }

    public LastDiff getLastDiff(TrafficDatapoint trafficDatapoint) {
        TrafficDatapoint trafficDatapoint2;
        LinkedList linkedList = this.f1036xfbe0c504;
        if (linkedList.size() == 0) {
            trafficDatapoint2 = new TrafficDatapoint(0L, 0L, System.currentTimeMillis());
        } else {
            trafficDatapoint2 = (TrafficDatapoint) linkedList.getLast();
        }
        if (trafficDatapoint == null) {
            if (linkedList.size() < 2) {
                trafficDatapoint = trafficDatapoint2;
            } else {
                linkedList.descendingIterator().next();
                trafficDatapoint = (TrafficDatapoint) linkedList.descendingIterator().next();
            }
        }
        return new LastDiff(trafficDatapoint2, trafficDatapoint);
    }

    public LinkedList<TrafficDatapoint> getMinutes() {
        return this.f1037x3271d0aa;
    }

    public LinkedList<TrafficDatapoint> getSeconds() {
        return this.f1036xfbe0c504;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeList(this.f1036xfbe0c504);
        parcel.writeList(this.f1037x3271d0aa);
        parcel.writeList(this.f1038x1378447b);
        parcel.writeParcelable(this.f1039x75d576dc, 0);
        parcel.writeParcelable(this.f1040x9738a56c, 0);
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final void m1744xfbe0c504(TrafficDatapoint trafficDatapoint, boolean z) {
        TrafficDatapoint trafficDatapoint2;
        long j;
        LinkedList linkedList;
        HashSet hashSet = new HashSet();
        new Vector();
        LinkedList linkedList2 = this.f1037x3271d0aa;
        if (z) {
            trafficDatapoint2 = this.f1039x75d576dc;
            linkedList = this.f1036xfbe0c504;
            j = 60000;
        } else {
            trafficDatapoint2 = this.f1040x9738a56c;
            j = 3600000;
            linkedList = linkedList2;
            linkedList2 = this.f1038x1378447b;
        }
        if (trafficDatapoint.timestamp / j > trafficDatapoint2.timestamp / j) {
            linkedList2.add(trafficDatapoint);
            if (z) {
                this.f1039x75d576dc = trafficDatapoint;
                m1744xfbe0c504(trafficDatapoint, false);
            } else {
                this.f1040x9738a56c = trafficDatapoint;
            }
            Iterator it = linkedList.iterator();
            while (it.hasNext()) {
                TrafficDatapoint trafficDatapoint3 = (TrafficDatapoint) it.next();
                if ((trafficDatapoint.timestamp - trafficDatapoint3.timestamp) / j >= 5) {
                    hashSet.add(trafficDatapoint3);
                }
            }
            linkedList.removeAll(hashSet);
        }
    }

    /* loaded from: classes3.dex */
    public static class TrafficDatapoint implements Parcelable {
        public static final Parcelable.Creator<TrafficDatapoint> CREATOR = new Object();
        public final long in;
        public final long out;
        public final long timestamp;

        public TrafficDatapoint(long j, long j2, long j3) {
            this.in = j;
            this.out = j2;
            this.timestamp = j3;
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

        public TrafficDatapoint(Parcel parcel) {
            this.timestamp = parcel.readLong();
            this.in = parcel.readLong();
            this.out = parcel.readLong();
        }
    }

    public TrafficHistory(Parcel parcel) {
        LinkedList linkedList = new LinkedList();
        this.f1036xfbe0c504 = linkedList;
        LinkedList linkedList2 = new LinkedList();
        this.f1037x3271d0aa = linkedList2;
        LinkedList linkedList3 = new LinkedList();
        this.f1038x1378447b = linkedList3;
        parcel.readList(linkedList, getClass().getClassLoader());
        parcel.readList(linkedList2, getClass().getClassLoader());
        parcel.readList(linkedList3, getClass().getClassLoader());
        this.f1039x75d576dc = (TrafficDatapoint) parcel.readParcelable(getClass().getClassLoader());
        this.f1040x9738a56c = (TrafficDatapoint) parcel.readParcelable(getClass().getClassLoader());
    }
}
