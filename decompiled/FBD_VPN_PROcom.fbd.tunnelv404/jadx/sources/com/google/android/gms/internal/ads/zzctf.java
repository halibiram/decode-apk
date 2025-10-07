package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.UUID;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzctf implements zzhhd {
    private final zzhhu zza;
    private final zzhhu zzb;
    private final zzhhu zzc;

    public zzctf(zzhhu zzhhuVar, zzhhu zzhhuVar2, zzhhu zzhhuVar3) {
        this.zza = zzhhuVar;
        this.zzb = zzhhuVar2;
        this.zzc = zzhhuVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhhu
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzcei zza = ((zzcly) this.zza).zza();
        JSONObject jSONObject = (JSONObject) this.zzb.zzb();
        String str = (String) this.zzc.zzb();
        boolean equals = new ObfuscatedString(new long[]{8534079059026114267L, 1389607416415542326L}).toString().equals(str);
        com.google.android.gms.ads.internal.zzt.zzp();
        return new zzaym(UUID.randomUUID().toString(), zza, str, jSONObject, false, equals);
    }
}
