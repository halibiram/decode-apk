package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import javax.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzemj {
    private final zzfhz zza;
    private final zzdtx zzb;
    private final zzdwf zzc;
    private final zzflw zzd;

    public zzemj(zzfhz zzfhzVar, zzdtx zzdtxVar, zzdwf zzdwfVar, zzflw zzflwVar) {
        this.zza = zzfhzVar;
        this.zzb = zzdtxVar;
        this.zzc = zzdwfVar;
        this.zzd = zzflwVar;
    }

    public final void zza(zzfgp zzfgpVar, zzfgm zzfgmVar, int i, @Nullable zzeir zzeirVar, long j) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziz)).booleanValue()) {
            zzflv zzb = zzflv.zzb(new ObfuscatedString(new long[]{4327600243899195392L, -7219404823858241957L, -1525517826946160934L}).toString());
            zzb.zzg(zzfgpVar);
            zzb.zzf(zzfgmVar);
            zzb.zza(new ObfuscatedString(new long[]{8173839703396366333L, 7499432768001914399L, 1283547444682945442L}).toString(), String.valueOf(j));
            zzb.zza(new ObfuscatedString(new long[]{3772718973046731839L, -1740252566777317778L}).toString(), Integer.toString(i));
            if (zzeirVar != null) {
                zzb.zza(new ObfuscatedString(new long[]{-3173654596907626032L, 4697541632902604780L}).toString(), Integer.toString(zzeirVar.zzb().zza));
                String zza = this.zza.zza(zzeirVar.getMessage());
                if (zza != null) {
                    zzb.zza(new ObfuscatedString(new long[]{-5948157556145418085L, 5961044951273934740L}).toString(), zza);
                }
            }
            zzdtw zzb2 = this.zzb.zzb(zzfgmVar.zzu);
            if (zzb2 != null) {
                zzb.zza(new ObfuscatedString(new long[]{8023894588235688253L, -1503152646118549477L}).toString(), zzb2.zza);
                zzbvg zzbvgVar = zzb2.zzb;
                if (zzbvgVar != null) {
                    zzb.zza(new ObfuscatedString(new long[]{1592070445177726769L, 237522042565310370L, -7707602750034700449L}).toString(), zzbvgVar.toString());
                }
                zzbvg zzbvgVar2 = zzb2.zzc;
                if (zzbvgVar2 != null) {
                    zzb.zza(new ObfuscatedString(new long[]{4982113175324330725L, -2763561221919445511L, -8190211294382999339L}).toString(), zzbvgVar2.toString());
                }
            }
            this.zzd.zzb(zzb);
            return;
        }
        zzdwe zza2 = this.zzc.zza();
        zza2.zze(zzfgpVar);
        zza2.zzd(zzfgmVar);
        zza2.zzb(new ObfuscatedString(new long[]{-2385160472491550225L, -624466384651575162L}).toString(), new ObfuscatedString(new long[]{-2512147272765812202L, 2602077311659958694L, 4113329139177415783L}).toString());
        zza2.zzb(new ObfuscatedString(new long[]{-2350029735217104303L, 7998576876672503498L, -3774017481206727272L}).toString(), String.valueOf(j));
        zza2.zzb(new ObfuscatedString(new long[]{9187649032841878938L, -8000616290669676851L}).toString(), Integer.toString(i));
        if (zzeirVar != null) {
            zza2.zzb(new ObfuscatedString(new long[]{-2765799192669349097L, 2741112113325618748L}).toString(), Integer.toString(zzeirVar.zzb().zza));
            String zza3 = this.zza.zza(zzeirVar.getMessage());
            if (zza3 != null) {
                zza2.zzb(new ObfuscatedString(new long[]{-6680441450714757895L, 3942776943345378027L}).toString(), zza3);
            }
        }
        zzdtw zzb3 = this.zzb.zzb(zzfgmVar.zzu);
        if (zzb3 != null) {
            zza2.zzb(new ObfuscatedString(new long[]{3411764964656849077L, -238692918929889648L}).toString(), zzb3.zza);
            zzbvg zzbvgVar3 = zzb3.zzb;
            if (zzbvgVar3 != null) {
                zza2.zzb(new ObfuscatedString(new long[]{-1308035515158099913L, 104068507705707682L, -6082180243035842062L}).toString(), zzbvgVar3.toString());
            }
            zzbvg zzbvgVar4 = zzb3.zzc;
            if (zzbvgVar4 != null) {
                zza2.zzb(new ObfuscatedString(new long[]{7818252353295243148L, 7640325832525873954L, -7283336855151016198L}).toString(), zzbvgVar4.toString());
            }
        }
        zza2.zzg();
    }
}
