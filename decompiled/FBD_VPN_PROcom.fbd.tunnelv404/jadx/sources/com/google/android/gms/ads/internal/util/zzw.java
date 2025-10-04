package com.google.android.gms.ads.internal.util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.telephony.TelephonyManager;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.ads.zzbgc;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC1319x9e4ecaa8;

@TargetApi(26)
/* loaded from: classes2.dex */
public class zzw extends zzv {
    @Override // com.google.android.gms.ads.internal.util.zzab
    @Nullable
    public final Intent zzf(Activity activity) {
        Intent intent = new Intent();
        intent.setAction(new ObfuscatedString(new long[]{4588548353745682708L, -3418748014244914901L, 2859466166121303266L, 4784179058243540323L, -7235395953954169859L, -1114068644151942168L, -7533440854393217981L}).toString());
        intent.putExtra(new ObfuscatedString(new long[]{1723153408608762892L, -3422454338798177875L, -6206920776519771336L, -7976839750801494686L, 2830071416875037825L, 2472718204777077169L}).toString(), activity.getPackageName());
        return intent;
    }

    @Override // com.google.android.gms.ads.internal.util.zzab
    public final void zzg(Context context, String str, String str2) {
        Object systemService;
        AbstractC1319x9e4ecaa8.m4347x9738a56c();
        NotificationChannel m4344x3271d0aa = AbstractC1319x9e4ecaa8.m4344x3271d0aa(((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzir)).intValue(), new ObfuscatedString(new long[]{-6581519270381329664L, 5983594293659943185L, -5470965709958783265L, -2327847631832923079L, -8833204069827091903L}).toString(), new ObfuscatedString(new long[]{-6681688355149006378L, 7837579527303777529L, 7069311513379644685L, 3267195861467992837L, 1254972641790184214L}).toString());
        m4344x3271d0aa.setShowBadge(false);
        systemService = context.getSystemService((Class<Object>) NotificationManager.class);
        ((NotificationManager) systemService).createNotificationChannel(m4344x3271d0aa);
    }

    @Override // com.google.android.gms.ads.internal.util.zzab
    public final boolean zzh(Context context, String str) {
        Object systemService;
        NotificationChannel notificationChannel;
        int importance;
        systemService = context.getSystemService((Class<Object>) NotificationManager.class);
        notificationChannel = ((NotificationManager) systemService).getNotificationChannel(new ObfuscatedString(new long[]{6710222119805422683L, 7281348138259856028L, 7692000072490853567L, -7834074330342946682L, 1660072060617797484L}).toString());
        if (notificationChannel != null) {
            importance = notificationChannel.getImportance();
            if (importance != 0) {
                return false;
            }
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.ads.internal.util.zzab
    public final int zzi(Context context, TelephonyManager telephonyManager) {
        boolean isDataEnabled;
        com.google.android.gms.ads.internal.zzt.zzp();
        if (zzt.zzz(context, new ObfuscatedString(new long[]{9115378076743530017L, 966974727013458687L, -3838385500378153284L, -9160505334416093029L, 2297359331478597017L, 3025799678194693265L}).toString())) {
            isDataEnabled = telephonyManager.isDataEnabled();
            if (isDataEnabled) {
                return 2;
            }
        }
        return 1;
    }
}
