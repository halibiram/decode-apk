package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Set;

/* loaded from: classes2.dex */
public final class zzdbw extends zzdgl {
    public zzdbw(Set set) {
        super(set);
    }

    public final void zza(final Context context) {
        zzu(new zzdgk() { // from class: com.google.android.gms.internal.ads.zzdbv
            @Override // com.google.android.gms.internal.ads.zzdgk
            public final void zza(Object obj) {
                ((zzdbs) obj).zzbs(context);
            }
        });
    }

    public final void zzb(final Context context) {
        zzu(new zzdgk() { // from class: com.google.android.gms.internal.ads.zzdbt
            @Override // com.google.android.gms.internal.ads.zzdgk
            public final void zza(Object obj) {
                ((zzdbs) obj).zzbu(context);
            }
        });
    }

    public final void zzc(final Context context) {
        zzu(new zzdgk() { // from class: com.google.android.gms.internal.ads.zzdbu
            @Override // com.google.android.gms.internal.ads.zzdgk
            public final void zza(Object obj) {
                ((zzdbs) obj).zzbv(context);
            }
        });
    }
}
