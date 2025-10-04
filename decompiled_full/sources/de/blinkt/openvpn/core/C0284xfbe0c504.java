package de.blinkt.openvpn.core;

import android.os.IBinder;
import android.os.Parcel;

/* renamed from: de.blinkt.openvpn.core.뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0284xfbe0c504 implements IOpenVPNServiceInternal {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public IBinder f1043xfbe0c504;

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f1043xfbe0c504;
    }

    @Override // de.blinkt.openvpn.core.IOpenVPNServiceInternal
    public final void challengeResponse(String str) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(IOpenVPNServiceInternal.DESCRIPTOR);
            obtain.writeString(str);
            this.f1043xfbe0c504.transact(4, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // de.blinkt.openvpn.core.IOpenVPNServiceInternal
    public final boolean protect(int i) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(IOpenVPNServiceInternal.DESCRIPTOR);
            obtain.writeInt(i);
            boolean z = false;
            this.f1043xfbe0c504.transact(1, obtain, obtain2, 0);
            obtain2.readException();
            if (obtain2.readInt() != 0) {
                z = true;
            }
            return z;
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // de.blinkt.openvpn.core.IOpenVPNServiceInternal
    public final boolean stopVPN(boolean z) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(IOpenVPNServiceInternal.DESCRIPTOR);
            boolean z2 = true;
            obtain.writeInt(z ? 1 : 0);
            this.f1043xfbe0c504.transact(3, obtain, obtain2, 0);
            obtain2.readException();
            if (obtain2.readInt() == 0) {
                z2 = false;
            }
            return z2;
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // de.blinkt.openvpn.core.IOpenVPNServiceInternal
    public final void userPause(boolean z) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(IOpenVPNServiceInternal.DESCRIPTOR);
            obtain.writeInt(z ? 1 : 0);
            this.f1043xfbe0c504.transact(2, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}
