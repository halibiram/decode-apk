package de.blinkt.openvpn.core;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;

/* renamed from: de.blinkt.openvpn.core.뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0285x3271d0aa implements IServiceStatus {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public IBinder f1044xfbe0c504;

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f1044xfbe0c504;
    }

    @Override // de.blinkt.openvpn.core.IServiceStatus
    public final String getLastConnectedVPN() {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(IServiceStatus.DESCRIPTOR);
            this.f1044xfbe0c504.transact(3, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readString();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // de.blinkt.openvpn.core.IServiceStatus
    public final TrafficHistory getTrafficHistory() {
        TrafficHistory trafficHistory;
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(IServiceStatus.DESCRIPTOR);
            this.f1044xfbe0c504.transact(5, obtain, obtain2, 0);
            obtain2.readException();
            Parcelable.Creator<TrafficHistory> creator = TrafficHistory.CREATOR;
            if (obtain2.readInt() != 0) {
                trafficHistory = creator.createFromParcel(obtain2);
            } else {
                trafficHistory = null;
            }
            return trafficHistory;
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // de.blinkt.openvpn.core.IServiceStatus
    public final ParcelFileDescriptor registerStatusCallback(IStatusCallbacks iStatusCallbacks) {
        Object obj;
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(IServiceStatus.DESCRIPTOR);
            obtain.writeStrongInterface(iStatusCallbacks);
            this.f1044xfbe0c504.transact(1, obtain, obtain2, 0);
            obtain2.readException();
            Parcelable.Creator creator = ParcelFileDescriptor.CREATOR;
            if (obtain2.readInt() != 0) {
                obj = creator.createFromParcel(obtain2);
            } else {
                obj = null;
            }
            return (ParcelFileDescriptor) obj;
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // de.blinkt.openvpn.core.IServiceStatus
    public final void setCachedPassword(String str, int i, String str2) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(IServiceStatus.DESCRIPTOR);
            obtain.writeString(str);
            obtain.writeInt(i);
            obtain.writeString(str2);
            this.f1044xfbe0c504.transact(4, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // de.blinkt.openvpn.core.IServiceStatus
    public final void unregisterStatusCallback(IStatusCallbacks iStatusCallbacks) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(IServiceStatus.DESCRIPTOR);
            obtain.writeStrongInterface(iStatusCallbacks);
            this.f1044xfbe0c504.transact(2, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}
