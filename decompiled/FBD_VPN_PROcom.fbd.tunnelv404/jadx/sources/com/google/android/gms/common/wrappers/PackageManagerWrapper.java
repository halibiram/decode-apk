package com.google.android.gms.common.wrappers;

import android.annotation.TargetApi;
import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.graphics.drawable.Drawable;
import android.os.Binder;
import android.os.Process;
import androidx.annotation.NonNull;
import androidx.core.util.Pair;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import com.panda912.muddy.ObfuscatedString;

@KeepForSdk
/* loaded from: classes2.dex */
public class PackageManagerWrapper {

    @NonNull
    protected final Context zza;

    public PackageManagerWrapper(@NonNull Context context) {
        this.zza = context;
    }

    @KeepForSdk
    public int checkCallingOrSelfPermission(@NonNull String str) {
        return this.zza.checkCallingOrSelfPermission(str);
    }

    @ResultIgnorabilityUnspecified
    @KeepForSdk
    public int checkPermission(@NonNull String str, @NonNull String str2) {
        return this.zza.getPackageManager().checkPermission(str, str2);
    }

    @NonNull
    @ResultIgnorabilityUnspecified
    @KeepForSdk
    public ApplicationInfo getApplicationInfo(@NonNull String str, int i) {
        return this.zza.getPackageManager().getApplicationInfo(str, i);
    }

    @NonNull
    @KeepForSdk
    public CharSequence getApplicationLabel(@NonNull String str) {
        Context context = this.zza;
        return context.getPackageManager().getApplicationLabel(context.getPackageManager().getApplicationInfo(str, 0));
    }

    @NonNull
    @ResultIgnorabilityUnspecified
    @KeepForSdk
    public Pair<CharSequence, Drawable> getApplicationLabelAndIcon(@NonNull String str) {
        ApplicationInfo applicationInfo = this.zza.getPackageManager().getApplicationInfo(str, 0);
        return Pair.create(this.zza.getPackageManager().getApplicationLabel(applicationInfo), this.zza.getPackageManager().getApplicationIcon(applicationInfo));
    }

    @NonNull
    @ResultIgnorabilityUnspecified
    @KeepForSdk
    public PackageInfo getPackageInfo(@NonNull String str, int i) {
        return this.zza.getPackageManager().getPackageInfo(str, i);
    }

    @KeepForSdk
    public boolean isCallerInstantApp() {
        String nameForUid;
        boolean isInstantApp;
        if (Binder.getCallingUid() == Process.myUid()) {
            return InstantApps.isInstantApp(this.zza);
        }
        if (PlatformVersion.isAtLeastO() && (nameForUid = this.zza.getPackageManager().getNameForUid(Binder.getCallingUid())) != null) {
            isInstantApp = this.zza.getPackageManager().isInstantApp(nameForUid);
            return isInstantApp;
        }
        return false;
    }

    @TargetApi(19)
    public final boolean zza(int i, @NonNull String str) {
        if (PlatformVersion.isAtLeastKitKat()) {
            try {
                AppOpsManager appOpsManager = (AppOpsManager) this.zza.getSystemService(new ObfuscatedString(new long[]{-5627860769283710697L, -3478216032925123542L}).toString());
                if (appOpsManager != null) {
                    appOpsManager.checkPackage(i, str);
                    return true;
                }
                throw new NullPointerException(new ObfuscatedString(new long[]{-2862399781117517700L, 5000056509407154475L, 7072523756568646809L, 8178538703545837638L, -5213323165803082146L, -464355761741865696L, -8318916481011928160L, -7230702287433040854L, -4890312098172100064L}).toString());
            } catch (SecurityException unused) {
                return false;
            }
        }
        String[] packagesForUid = this.zza.getPackageManager().getPackagesForUid(i);
        if (str != null && packagesForUid != null) {
            for (String str2 : packagesForUid) {
                if (str.equals(str2)) {
                    return true;
                }
            }
        }
        return false;
    }
}
