package com.google.android.gms.ads.internal.util;

import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzayh;
import com.google.android.gms.internal.ads.zzayi;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbs extends zzayh implements zzbt {
    public zzbs() {
        super(new ObfuscatedString(new long[]{-6686593104795937955L, 1064196006634443537L, 3353166201499930036L, 1147866012870487456L, 1537554645572125625L, 4854948419588592339L, -2090690060633457352L, 7415765266567948137L, -773921099561042768L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return false;
                }
                IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.offline.buffering.zza zzaVar = (com.google.android.gms.ads.internal.offline.buffering.zza) zzayi.zza(parcel, com.google.android.gms.ads.internal.offline.buffering.zza.CREATOR);
                zzayi.zzc(parcel);
                boolean zzg = zzg(asInterface, zzaVar);
                parcel2.writeNoException();
                parcel2.writeInt(zzg ? 1 : 0);
            } else {
                IObjectWrapper asInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                zze(asInterface2);
                parcel2.writeNoException();
            }
        } else {
            IObjectWrapper asInterface3 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
            String readString = parcel.readString();
            String readString2 = parcel.readString();
            zzayi.zzc(parcel);
            boolean zzf = zzf(asInterface3, readString, readString2);
            parcel2.writeNoException();
            parcel2.writeInt(zzf ? 1 : 0);
        }
        return true;
    }
}
