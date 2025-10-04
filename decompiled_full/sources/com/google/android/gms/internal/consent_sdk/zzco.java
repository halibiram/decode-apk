package com.google.android.gms.internal.consent_sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes2.dex */
public final class zzco {
    @Nullable
    public static zzcm zza(Context context, String str) {
        String str2;
        String str3;
        if (!TextUtils.isEmpty(str)) {
            String[] split = str.split(new ObfuscatedString(new long[]{-8518179910982310066L, -873539618226924909L}).toString(), -1);
            int length = split.length;
            if (length == 1) {
                String valueOf = String.valueOf(context.getPackageName());
                str3 = split[0];
                str2 = valueOf.concat(new ObfuscatedString(new long[]{8714367998277572216L, -8057736219879286332L, 3330356087047553170L}).toString());
            } else if (length == 2) {
                str2 = split[0];
                str3 = split[1];
            } else {
                return null;
            }
            if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
                return new zzcm(str2, str3);
            }
            return null;
        }
        return null;
    }

    public static void zzb(Context context, Set set) {
        SharedPreferences.Editor zzd;
        zzcn zzcnVar = new zzcn(context);
        Iterator it = set.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            zzcm zza = zza(context, str);
            if (zza == null) {
                String valueOf = String.valueOf(str);
                new ObfuscatedString(new long[]{-5535036910970235409L, -4083815524956795696L, -5213300553688396657L, -5109191189964962803L}).toString();
                new ObfuscatedString(new long[]{-2449012443641892379L, 1897233190254703684L, -8492033610729044397L, -7776578005751680308L, 1098102817346989734L, -9086717282755047687L}).toString().concat(valueOf);
            } else {
                zzd = zzcnVar.zzd(zza.zza);
                zzd.remove(zza.zzb);
            }
        }
        zzcnVar.zzb();
    }
}
