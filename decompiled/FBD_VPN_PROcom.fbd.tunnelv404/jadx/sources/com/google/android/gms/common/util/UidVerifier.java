package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import androidx.annotation.NonNull;
import com.google.android.gms.common.GoogleSignatureVerifier;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.wrappers.Wrappers;
import com.panda912.muddy.ObfuscatedString;

@KeepForSdk
/* loaded from: classes2.dex */
public final class UidVerifier {
    private UidVerifier() {
    }

    @KeepForSdk
    public static boolean isGooglePlayServicesUid(@NonNull Context context, int i) {
        if (uidHasPackageName(context, i, new ObfuscatedString(new long[]{-3143255206772708231L, -953215959954640478L, -4130959732808267123L, 8173126574045389538L}).toString())) {
            try {
                return GoogleSignatureVerifier.getInstance(context).isGooglePublicSignedPackage(context.getPackageManager().getPackageInfo(new ObfuscatedString(new long[]{5180582712993559524L, 1803397504022917189L, -641174396627031282L, -7747812916682169089L}).toString(), 64));
            } catch (PackageManager.NameNotFoundException unused) {
                if (Log.isLoggable(new ObfuscatedString(new long[]{-3156810952911763447L, 1213712262223241840L, -7495172526536604382L}).toString(), 3)) {
                    new ObfuscatedString(new long[]{-8087012578506567117L, -7429567801654448772L, -9116549416494931138L}).toString();
                    new ObfuscatedString(new long[]{-2807618879045729532L, 8443969829912942237L, 8632973408973498100L, -7712158280083196576L, -5036662810780982881L, -6430803595052436931L, 8270718851013610006L, 5544133639316224441L, 6849739600207817145L, -2462324503963084277L, -6095113870682817025L}).toString();
                    return false;
                }
                return false;
            }
        }
        return false;
    }

    @KeepForSdk
    @TargetApi(19)
    public static boolean uidHasPackageName(@NonNull Context context, int i, @NonNull String str) {
        return Wrappers.packageManager(context).zza(i, str);
    }
}
