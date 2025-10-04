package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbko extends zzayg implements zzbkq {
    public zzbko(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{-7851882862899817164L, -4557306395881293397L, 5786292755963704615L, -6780708556999664528L, 7380016057522826252L, -444396657717606774L, -8077440528290503201L, -9050462494063839707L, 4518101529878095285L, -5137112535056668263L, 5639413240581130456L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbkq
    public final void zze(zzbkg zzbkgVar, String str) {
        Parcel zza = zza();
        zzayi.zzf(zza, zzbkgVar);
        zza.writeString(str);
        zzbm(1, zza);
    }
}
