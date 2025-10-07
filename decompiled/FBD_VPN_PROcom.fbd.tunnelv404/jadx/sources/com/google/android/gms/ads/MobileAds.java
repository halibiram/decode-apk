package com.google.android.gms.ads;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RequiresPermission;
import androidx.browser.customtabs.CustomTabsCallback;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsSession;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import com.google.android.gms.ads.internal.client.zzej;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbxk;
import com.google.android.gms.internal.ads.zzcct;
import com.google.android.gms.internal.ads.zzcec;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public class MobileAds {

    @NonNull
    public static final String ERROR_DOMAIN = new ObfuscatedString(new long[]{8457163018639679075L, -5763626146648881094L, 3978138848102932663L, 6679961879548514751L, -4091735643332222817L}).toString();

    private MobileAds() {
    }

    public static void disableMediationAdapterInitialization(@NonNull Context context) {
        zzej.zzf().zzl(context);
    }

    @Nullable
    public static InitializationStatus getInitializationStatus() {
        return zzej.zzf().zze();
    }

    @KeepForSdk
    private static String getInternalVersion() {
        return zzej.zzf().zzh();
    }

    @NonNull
    public static RequestConfiguration getRequestConfiguration() {
        return zzej.zzf().zzc();
    }

    @NonNull
    public static VersionInfo getVersion() {
        zzej.zzf();
        String[] split = TextUtils.split(new ObfuscatedString(new long[]{9186551555591611147L, 7437958812535151823L}).toString(), new ObfuscatedString(new long[]{10378001222667358L, -2560633128804935234L}).toString());
        if (split.length != 3) {
            return new VersionInfo(0, 0, 0);
        }
        try {
            return new VersionInfo(Integer.parseInt(split[0]), Integer.parseInt(split[1]), Integer.parseInt(split[2]));
        } catch (NumberFormatException unused) {
            return new VersionInfo(0, 0, 0);
        }
    }

    @RequiresPermission("android.permission.INTERNET")
    public static void initialize(@NonNull Context context) {
        zzej.zzf().zzm(context, null, null);
    }

    public static void openAdInspector(@NonNull Context context, @NonNull OnAdInspectorClosedListener onAdInspectorClosedListener) {
        zzej.zzf().zzp(context, onAdInspectorClosedListener);
    }

    public static void openDebugMenu(@NonNull Context context, @NonNull String str) {
        zzej.zzf().zzq(context, str);
    }

    public static boolean putPublisherFirstPartyIdEnabled(boolean z) {
        return zzej.zzf().zzx(z);
    }

    @Nullable
    public static CustomTabsSession registerCustomTabsSession(@NonNull Context context, @NonNull CustomTabsClient customTabsClient, @NonNull String str, @Nullable CustomTabsCallback customTabsCallback) {
        zzej.zzf();
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{1690091392031687716L, -1277646472945469492L, 7349015079452887158L, 6716820503290947924L, -5108097829949980679L, -3807553574251107800L, 4014070151095176286L}).toString());
        zzcct zza = zzbxk.zza(context);
        if (zza == null) {
            zzcec.zzg(new ObfuscatedString(new long[]{7606245583791262406L, 8029048830311226365L, 6809680129060423050L, -3068523568825629990L, 2359000787438401947L, -5450394623198777063L, 3943093331565298220L}).toString());
            return null;
        }
        try {
            return (CustomTabsSession) ObjectWrapper.unwrap(zza.zze(ObjectWrapper.wrap(context), ObjectWrapper.wrap(customTabsClient), str, ObjectWrapper.wrap(customTabsCallback)));
        } catch (RemoteException | IllegalArgumentException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-8531893873783200994L, -1856749343407396970L, -4753352320500764522L, 3312002697247623018L, -7845505018500196194L, -1639286080094457996L, -3222033774558459335L}).toString(), e);
            return null;
        }
    }

    @KeepForSdk
    public static void registerRtbAdapter(@NonNull Class<? extends RtbAdapter> cls) {
        zzej.zzf().zzr(cls);
    }

    @RequiresApi(api = 21)
    public static void registerWebView(@NonNull WebView webView) {
        zzej.zzf();
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-7247195569281398765L, -1698514557427362855L, -766054807427612090L, 1350748349833535919L, -8640823441342074251L, 1129571454217164331L, 3929282725957951656L}).toString());
        if (webView == null) {
            zzcec.zzg(new ObfuscatedString(new long[]{-8073372116498125758L, 4389377361404734348L, -9095103078595383104L, 6191791682974417739L, -237599006268779722L, 4217182265270714722L, 5277730352033267182L}).toString());
            return;
        }
        zzcct zza = zzbxk.zza(webView.getContext());
        if (zza == null) {
            zzcec.zzg(new ObfuscatedString(new long[]{2740129255043544236L, 1683595275232081964L, -6672570820942893163L, 9150349849759716006L, 9003947366102656252L, -5758049546003302874L, -6609053518413091873L}).toString());
            return;
        }
        try {
            zza.zzj(ObjectWrapper.wrap(webView));
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{3006630416067267408L}).toString(), e);
        }
    }

    public static void setAppMuted(boolean z) {
        zzej.zzf().zzs(z);
    }

    public static void setAppVolume(float f) {
        zzej.zzf().zzt(f);
    }

    @KeepForSdk
    private static void setPlugin(String str) {
        zzej.zzf().zzu(str);
    }

    public static void setRequestConfiguration(@NonNull RequestConfiguration requestConfiguration) {
        zzej.zzf().zzv(requestConfiguration);
    }

    public static void initialize(@NonNull Context context, @NonNull OnInitializationCompleteListener onInitializationCompleteListener) {
        zzej.zzf().zzm(context, null, onInitializationCompleteListener);
    }
}
