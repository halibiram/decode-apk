package com.google.android.gms.internal.ads;

import androidx.annotation.VisibleForTesting;
import java.util.Set;

@VisibleForTesting
/* loaded from: classes2.dex */
public final class zzdbj extends zzdgl implements zzdbb {
    @VisibleForTesting
    public zzdbj(Set set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzdbb
    public final void zza(final com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzu(new zzdgk() { // from class: com.google.android.gms.internal.ads.zzdbi
            @Override // com.google.android.gms.internal.ads.zzdgk
            public final void zza(Object obj) {
                ((zzdbn) obj).zzp(com.google.android.gms.ads.internal.client.zze.this);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdbb
    public final void zzb() {
        zzu(new zzdgk() { // from class: com.google.android.gms.internal.ads.zzdbh
            @Override // com.google.android.gms.internal.ads.zzdgk
            public final void zza(Object obj) {
                ((zzdbn) obj).zzp(zzfij.zzd(11, null, null));
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdbb
    public final void zzc(final zzdkv zzdkvVar) {
        zzu(new zzdgk() { // from class: com.google.android.gms.internal.ads.zzdbg
            @Override // com.google.android.gms.internal.ads.zzdgk
            public final void zza(Object obj) {
                ((zzdbn) obj).zzp(zzfij.zzd(12, zzdkv.this.getMessage(), null));
            }
        });
    }
}
