package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzejt implements zzhhd {
    private final zzhhu zza;
    private final zzhhu zzb;
    private final zzhhu zzc;

    public zzejt(zzhhu zzhhuVar, zzhhu zzhhuVar2, zzhhu zzhhuVar3) {
        this.zza = zzhhuVar;
        this.zzb = zzhhuVar2;
        this.zzc = zzhhuVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhhu
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzejs((Context) this.zza.zzb(), (zzcvc) this.zzb.zzb(), (Executor) this.zzc.zzb());
    }
}
