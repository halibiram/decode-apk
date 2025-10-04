package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.wrappers.Wrappers;
import com.panda912.muddy.ObfuscatedString;

@KeepForSdk
/* loaded from: classes2.dex */
public class ClientLibraryUtils {
    private ClientLibraryUtils() {
    }

    @KeepForSdk
    public static int getClientVersion(@NonNull Context context, @NonNull String str) {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        PackageInfo packageInfo = getPackageInfo(context, str);
        if (packageInfo == null || (applicationInfo = packageInfo.applicationInfo) == null || (bundle = applicationInfo.metaData) == null) {
            return -1;
        }
        return bundle.getInt(new ObfuscatedString(new long[]{-7883190254019657814L, -7726925938654037359L, -4960405467369910946L, 601969954199827356L, 6581492746073935059L}).toString(), -1);
    }

    @Nullable
    @KeepForSdk
    public static PackageInfo getPackageInfo(@NonNull Context context, @NonNull String str) {
        try {
            return Wrappers.packageManager(context).getPackageInfo(str, 128);
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    @KeepForSdk
    public static boolean isPackageSide() {
        return false;
    }
}
