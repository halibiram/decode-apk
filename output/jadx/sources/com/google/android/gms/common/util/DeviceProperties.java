package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.hardware.SensorManager;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.apps.common.proguard.SideEffectFree;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.panda912.muddy.ObfuscatedString;

@KeepForSdk
/* loaded from: classes2.dex */
public final class DeviceProperties {

    @Nullable
    private static Boolean zza;

    @Nullable
    private static Boolean zzb;

    @Nullable
    private static Boolean zzc;

    @Nullable
    private static Boolean zzd;

    @Nullable
    private static Boolean zze;

    @Nullable
    private static Boolean zzf;

    @Nullable
    private static Boolean zzg;

    @Nullable
    private static Boolean zzh;

    @Nullable
    private static Boolean zzi;

    @Nullable
    private static Boolean zzj;

    @Nullable
    private static Boolean zzk;

    @Nullable
    private static Boolean zzl;

    @Nullable
    private static Boolean zzm;

    @Nullable
    private static Boolean zzn;

    private DeviceProperties() {
    }

    @KeepForSdk
    public static boolean isAuto(@NonNull Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (zzj == null) {
            boolean z = false;
            if (PlatformVersion.isAtLeastO() && packageManager.hasSystemFeature(new ObfuscatedString(new long[]{5799752554939593635L, -1796752382447989932L, 3736132528827809291L, -5392292340121070990L, 5165712900332537796L}).toString())) {
                z = true;
            }
            zzj = Boolean.valueOf(z);
        }
        return zzj.booleanValue();
    }

    @KeepForSdk
    public static boolean isBstar(@NonNull Context context) {
        if (zzm == null) {
            boolean z = false;
            if (PlatformVersion.isAtLeastR() && context.getPackageManager().hasSystemFeature(new ObfuscatedString(new long[]{7120251336270672035L, -7418247824095043061L, 9023258750310276757L, 1220518616114462096L, -1692496263138986412L, 79690488850458706L, -1949185527738656735L}).toString())) {
                z = true;
            }
            zzm = Boolean.valueOf(z);
        }
        return zzm.booleanValue();
    }

    @KeepForSdk
    public static boolean isFoldable(@NonNull Context context) {
        if (zzc == null) {
            SensorManager sensorManager = (SensorManager) context.getSystemService(new ObfuscatedString(new long[]{6994715395455037706L, 1124861988518871255L}).toString());
            boolean z = false;
            if (PlatformVersion.isAtLeastR() && sensorManager != null && sensorManager.getDefaultSensor(36) != null) {
                z = true;
            }
            zzc = Boolean.valueOf(z);
        }
        return zzc.booleanValue();
    }

    @KeepForSdk
    public static boolean isLatchsky(@NonNull Context context) {
        if (zzg == null) {
            PackageManager packageManager = context.getPackageManager();
            boolean z = false;
            if (packageManager.hasSystemFeature(new ObfuscatedString(new long[]{5743536737252795831L, -1514318618633128889L, 7971262781354246333L, 1933246362895398513L, -6412754514792653462L, 4493699532659416680L, 1484012358818629327L}).toString()) && packageManager.hasSystemFeature(new ObfuscatedString(new long[]{8832541617614833842L, -4140964381578163852L, -1066867156261232101L, 2752157545191899100L}).toString())) {
                z = true;
            }
            zzg = Boolean.valueOf(z);
        }
        return zzg.booleanValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0086, code lost:
    
        if (isXr(r5) == false) goto L32;
     */
    @KeepForSdk
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean isPhone(@NonNull Context context) {
        if (zza == null) {
            boolean z = true;
            if (!isFoldable(context)) {
                if (!isTablet(context) && !isWearable(context) && !zzb(context)) {
                    if (zzi == null) {
                        zzi = Boolean.valueOf(context.getPackageManager().hasSystemFeature(new ObfuscatedString(new long[]{6404358560549679070L, -6730853298182410461L, 2900468044015856147L}).toString()));
                    }
                    if (!zzi.booleanValue() && !isAuto(context) && !isTv(context)) {
                        if (zzl == null) {
                            zzl = Boolean.valueOf(context.getPackageManager().hasSystemFeature(new ObfuscatedString(new long[]{-935876833159294604L, -8591429169280617921L, -7083362640277925741L, -6585784897859012552L, 2547039688115645682L, 3794876586084222671L, 3080176228259089292L}).toString()));
                        }
                        if (!zzl.booleanValue()) {
                            if (!isBstar(context)) {
                            }
                        }
                    }
                }
                z = false;
            }
            zza = Boolean.valueOf(z);
        }
        return zza.booleanValue();
    }

    @KeepForSdk
    public static boolean isSevenInchTablet(@NonNull Context context) {
        return zzc(context.getResources());
    }

    @KeepForSdk
    @TargetApi(21)
    public static boolean isSidewinder(@NonNull Context context) {
        return zza(context);
    }

    @KeepForSdk
    public static boolean isTablet(@NonNull Context context) {
        return isTablet(context.getResources());
    }

    @KeepForSdk
    public static boolean isTv(@NonNull Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (zzk == null) {
            boolean z = true;
            if (!packageManager.hasSystemFeature(new ObfuscatedString(new long[]{-7087884341325353280L, 4079128608768379886L, 7293057847569671148L, 4804175034333376462L}).toString()) && !packageManager.hasSystemFeature(new ObfuscatedString(new long[]{5890493851912243267L, -8809794417532710110L, -4819379108263301411L, 3040623821022443901L, -6219369696830592728L}).toString()) && !packageManager.hasSystemFeature(new ObfuscatedString(new long[]{-5445643598816082327L, -3689848249091699612L, -4765076318262456270L, -3976860600891801430L, -586886550211091039L}).toString())) {
                z = false;
            }
            zzk = Boolean.valueOf(z);
        }
        return zzk.booleanValue();
    }

    @KeepForSdk
    public static boolean isUserBuild() {
        int i = GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;
        return new ObfuscatedString(new long[]{-3748173529950894019L, -9039762600661885236L}).toString().equals(Build.TYPE);
    }

    @SideEffectFree
    @KeepForSdk
    @TargetApi(20)
    public static boolean isWearable(@NonNull Context context) {
        return zzd(context.getPackageManager());
    }

    @KeepForSdk
    @TargetApi(26)
    public static boolean isWearableWithoutPlayStore(@NonNull Context context) {
        if (!isWearable(context) || PlatformVersion.isAtLeastN()) {
            if (zza(context)) {
                if (!PlatformVersion.isAtLeastO() || PlatformVersion.isAtLeastR()) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    @KeepForSdk
    public static boolean isXr(@NonNull Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (zzn == null) {
            zzn = Boolean.valueOf(packageManager.hasSystemFeature(new ObfuscatedString(new long[]{6717502415067172691L, 6479770971733712530L, -9056873067362233351L, 8014459467290982952L, -1748972379875122118L}).toString()));
        }
        return zzn.booleanValue();
    }

    @TargetApi(21)
    public static boolean zza(@NonNull Context context) {
        if (zzf == null) {
            boolean z = false;
            if (PlatformVersion.isAtLeastLollipop() && context.getPackageManager().hasSystemFeature(new ObfuscatedString(new long[]{-3410464962623552804L, 4201571977752905095L, -6533985731827360776L}).toString())) {
                z = true;
            }
            zzf = Boolean.valueOf(z);
        }
        return zzf.booleanValue();
    }

    public static boolean zzb(@NonNull Context context) {
        if (zzh == null) {
            boolean z = true;
            if (!context.getPackageManager().hasSystemFeature(new ObfuscatedString(new long[]{7549726509759186558L, 6575181042612583867L, 6122443532946889632L, -8457057913648495325L, -5479613491280567836L}).toString()) && !context.getPackageManager().hasSystemFeature(new ObfuscatedString(new long[]{4917637630250744064L, 6340447910899921572L, -2118849155729854664L, 4390504624736853050L, -8879876442566650445L}).toString())) {
                z = false;
            }
            zzh = Boolean.valueOf(z);
        }
        return zzh.booleanValue();
    }

    public static boolean zzc(@NonNull Resources resources) {
        boolean z = false;
        if (resources == null) {
            return false;
        }
        if (zzd == null) {
            Configuration configuration = resources.getConfiguration();
            if ((configuration.screenLayout & 15) <= 3 && configuration.smallestScreenWidthDp >= 600) {
                z = true;
            }
            zzd = Boolean.valueOf(z);
        }
        return zzd.booleanValue();
    }

    @SideEffectFree
    @TargetApi(20)
    public static boolean zzd(@NonNull PackageManager packageManager) {
        if (zze == null) {
            boolean z = false;
            if (PlatformVersion.isAtLeastKitKatWatch() && packageManager.hasSystemFeature(new ObfuscatedString(new long[]{5142911833343224039L, 2694463168029532337L, 7483381097962471346L, -8938698204516247071L, 3637402290646554353L}).toString())) {
                z = true;
            }
            zze = Boolean.valueOf(z);
        }
        return zze.booleanValue();
    }

    @KeepForSdk
    public static boolean isTablet(@NonNull Resources resources) {
        if (resources == null) {
            return false;
        }
        if (zzb == null) {
            zzb = Boolean.valueOf((resources.getConfiguration().screenLayout & 15) > 3 || zzc(resources));
        }
        return zzb.booleanValue();
    }
}
