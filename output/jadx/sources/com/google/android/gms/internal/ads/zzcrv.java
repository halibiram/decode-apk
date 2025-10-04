package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzcrv implements zzdbs {
    private final zzfif zza;

    public zzcrv(zzfif zzfifVar) {
        this.zza = zzfifVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdbs
    public final void zzbs(@Nullable Context context) {
        try {
            this.zza.zzg();
        } catch (zzfho e) {
            zzcec.zzk(new ObfuscatedString(new long[]{-1682745538439317408L, 7842897933712593009L, -8014414705439473745L, 779352609981203132L, 8023883133959554783L, 5224938426850012129L, 8613247983022771804L, 5059293743895928550L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbs
    public final void zzbu(@Nullable Context context) {
        try {
            this.zza.zzt();
        } catch (zzfho e) {
            zzcec.zzk(new ObfuscatedString(new long[]{3608559982007285589L, -4350819439963414189L, -3799012950936972930L, -3375718227368331621L, -3253799287404301969L, 8504779319836712214L, 1457185645577693483L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbs
    public final void zzbv(@Nullable Context context) {
        try {
            this.zza.zzu();
            if (context != null) {
                this.zza.zzs(context);
            }
        } catch (zzfho e) {
            zzcec.zzk(new ObfuscatedString(new long[]{-1714958579943831546L, -9098284325982381564L, -5940499398426789013L, 963937689650067656L, -8112063538602070977L, 8143536146810701863L, 3853481220483615314L, 8311009013856102893L}).toString(), e);
        }
    }
}
