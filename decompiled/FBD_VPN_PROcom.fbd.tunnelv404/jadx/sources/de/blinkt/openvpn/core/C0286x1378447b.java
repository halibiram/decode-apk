package de.blinkt.openvpn.core;

import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;

/* renamed from: de.blinkt.openvpn.core.뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0286x1378447b implements IStatusCallbacks {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public IBinder f1045xfbe0c504;

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f1045xfbe0c504;
    }

    @Override // de.blinkt.openvpn.core.IStatusCallbacks
    public final void connectedVPN(String str) {
        Parcel obtain = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(IStatusCallbacks.DESCRIPTOR);
            obtain.writeString(str);
            this.f1045xfbe0c504.transact(4, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    @Override // de.blinkt.openvpn.core.IStatusCallbacks
    public final void newLogItem(LogItem logItem) {
        Parcel obtain = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(IStatusCallbacks.DESCRIPTOR);
            if (logItem != null) {
                obtain.writeInt(1);
                logItem.writeToParcel(obtain, 0);
            } else {
                obtain.writeInt(0);
            }
            this.f1045xfbe0c504.transact(1, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    @Override // de.blinkt.openvpn.core.IStatusCallbacks
    public final void updateByteCount(long j, long j2) {
        Parcel obtain = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(IStatusCallbacks.DESCRIPTOR);
            obtain.writeLong(j);
            obtain.writeLong(j2);
            this.f1045xfbe0c504.transact(3, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }

    @Override // de.blinkt.openvpn.core.IStatusCallbacks
    public final void updateStateString(String str, String str2, int i, ConnectionStatus connectionStatus, Intent intent) {
        Parcel obtain = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(IStatusCallbacks.DESCRIPTOR);
            obtain.writeString(str);
            obtain.writeString(str2);
            obtain.writeInt(i);
            if (connectionStatus != null) {
                obtain.writeInt(1);
                connectionStatus.writeToParcel(obtain, 0);
            } else {
                obtain.writeInt(0);
            }
            if (intent != null) {
                obtain.writeInt(1);
                intent.writeToParcel(obtain, 0);
            } else {
                obtain.writeInt(0);
            }
            this.f1045xfbe0c504.transact(2, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }
}
