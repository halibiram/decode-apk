package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Canvas;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.os.RemoteException;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.webkit.DownloadListener;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.VisibleForTesting;
import androidx.camera.camera2.internal.compat.CameraAccessExceptionCompat;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.Predicate;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzftt;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Callable;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
@ParametersAreNonnullByDefault
@SuppressLint({"ViewConstructor"})
@VisibleForTesting
/* loaded from: classes2.dex */
public final class zzckf extends WebView implements DownloadListener, ViewTreeObserver.OnGlobalLayoutListener, zzcjk {
    public static final /* synthetic */ int zza = 0;
    private zzcki zzA;
    private boolean zzB;
    private boolean zzC;
    private zzbja zzD;
    private zzbiy zzE;
    private zzbad zzF;
    private int zzG;
    private int zzH;
    private zzbgr zzI;
    private final zzbgr zzJ;
    private zzbgr zzK;
    private final zzbgs zzL;
    private int zzM;
    private com.google.android.gms.ads.internal.overlay.zzm zzN;
    private boolean zzO;
    private final com.google.android.gms.ads.internal.util.zzco zzP;
    private int zzQ;
    private int zzR;
    private int zzS;
    private int zzT;
    private Map zzU;
    private final WindowManager zzV;
    private final zzbbp zzW;
    private boolean zzX;
    private final zzckz zzb;
    private final zzavi zzc;
    private final zzfhl zzd;
    private final zzbhj zze;
    private final zzcei zzf;
    private com.google.android.gms.ads.internal.zzl zzg;
    private final com.google.android.gms.ads.internal.zza zzh;
    private final DisplayMetrics zzi;
    private final float zzj;
    private zzfgm zzk;
    private zzfgp zzl;
    private boolean zzm;
    private boolean zzn;
    private zzcjs zzo;
    private com.google.android.gms.ads.internal.overlay.zzm zzp;
    private zzfod zzq;
    private zzcla zzr;
    private final String zzs;
    private boolean zzt;
    private boolean zzu;
    private boolean zzv;
    private boolean zzw;
    private Boolean zzx;
    private boolean zzy;
    private final String zzz;

    @VisibleForTesting
    public zzckf(zzckz zzckzVar, zzcla zzclaVar, String str, boolean z, boolean z2, zzavi zzaviVar, zzbhj zzbhjVar, zzcei zzceiVar, zzbgu zzbguVar, com.google.android.gms.ads.internal.zzl zzlVar, com.google.android.gms.ads.internal.zza zzaVar, zzbbp zzbbpVar, zzfgm zzfgmVar, zzfgp zzfgpVar, zzfhl zzfhlVar) {
        super(zzckzVar);
        zzfgp zzfgpVar2;
        this.zzm = false;
        this.zzn = false;
        this.zzy = true;
        this.zzz = new ObfuscatedString(new long[]{-2313334912482568774L}).toString();
        this.zzQ = -1;
        this.zzR = -1;
        this.zzS = -1;
        this.zzT = -1;
        this.zzb = zzckzVar;
        this.zzr = zzclaVar;
        this.zzs = str;
        this.zzv = z;
        this.zzc = zzaviVar;
        this.zzd = zzfhlVar;
        this.zze = zzbhjVar;
        this.zzf = zzceiVar;
        this.zzg = zzlVar;
        this.zzh = zzaVar;
        WindowManager windowManager = (WindowManager) getContext().getSystemService(new ObfuscatedString(new long[]{-7147359258906825350L, 6681332582569758756L}).toString());
        this.zzV = windowManager;
        com.google.android.gms.ads.internal.zzt.zzp();
        DisplayMetrics zzs = com.google.android.gms.ads.internal.util.zzt.zzs(windowManager);
        this.zzi = zzs;
        this.zzj = zzs.density;
        this.zzW = zzbbpVar;
        this.zzk = zzfgmVar;
        this.zzl = zzfgpVar;
        this.zzP = new com.google.android.gms.ads.internal.util.zzco(zzckzVar.zza(), this, this, null);
        this.zzX = false;
        setBackgroundColor(0);
        final WebSettings settings = getSettings();
        settings.setAllowFileAccess(false);
        try {
            settings.setJavaScriptEnabled(true);
        } catch (NullPointerException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{4472962167950254252L, -126716457432357508L, -5999949516296636539L, 891532266474903144L, -8894484183142839500L}).toString(), e);
        }
        settings.setSavePassword(false);
        settings.setSupportMultipleWindows(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkZ)).booleanValue()) {
            settings.setMixedContentMode(1);
        } else {
            settings.setMixedContentMode(2);
        }
        settings.setUserAgentString(com.google.android.gms.ads.internal.zzt.zzp().zzc(zzckzVar, zzceiVar.zza));
        com.google.android.gms.ads.internal.zzt.zzp();
        final Context context = getContext();
        com.google.android.gms.ads.internal.util.zzch.zza(context, new Callable() { // from class: com.google.android.gms.ads.internal.util.zzk
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzftt zzfttVar = zzt.zza;
                String absolutePath = context.getDatabasePath(new ObfuscatedString(new long[]{-2925121191479035783L, 3905248118504041186L, 4388985649262375240L, -6821357318576414529L, -2035229248060433763L}).toString()).getAbsolutePath();
                WebSettings webSettings = settings;
                webSettings.setDatabasePath(absolutePath);
                webSettings.setDatabaseEnabled(true);
                webSettings.setDomStorageEnabled(true);
                webSettings.setDisplayZoomControls(false);
                webSettings.setBuiltInZoomControls(true);
                webSettings.setSupportZoom(true);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzaK)).booleanValue()) {
                    webSettings.setTextZoom(100);
                }
                webSettings.setAllowContentAccess(false);
                return Boolean.TRUE;
            }
        });
        settings.setAllowFileAccessFromFileURLs(false);
        settings.setAllowUniversalAccessFromFileURLs(false);
        settings.setMediaPlaybackRequiresUserGesture(false);
        setDownloadListener(this);
        zzaV();
        addJavascriptInterface(new zzckm(this, new zzckl(this)), new ObfuscatedString(new long[]{6662239027727402559L, -8992620294633312268L, -8774702803745116889L, -5569958806739171058L}).toString());
        removeJavascriptInterface(new ObfuscatedString(new long[]{-2797904653893784419L, -8024630612111494236L, 7440081873690669746L}).toString());
        removeJavascriptInterface(new ObfuscatedString(new long[]{434549451562178520L, 470171189477338430L, -2073788481448768289L, -3159352912824500415L}).toString());
        zzbd();
        zzbgs zzbgsVar = new zzbgs(new zzbgu(true, new ObfuscatedString(new long[]{-7325958905646730986L, -1212604028405957509L}).toString(), this.zzs));
        this.zzL = zzbgsVar;
        zzbgsVar.zza().zzc(null);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbQ)).booleanValue() && (zzfgpVar2 = this.zzl) != null && zzfgpVar2.zzb != null) {
            zzbgsVar.zza().zzd(new ObfuscatedString(new long[]{8919512878727288750L, 7362898535103333129L}).toString(), this.zzl.zzb);
        }
        zzbgsVar.zza();
        zzbgr zzf = zzbgu.zzf();
        this.zzJ = zzf;
        zzbgsVar.zzb(new ObfuscatedString(new long[]{-2991872004136946692L, -3072262244397870398L, -5882175863888974865L, -9055560655519503819L}).toString(), zzf);
        this.zzK = null;
        this.zzI = null;
        com.google.android.gms.ads.internal.util.zzck.zza().zzb(zzckzVar);
        com.google.android.gms.ads.internal.zzt.zzo().zzt();
    }

    private final synchronized void zzaV() {
        zzfgm zzfgmVar = this.zzk;
        if (zzfgmVar != null && zzfgmVar.zzan) {
            zzcec.zze(new ObfuscatedString(new long[]{227621591800718230L, 3221736729049912283L, -1281600546528715039L, 1475704634688703900L, -8459068491305186697L, -6799142586777204924L, -2885909270590948592L}).toString());
            zzaX();
            return;
        }
        if (!this.zzv && !this.zzr.zzi()) {
            zzcec.zze(new ObfuscatedString(new long[]{-9178135476289798159L, 1464639432918754524L, -4563821271590166464L, -1954748213997597753L, -6955115415084956007L, 7710865615520061546L, 7196762467608624214L}).toString());
            zzaZ();
            return;
        }
        zzcec.zze(new ObfuscatedString(new long[]{6208444381894810748L, 4782549150728949996L, 7466082155642571229L, -1918477577652010976L, 1198655921972373634L, 2974323375637860443L, -3545626774771351014L}).toString());
        zzaZ();
    }

    private final synchronized void zzaW() {
        if (!this.zzO) {
            this.zzO = true;
            com.google.android.gms.ads.internal.zzt.zzo().zzr();
        }
    }

    private final synchronized void zzaX() {
        try {
            if (!this.zzw) {
                setLayerType(1, null);
            }
            this.zzw = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    private final void zzaY(boolean z) {
        String obfuscatedString;
        HashMap hashMap = new HashMap();
        if (true != z) {
            obfuscatedString = new ObfuscatedString(new long[]{-1244845107869219293L, 7571304951126610102L}).toString();
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{3016968388501952040L, 8185368234389009548L}).toString();
        }
        hashMap.put(new ObfuscatedString(new long[]{1296703318635307853L, 4785866374667216851L, 3836150480244356286L}).toString(), obfuscatedString);
        zzd(new ObfuscatedString(new long[]{784356767818090053L, 5295237801304823077L, 8208549844856753868L, -5509174578735736518L}).toString(), hashMap);
    }

    private final synchronized void zzaZ() {
        try {
            if (this.zzw) {
                setLayerType(0, null);
            }
            this.zzw = false;
        } catch (Throwable th) {
            throw th;
        }
    }

    private final synchronized void zzba(String str) {
        try {
            super.loadUrl(new ObfuscatedString(new long[]{-781989704296712205L, -8847917046616862731L, -3276830651882665735L}).toString());
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzt.zzo().zzw(th, new ObfuscatedString(new long[]{-1142750555033552989L, 6799554756218962315L, -256994659104938883L, 7894769565609892226L, 6507396278800545439L}).toString());
            zzcec.zzk(new ObfuscatedString(new long[]{3269765188770953818L, -7777367477883999490L, 267661266926649644L, -4372396410246122988L, -1564888418441748229L, 4789046568463989902L}).toString(), th);
        }
    }

    private final void zzbb() {
        String obfuscatedString = new ObfuscatedString(new long[]{-3538192656153693908L, -2910750362292702005L}).toString();
        zzbgm.zza(this.zzL.zza(), this.zzJ, obfuscatedString);
    }

    private final synchronized void zzbc() {
        try {
            Map map = this.zzU;
            if (map != null) {
                Iterator it = map.values().iterator();
                while (it.hasNext()) {
                    ((zzchw) it.next()).release();
                }
            }
            this.zzU = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    private final void zzbd() {
        zzbgs zzbgsVar = this.zzL;
        if (zzbgsVar != null) {
            zzbgu zza2 = zzbgsVar.zza();
            zzbgk zzg = com.google.android.gms.ads.internal.zzt.zzo().zzg();
            if (zzg != null) {
                zzg.zzf(zza2);
            }
        }
    }

    private final synchronized void zzbe() {
        Boolean zzl = com.google.android.gms.ads.internal.zzt.zzo().zzl();
        this.zzx = zzl;
        if (zzl == null) {
            try {
                evaluateJavascript(new ObfuscatedString(new long[]{-7001504716914544343L, -8547810621590698032L, -2235397975581292911L}).toString(), null);
                zzaT(Boolean.TRUE);
            } catch (IllegalStateException unused) {
                zzaT(Boolean.FALSE);
            }
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcjk
    public final synchronized void destroy() {
        try {
            zzbd();
            this.zzP.zza();
            com.google.android.gms.ads.internal.overlay.zzm zzmVar = this.zzp;
            if (zzmVar != null) {
                zzmVar.zzb();
                this.zzp.zzm();
                this.zzp = null;
            }
            this.zzq = null;
            this.zzo.zzh();
            this.zzF = null;
            this.zzg = null;
            setOnClickListener(null);
            setOnTouchListener(null);
            if (this.zzu) {
                return;
            }
            com.google.android.gms.ads.internal.zzt.zzy().zzd(this);
            zzbc();
            this.zzu = true;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkn)).booleanValue()) {
                com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{5786380509638496107L, 5992844646858838075L, -110522206707066570L, 1290475496019508315L, -6115742988292840736L, 2321579603033376348L, -4431468395965248654L, -7685027242620941200L}).toString());
                com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{6137005780161668579L, -2432328286572039073L, -4668411419391460177L, -1485821658510682272L, 5817992086207615411L, 4528362938237692000L}).toString());
                zzba(new ObfuscatedString(new long[]{-6547605577571304937L, 7185611090732008857L, 8083100605566527584L}).toString());
            } else {
                com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{127399432877700885L, -471672770240488187L, 7368072642231852033L, -4977934870124536783L, 6897349724255583313L, 1057348637741544841L}).toString());
                zzV();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.webkit.WebView
    public final synchronized void evaluateJavascript(final String str, final ValueCallback valueCallback) {
        if (zzaB()) {
            zzcec.zzl(new ObfuscatedString(new long[]{6520388286596108802L, 6611607043249545019L, 654256789092998658L, 309227318554838031L, -2240174543301708948L, -710462281571500739L, -9194116226737266527L}).toString(), null);
            if (valueCallback != null) {
                valueCallback.onReceiveValue(null);
                return;
            }
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzko)).booleanValue() && Looper.getMainLooper().getThread() != Thread.currentThread()) {
            zzcep.zze.zza(new Runnable() { // from class: com.google.android.gms.internal.ads.zzckb
                @Override // java.lang.Runnable
                public final void run() {
                    zzckf.this.zzaR(str, valueCallback);
                }
            });
        } else {
            super.evaluateJavascript(str, valueCallback);
        }
    }

    public final void finalize() {
        try {
            synchronized (this) {
                try {
                    if (!this.zzu) {
                        this.zzo.zzh();
                        com.google.android.gms.ads.internal.zzt.zzy().zzd(this);
                        zzbc();
                        zzaW();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } finally {
            super.finalize();
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcjk
    public final synchronized void loadData(String str, String str2, String str3) {
        if (!zzaB()) {
            super.loadData(str, str2, str3);
        } else {
            zzcec.zzj(new ObfuscatedString(new long[]{-5745910042826169787L, 3207581794815926225L, -1110066457829415009L, 6949798647890585888L, -5950744265885660746L, -359737061613845832L, -4012247026712936534L}).toString());
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcjk
    public final synchronized void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        if (!zzaB()) {
            super.loadDataWithBaseURL(str, str2, str3, str4, str5);
        } else {
            zzcec.zzj(new ObfuscatedString(new long[]{9180882391916257918L, -221512680592364505L, -5944486444917161294L, 2017644775118389935L, -9205348979014559106L, -4131770660544619702L, -8055218106151481208L}).toString());
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcjk
    public final synchronized void loadUrl(String str) {
        if (!zzaB()) {
            try {
                super.loadUrl(str);
                return;
            } catch (Throwable th) {
                com.google.android.gms.ads.internal.zzt.zzo().zzw(th, new ObfuscatedString(new long[]{54259974669065726L, -127971883958213224L, 5176098776379105192L, 6194084613631705369L}).toString());
                zzcec.zzk(new ObfuscatedString(new long[]{-6377300732155723122L, -4521774442165671058L, -5429638401432475851L, 1564326523987185565L}).toString(), th);
                return;
            }
        }
        zzcec.zzj(new ObfuscatedString(new long[]{-1369570528807443388L, -1922420856376899221L, -7050282369535619492L, -6695496766725011956L, 3021906222042260499L, 7581266654200173253L, 3545142431833791075L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        zzcjs zzcjsVar = this.zzo;
        if (zzcjsVar != null) {
            zzcjsVar.onAdClicked();
        }
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    public final synchronized void onAttachedToWindow() {
        try {
            super.onAttachedToWindow();
            if (!zzaB()) {
                this.zzP.zzc();
            }
            if (this.zzX) {
                onResume();
                this.zzX = false;
            }
            boolean z = this.zzB;
            zzcjs zzcjsVar = this.zzo;
            if (zzcjsVar != null && zzcjsVar.zzM()) {
                if (!this.zzC) {
                    this.zzo.zza();
                    this.zzo.zzb();
                    this.zzC = true;
                }
                zzaU();
                z = true;
            }
            zzaY(z);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        zzcjs zzcjsVar;
        synchronized (this) {
            try {
                if (!zzaB()) {
                    this.zzP.zzd();
                }
                super.onDetachedFromWindow();
                if (this.zzC && (zzcjsVar = this.zzo) != null && zzcjsVar.zzM() && getViewTreeObserver() != null && getViewTreeObserver().isAlive()) {
                    this.zzo.zza();
                    this.zzo.zzb();
                    this.zzC = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        zzaY(false);
    }

    @Override // android.webkit.DownloadListener
    public final void onDownloadStart(String str, String str2, String str3, String str4, long j) {
        try {
            Intent intent = new Intent(new ObfuscatedString(new long[]{-574258506777669085L, -6269409487307358606L, 1968300702969296435L, -2899855972297497802L, -8052544519769459208L}).toString());
            intent.setDataAndType(Uri.parse(str), str4);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkz)).booleanValue() && getContext() != null) {
                intent.setPackage(getContext().getPackageName());
            }
            com.google.android.gms.ads.internal.zzt.zzp();
            com.google.android.gms.ads.internal.util.zzt.zzS(getContext(), intent);
        } catch (ActivityNotFoundException e) {
            zzcec.zze(new ObfuscatedString(new long[]{3010347251962299292L, -9064019620408817607L, -6530743895262787995L, 3798657548700511199L, 7885328091483646755L, -4411783114643439636L, -8992403734820498226L}).toString() + str + new ObfuscatedString(new long[]{7023760652186058362L, -1702527065815852973L}).toString() + str4);
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{-3418857367472465000L, -3217345104989927547L, 6961724579293012193L, 7210076350973534645L, 4296477910408836221L}).toString().concat(String.valueOf(str)));
        }
    }

    @Override // android.webkit.WebView, android.view.View
    @TargetApi(21)
    public final void onDraw(Canvas canvas) {
        if (!zzaB()) {
            if (Build.VERSION.SDK_INT == 21 && canvas.isHardwareAccelerated() && !isAttachedToWindow()) {
                return;
            }
            super.onDraw(canvas);
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float axisValue = motionEvent.getAxisValue(9);
        float axisValue2 = motionEvent.getAxisValue(10);
        if (motionEvent.getActionMasked() == 8) {
            if (axisValue <= 0.0f || canScrollVertically(-1)) {
                if (axisValue >= 0.0f || canScrollVertically(1)) {
                    if (axisValue2 <= 0.0f || canScrollHorizontally(-1)) {
                        if (axisValue2 < 0.0f && !canScrollHorizontally(1)) {
                            return false;
                        }
                    } else {
                        return false;
                    }
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        boolean zzaU = zzaU();
        com.google.android.gms.ads.internal.overlay.zzm zzL = zzL();
        if (zzL != null && zzaU) {
            zzL.zzn();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x021c A[Catch: all -> 0x000f, TRY_ENTER, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x000a, B:10:0x0012, B:12:0x0018, B:14:0x001c, B:17:0x0026, B:19:0x002e, B:22:0x0033, B:24:0x003b, B:26:0x004d, B:29:0x0052, B:31:0x0059, B:34:0x0063, B:37:0x0068, B:40:0x007a, B:41:0x0093, B:45:0x0082, B:48:0x0087, B:52:0x00a0, B:54:0x00a8, B:56:0x00ba, B:59:0x00bf, B:61:0x00f6, B:62:0x00ff, B:65:0x00fb, B:66:0x0104, B:68:0x010c, B:71:0x0117, B:78:0x013d, B:80:0x0144, B:83:0x014b, B:85:0x015d, B:87:0x016b, B:90:0x0178, B:94:0x017d, B:96:0x0205, B:97:0x0208, B:99:0x020f, B:104:0x021c, B:106:0x0222, B:107:0x0225, B:109:0x0229, B:110:0x0232, B:116:0x023d), top: B:3:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x015d A[Catch: all -> 0x000f, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x000a, B:10:0x0012, B:12:0x0018, B:14:0x001c, B:17:0x0026, B:19:0x002e, B:22:0x0033, B:24:0x003b, B:26:0x004d, B:29:0x0052, B:31:0x0059, B:34:0x0063, B:37:0x0068, B:40:0x007a, B:41:0x0093, B:45:0x0082, B:48:0x0087, B:52:0x00a0, B:54:0x00a8, B:56:0x00ba, B:59:0x00bf, B:61:0x00f6, B:62:0x00ff, B:65:0x00fb, B:66:0x0104, B:68:0x010c, B:71:0x0117, B:78:0x013d, B:80:0x0144, B:83:0x014b, B:85:0x015d, B:87:0x016b, B:90:0x0178, B:94:0x017d, B:96:0x0205, B:97:0x0208, B:99:0x020f, B:104:0x021c, B:106:0x0222, B:107:0x0225, B:109:0x0229, B:110:0x0232, B:116:0x023d), top: B:3:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x017d A[Catch: all -> 0x000f, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x000a, B:10:0x0012, B:12:0x0018, B:14:0x001c, B:17:0x0026, B:19:0x002e, B:22:0x0033, B:24:0x003b, B:26:0x004d, B:29:0x0052, B:31:0x0059, B:34:0x0063, B:37:0x0068, B:40:0x007a, B:41:0x0093, B:45:0x0082, B:48:0x0087, B:52:0x00a0, B:54:0x00a8, B:56:0x00ba, B:59:0x00bf, B:61:0x00f6, B:62:0x00ff, B:65:0x00fb, B:66:0x0104, B:68:0x010c, B:71:0x0117, B:78:0x013d, B:80:0x0144, B:83:0x014b, B:85:0x015d, B:87:0x016b, B:90:0x0178, B:94:0x017d, B:96:0x0205, B:97:0x0208, B:99:0x020f, B:104:0x021c, B:106:0x0222, B:107:0x0225, B:109:0x0229, B:110:0x0232, B:116:0x023d), top: B:3:0x0003 }] */
    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    @SuppressLint({"DrawAllocation"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized void onMeasure(int i, int i2) {
        int i3;
        zzcla zzclaVar;
        boolean z;
        boolean z2;
        int size;
        float f;
        int i4;
        int i5;
        int i6 = 0;
        if (zzaB()) {
            setMeasuredDimension(0, 0);
            return;
        }
        if (!isInEditMode() && !this.zzv && !this.zzr.zzf()) {
            if (this.zzr.zzh()) {
                super.onMeasure(i, i2);
                return;
            }
            if (this.zzr.zzj()) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzdJ)).booleanValue()) {
                    super.onMeasure(i, i2);
                    return;
                }
                zzcki zzq = zzq();
                if (zzq != null) {
                    f = zzq.zze();
                } else {
                    f = 0.0f;
                }
                if (f == 0.0f) {
                    super.onMeasure(i, i2);
                    return;
                }
                int size2 = View.MeasureSpec.getSize(i);
                int size3 = View.MeasureSpec.getSize(i2);
                float f2 = size3 * f;
                int i7 = (int) (size2 / f);
                if (size3 == 0) {
                    if (i7 != 0) {
                        i5 = (int) (i7 * f);
                        i6 = size2;
                        i4 = i7;
                        setMeasuredDimension(Math.min(i5, i6), Math.min(i7, i4));
                        return;
                    }
                    size3 = 0;
                }
                int i8 = (int) f2;
                if (size2 == 0) {
                    if (i8 != 0) {
                        i7 = (int) (i8 / f);
                        i4 = size3;
                        i5 = i8;
                        i6 = i5;
                        setMeasuredDimension(Math.min(i5, i6), Math.min(i7, i4));
                        return;
                    }
                } else {
                    i6 = size2;
                }
                i4 = size3;
                i5 = i8;
                setMeasuredDimension(Math.min(i5, i6), Math.min(i7, i4));
                return;
            }
            if (this.zzr.zzg()) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzdQ)).booleanValue()) {
                    super.onMeasure(i, i2);
                    return;
                }
                zzae(new ObfuscatedString(new long[]{2392939088067630672L, 5785737389596792350L, -5540954957542609370L}).toString(), new zzckd(this));
                zzaQ(new ObfuscatedString(new long[]{3470341714197618881L, -3320157303925184546L, -4589332214398134015L, -5468483161561050846L, -2982019606359369987L, 363528495783354946L, 8531260619629313181L, -4472081663939453422L, 7794574485213891557L, 2822266555238840657L, 3565123193395326372L, 4881874549028631600L, -3769891372414104204L, -3298314356640871907L, -1309200480202222915L, 4208169832655015876L, -3221520089155201521L, 8298097442369899338L, -8147120170623399030L, -8976558920901961638L, -4637874212543698972L, 8440743844486088055L, -6365141279948963091L, -895590461459452930L, 1517250140686693118L, -7299352749421322179L, 3783463123458991646L, 2076338743585575941L, 6730840213355351013L, -7864637044166627486L, 3066089567557576769L, -2853928043989758414L, 5623321620850996053L, -2035749558231967501L, -6357050639515627072L, 4714096575964394395L, 1366856821005877303L, 9139637271958738716L, 4097059986470599179L, -7442026118421424342L, 8547497598732641722L, -1836095947892810634L, -7837257573409019993L, -3811746199635364150L, 2217790443806717850L, -5928456327444685620L, -3041758699708136558L, -3088118158303014083L, -4596996211774240979L, 5923484752348684593L, 3709725705280896827L, -4574385035618187032L, -2973716627160122224L, 1545711605380545109L, -7863413250026582556L, -3514680839598506964L, -2498275560956985086L, 8819460892232168199L, 320575873258236840L, -3570558393130410426L, -8149583489717615279L, -2012756302496694977L, -1760724314167877608L, -1768542797773581055L, 4008659292442751554L, -1399402703166493169L, -2862645212586811605L, 5307695822896800050L, -6952125596412561711L, -5011190196964559847L, 4712715138413721368L, -239229812798557636L, 7078098492397532761L, 6095095778671432802L, 8433983886218475829L, 1774299597890365971L, 6769651389873345005L, 8247279697658042654L, -6476273787361029740L, -8947972804963525409L, 7036024421568471148L, -7780641878362991222L, 8096392574748780304L, 5695423103665275408L}).toString());
                float f3 = this.zzi.density;
                int size4 = View.MeasureSpec.getSize(i);
                int i9 = this.zzH;
                if (i9 != -1) {
                    size = (int) (i9 * f3);
                } else {
                    size = View.MeasureSpec.getSize(i2);
                }
                setMeasuredDimension(size4, size);
                return;
            }
            if (this.zzr.zzi()) {
                DisplayMetrics displayMetrics = this.zzi;
                setMeasuredDimension(displayMetrics.widthPixels, displayMetrics.heightPixels);
                return;
            }
            int mode = View.MeasureSpec.getMode(i);
            int size5 = View.MeasureSpec.getSize(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            int size6 = View.MeasureSpec.getSize(i2);
            int i10 = Integer.MAX_VALUE;
            if (mode != Integer.MIN_VALUE && mode != 1073741824) {
                i3 = Integer.MAX_VALUE;
                if (mode2 != Integer.MIN_VALUE || mode2 == 1073741824) {
                    i10 = size6;
                }
                zzclaVar = this.zzr;
                if (zzclaVar.zzb <= i3 || zzclaVar.zza > i10) {
                    z = true;
                } else {
                    z = false;
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzfq)).booleanValue()) {
                    float f4 = this.zzr.zzb;
                    float f5 = this.zzj;
                    if (f4 / f5 <= i3 / f5 && r6.zza / f5 <= i10 / f5) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    z &= z2;
                }
                if (!z) {
                    zzcla zzclaVar2 = this.zzr;
                    float f6 = zzclaVar2.zzb;
                    float f7 = this.zzj;
                    zzcec.zzj(new ObfuscatedString(new long[]{-8701000296314114604L, -3486606278473230979L, 4731417570815883408L, -8764037905105934618L, 5796071851929202253L, 390480509723156193L}).toString() + ((int) (f6 / f7)) + new ObfuscatedString(new long[]{-3436004587902122264L, -2524069259305768453L}).toString() + ((int) (zzclaVar2.zza / f7)) + new ObfuscatedString(new long[]{-2375563694676484132L, -2193227344386070308L, 9013443766589844471L, 1939856340300950729L}).toString() + ((int) (size5 / f7)) + new ObfuscatedString(new long[]{-7258813474890729971L, 1519000951651577487L}).toString() + ((int) (size6 / f7)) + new ObfuscatedString(new long[]{-9125217088080672206L, -7084184775433882814L}).toString());
                    if (getVisibility() != 8) {
                        setVisibility(4);
                    }
                    setMeasuredDimension(0, 0);
                    if (!this.zzm) {
                        this.zzW.zzc(CameraAccessExceptionCompat.CAMERA_UNAVAILABLE_DO_NOT_DISTURB);
                        this.zzm = true;
                        return;
                    }
                    return;
                }
                if (getVisibility() != 8) {
                    setVisibility(0);
                }
                if (!this.zzn) {
                    this.zzW.zzc(CameraAccessExceptionCompat.CAMERA_CHARACTERISTICS_CREATION_ERROR);
                    this.zzn = true;
                }
                zzcla zzclaVar3 = this.zzr;
                setMeasuredDimension(zzclaVar3.zzb, zzclaVar3.zza);
                return;
            }
            i3 = size5;
            if (mode2 != Integer.MIN_VALUE) {
            }
            i10 = size6;
            zzclaVar = this.zzr;
            if (zzclaVar.zzb <= i3) {
            }
            z = true;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzfq)).booleanValue()) {
            }
            if (!z) {
            }
        }
        super.onMeasure(i, i2);
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcjk
    public final void onPause() {
        if (zzaB()) {
            return;
        }
        try {
            super.onPause();
        } catch (Exception e) {
            zzcec.zzh(new ObfuscatedString(new long[]{647838395004284434L, -2757604508048116237L, -3683987410414973906L, -3334395112936001493L}).toString(), e);
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcjk
    public final void onResume() {
        if (zzaB()) {
            return;
        }
        try {
            super.onResume();
        } catch (Exception e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-6087235092975201891L, 276237967813472784L, 2596332781945246517L, 5912262857320825467L, 8464782103394601689L}).toString(), e);
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.zzo.zzM() && !this.zzo.zzK()) {
            synchronized (this) {
                try {
                    zzbja zzbjaVar = this.zzD;
                    if (zzbjaVar != null) {
                        zzbjaVar.zzd(motionEvent);
                    }
                } finally {
                }
            }
        } else {
            zzavi zzaviVar = this.zzc;
            if (zzaviVar != null) {
                zzaviVar.zzd(motionEvent);
            }
            zzbhj zzbhjVar = this.zze;
            if (zzbhjVar != null) {
                zzbhjVar.zzb(motionEvent);
            }
        }
        if (zzaB()) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcjk
    public final void setWebViewClient(WebViewClient webViewClient) {
        super.setWebViewClient(webViewClient);
        if (webViewClient instanceof zzcjs) {
            this.zzo = (zzcjs) webViewClient;
        }
    }

    @Override // android.webkit.WebView
    public final void stopLoading() {
        if (zzaB()) {
            return;
        }
        try {
            super.stopLoading();
        } catch (Exception e) {
            zzcec.zzh(new ObfuscatedString(new long[]{1207243866805245909L, -6971570213858831021L, 5806560766611587474L, -1093760754426733049L, -8250075595985517708L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgl
    public final synchronized void zzA(int i) {
        this.zzM = i;
    }

    @Override // com.google.android.gms.internal.ads.zzcgl
    public final void zzB(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzcjk, com.google.android.gms.internal.ads.zzcgl
    public final synchronized void zzC(zzcki zzckiVar) {
        if (this.zzA != null) {
            zzcec.zzg(new ObfuscatedString(new long[]{3661663594793466402L, -6309628171537770435L, -5518300982774038825L, -7763588376347922961L, -527032022637602166L, -744383616567366179L, 8389967492752647319L, -3726641459038673870L}).toString());
        } else {
            this.zzA = zzckiVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjk, com.google.android.gms.internal.ads.zzcjb
    public final zzfgm zzD() {
        return this.zzk;
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final Context zzE() {
        return this.zzb.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzcjk, com.google.android.gms.internal.ads.zzckv
    public final View zzF() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final WebView zzG() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final WebViewClient zzH() {
        return this.zzo;
    }

    @Override // com.google.android.gms.internal.ads.zzcjk, com.google.android.gms.internal.ads.zzckt
    public final zzavi zzI() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final synchronized zzbad zzJ() {
        return this.zzF;
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final synchronized zzbja zzK() {
        return this.zzD;
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final synchronized com.google.android.gms.ads.internal.overlay.zzm zzL() {
        return this.zzp;
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final synchronized com.google.android.gms.ads.internal.overlay.zzm zzM() {
        return this.zzN;
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final /* synthetic */ zzcky zzN() {
        return this.zzo;
    }

    @Override // com.google.android.gms.internal.ads.zzcjk, com.google.android.gms.internal.ads.zzcks
    public final synchronized zzcla zzO() {
        return this.zzr;
    }

    @Override // com.google.android.gms.internal.ads.zzcjk, com.google.android.gms.internal.ads.zzckj
    public final zzfgp zzP() {
        return this.zzl;
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final zzfhl zzQ() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final synchronized zzfod zzR() {
        return this.zzq;
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final ListenableFuture zzS() {
        zzbhj zzbhjVar = this.zze;
        if (zzbhjVar == null) {
            return zzgen.zzh(null);
        }
        return zzbhjVar.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final synchronized String zzT() {
        return this.zzs;
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final void zzU(zzfgm zzfgmVar, zzfgp zzfgpVar) {
        this.zzk = zzfgmVar;
        this.zzl = zzfgpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final synchronized void zzV() {
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{5278548410354054772L, 3781678673978470871L, 8714519660733856144L, 1319403358736151543L}).toString());
        zzaW();
        com.google.android.gms.ads.internal.util.zzt.zza.post(new zzcke(this));
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final void zzW() {
        zzbb();
        HashMap hashMap = new HashMap(1);
        hashMap.put(new ObfuscatedString(new long[]{-622077243312436419L, -426744348692650364L}).toString(), this.zzf.zza);
        zzd(new ObfuscatedString(new long[]{145694482110550859L, -2333895318104592689L}).toString(), hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final void zzX(int i) {
        if (i == 0) {
            zzbgs zzbgsVar = this.zzL;
            zzbgm.zza(zzbgsVar.zza(), this.zzJ, new ObfuscatedString(new long[]{5736741850425273364L, -6812151029283592067L}).toString());
        }
        zzbb();
        this.zzL.zza();
        this.zzL.zza().zzd(new ObfuscatedString(new long[]{-1604629426523178710L, 8768429256738700021L, 5643107833975602284L}).toString(), String.valueOf(i));
        HashMap hashMap = new HashMap(2);
        hashMap.put(new ObfuscatedString(new long[]{8348775580609877590L, 7099060488359871472L, 6627449409113692770L}).toString(), String.valueOf(i));
        hashMap.put(new ObfuscatedString(new long[]{-7108692497423019321L, -6273718434918498275L}).toString(), this.zzf.zza);
        zzd(new ObfuscatedString(new long[]{2448874590159571188L, -4175384083203028407L}).toString(), hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final void zzY() {
        if (this.zzI == null) {
            zzbgs zzbgsVar = this.zzL;
            zzbgm.zza(zzbgsVar.zza(), this.zzJ, new ObfuscatedString(new long[]{7841823012118239103L, -8298106011671811971L}).toString());
            this.zzL.zza();
            zzbgr zzf = zzbgu.zzf();
            this.zzI = zzf;
            this.zzL.zzb(new ObfuscatedString(new long[]{5430349058525334774L, 7151759436846851624L, 2573779561051731635L}).toString(), zzf);
        }
        HashMap hashMap = new HashMap(1);
        hashMap.put(new ObfuscatedString(new long[]{-1186749274903885760L, -6093694493447806594L}).toString(), this.zzf.zza);
        zzd(new ObfuscatedString(new long[]{-8067160887864923196L, -2296016251826803275L}).toString(), hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final void zzZ() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbqn
    public final void zza(String str) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final boolean zzaA(final boolean z, final int i) {
        destroy();
        this.zzW.zzb(new zzbbo() { // from class: com.google.android.gms.internal.ads.zzckc
            @Override // com.google.android.gms.internal.ads.zzbbo
            public final void zza(zzbde zzbdeVar) {
                int i2 = zzckf.zza;
                zzbfj zza2 = zzbfk.zza();
                boolean zzc = zza2.zzc();
                boolean z2 = z;
                if (zzc != z2) {
                    zza2.zza(z2);
                }
                zza2.zzb(i);
                zzbdeVar.zzj((zzbfk) zza2.zzal());
            }
        });
        this.zzW.zzc(10003);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final synchronized boolean zzaB() {
        return this.zzu;
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final synchronized boolean zzaC() {
        return this.zzv;
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final boolean zzaD() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final synchronized boolean zzaE() {
        return this.zzy;
    }

    @Override // com.google.android.gms.internal.ads.zzckq
    public final void zzaF(com.google.android.gms.ads.internal.overlay.zzc zzcVar, boolean z) {
        this.zzo.zzu(zzcVar, z);
    }

    @Override // com.google.android.gms.internal.ads.zzckq
    public final void zzaG(String str, String str2, int i) {
        this.zzo.zzv(str, str2, 14);
    }

    @Override // com.google.android.gms.internal.ads.zzckq
    public final void zzaH(boolean z, int i, boolean z2) {
        this.zzo.zzw(z, i, z2);
    }

    @Override // com.google.android.gms.internal.ads.zzckq
    public final void zzaI(boolean z, int i, String str, String str2, boolean z2) {
        this.zzo.zzy(z, i, str, str2, z2);
    }

    @Override // com.google.android.gms.internal.ads.zzckq
    public final void zzaJ(boolean z, int i, String str, boolean z2, boolean z3) {
        this.zzo.zzz(z, i, str, z2, z3);
    }

    public final zzcjs zzaL() {
        return this.zzo;
    }

    @VisibleForTesting
    public final synchronized Boolean zzaM() {
        return this.zzx;
    }

    public final synchronized void zzaP(String str, ValueCallback valueCallback) {
        if (!zzaB()) {
            evaluateJavascript(str, null);
        } else {
            zzcec.zzj(new ObfuscatedString(new long[]{4433666425385363518L, -2820005304049881921L, 5745509660008075253L, 501783325841380774L, 1605754810124913154L, 6302552908547596424L, -2698130385645759691L}).toString());
        }
    }

    public final void zzaQ(String str) {
        if (PlatformVersion.isAtLeastKitKat()) {
            if (zzaM() == null) {
                zzbe();
            }
            if (zzaM().booleanValue()) {
                zzaP(str, null);
                return;
            } else {
                zzaS(new ObfuscatedString(new long[]{-6615135868361072643L, 7575424423037232269L, -4461901207878702655L}).toString().concat(str));
                return;
            }
        }
        zzaS(new ObfuscatedString(new long[]{-4304889795926112262L, 6082646259565811591L, -2293594874141351244L}).toString().concat(str));
    }

    public final /* synthetic */ void zzaR(String str, ValueCallback valueCallback) {
        super.evaluateJavascript(str, valueCallback);
    }

    public final synchronized void zzaS(String str) {
        if (!zzaB()) {
            loadUrl(str);
        } else {
            zzcec.zzj(new ObfuscatedString(new long[]{-4514154929716323294L, 7583984372466846382L, 2461370670260516366L, -4437884188216421890L, 2822315211337884653L, -3988328328104698872L, 6544493734124587453L}).toString());
        }
    }

    @VisibleForTesting
    public final void zzaT(Boolean bool) {
        synchronized (this) {
            this.zzx = bool;
        }
        com.google.android.gms.ads.internal.zzt.zzo().zzx(bool);
    }

    public final boolean zzaU() {
        int i;
        int i2;
        boolean z;
        if (this.zzo.zzL() || this.zzo.zzM()) {
            com.google.android.gms.ads.internal.client.zzay.zzb();
            DisplayMetrics displayMetrics = this.zzi;
            int zzv = zzcdv.zzv(displayMetrics, displayMetrics.widthPixels);
            com.google.android.gms.ads.internal.client.zzay.zzb();
            DisplayMetrics displayMetrics2 = this.zzi;
            int zzv2 = zzcdv.zzv(displayMetrics2, displayMetrics2.heightPixels);
            Activity zza2 = this.zzb.zza();
            if (zza2 != null && zza2.getWindow() != null) {
                com.google.android.gms.ads.internal.zzt.zzp();
                int[] zzP = com.google.android.gms.ads.internal.util.zzt.zzP(zza2);
                com.google.android.gms.ads.internal.client.zzay.zzb();
                int zzv3 = zzcdv.zzv(this.zzi, zzP[0]);
                com.google.android.gms.ads.internal.client.zzay.zzb();
                i2 = zzcdv.zzv(this.zzi, zzP[1]);
                i = zzv3;
            } else {
                i = zzv;
                i2 = zzv2;
            }
            int i3 = this.zzR;
            if (i3 != zzv || this.zzQ != zzv2 || this.zzS != i || this.zzT != i2) {
                if (i3 != zzv || this.zzQ != zzv2) {
                    z = true;
                } else {
                    z = false;
                }
                this.zzR = zzv;
                this.zzQ = zzv2;
                this.zzS = i;
                this.zzT = i2;
                new zzbvw(this, new ObfuscatedString(new long[]{7527309386532856396L}).toString()).zzj(zzv, zzv2, i, i2, this.zzi.density, this.zzV.getDefaultDisplay().getRotation());
                return z;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final void zzaa(boolean z) {
        this.zzo.zzi(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final void zzab() {
        this.zzP.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final synchronized void zzac(String str, String str2, String str3) {
        String str4;
        try {
            if (!zzaB()) {
                String str5 = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzP);
                JSONObject jSONObject = new JSONObject();
                String obfuscatedString = new ObfuscatedString(new long[]{-3095183910318029905L, 4671473512476425877L, 634030380056440059L}).toString();
                try {
                    jSONObject.put(new ObfuscatedString(new long[]{75408639274517460L, 6971291725160013771L}).toString(), str5);
                    jSONObject.put(new ObfuscatedString(new long[]{5772887874871935605L, 2125582331250130380L}).toString(), new ObfuscatedString(new long[]{1464370476704582273L, 2179546190405876871L, -2913871048447811659L, 4806985117891116079L}).toString());
                    jSONObject.put(new ObfuscatedString(new long[]{-3992542682412812945L, -6879730995713874254L, 3439402057592718726L}).toString(), obfuscatedString);
                    str4 = new ObfuscatedString(new long[]{8793110084071504813L, 1088689516471854257L, -3964968372395712534L, -2237407448162939554L, 2899266510056571841L, -1651594106554915239L, 4444894122797047153L, 1397595560502719248L, -6646341076528195190L, 6483273520505166457L}).toString() + jSONObject.toString() + new ObfuscatedString(new long[]{7501913197744223748L, -5994355666027598022L, -8740461750328745859L}).toString();
                } catch (JSONException e) {
                    zzcec.zzk(new ObfuscatedString(new long[]{6709372340605445980L, -5459746404084491835L, 2628297325734080979L, -1858135312980016054L, 580068005286607353L}).toString(), e);
                    str4 = null;
                }
                super.loadDataWithBaseURL(str, zzckr.zza(str2, str4), new ObfuscatedString(new long[]{-2742350185483874700L, 2445265090575293072L, 5120170735836876381L}).toString(), new ObfuscatedString(new long[]{-5391551232134129146L, -6658057790395938277L}).toString(), null);
                return;
            }
            zzcec.zzj(new ObfuscatedString(new long[]{2523527591402535168L, 2820277826540581017L, -8523687089063187015L, -667836939416915984L, -698046773982198189L, -7976889474605889219L, 215542403865404983L}).toString());
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final void zzad() {
        if (this.zzK == null) {
            this.zzL.zza();
            zzbgr zzf = zzbgu.zzf();
            this.zzK = zzf;
            this.zzL.zzb(new ObfuscatedString(new long[]{-6041849237594557627L, 2091621276416896428L, -7782998452870871889L}).toString(), zzf);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final void zzae(String str, zzbng zzbngVar) {
        zzcjs zzcjsVar = this.zzo;
        if (zzcjsVar != null) {
            zzcjsVar.zzA(str, zzbngVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final void zzaf() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final synchronized void zzag(com.google.android.gms.ads.internal.overlay.zzm zzmVar) {
        this.zzp = zzmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final synchronized void zzah(zzcla zzclaVar) {
        this.zzr = zzclaVar;
        requestLayout();
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final synchronized void zzai(zzbad zzbadVar) {
        this.zzF = zzbadVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final synchronized void zzaj(boolean z) {
        this.zzy = z;
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final void zzak() {
        setBackgroundColor(0);
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final void zzal(Context context) {
        this.zzb.setBaseContext(context);
        this.zzP.zze(this.zzb.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final synchronized void zzam(boolean z) {
        com.google.android.gms.ads.internal.overlay.zzm zzmVar = this.zzp;
        if (zzmVar != null) {
            zzmVar.zzy(this.zzo.zzL(), z);
        } else {
            this.zzt = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final synchronized void zzan(zzbiy zzbiyVar) {
        this.zzE = zzbiyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final synchronized void zzao(boolean z) {
        String obfuscatedString;
        try {
            boolean z2 = this.zzv;
            this.zzv = z;
            zzaV();
            if (z == z2 || (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzQ)).booleanValue() && this.zzr.zzi())) {
                return;
            }
            zzbvw zzbvwVar = new zzbvw(this, new ObfuscatedString(new long[]{1302943290815264512L}).toString());
            if (true != z) {
                obfuscatedString = new ObfuscatedString(new long[]{6504337184192817580L, -3692184198846762517L}).toString();
            } else {
                obfuscatedString = new ObfuscatedString(new long[]{-1146896020598115318L, -3143004129713861434L}).toString();
            }
            zzbvwVar.zzl(obfuscatedString);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final synchronized void zzap(zzbja zzbjaVar) {
        this.zzD = zzbjaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final synchronized void zzaq(zzfod zzfodVar) {
        this.zzq = zzfodVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final synchronized void zzar(int i) {
        com.google.android.gms.ads.internal.overlay.zzm zzmVar = this.zzp;
        if (zzmVar != null) {
            zzmVar.zzA(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final void zzas(boolean z) {
        this.zzX = true;
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final synchronized void zzat(com.google.android.gms.ads.internal.overlay.zzm zzmVar) {
        this.zzN = zzmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final synchronized void zzau(boolean z) {
        com.google.android.gms.ads.internal.overlay.zzm zzmVar;
        int i = this.zzG;
        int i2 = 1;
        if (true != z) {
            i2 = -1;
        }
        int i3 = i + i2;
        this.zzG = i3;
        if (i3 <= 0 && (zzmVar = this.zzp) != null) {
            zzmVar.zzE();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final synchronized void zzav(boolean z) {
        if (z) {
            try {
                setBackgroundColor(0);
            } catch (Throwable th) {
                throw th;
            }
        }
        com.google.android.gms.ads.internal.overlay.zzm zzmVar = this.zzp;
        if (zzmVar != null) {
            zzmVar.zzB(z);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final void zzaw(String str, zzbng zzbngVar) {
        zzcjs zzcjsVar = this.zzo;
        if (zzcjsVar != null) {
            zzcjsVar.zzI(str, zzbngVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final void zzax(String str, Predicate predicate) {
        zzcjs zzcjsVar = this.zzo;
        if (zzcjsVar != null) {
            zzcjsVar.zzJ(str, predicate);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final synchronized boolean zzay() {
        return this.zzt;
    }

    @Override // com.google.android.gms.internal.ads.zzcjk
    public final synchronized boolean zzaz() {
        return this.zzG > 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbqn
    public final void zzb(String str, String str2) {
        StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(str);
        m3341xc20437a5.append(new ObfuscatedString(new long[]{-1157139226646012913L, 2800682175450174744L}).toString());
        m3341xc20437a5.append(str2);
        zzaQ(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-1181902763239645134L, -8972804445680376307L}), m3341xc20437a5));
    }

    @Override // com.google.android.gms.internal.ads.zzdiu
    public final void zzbo() {
        zzcjs zzcjsVar = this.zzo;
        if (zzcjsVar != null) {
            zzcjsVar.zzbo();
        }
    }

    @Override // com.google.android.gms.ads.internal.zzl
    public final synchronized void zzbp() {
        com.google.android.gms.ads.internal.zzl zzlVar = this.zzg;
        if (zzlVar != null) {
            zzlVar.zzbp();
        }
    }

    @Override // com.google.android.gms.ads.internal.zzl
    public final synchronized void zzbq() {
        com.google.android.gms.ads.internal.zzl zzlVar = this.zzg;
        if (zzlVar != null) {
            zzlVar.zzbq();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgl
    public final synchronized String zzbr() {
        return this.zzz;
    }

    @Override // com.google.android.gms.internal.ads.zzayq
    public final void zzby(zzayp zzaypVar) {
        boolean z;
        synchronized (this) {
            z = zzaypVar.zzj;
            this.zzB = z;
        }
        zzaY(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbqa
    public final void zzd(String str, Map map) {
        try {
            zze(str, com.google.android.gms.ads.internal.client.zzay.zzb().zzi(map));
        } catch (JSONException unused) {
            zzcec.zzj(new ObfuscatedString(new long[]{2227458783908884420L, 4201106805334956371L, -3746997919604610403L, 1972349781182761218L, 3852336430940523847L, -7370182630926705509L}).toString());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbqa
    public final void zze(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String jSONObject2 = jSONObject.toString();
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-1638172936738570219L, 6743113063153497291L, -3451312107936208895L, -4783199869185767189L, -4516456361614012742L, 7974051961188390912L, 3771396575513252543L}).toString());
        sb.append(str);
        sb.append(new ObfuscatedString(new long[]{-540525347852031732L, -3100503490059439238L}).toString());
        sb.append(jSONObject2);
        zzcec.zze(new ObfuscatedString(new long[]{5215545932719361326L, -8177931969623675878L, -1284339831913292136L, 797288629771842808L}).toString().concat(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-4124011283866050948L, -6934629154469103641L}), sb)));
        zzaQ(sb.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzcgl
    public final synchronized int zzf() {
        return this.zzM;
    }

    @Override // com.google.android.gms.internal.ads.zzcgl
    public final int zzg() {
        return getMeasuredHeight();
    }

    @Override // com.google.android.gms.internal.ads.zzcgl
    public final int zzh() {
        return getMeasuredWidth();
    }

    @Override // com.google.android.gms.internal.ads.zzcjk, com.google.android.gms.internal.ads.zzckn, com.google.android.gms.internal.ads.zzcgl
    public final Activity zzi() {
        return this.zzb.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzcjk, com.google.android.gms.internal.ads.zzcgl
    public final com.google.android.gms.ads.internal.zza zzj() {
        return this.zzh;
    }

    @Override // com.google.android.gms.internal.ads.zzcgl
    public final zzbgr zzk() {
        return this.zzJ;
    }

    @Override // com.google.android.gms.internal.ads.zzbqn
    public final void zzl(String str, JSONObject jSONObject) {
        zzb(str, jSONObject.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzcjk, com.google.android.gms.internal.ads.zzcgl
    public final zzbgs zzm() {
        return this.zzL;
    }

    @Override // com.google.android.gms.internal.ads.zzcjk, com.google.android.gms.internal.ads.zzcku, com.google.android.gms.internal.ads.zzcgl
    public final zzcei zzn() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzcgl
    public final zzcga zzo() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcgl
    public final synchronized zzchw zzp(String str) {
        Map map = this.zzU;
        if (map == null) {
            return null;
        }
        return (zzchw) map.get(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcjk, com.google.android.gms.internal.ads.zzcgl
    public final synchronized zzcki zzq() {
        return this.zzA;
    }

    @Override // com.google.android.gms.internal.ads.zzcgl
    public final synchronized String zzr() {
        zzfgp zzfgpVar = this.zzl;
        if (zzfgpVar == null) {
            return null;
        }
        return zzfgpVar.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzdiu
    public final void zzs() {
        zzcjs zzcjsVar = this.zzo;
        if (zzcjsVar != null) {
            zzcjsVar.zzs();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjk, com.google.android.gms.internal.ads.zzcgl
    public final synchronized void zzt(String str, zzchw zzchwVar) {
        try {
            if (this.zzU == null) {
                this.zzU = new HashMap();
            }
            this.zzU.put(str, zzchwVar);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgl
    public final void zzu() {
        com.google.android.gms.ads.internal.overlay.zzm zzL = zzL();
        if (zzL != null) {
            zzL.zzd();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgl
    public final void zzv(boolean z, long j) {
        String obfuscatedString;
        HashMap hashMap = new HashMap(2);
        if (true != z) {
            obfuscatedString = new ObfuscatedString(new long[]{-4355700895095382475L, 450310367546397040L}).toString();
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{-1449913244410972501L, 6124310519143739414L}).toString();
        }
        hashMap.put(new ObfuscatedString(new long[]{780072160087234361L, -6319855448691203779L}).toString(), obfuscatedString);
        hashMap.put(new ObfuscatedString(new long[]{-7570633707775898328L, 8692626003746766343L}).toString(), Long.toString(j));
        zzd(new ObfuscatedString(new long[]{-6107987831002182808L, -6649579161725004907L, -157312473830653101L, 5189348719795957639L}).toString(), hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzcgl
    public final synchronized void zzw() {
        zzbiy zzbiyVar = this.zzE;
        if (zzbiyVar != null) {
            final zzdra zzdraVar = (zzdra) zzbiyVar;
            com.google.android.gms.ads.internal.util.zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdqy
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        zzdra.this.zzd();
                    } catch (RemoteException e) {
                        zzcec.zzl(new ObfuscatedString(new long[]{4458726602731115730L, 1328542159485164126L, 447543856907706544L, -629023841515625693L, -6605037279452109040L, 3618135265763766692L}).toString(), e);
                    }
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgl
    public final void zzx(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzcgl
    public final void zzy(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzcgl
    public final void zzz(boolean z) {
        this.zzo.zzD(false);
    }
}
