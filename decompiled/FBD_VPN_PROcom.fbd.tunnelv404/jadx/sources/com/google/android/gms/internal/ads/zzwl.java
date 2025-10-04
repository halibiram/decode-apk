package com.google.android.gms.internal.ads;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzwl extends zzcx {
    private static final Object zzc = new Object();
    private static final zzbp zzd;
    private final long zze;
    private final long zzf;
    private final boolean zzg;

    @Nullable
    private final zzbp zzh;

    @Nullable
    private final zzbf zzi;

    static {
        zzar zzarVar = new zzar();
        zzarVar.zza(new ObfuscatedString(new long[]{5328294026369043224L, 2357615747666363330L, -9089058627960314824L, 5156585659320761411L}).toString());
        zzarVar.zzb(Uri.EMPTY);
        zzd = zzarVar.zzc();
    }

    public zzwl(long j, long j2, long j3, long j4, long j5, long j6, long j7, boolean z, boolean z2, boolean z3, @Nullable Object obj, zzbp zzbpVar, @Nullable zzbf zzbfVar) {
        this.zze = j4;
        this.zzf = j5;
        this.zzg = z;
        zzbpVar.getClass();
        this.zzh = zzbpVar;
        this.zzi = zzbfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcx
    public final int zza(Object obj) {
        if (zzc.equals(obj)) {
            return 0;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzcx
    public final int zzb() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzcx
    public final int zzc() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzcx
    public final zzcu zzd(int i, zzcu zzcuVar, boolean z) {
        Object obj;
        zzek.zza(i, 0, 1);
        if (z) {
            obj = zzc;
        } else {
            obj = null;
        }
        zzcuVar.zzl(null, obj, 0, this.zze, 0L, zzd.zza, false);
        return zzcuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcx
    public final zzcw zze(int i, zzcw zzcwVar, long j) {
        zzek.zza(i, 0, 1);
        Object obj = zzcw.zza;
        zzbp zzbpVar = this.zzh;
        long j2 = this.zzf;
        zzcwVar.zza(obj, zzbpVar, null, -9223372036854775807L, -9223372036854775807L, -9223372036854775807L, this.zzg, false, this.zzi, 0L, j2, 0, 0, 0L);
        return zzcwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcx
    public final Object zzf(int i) {
        zzek.zza(i, 0, 1);
        return zzc;
    }
}
