package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzlv implements zzlm {
    public final zzum zza;
    public int zzd;
    public boolean zze;
    public final List zzc = new ArrayList();
    public final Object zzb = new Object();

    public zzlv(zzut zzutVar, boolean z) {
        this.zza = new zzum(zzutVar, z);
    }

    @Override // com.google.android.gms.internal.ads.zzlm
    public final zzcx zza() {
        return this.zza.zzC();
    }

    @Override // com.google.android.gms.internal.ads.zzlm
    public final Object zzb() {
        return this.zzb;
    }

    public final void zzc(int i) {
        this.zzd = i;
        this.zze = false;
        this.zzc.clear();
    }
}
