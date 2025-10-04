package com.google.android.gms.internal.ads;

import androidx.annotation.GuardedBy;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzdwp {
    private final String zze;
    private final zzdwk zzf;

    @GuardedBy("this")
    private final List zzb = new ArrayList();

    @GuardedBy("this")
    private boolean zzc = false;

    @GuardedBy("this")
    private boolean zzd = false;
    private final com.google.android.gms.ads.internal.util.zzg zza = com.google.android.gms.ads.internal.zzt.zzo().zzi();

    public zzdwp(String str, zzdwk zzdwkVar) {
        this.zze = str;
        this.zzf = zzdwkVar;
    }

    private final Map zzg() {
        String str;
        Map zza = this.zzf.zza();
        zza.put(new ObfuscatedString(new long[]{-6804568844167284867L, 7016306789284626502L}).toString(), Long.toString(com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime(), 10));
        if (this.zza.zzQ()) {
            str = new ObfuscatedString(new long[]{-50337673648275075L}).toString();
        } else {
            str = this.zze;
        }
        zza.put(new ObfuscatedString(new long[]{-5361734661649861813L, -2878394767425713281L}).toString(), str);
        return zza;
    }

    public final synchronized void zza(String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbZ)).booleanValue()) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziz)).booleanValue()) {
                Map zzg = zzg();
                zzg.put(new ObfuscatedString(new long[]{2367971547156201528L, -303122574458585290L}).toString(), new ObfuscatedString(new long[]{4970928512781875693L, 4925152665122493286L}).toString());
                zzg.put(new ObfuscatedString(new long[]{2877547700795415080L, -120861498327824142L}).toString(), new ObfuscatedString(new long[]{3875075216872390405L, -5670689378314675633L, 7988252476096946241L}).toString());
                this.zzb.add(zzg);
            }
        }
    }

    public final synchronized void zzb(String str, String str2) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbZ)).booleanValue()) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziz)).booleanValue()) {
                Map zzg = zzg();
                zzg.put(new ObfuscatedString(new long[]{-3854894891983218174L, -3114830915574276861L}).toString(), new ObfuscatedString(new long[]{6733749412609856181L, 448210249124594960L, 6555685095062260305L, 2975118039830651023L}).toString());
                zzg.put(new ObfuscatedString(new long[]{-1884581429306114106L, 7052400284020581461L}).toString(), str);
                zzg.put(new ObfuscatedString(new long[]{-9152725078781460732L, -832177308494384505L}).toString(), str2);
                this.zzb.add(zzg);
            }
        }
    }

    public final synchronized void zzc(String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbZ)).booleanValue()) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziz)).booleanValue()) {
                Map zzg = zzg();
                zzg.put(new ObfuscatedString(new long[]{-3391015910762825220L, 9092630125392984533L}).toString(), new ObfuscatedString(new long[]{-4242547757395344190L, 1235857352551291666L, -8729413726280111539L, -7208953610993531861L}).toString());
                zzg.put(new ObfuscatedString(new long[]{-4299638814517992894L, 6140321701349008268L}).toString(), str);
                this.zzb.add(zzg);
            }
        }
    }

    public final synchronized void zzd(String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbZ)).booleanValue()) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziz)).booleanValue()) {
                Map zzg = zzg();
                zzg.put(new ObfuscatedString(new long[]{3346170050222119903L, -6037014641921355749L}).toString(), new ObfuscatedString(new long[]{7505229543039777074L, 7113494867897611719L, 1738552120282851439L, 5248254644252335723L}).toString());
                zzg.put(new ObfuscatedString(new long[]{-959124798481131352L, 1026877037010515869L}).toString(), str);
                this.zzb.add(zzg);
            }
        }
    }

    public final synchronized void zze() {
        try {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbZ)).booleanValue()) {
                if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziz)).booleanValue() && !this.zzd) {
                    Map zzg = zzg();
                    zzg.put(new ObfuscatedString(new long[]{3950420304730415215L, -7201982223026672689L}).toString(), new ObfuscatedString(new long[]{3298934395257406159L, -6906918912092420096L, -4718180821675269876L}).toString());
                    this.zzb.add(zzg);
                    Iterator it = this.zzb.iterator();
                    while (it.hasNext()) {
                        this.zzf.zzf((Map) it.next());
                    }
                    this.zzd = true;
                }
            }
        } finally {
        }
    }

    public final synchronized void zzf() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbZ)).booleanValue()) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziz)).booleanValue() && !this.zzc) {
                Map zzg = zzg();
                zzg.put(new ObfuscatedString(new long[]{8575543293214487233L, -8849422522101663396L}).toString(), new ObfuscatedString(new long[]{6925674570490499377L, -259817013799929043L, 5531644152585916187L}).toString());
                this.zzb.add(zzg);
                this.zzc = true;
            }
        }
    }
}
