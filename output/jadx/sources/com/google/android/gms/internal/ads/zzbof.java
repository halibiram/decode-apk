package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbof extends zzayg implements zzboh {
    public zzbof(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{-3926308729796450904L, 8569191742698666881L, -4158320797891084550L, 1898186916030563878L, 1636134035568242634L, 7016109657071604690L, -1362384558244923090L, -4928892198933397160L, -134347821006657826L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzboh
    public final void zze() {
        zzbm(2, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzboh
    public final void zzf(String str) {
        Parcel zza = zza();
        zza.writeString(str);
        zzbm(1, zza);
    }
}
