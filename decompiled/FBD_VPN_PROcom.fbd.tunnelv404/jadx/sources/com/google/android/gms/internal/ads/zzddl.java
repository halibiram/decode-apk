package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
final class zzddl implements Runnable {
    private final WeakReference zza;

    @Override // java.lang.Runnable
    public final void run() {
        zzddm zzddmVar = (zzddm) this.zza.get();
        if (zzddmVar != null) {
            zzddmVar.zzu(new zzdgk() { // from class: com.google.android.gms.internal.ads.zzddj
                @Override // com.google.android.gms.internal.ads.zzdgk
                public final void zza(Object obj) {
                    ((zzddn) obj).zza();
                }
            });
        }
    }
}
