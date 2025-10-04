package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.webkit.WebSettings;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.util.ClientLibraryUtils;
import com.google.android.gms.common.util.SharedPreferencesUtils;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzck {
    private static zzck zzb;
    String zza;

    private zzck() {
    }

    public static zzck zza() {
        if (zzb == null) {
            zzb = new zzck();
        }
        return zzb;
    }

    public final void zzb(Context context) {
        zze.zza(new ObfuscatedString(new long[]{3435454779010304943L, 5660241528471577844L, -7700933380614785431L, -3142400116354273182L}).toString());
        String defaultUserAgent = WebSettings.getDefaultUserAgent(context);
        if (!defaultUserAgent.equals(this.zza)) {
            Context remoteContext = GooglePlayServicesUtilLight.getRemoteContext(context);
            if (!ClientLibraryUtils.isPackageSide()) {
                if (remoteContext == null) {
                    remoteContext = null;
                }
                this.zza = defaultUserAgent;
            }
            SharedPreferences.Editor putString = context.getSharedPreferences(new ObfuscatedString(new long[]{2152093398682865566L, -3453192212503667179L, 2085231816836799004L}).toString(), 0).edit().putString(new ObfuscatedString(new long[]{3545926770199297078L, 1596919292515116911L, 7396786689679717906L}).toString(), WebSettings.getDefaultUserAgent(context));
            if (remoteContext == null) {
                putString.apply();
            } else {
                SharedPreferencesUtils.publishWorldReadableSharedPreferences(context, putString, new ObfuscatedString(new long[]{3332507239730369049L, 6958174001763789679L, 3172926200404131427L}).toString());
            }
            this.zza = defaultUserAgent;
        }
        zze.zza(new ObfuscatedString(new long[]{-6951734266035022332L, -7440845318400641091L, -8122766427394332833L, -4912149904719625149L}).toString());
    }
}
