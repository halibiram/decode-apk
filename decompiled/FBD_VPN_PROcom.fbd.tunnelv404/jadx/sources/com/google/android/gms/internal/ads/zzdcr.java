package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener;
import java.util.Set;

/* loaded from: classes2.dex */
public final class zzdcr extends zzdgl implements zzblw {
    private final Bundle zzb;

    public zzdcr(Set set) {
        super(set);
        this.zzb = new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzblw
    public final synchronized void zza(String str, Bundle bundle) {
        this.zzb.putAll(bundle);
        zzu(new zzdgk() { // from class: com.google.android.gms.internal.ads.zzdcq
            @Override // com.google.android.gms.internal.ads.zzdgk
            public final void zza(Object obj) {
                ((OnAdMetadataChangedListener) obj).onAdMetadataChanged();
            }
        });
    }

    public final synchronized Bundle zzb() {
        return new Bundle(this.zzb);
    }
}
