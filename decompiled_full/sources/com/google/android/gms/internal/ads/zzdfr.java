package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.admanager.AppEventListener;
import java.util.Set;

/* loaded from: classes2.dex */
public final class zzdfr extends zzdgl implements zzbly {
    public zzdfr(Set set) {
        super(set);
    }

    @Override // com.google.android.gms.internal.ads.zzbly
    public final synchronized void zzb(final String str, final String str2) {
        zzu(new zzdgk() { // from class: com.google.android.gms.internal.ads.zzdfq
            @Override // com.google.android.gms.internal.ads.zzdgk
            public final void zza(Object obj) {
                ((AppEventListener) obj).onAppEvent(str, str2);
            }
        });
    }
}
