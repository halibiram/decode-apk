package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbod extends zzayh implements zzboe {
    public zzbod() {
        super(new ObfuscatedString(new long[]{-1378762905010771049L, -9187204939232564176L, -5570473915750090355L, -2883279759425181032L, 7504938773775542724L, -3108464622987729955L, 2886823087768153096L, -4785853202331193371L, -7129904440910925720L, 8243371380825909176L}).toString());
    }

    public static zzboe zzc(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{4496749132948706180L, -1693240506396264058L, -4749771768752894378L, 3834873647921858658L, -8474002967505939745L, -2739495904645206805L, -1986886704447733373L, 906917971237208354L, 2038023260143424291L, 8562802992879834215L}).toString());
        if (queryLocalInterface instanceof zzboe) {
            return (zzboe) queryLocalInterface;
        }
        return new zzboc(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            String readString = parcel.readString();
            zzayi.zzc(parcel);
            zzb(readString);
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
