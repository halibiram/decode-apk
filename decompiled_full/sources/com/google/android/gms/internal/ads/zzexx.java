package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.LocaleList;
import android.os.StatFs;
import androidx.annotation.Nullable;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;
import okhttp3.internal.ws.RealWebSocket;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzexx implements zzexq {
    private final zzgey zza;
    private final Context zzb;

    public zzexx(zzgey zzgeyVar, Context context) {
        this.zza = zzgeyVar;
        this.zzb = context;
    }

    @Nullable
    private static ResolveInfo zzd(PackageManager packageManager, String str) {
        return packageManager.resolveActivity(new Intent(new ObfuscatedString(new long[]{3036912671111285136L, -8374314437823236306L, 8730021785315360962L, 9143325873888083359L, 7544482451124681625L}).toString(), Uri.parse(str)), 65536);
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final int zza() {
        return 38;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final ListenableFuture zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzexw
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzexx.this.zzc();
            }
        });
    }

    /* JADX WARN: Can't wrap try/catch for region: R(22:1|(3:3|(1:6)|7)|8|(3:65|66|(18:68|11|12|13|(13:15|16|(2:48|(3:51|(3:54|(2:57|58)(1:56)|52)|59))|18|19|(2:21|(7:23|24|(5:26|27|28|(2:32|33)|44)(1:46)|(1:35)(1:42)|(1:37)(1:41)|38|39))|47|24|(0)(0)|(0)(0)|(0)(0)|38|39)|61|16|(0)|18|19|(0)|47|24|(0)(0)|(0)(0)|(0)(0)|38|39))|10|11|12|13|(0)|61|16|(0)|18|19|(0)|47|24|(0)(0)|(0)(0)|(0)(0)|38|39) */
    /* JADX WARN: Incorrect condition in loop: B:5:0x0065 */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00de A[Catch: Exception -> 0x0103, TRY_LEAVE, TryCatch #0 {Exception -> 0x0103, blocks: (B:13:0x00c6, B:15:0x00de), top: B:12:0x00c6 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0220  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0222  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0202  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x010d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final /* synthetic */ zzexv zzc() {
        ActivityInfo activityInfo;
        PackageInfo packageInfo;
        String str;
        String str2;
        boolean equals;
        boolean z;
        String obfuscatedString;
        boolean z2;
        boolean z3;
        PackageInfo packageInfo2;
        LocaleList localeList;
        int size;
        Locale locale;
        PackageManager packageManager = this.zzb.getPackageManager();
        String obfuscatedString2 = new ObfuscatedString(new long[]{-1113639153488347882L, -6667770766453071859L, 7385037381460299883L}).toString();
        Locale locale2 = Locale.getDefault();
        ResolveInfo zzd = zzd(packageManager, obfuscatedString2);
        ResolveInfo zzd2 = zzd(packageManager, new ObfuscatedString(new long[]{-7429305130509850353L, 2044185393750091921L, -6936774627923306893L, -522858634959547204L}).toString());
        String country = locale2.getCountry();
        com.google.android.gms.ads.internal.zzt.zzp();
        com.google.android.gms.ads.internal.client.zzay.zzb();
        boolean zzr = zzcdv.zzr();
        Context context = this.zzb;
        boolean isLatchsky = DeviceProperties.isLatchsky(context);
        boolean isSidewinder = DeviceProperties.isSidewinder(context);
        String language = locale2.getLanguage();
        ArrayList arrayList = new ArrayList();
        if (Build.VERSION.SDK_INT >= 24) {
            localeList = LocaleList.getDefault();
            for (int i = 0; i < size; i++) {
                locale = localeList.get(i);
                arrayList.add(locale.getLanguage());
            }
        }
        Context context2 = this.zzb;
        ResolveInfo zzd3 = zzd(packageManager, new ObfuscatedString(new long[]{-4826161742965562956L, 7031216295363673474L, 3276574771433597407L, -4054540764858108028L, -5978887736238220275L, 3330336601770654710L, 5304254577473105095L}).toString());
        if (zzd3 != null && (activityInfo = zzd3.activityInfo) != null) {
            try {
                packageInfo = Wrappers.packageManager(context2).getPackageInfo(activityInfo.packageName, 0);
            } catch (PackageManager.NameNotFoundException unused) {
            }
            if (packageInfo != null) {
                str = packageInfo.versionCode + new ObfuscatedString(new long[]{1633280554858513742L, 1180603408127846421L}).toString() + activityInfo.packageName;
                packageInfo2 = Wrappers.packageManager(this.zzb).getPackageInfo(new ObfuscatedString(new long[]{-3130800056920551684L, 3059601259491490701L, 6173131043389834576L, 6022179150614754344L}).toString(), 128);
                if (packageInfo2 != null) {
                    str2 = packageInfo2.versionCode + new ObfuscatedString(new long[]{-5877716327541028905L, -4196103366880882774L}).toString() + packageInfo2.packageName;
                    Context context3 = this.zzb;
                    String str3 = Build.FINGERPRINT;
                    if (packageManager != null) {
                        Intent intent = new Intent(new ObfuscatedString(new long[]{-4986347288020089870L, 1340637331055524998L, -7917375016594939932L, -9063092290160454265L, -8281331894628534083L}).toString(), Uri.parse(new ObfuscatedString(new long[]{7723956798152328787L, -3524984673202553925L, -6563820674211198912L, -7060318150729915321L}).toString()));
                        ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 0);
                        List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
                        if (queryIntentActivities != null && resolveActivity != null) {
                            for (int i2 = 0; i2 < queryIntentActivities.size(); i2++) {
                                if (resolveActivity.activityInfo.name.equals(queryIntentActivities.get(i2).activityInfo.name)) {
                                    equals = resolveActivity.activityInfo.packageName.equals(zzhhv.zza(context3));
                                    break;
                                }
                            }
                        }
                    }
                    equals = false;
                    com.google.android.gms.ads.internal.zzt.zzp();
                    long availableBytes = new StatFs(Environment.getDataDirectory().getAbsolutePath()).getAvailableBytes() / RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE;
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkM)).booleanValue()) {
                        com.google.android.gms.ads.internal.zzt.zzp();
                        if (com.google.android.gms.ads.internal.util.zzt.zzA(this.zzb)) {
                            z = true;
                            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkO)).booleanValue()) {
                                Context context4 = this.zzb;
                                try {
                                    Bundle bundle = Wrappers.packageManager(context4).getApplicationInfo(context4.getPackageName(), 128).metaData;
                                    if (bundle != null && bundle.containsKey(new ObfuscatedString(new long[]{1691078193317166552L, 6297722578415574998L, 5380686545775193219L, 6132577656899935051L, -5176978144691642855L, -4665562324784819195L}).toString())) {
                                        obfuscatedString = bundle.getString(new ObfuscatedString(new long[]{8453325837015722101L, 2410252350053637380L, 8774268814391970921L, -259306274170722564L, 2868654939943494930L, -6653769217095098741L}).toString());
                                    }
                                } catch (PackageManager.NameNotFoundException unused2) {
                                }
                                obfuscatedString = null;
                            } else {
                                obfuscatedString = new ObfuscatedString(new long[]{664080968082276630L}).toString();
                            }
                            if (zzd2 == null) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            if (zzd == null) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            return new zzexv(z3, z2, country, zzr, isLatchsky, isSidewinder, language, arrayList, str, str2, str3, equals, Build.MODEL, availableBytes, z, obfuscatedString, Build.VERSION.SDK_INT);
                        }
                    }
                    z = false;
                    if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkO)).booleanValue()) {
                    }
                    if (zzd2 == null) {
                    }
                    if (zzd == null) {
                    }
                    return new zzexv(z3, z2, country, zzr, isLatchsky, isSidewinder, language, arrayList, str, str2, str3, equals, Build.MODEL, availableBytes, z, obfuscatedString, Build.VERSION.SDK_INT);
                }
                str2 = null;
                Context context32 = this.zzb;
                String str32 = Build.FINGERPRINT;
                if (packageManager != null) {
                }
                equals = false;
                com.google.android.gms.ads.internal.zzt.zzp();
                long availableBytes2 = new StatFs(Environment.getDataDirectory().getAbsolutePath()).getAvailableBytes() / RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkM)).booleanValue()) {
                }
                z = false;
                if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkO)).booleanValue()) {
                }
                if (zzd2 == null) {
                }
                if (zzd == null) {
                }
                return new zzexv(z3, z2, country, zzr, isLatchsky, isSidewinder, language, arrayList, str, str2, str32, equals, Build.MODEL, availableBytes2, z, obfuscatedString, Build.VERSION.SDK_INT);
            }
        }
        str = null;
        packageInfo2 = Wrappers.packageManager(this.zzb).getPackageInfo(new ObfuscatedString(new long[]{-3130800056920551684L, 3059601259491490701L, 6173131043389834576L, 6022179150614754344L}).toString(), 128);
        if (packageInfo2 != null) {
        }
        str2 = null;
        Context context322 = this.zzb;
        String str322 = Build.FINGERPRINT;
        if (packageManager != null) {
        }
        equals = false;
        com.google.android.gms.ads.internal.zzt.zzp();
        long availableBytes22 = new StatFs(Environment.getDataDirectory().getAbsolutePath()).getAvailableBytes() / RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkM)).booleanValue()) {
        }
        z = false;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkO)).booleanValue()) {
        }
        if (zzd2 == null) {
        }
        if (zzd == null) {
        }
        return new zzexv(z3, z2, country, zzr, isLatchsky, isSidewinder, language, arrayList, str, str2, str322, equals, Build.MODEL, availableBytes22, z, obfuscatedString, Build.VERSION.SDK_INT);
    }
}
