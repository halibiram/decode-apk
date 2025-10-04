package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.UUID;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzdmg implements zzhhd {
    private final zzhhu zza;
    private final zzhhu zzb;

    public zzdmg(zzhhu zzhhuVar, zzhhu zzhhuVar2) {
        this.zza = zzhhuVar;
        this.zzb = zzhhuVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhhu
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzcei zza = ((zzcly) this.zza).zza();
        com.google.android.gms.ads.internal.zzt.zzp();
        return new zzaym(UUID.randomUUID().toString(), zza, new ObfuscatedString(new long[]{6233288133412622285L, 747582313039378082L}).toString(), new JSONObject(), false, true);
    }
}
