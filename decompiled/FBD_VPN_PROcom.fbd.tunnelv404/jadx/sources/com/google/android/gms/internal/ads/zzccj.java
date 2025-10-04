package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.VisibleForTesting;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzccj {
    @VisibleForTesting
    public static Uri zza(String str, String str2, String str3) {
        int indexOf = str.indexOf(new ObfuscatedString(new long[]{-5273594600994095468L, -483458157812311810L}).toString());
        if (indexOf == -1) {
            indexOf = str.indexOf(new ObfuscatedString(new long[]{-1986851408477489421L, 1706977634147564219L}).toString());
        }
        if (indexOf != -1) {
            int i = indexOf + 1;
            return Uri.parse(str.substring(0, i) + str2 + new ObfuscatedString(new long[]{5071171561830076496L, 8378265845676910106L}).toString() + str3 + new ObfuscatedString(new long[]{2608671111160746750L, 2006180129027620710L}).toString() + str.substring(i));
        }
        return Uri.parse(str).buildUpon().appendQueryParameter(str2, str3).build();
    }

    public static String zzb(Uri uri, Context context) {
        if (!com.google.android.gms.ads.internal.zzt.zzn().zzp(context)) {
            return uri.toString();
        }
        String zza = com.google.android.gms.ads.internal.zzt.zzn().zza(context);
        if (zza == null) {
            return uri.toString();
        }
        String str = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzae);
        String uri2 = uri.toString();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzad)).booleanValue() && uri2.contains(str)) {
            com.google.android.gms.ads.internal.zzt.zzn().zzj(context, zza);
            return zzd(uri2, context).replace(str, zza);
        }
        if (!TextUtils.isEmpty(uri.getQueryParameter(new ObfuscatedString(new long[]{-1539262093687756967L, 5085050934925898992L}).toString()))) {
            return uri2;
        }
        String uri3 = zza(zzd(uri2, context), new ObfuscatedString(new long[]{7583381421478212605L, -963306698634193519L}).toString(), zza).toString();
        com.google.android.gms.ads.internal.zzt.zzn().zzj(context, zza);
        return uri3;
    }

    public static String zzc(String str, Context context, boolean z) {
        String zza;
        if ((!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzal)).booleanValue() || z) && com.google.android.gms.ads.internal.zzt.zzn().zzp(context) && !TextUtils.isEmpty(str) && (zza = com.google.android.gms.ads.internal.zzt.zzn().zza(context)) != null) {
            String str2 = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzae);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzad)).booleanValue() && str.contains(str2)) {
                if (com.google.android.gms.ads.internal.zzt.zzp().zzi(str)) {
                    com.google.android.gms.ads.internal.zzt.zzn().zzj(context, zza);
                    return zzd(str, context).replace(str2, zza);
                }
                if (com.google.android.gms.ads.internal.zzt.zzp().zzj(str)) {
                    com.google.android.gms.ads.internal.zzt.zzn().zzk(context, zza);
                    return zzd(str, context).replace(str2, zza);
                }
                return str;
            }
            if (!str.contains(new ObfuscatedString(new long[]{1700273816885974970L, 920721023423093108L}).toString())) {
                if (com.google.android.gms.ads.internal.zzt.zzp().zzi(str)) {
                    com.google.android.gms.ads.internal.zzt.zzn().zzj(context, zza);
                    return zza(zzd(str, context), new ObfuscatedString(new long[]{-630054821280227227L, -2794844875813884713L}).toString(), zza).toString();
                }
                if (com.google.android.gms.ads.internal.zzt.zzp().zzj(str)) {
                    com.google.android.gms.ads.internal.zzt.zzn().zzk(context, zza);
                    return zza(zzd(str, context), new ObfuscatedString(new long[]{-5161492719155110876L, 2936357290866823822L}).toString(), zza).toString();
                }
                return str;
            }
            return str;
        }
        return str;
    }

    private static String zzd(String str, Context context) {
        String zzd = com.google.android.gms.ads.internal.zzt.zzn().zzd(context);
        String zzb = com.google.android.gms.ads.internal.zzt.zzn().zzb(context);
        if (!str.contains(new ObfuscatedString(new long[]{6437527966537383314L, -3411862259696750740L, -3346759401019746379L}).toString()) && !TextUtils.isEmpty(zzd)) {
            str = zza(str, new ObfuscatedString(new long[]{6373959972571954437L, -6858949889250844415L, 659876882161308438L}).toString(), zzd).toString();
        }
        if (!str.contains(new ObfuscatedString(new long[]{2199684469354370336L, -101117917626135681L}).toString()) && !TextUtils.isEmpty(zzb)) {
            return zza(str, new ObfuscatedString(new long[]{4808648866598357849L, -6091254378520021117L}).toString(), zzb).toString();
        }
        return str;
    }
}
