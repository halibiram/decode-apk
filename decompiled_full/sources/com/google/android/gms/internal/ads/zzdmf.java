package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashSet;

/* loaded from: classes2.dex */
public final class zzdmf implements zzhhd {
    private final zzhhu zza;
    private final zzhhu zzb;

    public zzdmf(zzhhu zzhhuVar, zzhhu zzhhuVar2) {
        this.zza = zzhhuVar;
        this.zzb = zzhhuVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhhu
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdio((Context) this.zza.zzb(), new HashSet(), ((zzcwy) this.zzb).zza());
    }
}
