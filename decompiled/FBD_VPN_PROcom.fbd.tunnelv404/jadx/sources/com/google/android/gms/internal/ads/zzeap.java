package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;

/* loaded from: classes2.dex */
public final class zzeap implements zzhhd {
    private final zzhhu zza;

    public zzeap(zzhhu zzhhuVar) {
        this.zza = zzhhuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhhu
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final ApplicationInfo zzb() {
        ApplicationInfo applicationInfo = ((Context) this.zza.zzb()).getApplicationInfo();
        zzhhl.zzb(applicationInfo);
        return applicationInfo;
    }
}
