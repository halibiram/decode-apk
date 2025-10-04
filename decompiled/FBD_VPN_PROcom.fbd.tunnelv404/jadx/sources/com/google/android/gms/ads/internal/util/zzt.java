package com.google.android.gms.ads.internal.util;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.app.KeyguardManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.PowerManager;
import android.os.Process;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.browser.customtabs.CustomTabsIntent;
import com.google.android.gms.ads.nativead.NativeAdView;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.util.ClientLibraryUtils;
import com.google.android.gms.common.util.CrashUtils;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.util.SharedPreferencesUtils;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.ads.zzbfu;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzbhd;
import com.google.android.gms.internal.ads.zzbij;
import com.google.android.gms.internal.ads.zzbzs;
import com.google.android.gms.internal.ads.zzcdu;
import com.google.android.gms.internal.ads.zzcdv;
import com.google.android.gms.internal.ads.zzceb;
import com.google.android.gms.internal.ads.zzcec;
import com.google.android.gms.internal.ads.zzcjb;
import com.google.android.gms.internal.ads.zzckj;
import com.google.android.gms.internal.ads.zzdtn;
import com.google.android.gms.internal.ads.zzfgm;
import com.google.android.gms.internal.ads.zzfgp;
import com.google.android.gms.internal.ads.zzftt;
import com.google.android.gms.internal.ads.zzfwp;
import com.google.android.gms.internal.ads.zzfxr;
import com.google.android.gms.internal.ads.zzgen;
import com.google.android.gms.internal.ads.zzhhv;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzt {
    public static final zzftt zza = new zzf(Looper.getMainLooper());

    @GuardedBy("userAgentLock")
    private String zzh;
    private volatile String zzi;
    private final AtomicReference zzb = new AtomicReference(null);
    private final AtomicReference zzc = new AtomicReference(null);
    private final AtomicReference zzd = new AtomicReference(new Bundle());
    private final AtomicBoolean zze = new AtomicBoolean();
    private boolean zzf = true;
    private final Object zzg = new Object();
    private boolean zzj = false;
    private boolean zzk = false;
    private final Executor zzl = Executors.newSingleThreadExecutor();

    public static final boolean zzA(Context context) {
        try {
            return DeviceProperties.isBstar(context);
        } catch (NoSuchMethodError unused) {
            return false;
        }
    }

    public static final boolean zzB(String str) {
        if (!zzceb.zzk()) {
            return false;
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzeQ)).booleanValue()) {
            return false;
        }
        String str2 = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzeS);
        if (!str2.isEmpty()) {
            for (String str3 : str2.split(new ObfuscatedString(new long[]{2464330709310724540L, 4384651848043999000L}).toString())) {
                if (str3.equals(str)) {
                    return false;
                }
            }
        }
        String str4 = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzeR);
        if (str4.isEmpty()) {
            return true;
        }
        for (String str5 : str4.split(new ObfuscatedString(new long[]{8288240071288398807L, 713764218921017591L}).toString())) {
            if (str5.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static final boolean zzC(Context context) {
        KeyguardManager zzW;
        if (context == null || (zzW = zzW(context)) == null || !zzW.isKeyguardLocked()) {
            return false;
        }
        return true;
    }

    public static final boolean zzD(Context context) {
        try {
            context.getClassLoader().loadClass(new ObfuscatedString(new long[]{5534545140277488645L, -6443250900778617607L, 3952367814100908400L, 7191326925466287041L, 912692752936320381L, 2777740390114433086L, -7093158502457177899L}).toString());
            return false;
        } catch (ClassNotFoundException unused) {
            return true;
        } catch (Throwable th) {
            zzcec.zzh(new ObfuscatedString(new long[]{4127042056209763633L, -3053566437784042134L, -5263770195008735901L, 119137443390439568L}).toString(), th);
            com.google.android.gms.ads.internal.zzt.zzo().zzw(th, new ObfuscatedString(new long[]{8396730714880393017L, -8418732419510168256L, -4374063524564146927L}).toString());
            return false;
        }
    }

    public static final boolean zzE() {
        int myUid = Process.myUid();
        if (myUid != 0 && myUid != 1000) {
            return false;
        }
        return true;
    }

    public static final boolean zzF(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        PowerManager powerManager;
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService(new ObfuscatedString(new long[]{7461946727916383459L, -1529925713372085217L}).toString());
            KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService(new ObfuscatedString(new long[]{-7590951379438716458L, 1239253600213222798L}).toString());
            if (activityManager == null || keyguardManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null) {
                return false;
            }
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (Process.myPid() == runningAppProcessInfo.pid) {
                    if (runningAppProcessInfo.importance == 100 && !keyguardManager.inKeyguardRestrictedInputMode() && (powerManager = (PowerManager) context.getSystemService(new ObfuscatedString(new long[]{273239041997080885L, -8967970855957570962L}).toString())) != null) {
                        if (powerManager.isScreenOn()) {
                            return false;
                        }
                        return true;
                    }
                    return true;
                }
            }
            return true;
        } catch (Throwable unused) {
        }
        return false;
    }

    public static final boolean zzG(Context context) {
        try {
            Bundle zzX = zzX(context);
            String string = zzX.getString(new ObfuscatedString(new long[]{-4755482969167127431L, 3715853287879538284L, 4628845117955034881L, 2586939890334049593L, -5564303083470861040L, 2699232728735301006L, 7969552818745160332L}).toString());
            if (TextUtils.isEmpty(zzY(zzX))) {
                if (!TextUtils.isEmpty(string)) {
                    return true;
                }
            }
        } catch (RemoteException unused) {
        }
        return false;
    }

    public static final boolean zzH(Context context) {
        Window window;
        if ((context instanceof Activity) && (window = ((Activity) context).getWindow()) != null && window.getDecorView() != null) {
            Rect rect = new Rect();
            Rect rect2 = new Rect();
            window.getDecorView().getGlobalVisibleRect(rect, null);
            window.getDecorView().getWindowVisibleDisplayFrame(rect2);
            if (rect.bottom != 0 && rect2.bottom != 0 && rect.top == rect2.top) {
                return true;
            }
        }
        return false;
    }

    public static final void zzI(View view, int i, MotionEvent motionEvent) {
        String obfuscatedString;
        int i2;
        int i3;
        int i4;
        zzfgm zzD;
        zzfgp zzP;
        View view2 = view;
        int[] iArr = new int[2];
        Rect rect = new Rect();
        try {
            String packageName = view.getContext().getPackageName();
            if (view2 instanceof zzdtn) {
                view2 = ((zzdtn) view2).getChildAt(0);
            }
            if (!(view2 instanceof com.google.android.gms.ads.formats.zzj) && !(view2 instanceof NativeAdView)) {
                obfuscatedString = new ObfuscatedString(new long[]{7376858786243596921L, 3943351829795092193L}).toString();
                i2 = 0;
            } else {
                obfuscatedString = new ObfuscatedString(new long[]{-4501463715744378104L, -7248793164297768355L}).toString();
                i2 = 1;
            }
            if (view2.getLocalVisibleRect(rect)) {
                i4 = rect.width();
                i3 = rect.height();
            } else {
                i3 = 0;
                i4 = 0;
            }
            com.google.android.gms.ads.internal.zzt.zzp();
            long zzv = zzv(view2);
            view2.getLocationOnScreen(iArr);
            int i5 = iArr[0];
            int i6 = iArr[1];
            boolean z = view2 instanceof zzckj;
            String obfuscatedString2 = new ObfuscatedString(new long[]{-4318740672452925151L, -9215762678396011168L}).toString();
            if (z && (zzP = ((zzckj) view2).zzP()) != null) {
                obfuscatedString2 = zzP.zzb;
                view2.setContentDescription(obfuscatedString2 + new ObfuscatedString(new long[]{5993510969562255471L, 5691395409996121520L}).toString() + view2.hashCode());
            }
            boolean z2 = view2 instanceof zzcjb;
            String obfuscatedString3 = new ObfuscatedString(new long[]{7826411524189224160L, -5306006727500892374L}).toString();
            if (z2 && (zzD = ((zzcjb) view2).zzD()) != null) {
                obfuscatedString = zzfgm.zza(zzD.zzb);
                i2 = zzD.zzf;
                obfuscatedString3 = zzD.zzF;
            }
            zzcec.zzi(String.format(Locale.US, new ObfuscatedString(new long[]{2298530711959040169L, -6104798909556636642L, 224019338712867058L, 653769596692029796L, -1842188707572818336L, 6059190711169592795L, -6918675613602163166L, 6097068436010694459L, -7716365294828412820L, 8259399470500578330L, -5199900480356068396L, 6153538674489776609L, -2868049562056690822L, -5850093843845504540L, 2275701358578302117L, 2429713408416673346L, -699075362336333093L, -2490191425129850854L, 6626535696002389413L, 735047052317439606L, 3862314660318615671L, -7631976451744987367L}).toString(), Integer.valueOf(view2.hashCode()), packageName, obfuscatedString3, obfuscatedString2, obfuscatedString, Integer.valueOf(i2), view2.getClass().getName(), Integer.valueOf(i5), Integer.valueOf(i6), Integer.valueOf(view2.getWidth()), Integer.valueOf(view2.getHeight()), Integer.valueOf(i4), Integer.valueOf(i3), Long.valueOf(zzv), Integer.toString(i, 2)));
        } catch (Exception e) {
            zzcec.zzh(new ObfuscatedString(new long[]{3413723762727833180L, 3342466690183317601L, 4011386951471516683L, -7177709732473411759L, -8149288210472981365L}).toString(), e);
        }
    }

    public static final AlertDialog.Builder zzJ(Context context) {
        com.google.android.gms.ads.internal.zzt.zzq();
        return new AlertDialog.Builder(context, R.style.Theme.Material.Dialog.Alert);
    }

    public static final void zzK(Context context, String str, String str2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str2);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            new zzca(context, str, (String) it.next()).zzb();
        }
    }

    public static final void zzL(Context context, Throwable th) {
        if (context != null) {
            try {
                if (((Boolean) zzbij.zzb.zze()).booleanValue()) {
                    CrashUtils.addDynamiteErrorToDropBox(context, th);
                }
            } catch (IllegalStateException unused) {
            }
        }
    }

    public static final String zzM(InputStreamReader inputStreamReader) {
        StringBuilder sb = new StringBuilder(8192);
        char[] cArr = new char[2048];
        while (true) {
            int read = inputStreamReader.read(cArr);
            if (read != -1) {
                sb.append(cArr, 0, read);
            } else {
                return sb.toString();
            }
        }
    }

    public static final int zzN(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException e) {
            zzcec.zzj(new ObfuscatedString(new long[]{4253985224927573246L, 2742579813024188619L, -1784797097755383632L, 2795880942031228258L}).toString().concat(e.toString()));
            return 0;
        }
    }

    @Nullable
    public static final Map zzO(Uri uri) {
        if (uri == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (String str : uri.getQueryParameterNames()) {
            if (!TextUtils.isEmpty(str)) {
                hashMap.put(str, uri.getQueryParameter(str));
            }
        }
        return hashMap;
    }

    public static final int[] zzP(Activity activity) {
        View findViewById;
        Window window = activity.getWindow();
        if (window != null && (findViewById = window.findViewById(R.id.content)) != null) {
            return new int[]{findViewById.getWidth(), findViewById.getHeight()};
        }
        return zzt();
    }

    public static final int[] zzQ(Activity activity) {
        int[] zzt;
        View findViewById;
        Window window = activity.getWindow();
        if (window != null && (findViewById = window.findViewById(R.id.content)) != null) {
            zzt = new int[]{findViewById.getTop(), findViewById.getBottom()};
        } else {
            zzt = zzt();
        }
        return new int[]{com.google.android.gms.ads.internal.client.zzay.zzb().zzb(activity, zzt[0]), com.google.android.gms.ads.internal.client.zzay.zzb().zzb(activity, zzt[1])};
    }

    public static final boolean zzR(View view, PowerManager powerManager, KeyguardManager keyguardManager) {
        boolean z;
        if (com.google.android.gms.ads.internal.zzt.zzp().zzf || keyguardManager == null || !keyguardManager.inKeyguardRestrictedInputMode() || zzn(view)) {
            z = true;
        } else {
            z = false;
        }
        long zzv = zzv(view);
        if (view.getVisibility() == 0 && view.isShown() && ((powerManager == null || powerManager.isScreenOn()) && z)) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbl)).booleanValue() || view.getLocalVisibleRect(new Rect()) || view.getGlobalVisibleRect(new Rect())) {
                if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkd)).booleanValue()) {
                    return true;
                }
                if (zzv >= ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkf)).intValue()) {
                    return true;
                }
            }
        }
        return false;
    }

    public static final void zzS(Context context, Intent intent) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkx)).booleanValue()) {
            try {
                zzaa(context, intent);
                return;
            } catch (SecurityException e) {
                zzcec.zzk(new ObfuscatedString(new long[]{-2531829678855526004L}).toString(), e);
                com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{-2461809075321453337L, 4294300435711227051L, 8103869003409644825L, 8580778383106417190L, 3141601948344137383L, 1332135720526961848L}).toString());
                return;
            }
        }
        zzaa(context, intent);
    }

    public static final void zzT(Context context, Uri uri) {
        try {
            Intent intent = new Intent(new ObfuscatedString(new long[]{761161483724319021L, 4527250070041708161L, 4641260027217906379L, -4961291226491098722L, 2054424668050459276L}).toString(), uri);
            Bundle bundle = new Bundle();
            intent.putExtras(bundle);
            zzo(context, intent);
            bundle.putString(new ObfuscatedString(new long[]{5489018331545037184L, -7559957762404217530L, -4853367185806571625L, -893263017241042422L, 8036490860842357966L, -7570387552662295492L}).toString(), context.getPackageName());
            context.startActivity(intent);
            zzcec.zze(new ObfuscatedString(new long[]{2423608017454597976L, 2011900118231815407L}).toString() + uri.toString() + new ObfuscatedString(new long[]{543580363753746802L, 7380076475624606834L, 1281937624249636441L, 908024504276758980L}).toString());
        } catch (ActivityNotFoundException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-35225732940691360L, 4939733255753279408L, -4080874099765710820L, -3617660718054805308L}).toString(), e);
        }
    }

    public static final int[] zzU(Activity activity) {
        int[] zzP = zzP(activity);
        return new int[]{com.google.android.gms.ads.internal.client.zzay.zzb().zzb(activity, zzP[0]), com.google.android.gms.ads.internal.client.zzay.zzb().zzb(activity, zzP[1])};
    }

    public static final boolean zzV(View view, Context context) {
        PowerManager powerManager;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            powerManager = (PowerManager) applicationContext.getSystemService(new ObfuscatedString(new long[]{-186116896931254726L, -1567039960874642306L}).toString());
        } else {
            powerManager = null;
        }
        return zzR(view, powerManager, zzW(context));
    }

    @Nullable
    private static KeyguardManager zzW(Context context) {
        Object systemService = context.getSystemService(new ObfuscatedString(new long[]{-3686319830665898485L, -7630835421870956601L}).toString());
        if (systemService != null && (systemService instanceof KeyguardManager)) {
            return (KeyguardManager) systemService;
        }
        return null;
    }

    @Nullable
    private static Bundle zzX(Context context) {
        try {
            return Wrappers.packageManager(context).getApplicationInfo(context.getPackageName(), 128).metaData;
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            zze.zzb(new ObfuscatedString(new long[]{-7501752403603513412L, -2804076454261848608L, 6536250961015223356L, -8976634644499496651L}).toString(), e);
            return null;
        }
    }

    private static String zzY(Bundle bundle) {
        if (bundle != null) {
            String string = bundle.getString(new ObfuscatedString(new long[]{69303997331539704L, 1654959019619287866L, 6907546547952484717L, 773844657048996451L, -7443404802417923597L, -6640819654433589167L, -1111192659828816164L}).toString());
            if (!TextUtils.isEmpty(string) && (string.matches(new ObfuscatedString(new long[]{-4831900886331087974L, 7306698840952962771L, 4084458181941215575L, 6475232187921953731L, -3659271136366352037L}).toString()) || string.matches(new ObfuscatedString(new long[]{780978046427714697L, -4690190761034419224L, 8983836260170181901L}).toString()))) {
                return string;
            }
        }
        return new ObfuscatedString(new long[]{7797486958052367766L}).toString();
    }

    private static boolean zzZ(String str, AtomicReference atomicReference, String str2) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Pattern pattern = (Pattern) atomicReference.get();
            if (pattern == null || !str2.equals(pattern.pattern())) {
                pattern = Pattern.compile(str2);
                atomicReference.set(pattern);
            }
            return pattern.matcher(str).matches();
        } catch (PatternSyntaxException unused) {
            return false;
        }
    }

    public static int zza(int i) {
        if (i >= 5000) {
            return i;
        }
        if (i > 0) {
            zzcec.zzj(new ObfuscatedString(new long[]{145718753595785310L, 2647238677180814585L, 9164608085434310269L, 4661368876199572189L}).toString() + i + new ObfuscatedString(new long[]{4734101445573877831L, 1711651078121505072L, -8379885225556478556L, 6765353374972040921L, 7541263407860376942L, -6809995670456326907L, 849018191233858433L, -210930170217217759L, -2905867348461087288L}).toString());
            return 60000;
        }
        return 60000;
    }

    private static final void zzaa(Context context, Intent intent) {
        try {
            context.startActivity(intent);
        } catch (Throwable unused) {
            intent.addFlags(268435456);
            context.startActivity(intent);
        }
    }

    private static final String zzab(final Context context, String str) {
        String str2;
        String str3;
        if (str != null) {
            try {
                zzck zza2 = zzck.zza();
                if (TextUtils.isEmpty(zza2.zza)) {
                    if (ClientLibraryUtils.isPackageSide()) {
                        str3 = (String) zzch.zza(context, new Callable() { // from class: com.google.android.gms.ads.internal.util.zzci
                            @Override // java.util.concurrent.Callable
                            public final Object call() {
                                Context context2 = context;
                                SharedPreferences sharedPreferences = context2.getSharedPreferences(new ObfuscatedString(new long[]{7250469162992764445L, 377903632897299977L, -4035089966981524642L}).toString(), 0);
                                String string = sharedPreferences.getString(new ObfuscatedString(new long[]{-4119186963247336083L, 4817540994280705682L, 4363469940202702473L}).toString(), new ObfuscatedString(new long[]{-8029238889136816275L}).toString());
                                if (TextUtils.isEmpty(string)) {
                                    zze.zza(new ObfuscatedString(new long[]{971399047150459690L, 2506887249301912551L, -3300394438345525846L, 5380812343718805342L, 7425957743297854027L, -8853164970277254708L, 1612184245799029834L, 3024644795652104954L, -803205733535602729L, -621985894035576752L}).toString());
                                    String defaultUserAgent = WebSettings.getDefaultUserAgent(context2);
                                    SharedPreferencesUtils.publishWorldReadableSharedPreferences(context2, sharedPreferences.edit().putString(new ObfuscatedString(new long[]{2001065589533382911L, 8120064136222947852L, -8787215035896385776L}).toString(), defaultUserAgent), new ObfuscatedString(new long[]{-6700814718496645030L, 7458047570786273154L, 4784943566619052245L}).toString());
                                    return defaultUserAgent;
                                }
                                zze.zza(new ObfuscatedString(new long[]{-2989947251218782237L, -1979357100446661735L, 6124846225792621008L, -183335446304941717L, 1415300797840056735L, 4825364206908613890L, 4129927835586620051L, 122963354061640236L, 7422732462810728073L}).toString());
                                return string;
                            }
                        });
                    } else {
                        final Context remoteContext = GooglePlayServicesUtilLight.getRemoteContext(context);
                        str3 = (String) zzch.zza(context, new Callable() { // from class: com.google.android.gms.ads.internal.util.zzcj
                            @Override // java.util.concurrent.Callable
                            public final Object call() {
                                SharedPreferences sharedPreferences;
                                boolean z;
                                Context context2 = remoteContext;
                                Context context3 = context;
                                if (context2 != null) {
                                    zze.zza(new ObfuscatedString(new long[]{-8674433149089323359L, -9064071909586869361L, -7291080138168897981L, -8771932968127843237L, 5427701332790763403L, 9137548601488159908L, -3473319232990225888L, 4055764963322047952L}).toString());
                                    sharedPreferences = context2.getSharedPreferences(new ObfuscatedString(new long[]{-4737671049951401789L, 5325198149555253859L, -8815385954574643085L}).toString(), 0);
                                    z = false;
                                } else {
                                    zze.zza(new ObfuscatedString(new long[]{5404921242020684685L, 2576903586270684745L, -2915546031279516471L, 3489027523958606781L, 4250306467314344752L, 8811266854909287071L, 4535549967886999221L}).toString());
                                    sharedPreferences = context3.getSharedPreferences(new ObfuscatedString(new long[]{8180139822267731799L, 3410725937166437845L, 5769778631857711490L}).toString(), 0);
                                    z = true;
                                }
                                String string = sharedPreferences.getString(new ObfuscatedString(new long[]{1074619777159944874L, 1561441904879406388L, 3031124241805027623L}).toString(), new ObfuscatedString(new long[]{-433982288522833680L}).toString());
                                if (TextUtils.isEmpty(string)) {
                                    zze.zza(new ObfuscatedString(new long[]{6687413308380108555L, -4005524583471304155L, -1880995771140340275L, 6300783500136184201L, -7096939570003979634L, 1622925550026973125L}).toString());
                                    string = WebSettings.getDefaultUserAgent(context3);
                                    if (z) {
                                        sharedPreferences.edit().putString(new ObfuscatedString(new long[]{2875462159034071273L, 9216260464712182523L, -2333396860034761903L}).toString(), string).apply();
                                        zze.zza(new ObfuscatedString(new long[]{2921927905160253037L, 7060083965401899626L, 9064324890443790469L, 5282041102926260402L}).toString());
                                    }
                                }
                                return string;
                            }
                        });
                    }
                    zza2.zza = str3;
                }
                str2 = zza2.zza;
            } catch (Exception unused) {
                str2 = null;
            }
            if (TextUtils.isEmpty(str2)) {
                str2 = WebSettings.getDefaultUserAgent(context);
            }
            if (TextUtils.isEmpty(str2)) {
                str2 = zzq();
            }
            String m3336x1aebc6d9 = AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{5035755322884284519L, 3572068797631880172L, 8436951248406073953L}), AbstractC0749x8313616e.m3341xc20437a5(str2), str);
            try {
                if (Wrappers.packageManager(context).isCallerInstantApp()) {
                    m3336x1aebc6d9 = m3336x1aebc6d9 + new ObfuscatedString(new long[]{76154941701673749L, 990136093049735609L}).toString();
                }
            } catch (Exception e) {
                com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{-3015394071943505510L, 7531023788409020782L, 6782701149785076482L, 5584713327814296118L}).toString());
            }
            return m3336x1aebc6d9.concat(new ObfuscatedString(new long[]{9174535560667843121L, 7765302347846335571L}).toString());
        }
        return zzq();
    }

    public static List zzd() {
        zzbfu zzbfuVar = zzbgc.zza;
        List zzb = com.google.android.gms.ads.internal.client.zzba.zza().zzb();
        ArrayList arrayList = new ArrayList();
        Iterator it = zzb.iterator();
        while (it.hasNext()) {
            Iterator it2 = zzfxr.zzc(zzfwp.zzc(',')).zzd((String) it.next()).iterator();
            while (it2.hasNext()) {
                try {
                    arrayList.add(Long.valueOf((String) it2.next()));
                } catch (NumberFormatException unused) {
                    zze.zza(new ObfuscatedString(new long[]{-1322165570953604004L, 5588337820874098375L, 268791609827445850L, 1289602255587657269L, -3744447891533635317L}).toString());
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0016 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final boolean zzn(View view) {
        Activity activity;
        View rootView = view.getRootView();
        WindowManager.LayoutParams layoutParams = null;
        if (rootView != null) {
            Context context = rootView.getContext();
            if (context instanceof Activity) {
                activity = (Activity) context;
                if (activity != null) {
                    return false;
                }
                Window window = activity.getWindow();
                if (window != null) {
                    layoutParams = window.getAttributes();
                }
                if (layoutParams == null || (layoutParams.flags & 524288) == 0) {
                    return false;
                }
                return true;
            }
        }
        activity = null;
        if (activity != null) {
        }
    }

    public static final void zzo(Context context, Intent intent) {
        Bundle bundle;
        if (intent == null) {
            return;
        }
        if (intent.getExtras() != null) {
            bundle = intent.getExtras();
        } else {
            bundle = new Bundle();
        }
        bundle.putBinder(new ObfuscatedString(new long[]{-3112083399485067590L, -2151044395487876090L, 4591513015582094153L, 7349964225658466426L, -4802044635264946660L, -3171042660684442001L}).toString(), null);
        bundle.putString(new ObfuscatedString(new long[]{-2103350146817046131L, -4770052907553949169L, -2447935060636133885L, 5248143772776537653L, 6547843518457098700L, 8439881474538931824L}).toString(), context.getPackageName());
        intent.putExtras(bundle);
    }

    public static final String zzp(Context context) {
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        return zzY(zzX(context));
    }

    public static final String zzq() {
        StringBuilder sb = new StringBuilder(256);
        sb.append(new ObfuscatedString(new long[]{-5926907885834931413L, 8417353307851520082L, 925930138739088786L, -2718124731089786094L, -8991112292861135800L}).toString());
        String str = Build.VERSION.RELEASE;
        if (str != null) {
            sb.append(new ObfuscatedString(new long[]{8919506396785258082L, 7744530085997992349L}).toString());
            sb.append(str);
        }
        sb.append(new ObfuscatedString(new long[]{-7412676177649303404L, -3104445735041017572L}).toString());
        sb.append(Locale.getDefault());
        String str2 = Build.DEVICE;
        if (str2 != null) {
            sb.append(new ObfuscatedString(new long[]{-7547561175875183743L, 1618879654380228968L}).toString());
            sb.append(str2);
            String str3 = Build.DISPLAY;
            if (str3 != null) {
                sb.append(new ObfuscatedString(new long[]{-2577649992736916143L, -6035031692908992337L}).toString());
                sb.append(str3);
            }
        }
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{8039992328399975795L, 876628355015608051L, 5465921708790746242L, -8795282360900737331L, -5463985417131654110L, -4392027806097483613L}), sb);
    }

    public static final String zzr() {
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        if (str2.startsWith(str)) {
            return str2;
        }
        return AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-3405956736325920687L, -8913233150021126342L}), AbstractC0749x8313616e.m3341xc20437a5(str), str2);
    }

    public static final DisplayMetrics zzs(WindowManager windowManager) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    public static final int[] zzt() {
        return new int[]{0, 0};
    }

    public static final Map zzu(String str) {
        HashMap hashMap = new HashMap();
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                HashSet hashSet = new HashSet();
                JSONArray optJSONArray = jSONObject.optJSONArray(next);
                if (optJSONArray != null) {
                    for (int i = 0; i < optJSONArray.length(); i++) {
                        String optString = optJSONArray.optString(i);
                        if (optString != null) {
                            hashSet.add(optString);
                        }
                    }
                    hashMap.put(next, hashSet);
                }
            }
            return hashMap;
        } catch (JSONException e) {
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{1418771699293253624L, -7383290378775207181L, 1858974559976255745L, -1267525770040183906L, 6305391487666429697L, 1942421648327213227L, -2806860507356653384L}).toString());
            return hashMap;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v6, types: [android.view.ViewParent] */
    public static final long zzv(View view) {
        float f;
        float f2 = Float.MAX_VALUE;
        do {
            f = 0.0f;
            if (!(view instanceof View)) {
                break;
            }
            View view2 = (View) view;
            f2 = Math.min(f2, view2.getAlpha());
            view = view2.getParent();
        } while (f2 > 0.0f);
        if (f2 >= 0.0f) {
            f = f2;
        }
        return Math.round(f * 100.0f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public static final WebResourceResponse zzw(Context context, String str, String str2) {
        try {
            HashMap hashMap = new HashMap();
            hashMap.put(new ObfuscatedString(new long[]{167896666931554902L, -7409211229395248961L, -82096611873911837L}).toString(), com.google.android.gms.ads.internal.zzt.zzp().zzc(context, str));
            hashMap.put(new ObfuscatedString(new long[]{1620829280080604777L, 1019808915624026707L, 7207080952121148254L}).toString(), new ObfuscatedString(new long[]{-5134210614926368368L, -5039636916312297340L, 1988880457000146859L}).toString());
            String str3 = (String) new zzbq(context).zzb(0, str2, hashMap, null).get(60L, TimeUnit.SECONDS);
            if (str3 != null) {
                return new WebResourceResponse(new ObfuscatedString(new long[]{-5705473800086857356L, -331219879288409940L, -9116025092272600968L, 8285386155711910517L}).toString(), new ObfuscatedString(new long[]{1137419527029280679L, 1910665281488663744L}).toString(), new ByteArrayInputStream(str3.getBytes(new ObfuscatedString(new long[]{-3411349189074253667L, -1297316503674822296L}).toString())));
            }
        } catch (IOException | InterruptedException | ExecutionException | TimeoutException e) {
            zzcec.zzk(new ObfuscatedString(new long[]{-5145276401955370836L, -1278441291495061620L, -2337941479942415246L, 3881422206484092712L, -8640410649231723462L}).toString(), e);
        }
        return null;
    }

    public static final String zzx() {
        Resources zze = com.google.android.gms.ads.internal.zzt.zzo().zze();
        if (zze != null) {
            return zze.getString(com.google.android.gms.ads.impl.R.string.s7);
        }
        return new ObfuscatedString(new long[]{-317339865517722707L, -4642258638535339034L}).toString();
    }

    @Nullable
    public static final zzbt zzy(Context context) {
        try {
            Object newInstance = context.getClassLoader().loadClass(new ObfuscatedString(new long[]{-3247530332430588032L, -286591396150932500L, 1723689171631042775L, 5537475157595237027L, 5746022380973418L, -6435181117119125088L, 5976863781893366441L, -684664240311496593L}).toString()).getDeclaredConstructor(null).newInstance(null);
            if (!(newInstance instanceof IBinder)) {
                zzcec.zzg(new ObfuscatedString(new long[]{-3783442540616055242L, -2771066044060553737L, -2901195761239439289L, 3446142299798641169L, 7140768907423381417L, -951581255952155320L, -3700658249266805576L, -3664314677355818211L}).toString());
                return null;
            }
            IBinder iBinder = (IBinder) newInstance;
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-5393313534536234359L, 3163696584921320289L, 6530157585668966097L, 5583167055221748371L, -9013715367398004081L, 1467461575216635191L, 957027974784658364L, 5140884929017454788L, -3316718380083277001L}).toString());
            if (queryLocalInterface instanceof zzbt) {
                return (zzbt) queryLocalInterface;
            }
            return new zzbr(iBinder);
        } catch (Exception e) {
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{-7072251372508892072L, 249933761742122473L, -8889776362450018898L, 5198824281123260971L, -6910204302537069531L, -8228883398628940417L}).toString());
            return null;
        }
    }

    public static final boolean zzz(Context context, String str) {
        Context zza2 = zzbzs.zza(context);
        if (Wrappers.packageManager(zza2).checkPermission(str, zza2.getPackageName()) == 0) {
            return true;
        }
        return false;
    }

    public final ListenableFuture zzb(final Uri uri) {
        return zzgen.zzj(new Callable() { // from class: com.google.android.gms.ads.internal.util.zzn
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzftt zzfttVar = zzt.zza;
                com.google.android.gms.ads.internal.zzt.zzp();
                return zzt.zzO(uri);
            }
        }, this.zzl);
    }

    public final String zzc(Context context, String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkK)).booleanValue()) {
            if (this.zzi != null) {
                return this.zzi;
            }
            this.zzi = zzab(context, str);
            return this.zzi;
        }
        synchronized (this.zzg) {
            try {
                String str2 = this.zzh;
                if (str2 != null) {
                    return str2;
                }
                String zzab = zzab(context, str);
                this.zzh = zzab;
                return zzab;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzf(Context context, String str, boolean z, HttpURLConnection httpURLConnection, boolean z2, int i) {
        int zza2 = zza(i);
        zzcec.zzi(new ObfuscatedString(new long[]{6842395392380255925L, 7265375549201769179L, -6078511105425084038L}).toString() + zza2 + new ObfuscatedString(new long[]{7437567299560989356L, -69068608717700953L, -9129399164702886689L}).toString());
        httpURLConnection.setConnectTimeout(zza2);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setReadTimeout(zza2);
        if (TextUtils.isEmpty(httpURLConnection.getRequestProperty(new ObfuscatedString(new long[]{-1133489964199218670L, 5915815288338698695L, 9089886914690331678L}).toString()))) {
            httpURLConnection.setRequestProperty(new ObfuscatedString(new long[]{-8743815208649977335L, -1228522118583336430L, -3303150449364049579L}).toString(), zzc(context, str));
        }
        httpURLConnection.setUseCaches(false);
    }

    public final /* synthetic */ void zzg(Context context, String str, SharedPreferences sharedPreferences, String str2) {
        this.zzd.set(zzad.zzb(context, str));
    }

    public final void zzh(final Context context, @Nullable final String str, String str2, Bundle bundle, boolean z) {
        com.google.android.gms.ads.internal.zzt.zzp();
        bundle.putString(new ObfuscatedString(new long[]{7228795589294136402L, -7898386040103103081L}).toString(), zzr());
        zzbfu zzbfuVar = zzbgc.zza;
        bundle.putString(new ObfuscatedString(new long[]{-8629646565864363097L, 5850860648730968121L}).toString(), TextUtils.join(new ObfuscatedString(new long[]{2156869199015108178L, 6002804718064599037L}).toString(), com.google.android.gms.ads.internal.client.zzba.zza().zza()));
        if (bundle.isEmpty()) {
            zzcec.zze(new ObfuscatedString(new long[]{-1595488858512029455L, -8309548348541531068L, -8306918433635319056L, 4214477101424638845L}).toString());
        } else {
            final String str3 = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzka);
            if (!this.zze.getAndSet(true)) {
                this.zzd.set(zzad.zza(context, str3, new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.ads.internal.util.zzm
                    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str4) {
                        zzt.this.zzg(context, str3, sharedPreferences, str4);
                    }
                }));
            }
            bundle.putAll((Bundle) this.zzd.get());
        }
        com.google.android.gms.ads.internal.client.zzay.zzb();
        zzcdv.zzw(context, str, new ObfuscatedString(new long[]{-3885237889261477456L, -381810853116882239L, -7577294281917997595L}).toString(), bundle, true, new zzcdu() { // from class: com.google.android.gms.ads.internal.util.zzl
            @Override // com.google.android.gms.internal.ads.zzcdu
            public final boolean zza(String str4) {
                zzftt zzfttVar = zzt.zza;
                com.google.android.gms.ads.internal.zzt.zzp();
                zzt.zzK(context, str, str4);
                return true;
            }
        });
    }

    public final boolean zzi(String str) {
        return zzZ(str, this.zzb, (String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzab));
    }

    public final boolean zzj(String str) {
        return zzZ(str, this.zzc, (String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzac));
    }

    @SuppressLint({"UnprotectedReceiver"})
    public final boolean zzk(Context context) {
        if (this.zzk) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(new ObfuscatedString(new long[]{-1811178047695398359L, 2630856492817651721L, -771099729367717737L, -8419874857299807535L, 2965054886844670092L, 7840269172451345618L, -286717479187535022L, -5734647077937452017L, 4013221636147637710L}).toString());
        zzbgc.zza(context);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkw)).booleanValue() && Build.VERSION.SDK_INT >= 33) {
            context.getApplicationContext().registerReceiver(new zzq(this, null), intentFilter, 4);
        } else {
            context.getApplicationContext().registerReceiver(new zzq(this, null), intentFilter);
        }
        this.zzk = true;
        return true;
    }

    @SuppressLint({"UnprotectedReceiver"})
    public final boolean zzl(Context context) {
        if (this.zzj) {
            return false;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(new ObfuscatedString(new long[]{-6776011222198252916L, 3725463437062141098L, -5772696740306982131L, -5069601974385842631L, 5719178698770108767L, 7815101079762819927L}).toString());
        intentFilter.addAction(new ObfuscatedString(new long[]{2525507253594045592L, -2399266404288978681L, 8329969725588663008L, -7786293676574603245L, 72995112994160981L}).toString());
        zzbgc.zza(context);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkw)).booleanValue() && Build.VERSION.SDK_INT >= 33) {
            context.getApplicationContext().registerReceiver(new zzs(this, null), intentFilter, 4);
        } else {
            context.getApplicationContext().registerReceiver(new zzs(this, null), intentFilter);
        }
        this.zzj = true;
        return true;
    }

    public final int zzm(Context context, Uri uri) {
        int i;
        if (context == null) {
            zze.zza(new ObfuscatedString(new long[]{4892440796180643221L, 2670517837068119226L, -2477533737915063485L, -1373779851236488049L, 3703804963971435769L, 7418397436658387324L, -9099851006473676662L, 6660597208090543752L}).toString());
            return 3;
        }
        if (!(context instanceof Activity)) {
            zze.zza(new ObfuscatedString(new long[]{-4932316641366718613L, 3547663738346673804L, 4063629230504785247L, 6150036928064143889L, -6327462873555250217L, 2575650301158285472L, 7716820300178353948L, 6494937676996626885L}).toString());
            i = 2;
        } else {
            i = 0;
        }
        zzbfu zzbfuVar = zzbgc.zzex;
        Boolean bool = (Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbfuVar);
        zzbfu zzbfuVar2 = zzbgc.zzey;
        if (true == bool.equals(com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbfuVar2))) {
            i = 9;
        }
        if (i != 0) {
            Intent intent = new Intent(new ObfuscatedString(new long[]{6981028840164739354L, -6607146646255601769L, -6900246416885697590L, 9163544859135286070L, 6896008231067500541L}).toString());
            intent.setData(uri);
            intent.addFlags(268435456);
            context.startActivity(intent);
            return i;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbfuVar)).booleanValue()) {
            zzbhd zzbhdVar = new zzbhd();
            zzbhdVar.zze(new zzo(this, zzbhdVar, context, uri));
            zzbhdVar.zzb((Activity) context);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbfuVar2)).booleanValue()) {
            CustomTabsIntent build = new CustomTabsIntent.Builder().build();
            build.intent.setPackage(zzhhv.zza(context));
            build.launchUrl(context, uri);
        }
        return 5;
    }
}
