package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import com.panda912.muddy.ObfuscatedString;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Future;

/* loaded from: classes2.dex */
public final class zzbgi {
    private final String zza = (String) zzbhu.zzb.zze();
    private final Map zzb;
    private final Context zzc;
    private final String zzd;

    public zzbgi(Context context, String str) {
        String packageName;
        String obfuscatedString;
        String obfuscatedString2;
        this.zzc = context;
        this.zzd = str;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.zzb = linkedHashMap;
        linkedHashMap.put(new ObfuscatedString(new long[]{-4745331661495654020L, -8475507109462343021L}).toString(), new ObfuscatedString(new long[]{-4981518221730856268L, -7894283727450863930L}).toString());
        linkedHashMap.put(new ObfuscatedString(new long[]{5411891452890934054L, -8525862400563167473L}).toString(), new ObfuscatedString(new long[]{-1454018137177006288L, 7459866777220097374L}).toString());
        linkedHashMap.put(new ObfuscatedString(new long[]{6806282982465993585L, 6435956394828246420L}).toString(), Build.VERSION.RELEASE);
        linkedHashMap.put(new ObfuscatedString(new long[]{-8135290435612977239L, -6051504054462354921L}).toString(), Build.VERSION.SDK);
        com.google.android.gms.ads.internal.zzt.zzp();
        linkedHashMap.put(new ObfuscatedString(new long[]{-5807597158463226059L, 4620950707190662231L}).toString(), com.google.android.gms.ads.internal.util.zzt.zzr());
        if (context.getApplicationContext() != null) {
            packageName = context.getApplicationContext().getPackageName();
        } else {
            packageName = context.getPackageName();
        }
        linkedHashMap.put(new ObfuscatedString(new long[]{8355241971418404415L, 334972536033625034L}).toString(), packageName);
        com.google.android.gms.ads.internal.zzt.zzp();
        if (true != com.google.android.gms.ads.internal.util.zzt.zzD(context)) {
            obfuscatedString = new ObfuscatedString(new long[]{3466963691407877898L, -7103599504306054182L}).toString();
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{-3825627018158257398L, -7776773766444064640L}).toString();
        }
        linkedHashMap.put(new ObfuscatedString(new long[]{-4880136469401218055L, 3589961993564760436L, 1285982362766002820L}).toString(), obfuscatedString);
        Future zzb = com.google.android.gms.ads.internal.zzt.zzm().zzb(context);
        try {
            linkedHashMap.put(new ObfuscatedString(new long[]{7760010916584468739L, -8727858722372877323L, -2446269299870087624L}).toString(), Integer.toString(((zzbzj) zzb.get()).zzk));
            linkedHashMap.put(new ObfuscatedString(new long[]{-6283930080295685597L, 4497456128493853304L, -4414419496524016594L}).toString(), Integer.toString(((zzbzj) zzb.get()).zzl));
        } catch (Exception e) {
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{7039829882494119726L, 1596403438969688868L, 162649359010671357L, -3457766312966255887L, -196112336692821611L, -5436910418587646613L}).toString());
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkL)).booleanValue()) {
            Map map = this.zzb;
            com.google.android.gms.ads.internal.zzt.zzp();
            if (true != com.google.android.gms.ads.internal.util.zzt.zzA(context)) {
                obfuscatedString2 = new ObfuscatedString(new long[]{4154497000172666625L, -1493310736165564269L}).toString();
            } else {
                obfuscatedString2 = new ObfuscatedString(new long[]{7225214185782922246L, -6294732107014446494L}).toString();
            }
            map.put(new ObfuscatedString(new long[]{-7247861631923500462L, 4997460213116856478L}).toString(), obfuscatedString2);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjn)).booleanValue()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzcc)).booleanValue() && !zzfxt.zzd(com.google.android.gms.ads.internal.zzt.zzo().zzn())) {
                this.zzb.put(new ObfuscatedString(new long[]{-6326446466246967119L, -2857706566354490984L}).toString(), com.google.android.gms.ads.internal.zzt.zzo().zzn());
            }
        }
    }

    public final Context zza() {
        return this.zzc;
    }

    public final String zzb() {
        return this.zzd;
    }

    public final String zzc() {
        return this.zza;
    }

    public final Map zzd() {
        return this.zzb;
    }
}
