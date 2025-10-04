package com.google.android.gms.ads.internal.util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.res.Configuration;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzcdv;
import com.panda912.muddy.ObfuscatedString;

@TargetApi(24)
/* loaded from: classes2.dex */
public class zzv extends zzu {
    @VisibleForTesting
    public static final boolean zze(int i, int i2, int i3) {
        if (Math.abs(i - i2) <= i3) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.ads.internal.util.zzab
    public final boolean zzd(Activity activity, Configuration configuration) {
        int i;
        boolean isInMultiWindowMode;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzeJ)).booleanValue()) {
            return false;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzeL)).booleanValue()) {
            isInMultiWindowMode = activity.isInMultiWindowMode();
            return isInMultiWindowMode;
        }
        com.google.android.gms.ads.internal.client.zzay.zzb();
        int zzx = zzcdv.zzx(activity, configuration.screenHeightDp);
        int zzx2 = zzcdv.zzx(activity, configuration.screenWidthDp);
        WindowManager windowManager = (WindowManager) activity.getApplicationContext().getSystemService(new ObfuscatedString(new long[]{430095740685495566L, -3965065491484933114L}).toString());
        com.google.android.gms.ads.internal.zzt.zzp();
        DisplayMetrics zzs = zzt.zzs(windowManager);
        int i2 = zzs.heightPixels;
        int i3 = zzs.widthPixels;
        int identifier = activity.getResources().getIdentifier(new ObfuscatedString(new long[]{-1612038342790155975L, -1488757451367585087L, 4384061034295812641L, 6822913437587520680L}).toString(), new ObfuscatedString(new long[]{4040735400125911424L, 8208280967505105269L}).toString(), new ObfuscatedString(new long[]{6691610957104782754L, 8101599200245416680L}).toString());
        if (identifier > 0) {
            i = activity.getResources().getDimensionPixelSize(identifier);
        } else {
            i = 0;
        }
        int intValue = ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzeH)).intValue() * ((int) Math.round(activity.getResources().getDisplayMetrics().density + 0.5d));
        if (zze(i2, zzx + i, intValue) && zze(i3, zzx2, intValue)) {
            return false;
        }
        return true;
    }
}
