package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzfoe {
    private final zzfom zza;
    private final zzfom zzb;
    private final zzfoi zzc;
    private final zzfol zzd;

    private zzfoe(zzfoi zzfoiVar, zzfol zzfolVar, zzfom zzfomVar, zzfom zzfomVar2, boolean z) {
        this.zzc = zzfoiVar;
        this.zzd = zzfolVar;
        this.zza = zzfomVar;
        if (zzfomVar2 == null) {
            this.zzb = zzfom.zzc;
        } else {
            this.zzb = zzfomVar2;
        }
    }

    public static zzfoe zza(zzfoi zzfoiVar, zzfol zzfolVar, zzfom zzfomVar, zzfom zzfomVar2, boolean z) {
        zzfpt.zzb(zzfolVar, new ObfuscatedString(new long[]{4519801283219563898L, -8013718319364556055L, 4722954802297339584L, 5531746159709771119L}).toString());
        zzfpt.zzb(zzfomVar, new ObfuscatedString(new long[]{-6044547722478855470L, -2726596595648083505L, 2972810744743199731L, -4800873737115047005L}).toString());
        if (zzfomVar != zzfom.zzc) {
            if (zzfoiVar == zzfoi.zza && zzfomVar == zzfom.zza) {
                throw new IllegalArgumentException(new ObfuscatedString(new long[]{6558199526468994559L, 4653774705580084140L, -2660404140236019472L, 4059533294146651207L, 947493539898475351L, -3899903616837738515L, -5912146194464233335L, 8522967528371035473L, 7115570699775672627L, 7315652580118885904L, 6878524731791561917L, -9042331003397326006L, 7562129742405693089L, 8836508526582710516L, 1887678719701866403L}).toString());
            }
            if (zzfolVar == zzfol.zza && zzfomVar == zzfom.zza) {
                throw new IllegalArgumentException(new ObfuscatedString(new long[]{-8133007985817655422L, 7898628946034420575L, -5622537379908255882L, -3306949586328312158L, 2434217523819105427L, -7910403703126792233L, -1325355670886423631L, 4769883069946929110L, -6606245133135190473L, 8551819937196486507L, -4716153608898440357L, 8300247884755059764L, 9223176169993689724L, -6118341957728038493L, 461142905965987191L}).toString());
            }
            return new zzfoe(zzfoiVar, zzfolVar, zzfomVar, zzfomVar2, true);
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-2333779350276581951L, 5640459625154015342L, 2480812781568232159L, 642946181039110419L}).toString());
    }

    public final JSONObject zzb() {
        JSONObject jSONObject = new JSONObject();
        zzfpo.zze(jSONObject, new ObfuscatedString(new long[]{-8077691759968335840L, 6191080721577001238L, 8280795190377075501L}).toString(), this.zza);
        zzfpo.zze(jSONObject, new ObfuscatedString(new long[]{6251808338744687514L, 1177288723884506362L, 977492384454378754L}).toString(), this.zzb);
        zzfpo.zze(jSONObject, new ObfuscatedString(new long[]{4324903503464262677L, -8685423404440989532L, 5869624061090397660L}).toString(), this.zzc);
        zzfpo.zze(jSONObject, new ObfuscatedString(new long[]{-6446671554637157628L, 3869267650692434282L, -4970957475524810448L}).toString(), this.zzd);
        zzfpo.zze(jSONObject, new ObfuscatedString(new long[]{-6292046794701689440L, -4125094872278539480L, 5869861201830231736L, 1198337401951640001L, -871580010530551308L}).toString(), Boolean.TRUE);
        return jSONObject;
    }
}
