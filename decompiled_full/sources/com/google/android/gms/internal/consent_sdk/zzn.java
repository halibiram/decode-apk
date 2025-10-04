package com.google.android.gms.internal.consent_sdk;

import android.app.Activity;
import android.app.Application;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.DisplayCutout;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import com.google.android.ump.ConsentDebugSettings;
import com.google.android.ump.ConsentRequestParameters;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class zzn {
    private final zzl zza;
    private final Activity zzb;
    private final ConsentDebugSettings zzc;
    private final ConsentRequestParameters zzd;

    public /* synthetic */ zzn(zzl zzlVar, Activity activity, ConsentDebugSettings consentDebugSettings, ConsentRequestParameters consentRequestParameters, zzm zzmVar) {
        this.zza = zzlVar;
        this.zzb = activity;
        this.zzc = consentDebugSettings;
        this.zzd = consentRequestParameters;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v47, types: [java.util.List] */
    public static /* bridge */ /* synthetic */ zzci zza(zzn zznVar) {
        Bundle bundle;
        Application application;
        Application application2;
        ArrayList arrayList;
        zzap zzapVar;
        Application application3;
        Application application4;
        Application application5;
        Window window;
        View decorView;
        WindowInsets rootWindowInsets;
        DisplayCutout displayCutout;
        List<Rect> boundingRects;
        List list;
        Application application6;
        PackageInfo packageInfo;
        Application application7;
        Application application8;
        long j;
        Application application9;
        zzci zzciVar = new zzci();
        String zza = zznVar.zzd.zza();
        String str = null;
        if (TextUtils.isEmpty(zza)) {
            try {
                application = zznVar.zza.zza;
                PackageManager packageManager = application.getPackageManager();
                application2 = zznVar.zza.zza;
                bundle = packageManager.getApplicationInfo(application2.getPackageName(), 128).metaData;
            } catch (PackageManager.NameNotFoundException unused) {
                bundle = null;
            }
            if (bundle != null) {
                zza = bundle.getString(new ObfuscatedString(new long[]{-5552168924206176462L, -7952929486089915851L, 2976996264811778229L, 6775289451602961006L, 597455173227100594L, -5014077524216936483L, 7457538777741382930L}).toString());
            }
            if (TextUtils.isEmpty(zza)) {
                throw new zzg(3, new ObfuscatedString(new long[]{9176177157775974006L, -5998329485538941772L, -4660386400797674082L, -1308312607344832716L, -3160980171972168135L, -5313595766211063041L, 7598188792411019625L, -4958849974793676185L, 2073015444350115949L, 6709043197663228854L, 807309385779520128L, 3751417623984601872L, -7720989882322828045L, 2242286464858766507L, -2096818328878962274L, -6881410561009465727L, -3975068738529046070L, 4596218217181895007L, 2257290762516578420L, -3194568419228805810L, -3741595865510879454L, 4558797504667763442L, -4366964394033138981L, 1020572503548173498L, -1490014140791648589L, 4378682036814623250L, -7487162614288730481L, -3150068343382834791L, 6730613260416874071L, -92873838576257656L, 2578690931427082076L, -7150124350876019599L, 1987277653307993684L, -7609357755489230458L, -955834888777262366L, 4010448579133090210L, 3380446730636221512L, 2588947982398084510L, -982853774727141715L, -7798380382100184760L}).toString());
            }
        }
        zzciVar.zza = zza;
        if (!zznVar.zzc.isTestDevice()) {
            arrayList = Collections.emptyList();
        } else {
            ArrayList arrayList2 = new ArrayList();
            int debugGeography = zznVar.zzc.getDebugGeography();
            if (debugGeography != 1) {
                if (debugGeography == 2) {
                    arrayList2.add(zzcd.zzd);
                }
            } else {
                arrayList2.add(zzcd.zzc);
            }
            arrayList2.add(zzcd.zze);
            arrayList = arrayList2;
        }
        zzciVar.zzi = arrayList;
        zzapVar = zznVar.zza.zzb;
        zzciVar.zze = zzapVar.zzc();
        zzciVar.zzd = Boolean.valueOf(zznVar.zzd.isTagForUnderAgeOfConsent());
        int i = Build.VERSION.SDK_INT;
        zzciVar.zzc = Locale.getDefault().toLanguageTag();
        zzce zzceVar = new zzce();
        zzceVar.zzb = Integer.valueOf(i);
        zzceVar.zza = Build.MODEL;
        zzceVar.zzc = 2;
        zzciVar.zzb = zzceVar;
        application3 = zznVar.zza.zza;
        Configuration configuration = application3.getResources().getConfiguration();
        application4 = zznVar.zza.zza;
        application4.getResources().getConfiguration();
        zzcg zzcgVar = new zzcg();
        zzcgVar.zza = Integer.valueOf(configuration.screenWidthDp);
        zzcgVar.zzb = Integer.valueOf(configuration.screenHeightDp);
        application5 = zznVar.zza.zza;
        zzcgVar.zzc = Double.valueOf(application5.getResources().getDisplayMetrics().density);
        if (i < 28) {
            list = Collections.emptyList();
        } else {
            Activity activity = zznVar.zzb;
            if (activity == null) {
                window = null;
            } else {
                window = activity.getWindow();
            }
            if (window == null) {
                decorView = null;
            } else {
                decorView = window.getDecorView();
            }
            if (decorView != null) {
                rootWindowInsets = decorView.getRootWindowInsets();
            } else {
                rootWindowInsets = null;
            }
            if (rootWindowInsets != null) {
                displayCutout = rootWindowInsets.getDisplayCutout();
            } else {
                displayCutout = null;
            }
            if (displayCutout != null) {
                displayCutout.getSafeInsetBottom();
                ArrayList arrayList3 = new ArrayList();
                boundingRects = displayCutout.getBoundingRects();
                for (Rect rect : boundingRects) {
                    if (rect != null) {
                        zzcf zzcfVar = new zzcf();
                        zzcfVar.zzb = Integer.valueOf(rect.left);
                        zzcfVar.zzc = Integer.valueOf(rect.right);
                        zzcfVar.zza = Integer.valueOf(rect.top);
                        zzcfVar.zzd = Integer.valueOf(rect.bottom);
                        arrayList3.add(zzcfVar);
                    }
                }
                list = arrayList3;
            } else {
                list = Collections.emptyList();
            }
        }
        zzcgVar.zzd = list;
        zzciVar.zzf = zzcgVar;
        zzl zzlVar = zznVar.zza;
        application6 = zzlVar.zza;
        try {
            application9 = zzlVar.zza;
            packageInfo = application9.getPackageManager().getPackageInfo(application6.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException unused2) {
            packageInfo = null;
        }
        zzcc zzccVar = new zzcc();
        zzccVar.zza = application6.getPackageName();
        application7 = zznVar.zza.zza;
        PackageManager packageManager2 = application7.getPackageManager();
        application8 = zznVar.zza.zza;
        CharSequence applicationLabel = packageManager2.getApplicationLabel(application8.getApplicationInfo());
        if (applicationLabel != null) {
            str = applicationLabel.toString();
        }
        zzccVar.zzb = str;
        if (packageInfo != null) {
            if (Build.VERSION.SDK_INT >= 28) {
                j = packageInfo.getLongVersionCode();
            } else {
                j = packageInfo.versionCode;
            }
            zzccVar.zzc = Long.toString(j);
        }
        zzciVar.zzg = zzccVar;
        zzch zzchVar = new zzch();
        zzchVar.zza = new ObfuscatedString(new long[]{6269356253566465970L, 8437382489047223756L}).toString();
        zzciVar.zzh = zzchVar;
        return zzciVar;
    }
}
