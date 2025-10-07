package com.google.android.play.core.review.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzd extends zza implements zzf {
    public zzd(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{8797109222619090627L, -1396393380240731331L, -8221636988671965070L, -6756735855490626398L, 4572896532897209711L, 4056636615464593682L, 350588095101511512L, -6912789308439828810L, -4390294267867049315L, -3514611522188303490L}).toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.play.core.review.internal.zzf
    public final void zzc(String str, Bundle bundle, zzh zzhVar) {
        Parcel zza = zza();
        zza.writeString(str);
        int i = zzc.zza;
        zza.writeInt(1);
        bundle.writeToParcel(zza, 0);
        zza.writeStrongBinder(zzhVar);
        zzb(2, zza);
    }
}
