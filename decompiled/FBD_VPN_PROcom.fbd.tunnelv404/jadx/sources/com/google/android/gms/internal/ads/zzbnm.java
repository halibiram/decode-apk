package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.CollectionUtils;
import com.panda912.muddy.ObfuscatedString;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzbnm implements zzbng {
    static final Map zza = CollectionUtils.mapOfKeyValueArrays(new String[]{new ObfuscatedString(new long[]{8825040019992587787L, 6388488899898156116L}).toString(), new ObfuscatedString(new long[]{-2972303956106487286L, -7962470846747809418L, 4239035350212614180L}).toString(), new ObfuscatedString(new long[]{-2364180890648480695L, -4249115023181184057L, -6949558962476356702L}).toString(), new ObfuscatedString(new long[]{4317585715638101178L, -4503054261240635924L, 2340363089557485926L, -3380947811180480995L}).toString(), new ObfuscatedString(new long[]{-5997780588920023144L, 5521136370952056437L, -1541072440185128346L, -7015795696988665878L}).toString(), new ObfuscatedString(new long[]{-869408496329861438L, 2340790771142189989L, -8809485921621355377L}).toString(), new ObfuscatedString(new long[]{-2148157335097104990L, 7200171784967607454L}).toString()}, new Integer[]{1, 2, 3, 4, 5, 6, 7});
    private final com.google.android.gms.ads.internal.zzb zzb;
    private final zzbvq zzc;
    private final zzbvx zzd;

    public zzbnm(com.google.android.gms.ads.internal.zzb zzbVar, zzbvq zzbvqVar, zzbvx zzbvxVar) {
        this.zzb = zzbVar;
        this.zzc = zzbvqVar;
        this.zzd = zzbvxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbng
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcjk zzcjkVar = (zzcjk) obj;
        int intValue = ((Integer) zza.get((String) map.get(new ObfuscatedString(new long[]{8860639978312924846L, -4888952325212529674L}).toString()))).intValue();
        int i = 6;
        boolean z = true;
        if (intValue != 5) {
            if (intValue != 7) {
                com.google.android.gms.ads.internal.zzb zzbVar = this.zzb;
                if (zzbVar.zzc()) {
                    if (intValue != 1) {
                        if (intValue != 3) {
                            if (intValue != 4) {
                                if (intValue != 5) {
                                    if (intValue != 6) {
                                        if (intValue != 7) {
                                            zzcec.zzi(new ObfuscatedString(new long[]{5183186942335273631L, 6978378863461464085L, -9093796363297884227L, 1620618958104644003L, -7048241473838403741L}).toString());
                                            return;
                                        }
                                    } else {
                                        this.zzc.zza(true);
                                        return;
                                    }
                                }
                            } else {
                                new zzbvn(zzcjkVar, map).zzc();
                                return;
                            }
                        } else {
                            new zzbvt(zzcjkVar, map).zzb();
                            return;
                        }
                    } else {
                        this.zzc.zzb(map);
                        return;
                    }
                } else {
                    zzbVar.zzb(null);
                    return;
                }
            }
            this.zzd.zzc();
            return;
        }
        String str = (String) map.get(new ObfuscatedString(new long[]{5349357889606817912L, -357691494729297254L, 1150722218590578645L}).toString());
        if (map.containsKey(new ObfuscatedString(new long[]{-5341547197038902093L, 4551266711965838581L, -7312613319706048093L, 2366669350802281417L}).toString())) {
            z = Boolean.parseBoolean((String) map.get(new ObfuscatedString(new long[]{-917525141882617830L, -7994489944760470381L, 8664239527338229840L, -7966653787123631317L}).toString()));
        }
        if (zzcjkVar == null) {
            zzcec.zzj(new ObfuscatedString(new long[]{-1207870155804354555L, -710622113304781891L, 6885634789416335261L, 3675923695986241635L}).toString());
            return;
        }
        if (new ObfuscatedString(new long[]{-1453459684859073271L, 4315302146033751193L}).toString().equalsIgnoreCase(str)) {
            i = 7;
        } else if (!new ObfuscatedString(new long[]{-2579018113515136946L, -9162406826749387771L, -1382430418079297123L}).toString().equalsIgnoreCase(str)) {
            if (z) {
                i = -1;
            } else {
                i = 14;
            }
        }
        zzcjkVar.zzar(i);
    }
}
