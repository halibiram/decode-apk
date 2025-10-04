package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import androidx.annotation.Nullable;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.wrappers.Wrappers;
import com.panda912.muddy.ObfuscatedString;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class zzbzi {
    private int zzA;
    private final String zzB;
    private boolean zzC;
    private int zza;
    private boolean zzb;
    private boolean zzc;
    private int zzd;
    private int zze;
    private int zzf;
    private String zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private boolean zzk;
    private int zzl;
    private double zzm;
    private boolean zzn;
    private String zzo;
    private String zzp;
    private final boolean zzq;
    private final boolean zzr;
    private final String zzs;
    private final boolean zzt;
    private final boolean zzu;
    private final boolean zzv;
    private final String zzw;
    private final String zzx;
    private float zzy;
    private int zzz;

    /* JADX WARN: Can't wrap try/catch for region: R(13:1|(1:3)(1:34)|4|(1:6)|7|(3:28|29|(7:31|10|11|12|(1:14)|16|(2:20|21)(1:23)))|9|10|11|12|(0)|16|(1:24)(3:18|20|21)) */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00da A[Catch: Exception -> 0x00ff, TRY_LEAVE, TryCatch #0 {Exception -> 0x00ff, blocks: (B:12:0x00c0, B:14:0x00da), top: B:11:0x00c0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzbzi(Context context) {
        ActivityInfo activityInfo;
        PackageInfo packageInfo;
        String str;
        Resources resources;
        DisplayMetrics displayMetrics;
        PackageInfo packageInfo2;
        PackageManager packageManager = context.getPackageManager();
        zzbgc.zza(context);
        zzc(context);
        zze(context);
        zzd(context);
        String obfuscatedString = new ObfuscatedString(new long[]{7835101848607603488L, -1686128019220219981L, -6428208452346586945L}).toString();
        Locale locale = Locale.getDefault();
        this.zzq = zzb(packageManager, obfuscatedString) != null;
        this.zzr = zzb(packageManager, new ObfuscatedString(new long[]{-2037812347998456302L, 8272826258883477356L, -2238431032642208991L, 2982069494449399572L}).toString()) != null;
        this.zzs = locale.getCountry();
        com.google.android.gms.ads.internal.zzt.zzp();
        com.google.android.gms.ads.internal.client.zzay.zzb();
        this.zzt = zzcdv.zzr();
        this.zzu = DeviceProperties.isLatchsky(context);
        this.zzv = DeviceProperties.isSidewinder(context);
        this.zzw = locale.getLanguage();
        ResolveInfo zzb = zzb(packageManager, new ObfuscatedString(new long[]{-5947621443716242984L, -3661839534635724255L, -4085885172716901371L, -2389500235276918255L, -8561052783831117728L, -8492912942508615711L, 7079344179212312425L}).toString());
        String str2 = null;
        if (zzb != null && (activityInfo = zzb.activityInfo) != null) {
            try {
                packageInfo = Wrappers.packageManager(context).getPackageInfo(activityInfo.packageName, 0);
            } catch (PackageManager.NameNotFoundException unused) {
            }
            if (packageInfo != null) {
                str = packageInfo.versionCode + new ObfuscatedString(new long[]{-8420475327472654792L, 2567055391252840967L}).toString() + activityInfo.packageName;
                this.zzx = str;
                packageInfo2 = Wrappers.packageManager(context).getPackageInfo(new ObfuscatedString(new long[]{-3788999005228906150L, -7689272912339335639L, 196922593447883349L, 5932871442883030235L}).toString(), 128);
                if (packageInfo2 != null) {
                    str2 = packageInfo2.versionCode + new ObfuscatedString(new long[]{-6231441530244595241L, 375397749651615814L}).toString() + packageInfo2.packageName;
                }
                this.zzB = str2;
                resources = context.getResources();
                if (resources == null && (displayMetrics = resources.getDisplayMetrics()) != null) {
                    this.zzy = displayMetrics.density;
                    this.zzz = displayMetrics.widthPixels;
                    this.zzA = displayMetrics.heightPixels;
                }
                return;
            }
        }
        str = null;
        this.zzx = str;
        packageInfo2 = Wrappers.packageManager(context).getPackageInfo(new ObfuscatedString(new long[]{-3788999005228906150L, -7689272912339335639L, 196922593447883349L, 5932871442883030235L}).toString(), 128);
        if (packageInfo2 != null) {
        }
        this.zzB = str2;
        resources = context.getResources();
        if (resources == null) {
            return;
        }
        this.zzy = displayMetrics.density;
        this.zzz = displayMetrics.widthPixels;
        this.zzA = displayMetrics.heightPixels;
    }

    @Nullable
    private static ResolveInfo zzb(PackageManager packageManager, String str) {
        try {
            return packageManager.resolveActivity(new Intent(new ObfuscatedString(new long[]{3839520264358176464L, -1189133768459441793L, 3372304277174974907L, 2772164547005730373L, -3871251815259141531L}).toString(), Uri.parse(str)), 65536);
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzt.zzo().zzw(th, new ObfuscatedString(new long[]{-6357760116712929802L, 7714542160314012773L, 3081320917350270902L, 829518811255886039L, -780546624967877359L}).toString());
            return null;
        }
    }

    private final void zzc(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService(new ObfuscatedString(new long[]{-4385550647932380587L, 6353143898215039633L}).toString());
        if (audioManager != null) {
            try {
                this.zza = audioManager.getMode();
                this.zzb = audioManager.isMusicActive();
                this.zzc = audioManager.isSpeakerphoneOn();
                this.zzd = audioManager.getStreamVolume(3);
                this.zze = audioManager.getRingerMode();
                this.zzf = audioManager.getStreamVolume(2);
                return;
            } catch (Throwable th) {
                com.google.android.gms.ads.internal.zzt.zzo().zzw(th, new ObfuscatedString(new long[]{2787364112371586908L, 7999508139777315364L, -7975047659801118889L, -3601555321117979604L, -6437533705849412635L}).toString());
            }
        }
        this.zza = -2;
        this.zzb = false;
        this.zzc = false;
        this.zzd = 0;
        this.zze = 2;
        this.zzf = 0;
    }

    @SuppressLint({"UnprotectedReceiver"})
    private final void zzd(Context context) {
        Intent registerReceiver;
        IntentFilter intentFilter = new IntentFilter(new ObfuscatedString(new long[]{-6477849742617777863L, 3512530622038680559L, -7715700450009740118L, 2083590329323144743L, -3153738252727314385L, 468517363802820242L}).toString());
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkw)).booleanValue() && Build.VERSION.SDK_INT >= 33) {
            registerReceiver = context.registerReceiver(null, intentFilter, 4);
        } else {
            registerReceiver = context.registerReceiver(null, intentFilter);
        }
        boolean z = false;
        if (registerReceiver != null) {
            int intExtra = registerReceiver.getIntExtra(new ObfuscatedString(new long[]{1199530363099468336L, 5510855614537613194L}).toString(), -1);
            this.zzm = registerReceiver.getIntExtra(new ObfuscatedString(new long[]{-896861362229387541L, -6727810404593009087L}).toString(), -1) / registerReceiver.getIntExtra(new ObfuscatedString(new long[]{-4288542824925542768L, -7329433831871394285L}).toString(), -1);
            if (intExtra == 2 || intExtra == 5) {
                z = true;
            }
            this.zzn = z;
            return;
        }
        this.zzm = -1.0d;
        this.zzn = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0077  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void zze(Context context) {
        int networkType;
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(new ObfuscatedString(new long[]{8944288403836836208L, 8607259176761348432L}).toString());
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService(new ObfuscatedString(new long[]{-1557536857815145952L, -7622945030010772366L, -4062058004016393708L}).toString());
        this.zzg = telephonyManager.getNetworkOperator();
        if (PlatformVersion.isAtLeastR()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziu)).booleanValue()) {
                networkType = 0;
                this.zzi = networkType;
                this.zzj = telephonyManager.getPhoneType();
                this.zzh = -2;
                this.zzk = false;
                this.zzl = -1;
                com.google.android.gms.ads.internal.zzt.zzp();
                if (!com.google.android.gms.ads.internal.util.zzt.zzz(context, new ObfuscatedString(new long[]{1303060437254964974L, -193865309019158167L, 4285245555056671213L, -5009781295269853781L, -1837209119335224138L, -1934984261178098235L}).toString())) {
                    NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                    if (activeNetworkInfo != null) {
                        this.zzh = activeNetworkInfo.getType();
                        this.zzl = activeNetworkInfo.getDetailedState().ordinal();
                    } else {
                        this.zzh = -1;
                    }
                    this.zzk = connectivityManager.isActiveNetworkMetered();
                    return;
                }
                return;
            }
        }
        networkType = telephonyManager.getNetworkType();
        this.zzi = networkType;
        this.zzj = telephonyManager.getPhoneType();
        this.zzh = -2;
        this.zzk = false;
        this.zzl = -1;
        com.google.android.gms.ads.internal.zzt.zzp();
        if (!com.google.android.gms.ads.internal.util.zzt.zzz(context, new ObfuscatedString(new long[]{1303060437254964974L, -193865309019158167L, 4285245555056671213L, -5009781295269853781L, -1837209119335224138L, -1934984261178098235L}).toString())) {
        }
    }

    public final zzbzj zza() {
        return new zzbzj(this.zza, this.zzq, this.zzr, this.zzg, this.zzs, this.zzt, this.zzu, this.zzv, this.zzb, this.zzc, this.zzw, this.zzx, this.zzB, this.zzd, this.zzh, this.zzi, this.zzj, this.zze, this.zzf, this.zzy, this.zzz, this.zzA, this.zzm, this.zzn, this.zzk, this.zzl, this.zzo, this.zzC, this.zzp);
    }

    public zzbzi(Context context, zzbzj zzbzjVar) {
        zzbgc.zza(context);
        zzc(context);
        zze(context);
        zzd(context);
        this.zzo = Build.FINGERPRINT;
        this.zzp = Build.DEVICE;
        this.zzC = zzbhd.zzg(context);
        this.zzq = zzbzjVar.zza;
        this.zzr = zzbzjVar.zzb;
        this.zzs = zzbzjVar.zzd;
        this.zzt = zzbzjVar.zze;
        this.zzu = zzbzjVar.zzf;
        this.zzv = zzbzjVar.zzg;
        this.zzw = zzbzjVar.zzh;
        this.zzx = zzbzjVar.zzi;
        this.zzB = zzbzjVar.zzj;
        this.zzy = zzbzjVar.zzm;
        this.zzz = zzbzjVar.zzn;
        this.zzA = zzbzjVar.zzo;
    }
}
