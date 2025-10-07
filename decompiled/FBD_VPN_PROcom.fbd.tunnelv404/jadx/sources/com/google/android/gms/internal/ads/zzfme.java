package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.panda912.muddy.ObfuscatedString;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzfme {
    private final Context zza;
    private final String zzb;
    private final String zzc;

    public zzfme(Context context, zzcei zzceiVar) {
        this.zza = context;
        this.zzb = context.getPackageName();
        this.zzc = zzceiVar.zza;
    }

    public final void zza(Map map) {
        String obfuscatedString;
        String obfuscatedString2;
        map.put(new ObfuscatedString(new long[]{-5849185039626799091L, -2480583880787499646L}).toString(), new ObfuscatedString(new long[]{6009832146641900022L, 1543361847879613830L}).toString());
        map.put(new ObfuscatedString(new long[]{3356636324589255L, -1753917025496228206L}).toString(), new ObfuscatedString(new long[]{1277400869246734339L, -2988662456620809206L}).toString());
        map.put(new ObfuscatedString(new long[]{4059537915484536058L, 7877069388481210877L}).toString(), Build.VERSION.RELEASE);
        map.put(new ObfuscatedString(new long[]{-2949544665507419661L, 419242879676115010L}).toString(), Build.VERSION.SDK);
        com.google.android.gms.ads.internal.zzt.zzp();
        map.put(new ObfuscatedString(new long[]{-7570182838032625269L, 2572678600484968612L}).toString(), com.google.android.gms.ads.internal.util.zzt.zzr());
        map.put(new ObfuscatedString(new long[]{6206660107990274452L, 644821580335994753L}).toString(), this.zzb);
        com.google.android.gms.ads.internal.zzt.zzp();
        if (true != com.google.android.gms.ads.internal.util.zzt.zzD(this.zza)) {
            obfuscatedString = new ObfuscatedString(new long[]{5286340401507553101L, 8503489514085272289L}).toString();
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{1019137771884535385L, -7232129346062852246L}).toString();
        }
        map.put(new ObfuscatedString(new long[]{-5709947053028204086L, 3917771374634696086L, 9083803692070451483L}).toString(), obfuscatedString);
        zzbfu zzbfuVar = zzbgc.zza;
        List zzb = com.google.android.gms.ads.internal.client.zzba.zza().zzb();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzgU)).booleanValue()) {
            zzb.addAll(com.google.android.gms.ads.internal.zzt.zzo().zzi().zzh().zzd());
        }
        map.put(new ObfuscatedString(new long[]{8021486552437986710L, -365689411995941111L}).toString(), TextUtils.join(new ObfuscatedString(new long[]{7050254571670035891L, 3156020311219759752L}).toString(), zzb));
        map.put(new ObfuscatedString(new long[]{-2841400985295169000L, -6907152269455750953L, 689285591476988542L}).toString(), this.zzc);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkL)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.zzp();
            if (true != com.google.android.gms.ads.internal.util.zzt.zzA(this.zza)) {
                obfuscatedString2 = new ObfuscatedString(new long[]{-6197079440207402029L, 11536383617707010L}).toString();
            } else {
                obfuscatedString2 = new ObfuscatedString(new long[]{681940470827208297L, 7198936338255365749L}).toString();
            }
            map.put(new ObfuscatedString(new long[]{463936655978484501L, -7637971982803649139L}).toString(), obfuscatedString2);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjn)).booleanValue()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzcc)).booleanValue()) {
                map.put(new ObfuscatedString(new long[]{-9035789928537665623L, -8600950588007588271L}).toString(), zzfxt.zzc(com.google.android.gms.ads.internal.zzt.zzo().zzn()));
            }
        }
    }
}
