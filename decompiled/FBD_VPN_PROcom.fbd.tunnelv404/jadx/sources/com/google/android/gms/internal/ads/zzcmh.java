package com.google.android.gms.internal.ads;

import android.content.Context;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzcmh implements zzhhd {
    private final zzhhu zza;
    private final zzhhu zzb;

    public zzcmh(zzhhu zzhhuVar, zzhhu zzhhuVar2) {
        this.zza = zzhhuVar;
        this.zzb = zzhhuVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhhu
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final zzbzp zzb() {
        Context zza = ((zzclm) this.zza).zza();
        zzfnc zzfncVar = (zzfnc) this.zzb.zzb();
        zzbrx zzb = com.google.android.gms.ads.internal.zzt.zzf().zzb(zza, zzcei.zza(), zzfncVar);
        String obfuscatedString = new ObfuscatedString(new long[]{4945058691544301808L, 8052558009957732624L, -6678491483081558839L, -6580597436035881794L, 3414024076705491712L, -7936904110768016260L}).toString();
        zzbrr zzbrrVar = zzbru.zza;
        zzb.zza(obfuscatedString, zzbrrVar, zzbrrVar);
        return new zzbzo(zza, com.google.android.gms.ads.internal.zzt.zzf().zzb(zza, zzcei.zza(), zzfncVar).zza(new ObfuscatedString(new long[]{1857701501207365724L, 1459459931753047113L, 1288097684841956478L, 1347142149391020831L, 5582183671136506120L, -7694095290038839219L}).toString(), zzbrrVar, zzbrrVar));
    }
}
