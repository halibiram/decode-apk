package com.google.android.gms.ads.nonagon.signalgeneration;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzcep;
import com.google.android.gms.internal.ads.zzdwa;
import com.google.android.gms.internal.ads.zzdwk;
import com.google.android.gms.internal.ads.zzfhh;
import com.panda912.muddy.ObfuscatedString;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzf {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00a5, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-5091044222804681220L, -6026950455207644998L, 1132156355184063854L}).toString()) != false) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String zza(@Nullable String str) {
        char c = 3;
        if (TextUtils.isEmpty(str)) {
            return new ObfuscatedString(new long[]{-1301533877417468961L, -5091534191859838950L, 9089308646948823234L}).toString();
        }
        switch (str.hashCode()) {
            case 1743582862:
                if (str.equals(new ObfuscatedString(new long[]{7619995422032563149L, 6885364804217310267L, 5043884284151543650L}).toString())) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 1743582863:
                if (str.equals(new ObfuscatedString(new long[]{716939708142327691L, -5427158419383872736L, 5999056866312751533L}).toString())) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 1743582864:
                if (str.equals(new ObfuscatedString(new long[]{1472179404139953190L, -1045052413576491318L, -1428071616806815286L}).toString())) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 1743582865:
                break;
            case 1743582866:
                if (str.equals(new ObfuscatedString(new long[]{-5174255975999315790L, -5839559134845754759L, 8747096927654914738L}).toString())) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 1743582867:
                if (str.equals(new ObfuscatedString(new long[]{-4854198755822348578L, -9063783140190218794L, -7128335562652297944L}).toString())) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 1743582868:
                if (str.equals(new ObfuscatedString(new long[]{5314031969123471246L, -725377823797524306L, 1426950283497672233L}).toString())) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 1743582869:
                if (str.equals(new ObfuscatedString(new long[]{97061706708952582L, 162643653573232449L, 3789915907352193165L}).toString())) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 1743582870:
                if (str.equals(new ObfuscatedString(new long[]{-4249149665327809774L, 190993697583221145L, 8667427851982277321L}).toString())) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                return new ObfuscatedString(new long[]{-2551669261619701453L, -6049502633502472484L}).toString();
            case 1:
                return new ObfuscatedString(new long[]{5536974079674157534L, -8314846791301142602L}).toString();
            case 2:
                return new ObfuscatedString(new long[]{7599519626543516622L, -9181736151096401377L}).toString();
            case 3:
                return new ObfuscatedString(new long[]{-8122646343217958571L, -4732813573642641213L}).toString();
            case 4:
                return new ObfuscatedString(new long[]{-5744645865969314305L, -6165145413219671132L}).toString();
            case 5:
                return new ObfuscatedString(new long[]{-4481070210562018744L, -7962199533440163161L}).toString();
            case 6:
                return new ObfuscatedString(new long[]{9210722356133834914L, 878370531012513263L}).toString();
            case 7:
                return new ObfuscatedString(new long[]{7192418990906772550L, 8509396085314758983L}).toString();
            case '\b':
                return new ObfuscatedString(new long[]{154671906585959506L, 1261021374936922465L}).toString();
            default:
                return str;
        }
    }

    @Nullable
    public static String zzb(com.google.android.gms.ads.internal.client.zzl zzlVar) {
        Bundle bundle;
        if (zzlVar != null && (bundle = zzlVar.zzc) != null) {
            return bundle.getString(new ObfuscatedString(new long[]{920817693437282430L, -4930929655397170994L, 6491796059976656052L}).toString());
        }
        return new ObfuscatedString(new long[]{-7989960263540328601L, -7688060098892406938L, 5957573540107884451L}).toString();
    }

    public static void zzc(final zzdwk zzdwkVar, @Nullable final zzdwa zzdwaVar, final String str, final Pair... pairArr) {
        if (!((Boolean) zzba.zzc().zza(zzbgc.zzha)).booleanValue()) {
            return;
        }
        zzcep.zza.execute(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zze
            @Override // java.lang.Runnable
            public final void run() {
                zzf.zzd(zzdwk.this, zzdwaVar, str, pairArr);
            }
        });
    }

    @VisibleForTesting
    public static void zzd(zzdwk zzdwkVar, @Nullable zzdwa zzdwaVar, String str, Pair... pairArr) {
        Map zza;
        if (zzdwaVar == null) {
            zza = zzdwkVar.zzc();
        } else {
            zza = zzdwaVar.zza();
        }
        zzf(zza, new ObfuscatedString(new long[]{-64442979853273871L, -437445320399396889L}).toString(), str);
        for (Pair pair : pairArr) {
            zzf(zza, (String) pair.first, (String) pair.second);
        }
        zzdwkVar.zzf(zza);
    }

    public static int zze(zzfhh zzfhhVar) {
        if (zzfhhVar.zzq) {
            return 2;
        }
        com.google.android.gms.ads.internal.client.zzl zzlVar = zzfhhVar.zzd;
        com.google.android.gms.ads.internal.client.zzc zzcVar = zzlVar.zzs;
        if (zzcVar == null && zzlVar.zzx == null) {
            return 1;
        }
        if (zzcVar == null || zzlVar.zzx == null) {
            return zzcVar != null ? 3 : 4;
        }
        return 5;
    }

    private static void zzf(Map map, String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            map.put(str, str2);
        }
    }
}
