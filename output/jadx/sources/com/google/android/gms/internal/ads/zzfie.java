package com.google.android.gms.internal.ads;

import android.content.Context;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzfie {
    public static void zza(Context context, boolean z) {
        if (z) {
            zzcec.zzi(new ObfuscatedString(new long[]{-4950676726777691102L, 2657147707692894662L, -7323168235463403980L, -4177830909272365254L, -6555177832798372911L, 2724260053590190601L}).toString());
            return;
        }
        com.google.android.gms.ads.internal.client.zzay.zzb();
        zzcec.zzi(new ObfuscatedString(new long[]{-8300373532369239160L, -8202820082703365254L, 2201839963150907207L, 8682989375241860094L, 3538129799505989391L, -719464235518199658L, -3960339754891939352L, -7204485577277340611L, 344805969117652384L, -3274686799207115768L}).toString() + zzcdv.zzy(context) + new ObfuscatedString(new long[]{2186105991948620136L, -5975479013924453228L, 2234355988419853379L, -2599556973823041037L, 5775789132154392318L, 5361580437692172968L}).toString());
    }

    public static void zzb(int i, Throwable th, String str) {
        zzcec.zzi(new ObfuscatedString(new long[]{7366962892597017146L, -3959028493986146412L, -4324024819735558691L, 1204555809850872087L}).toString() + i);
        com.google.android.gms.ads.internal.util.zze.zzb(str, th);
        if (i == 3) {
            return;
        }
        com.google.android.gms.ads.internal.zzt.zzo().zzv(th, str);
    }
}
