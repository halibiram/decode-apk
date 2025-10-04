package com.google.android.gms.internal.ads;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import com.panda912.muddy.ObfuscatedString;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzeri implements zzexp {
    public final Context zza;
    public final com.google.android.gms.ads.internal.client.zzq zzb;
    public final List zzc;

    public zzeri(Context context, com.google.android.gms.ads.internal.client.zzq zzqVar, List list) {
        this.zza = context;
        this.zzb = zzqVar;
        this.zzc = list;
    }

    @Override // com.google.android.gms.internal.ads.zzexp
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        List<ActivityManager.RunningTaskInfo> runningTasks;
        ActivityManager.RunningTaskInfo runningTaskInfo;
        ComponentName componentName;
        ComponentName componentName2;
        Bundle bundle = (Bundle) obj;
        if (!((Boolean) zzbie.zza.zze()).booleanValue()) {
            return;
        }
        Bundle bundle2 = new Bundle();
        com.google.android.gms.ads.internal.zzt.zzp();
        String str = null;
        try {
            ActivityManager activityManager = (ActivityManager) this.zza.getSystemService(new ObfuscatedString(new long[]{-6601469406312102358L, 1846565981015842173L}).toString());
            if (activityManager != null && (runningTasks = activityManager.getRunningTasks(1)) != null && !runningTasks.isEmpty() && (runningTaskInfo = runningTasks.get(0)) != null) {
                componentName = runningTaskInfo.topActivity;
                if (componentName != null) {
                    componentName2 = runningTaskInfo.topActivity;
                    str = componentName2.getClassName();
                }
            }
        } catch (Exception unused) {
        }
        bundle2.putString(new ObfuscatedString(new long[]{-2337717264852256326L, -5797591770580315702L}).toString(), str);
        Bundle bundle3 = new Bundle();
        bundle3.putInt(new ObfuscatedString(new long[]{-4846221945834657739L, -7083146944128843844L}).toString(), this.zzb.zze);
        bundle3.putInt(new ObfuscatedString(new long[]{5634736131944373044L, -2205116954798628913L}).toString(), this.zzb.zzb);
        bundle2.putBundle(new ObfuscatedString(new long[]{2430775555128115891L, -372105891228859000L}).toString(), bundle3);
        if (!this.zzc.isEmpty()) {
            List list = this.zzc;
            bundle2.putParcelableArray(new ObfuscatedString(new long[]{-6261196147061770453L, 4148285360334334069L}).toString(), (Parcelable[]) list.toArray(new Parcelable[list.size()]));
        }
        bundle.putBundle(new ObfuscatedString(new long[]{-2704964006525701289L, -3126591474405286798L, 6966786278415057222L}).toString(), bundle2);
    }
}
