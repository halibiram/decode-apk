package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzevz implements zzexq, zzexp {
    private final ApplicationInfo zza;

    @Nullable
    private final PackageInfo zzb;
    private final Context zzc;

    public zzevz(ApplicationInfo applicationInfo, @Nullable PackageInfo packageInfo, Context context) {
        this.zza = applicationInfo;
        this.zzb = packageInfo;
        this.zzc = context;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final int zza() {
        return 29;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final ListenableFuture zzb() {
        return zzgen.zzh(this);
    }

    @Override // com.google.android.gms.internal.ads.zzexp
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        Integer valueOf;
        Bundle bundle = (Bundle) obj;
        String str = this.zza.packageName;
        PackageInfo packageInfo = this.zzb;
        String str2 = null;
        if (packageInfo == null) {
            valueOf = null;
        } else {
            valueOf = Integer.valueOf(packageInfo.versionCode);
        }
        bundle.putString(new ObfuscatedString(new long[]{-263732038239007030L, -8543691047281477872L}).toString(), str);
        if (valueOf != null) {
            bundle.putInt(new ObfuscatedString(new long[]{-3230649053736302472L, -5487904060885537811L}).toString(), valueOf.intValue());
        }
        PackageInfo packageInfo2 = this.zzb;
        if (packageInfo2 != null) {
            str2 = packageInfo2.versionName;
        }
        if (str2 != null) {
            bundle.putString(new ObfuscatedString(new long[]{975568513613722146L, -5174619695570290473L}).toString(), str2);
        }
        try {
            Context context = this.zzc;
            String str3 = this.zza.packageName;
            zzftt zzfttVar = com.google.android.gms.ads.internal.util.zzt.zza;
            bundle.putString(new ObfuscatedString(new long[]{3015080012470430478L, 8738813120193228510L}).toString(), String.valueOf(Wrappers.packageManager(context).getApplicationLabel(str3)));
        } catch (PackageManager.NameNotFoundException unused) {
        }
    }
}
