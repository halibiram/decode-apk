package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.TrafficStats;
import android.net.Uri;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.ViewCompat;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.common.util.Predicate;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
@VisibleForTesting(otherwise = 3)
/* loaded from: classes2.dex */
public class zzcjs extends WebViewClient implements zzcky {
    public static final /* synthetic */ int zzb = 0;
    private boolean zzA;
    private int zzB;
    private boolean zzC;

    @Nullable
    private final zzehs zzE;
    private View.OnAttachStateChangeListener zzF;

    @Nullable
    protected zzcbs zza;
    private final zzcjk zzc;

    @Nullable
    private final zzbbp zzd;
    private com.google.android.gms.ads.internal.client.zza zzg;
    private com.google.android.gms.ads.internal.overlay.zzp zzh;
    private zzckw zzi;
    private zzckx zzj;
    private zzblw zzk;
    private zzbly zzl;
    private zzdiu zzm;
    private boolean zzn;
    private boolean zzo;
    private boolean zzs;
    private boolean zzt;
    private boolean zzu;
    private com.google.android.gms.ads.internal.overlay.zzaa zzv;

    @Nullable
    private zzbvv zzw;
    private com.google.android.gms.ads.internal.zzb zzx;
    private boolean zzz;
    private final HashMap zze = new HashMap();
    private final Object zzf = new Object();
    private int zzp = 0;
    private String zzq = new ObfuscatedString(new long[]{5439621842046574695L}).toString();
    private String zzr = new ObfuscatedString(new long[]{-7235981191775447034L}).toString();
    private zzbvq zzy = null;
    private final HashSet zzD = new HashSet(Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzfE)).split(new ObfuscatedString(new long[]{-3693790735554253847L, 2497387613805225010L}).toString())));

    @VisibleForTesting
    public zzcjs(zzcjk zzcjkVar, @Nullable zzbbp zzbbpVar, boolean z, zzbvv zzbvvVar, @Nullable zzbvq zzbvqVar, @Nullable zzehs zzehsVar) {
        this.zzd = zzbbpVar;
        this.zzc = zzcjkVar;
        this.zzs = z;
        this.zzw = zzbvvVar;
        this.zzE = zzehsVar;
    }

    @Nullable
    private static WebResourceResponse zzO() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzaJ)).booleanValue()) {
            return new WebResourceResponse(new ObfuscatedString(new long[]{-689241284317427262L}).toString(), new ObfuscatedString(new long[]{-562868546697163479L}).toString(), new ByteArrayInputStream(new byte[0]));
        }
        return null;
    }

    @Nullable
    private final WebResourceResponse zzP(String str, Map map) {
        HttpURLConnection httpURLConnection;
        WebResourceResponse webResourceResponse;
        String trim;
        String obfuscatedString;
        URL url = new URL(str);
        try {
            TrafficStats.setThreadStatsTag(264);
            int i = 0;
            while (true) {
                i++;
                if (i <= 20) {
                    URLConnection openConnection = url.openConnection();
                    openConnection.setConnectTimeout(10000);
                    openConnection.setReadTimeout(10000);
                    for (Map.Entry entry : map.entrySet()) {
                        openConnection.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
                    }
                    if (openConnection instanceof HttpURLConnection) {
                        httpURLConnection = (HttpURLConnection) openConnection;
                        com.google.android.gms.ads.internal.zzt.zzp().zzf(this.zzc.getContext(), this.zzc.zzn().zza, false, httpURLConnection, false, 60000);
                        webResourceResponse = null;
                        zzceb zzcebVar = new zzceb(null);
                        zzcebVar.zzc(httpURLConnection, null);
                        int responseCode = httpURLConnection.getResponseCode();
                        zzcebVar.zze(httpURLConnection, responseCode);
                        if (responseCode < 300 || responseCode >= 400) {
                            break;
                        }
                        String headerField = httpURLConnection.getHeaderField(new ObfuscatedString(new long[]{-3555880368311571544L, -5536617122877594843L}).toString());
                        if (headerField != null) {
                            if (!headerField.startsWith(new ObfuscatedString(new long[]{-7500003969508065484L, 2993740549037189139L}).toString())) {
                                URL url2 = new URL(url, headerField);
                                String protocol = url2.getProtocol();
                                if (protocol == null) {
                                    zzcec.zzj(new ObfuscatedString(new long[]{627839122378010726L, 1228711925610552813L, 1047327420258422776L}).toString());
                                    webResourceResponse = zzO();
                                    break;
                                }
                                if (!protocol.equals(new ObfuscatedString(new long[]{-6060744357056837425L, -5145723574320966331L}).toString()) && !protocol.equals(new ObfuscatedString(new long[]{9163110227806936289L, -3862839565904150595L}).toString())) {
                                    zzcec.zzj(new ObfuscatedString(new long[]{-5927201513480357366L, 6560818518796468779L, 5999218255638845301L, -5150953926479046761L}).toString() + protocol);
                                    webResourceResponse = zzO();
                                    break;
                                }
                                zzcec.zze(new ObfuscatedString(new long[]{3180920538298797678L, -5918737976620255309L, 3871044695062136941L}).toString() + headerField);
                                httpURLConnection.disconnect();
                                url = url2;
                            }
                        } else {
                            throw new IOException(new ObfuscatedString(new long[]{7679231660918249139L, 7779672159324109057L, 7171164717597353318L, -1803191867514053084L, 5040010505159228557L, -8879661691843776001L}).toString());
                        }
                    } else {
                        throw new IOException(new ObfuscatedString(new long[]{9107356828125656017L, 6562943014667338849L, -3894110469697777725L, 2396577649528493513L}).toString());
                    }
                } else {
                    TrafficStats.clearThreadStatsTag();
                    throw new IOException(new ObfuscatedString(new long[]{-8642896742058179590L, -808657367627919270L, -6083572882032721745L, 7623975834289781022L}).toString());
                }
            }
            com.google.android.gms.ads.internal.zzt.zzp();
            com.google.android.gms.ads.internal.zzt.zzp();
            String contentType = httpURLConnection.getContentType();
            if (TextUtils.isEmpty(contentType)) {
                trim = new ObfuscatedString(new long[]{1200121410241157605L}).toString();
            } else {
                trim = contentType.split(new ObfuscatedString(new long[]{-9093018760567793801L, -5414360217300163186L}).toString())[0].trim();
            }
            String str2 = trim;
            com.google.android.gms.ads.internal.zzt.zzp();
            String contentType2 = httpURLConnection.getContentType();
            if (TextUtils.isEmpty(contentType2)) {
                obfuscatedString = new ObfuscatedString(new long[]{3705069448731247594L}).toString();
            } else {
                String[] split = contentType2.split(new ObfuscatedString(new long[]{-3432954301925337704L, 6356691463023404265L}).toString());
                if (split.length == 1) {
                    obfuscatedString = new ObfuscatedString(new long[]{6299357319865853425L}).toString();
                } else {
                    int i2 = 1;
                    while (true) {
                        if (i2 < split.length) {
                            if (split[i2].trim().startsWith(new ObfuscatedString(new long[]{-5864733770762558889L, -2592041373771157575L}).toString())) {
                                String[] split2 = split[i2].trim().split(new ObfuscatedString(new long[]{4077499292809499184L, -195479250007305921L}).toString());
                                if (split2.length > 1) {
                                    obfuscatedString = split2[1].trim();
                                    break;
                                }
                            }
                            i2++;
                        } else {
                            obfuscatedString = new ObfuscatedString(new long[]{-7102949158352203489L}).toString();
                            break;
                        }
                    }
                }
            }
            String str3 = obfuscatedString;
            Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
            HashMap hashMap = new HashMap(headerFields.size());
            for (Map.Entry<String, List<String>> entry2 : headerFields.entrySet()) {
                if (entry2.getKey() != null && entry2.getValue() != null && !entry2.getValue().isEmpty()) {
                    hashMap.put(entry2.getKey(), entry2.getValue().get(0));
                }
            }
            webResourceResponse = com.google.android.gms.ads.internal.zzt.zzq().zzb(str2, str3, httpURLConnection.getResponseCode(), httpURLConnection.getResponseMessage(), hashMap, httpURLConnection.getInputStream());
            return webResourceResponse;
        } finally {
            TrafficStats.clearThreadStatsTag();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzQ(Map map, List list, String str) {
        if (com.google.android.gms.ads.internal.util.zze.zzc()) {
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-7134833664992916426L, 1143058215249668714L, 7685360037311801680L}).toString().concat(str));
            for (String str2 : map.keySet()) {
                com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-1348151515903341589L, 6266403623423940485L}).toString() + str2 + new ObfuscatedString(new long[]{1624005709528708811L, 73018167694327461L}).toString() + ((String) map.get(str2)));
            }
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((zzbng) it.next()).zza(this.zzc, map);
        }
    }

    private final void zzR() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.zzF;
        if (onAttachStateChangeListener == null) {
            return;
        }
        ((View) this.zzc).removeOnAttachStateChangeListener(onAttachStateChangeListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzS(final View view, final zzcbs zzcbsVar, final int i) {
        if (zzcbsVar.zzi() && i > 0) {
            zzcbsVar.zzg(view);
            if (zzcbsVar.zzi()) {
                com.google.android.gms.ads.internal.util.zzt.zza.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcjl
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzcjs.this.zzp(view, zzcbsVar, i);
                    }
                }, 100L);
            }
        }
    }

    private static final boolean zzT(zzcjk zzcjkVar) {
        if (zzcjkVar.zzD() != null) {
            return zzcjkVar.zzD().zzaj;
        }
        return false;
    }

    private static final boolean zzU(boolean z, zzcjk zzcjkVar) {
        if (z && !zzcjkVar.zzO().zzi() && !zzcjkVar.zzT().equals(new ObfuscatedString(new long[]{3586500363409722984L, -6414572747463573771L, -5816356657128418367L}).toString())) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        com.google.android.gms.ads.internal.client.zza zzaVar = this.zzg;
        if (zzaVar != null) {
            zzaVar.onAdClicked();
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{1200653670421424181L, -2996020270141770529L, -4388491590273400838L, 6391959281045367939L}).toString().concat(String.valueOf(str)));
        Uri parse = Uri.parse(str);
        if (new ObfuscatedString(new long[]{2875909918585198575L, -6754300669359777960L}).toString().equalsIgnoreCase(parse.getScheme())) {
            if (new ObfuscatedString(new long[]{-2559224486285868851L, 890403945801685928L, -5771346150125899253L, 4916148889101059887L}).toString().equalsIgnoreCase(parse.getHost())) {
                zzj(parse);
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        synchronized (this.zzf) {
            try {
                if (this.zzc.zzaB()) {
                    com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-7318523315819542069L, -601840720922453113L, 7339707079664922800L, -7941185605040746503L}).toString());
                    this.zzc.zzV();
                    return;
                }
                this.zzz = true;
                zzckx zzckxVar = this.zzj;
                if (zzckxVar != null) {
                    zzckxVar.zza();
                    this.zzj = null;
                }
                zzg();
                if (this.zzc.zzL() != null) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzlm)).booleanValue()) {
                        this.zzc.zzL().zzG(str);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        this.zzo = true;
        this.zzp = i;
        this.zzq = str;
        this.zzr = str2;
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(26)
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        boolean didCrash;
        int rendererPriorityAtExit;
        zzcjk zzcjkVar = this.zzc;
        didCrash = renderProcessGoneDetail.didCrash();
        rendererPriorityAtExit = renderProcessGoneDetail.rendererPriorityAtExit();
        return zzcjkVar.zzaA(didCrash, rendererPriorityAtExit);
    }

    @Override // android.webkit.WebViewClient
    @Nullable
    public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return zzc(str, Collections.emptyMap());
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 79 || keyCode == 222) {
            return true;
        }
        switch (keyCode) {
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
            case 91:
                return true;
            default:
                switch (keyCode) {
                    case 126:
                    case 127:
                    case 128:
                    case 129:
                    case 130:
                        return true;
                    default:
                        return false;
                }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{7255608933247810675L, -4323399832507491334L, -4276333192244940422L, -6284626772532735368L, 7396142693354735663L, -8689079610290387779L}).toString().concat(String.valueOf(str)));
        Uri parse = Uri.parse(str);
        if (new ObfuscatedString(new long[]{3924408797685017938L, 520190550567967731L}).toString().equalsIgnoreCase(parse.getScheme())) {
            if (new ObfuscatedString(new long[]{6442627851644334846L, -3388431833014473067L, -4989420782135357274L, -8793825447937562815L}).toString().equalsIgnoreCase(parse.getHost())) {
                zzj(parse);
                return true;
            }
        }
        if (this.zzn && webView == this.zzc.zzG()) {
            String scheme = parse.getScheme();
            if (new ObfuscatedString(new long[]{8257653978865306197L, 4306737510029910219L}).toString().equalsIgnoreCase(scheme) || new ObfuscatedString(new long[]{-6121105195046449578L, 2694494558135981966L}).toString().equalsIgnoreCase(scheme)) {
                com.google.android.gms.ads.internal.client.zza zzaVar = this.zzg;
                if (zzaVar != null) {
                    zzaVar.onAdClicked();
                    zzcbs zzcbsVar = this.zza;
                    if (zzcbsVar != null) {
                        zzcbsVar.zzh(str);
                    }
                    this.zzg = null;
                }
                zzdiu zzdiuVar = this.zzm;
                if (zzdiuVar != null) {
                    zzdiuVar.zzs();
                    this.zzm = null;
                }
                return super.shouldOverrideUrlLoading(webView, str);
            }
        }
        if (!this.zzc.zzG().willNotDraw()) {
            try {
                zzavi zzI = this.zzc.zzI();
                zzfhl zzQ = this.zzc.zzQ();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzlr)).booleanValue() && zzQ != null) {
                    if (zzI != null && zzI.zzf(parse)) {
                        Context context = this.zzc.getContext();
                        zzcjk zzcjkVar = this.zzc;
                        parse = zzQ.zza(parse, context, (View) zzcjkVar, zzcjkVar.zzi());
                    }
                } else if (zzI != null && zzI.zzf(parse)) {
                    Context context2 = this.zzc.getContext();
                    zzcjk zzcjkVar2 = this.zzc;
                    parse = zzI.zza(parse, context2, (View) zzcjkVar2, zzcjkVar2.zzi());
                }
            } catch (zzavj unused) {
                AbstractC0749x8313616e.m3347xe1f61061(new ObfuscatedString(new long[]{4803220315461770090L, 4807083041189653091L, 870685739362884024L, 528958270211224079L, 5968219164899948407L, -1767002863703580397L}), String.valueOf(str));
            }
            com.google.android.gms.ads.internal.zzb zzbVar = this.zzx;
            if (zzbVar != null && !zzbVar.zzc()) {
                zzbVar.zzb(str);
            } else {
                zzu(new com.google.android.gms.ads.internal.overlay.zzc(new ObfuscatedString(new long[]{-8790636754227899737L, 8710178393448791678L, -7842141668967629462L, -4709657815082748398L, -1951069857059027700L}).toString(), parse.toString(), null, null, null, null, null, null), true);
            }
        } else {
            AbstractC0749x8313616e.m3347xe1f61061(new ObfuscatedString(new long[]{-1215733600200225196L, -3908572682727680549L, 5730251734610385431L, -1899840103226626445L, -1530460128881984360L}), String.valueOf(str));
        }
        return true;
    }

    public final void zzA(String str, zzbng zzbngVar) {
        synchronized (this.zzf) {
            try {
                List list = (List) this.zze.get(str);
                if (list == null) {
                    list = new CopyOnWriteArrayList();
                    this.zze.put(str, list);
                }
                list.add(zzbngVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final void zzB(zzckw zzckwVar) {
        this.zzi = zzckwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final void zzC(int i, int i2) {
        zzbvq zzbvqVar = this.zzy;
        if (zzbvqVar != null) {
            zzbvqVar.zze(i, i2);
        }
    }

    public final void zzD(boolean z) {
        this.zzn = false;
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final void zzE(boolean z) {
        synchronized (this.zzf) {
            this.zzu = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final void zzF() {
        synchronized (this.zzf) {
            this.zzn = false;
            this.zzs = true;
            zzcep.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcjm
                @Override // java.lang.Runnable
                public final void run() {
                    zzcjs.this.zzn();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final void zzG(boolean z) {
        synchronized (this.zzf) {
            this.zzt = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final void zzH(zzckx zzckxVar) {
        this.zzj = zzckxVar;
    }

    public final void zzI(String str, zzbng zzbngVar) {
        synchronized (this.zzf) {
            try {
                List list = (List) this.zze.get(str);
                if (list == null) {
                    return;
                }
                list.remove(zzbngVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzJ(String str, Predicate predicate) {
        synchronized (this.zzf) {
            try {
                List<zzbng> list = (List) this.zze.get(str);
                if (list == null) {
                    return;
                }
                ArrayList arrayList = new ArrayList();
                for (zzbng zzbngVar : list) {
                    if (predicate.apply(zzbngVar)) {
                        arrayList.add(zzbngVar);
                    }
                }
                list.removeAll(arrayList);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean zzK() {
        boolean z;
        synchronized (this.zzf) {
            z = this.zzu;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final boolean zzL() {
        boolean z;
        synchronized (this.zzf) {
            z = this.zzs;
        }
        return z;
    }

    public final boolean zzM() {
        boolean z;
        synchronized (this.zzf) {
            z = this.zzt;
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x033a  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x03ab  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x03e3  */
    @Override // com.google.android.gms.internal.ads.zzcky
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzN(@Nullable com.google.android.gms.ads.internal.client.zza zzaVar, @Nullable zzblw zzblwVar, @Nullable com.google.android.gms.ads.internal.overlay.zzp zzpVar, @Nullable zzbly zzblyVar, @Nullable com.google.android.gms.ads.internal.overlay.zzaa zzaaVar, boolean z, @Nullable zzbni zzbniVar, @Nullable com.google.android.gms.ads.internal.zzb zzbVar, @Nullable zzbvx zzbvxVar, @Nullable zzcbs zzcbsVar, @Nullable final zzehh zzehhVar, @Nullable final zzfny zzfnyVar, @Nullable zzdwf zzdwfVar, @Nullable zzflw zzflwVar, @Nullable zzbnz zzbnzVar, @Nullable final zzdiu zzdiuVar, @Nullable zzbny zzbnyVar, @Nullable zzbns zzbnsVar, @Nullable final zzcse zzcseVar) {
        int i;
        int i2;
        int i3;
        com.google.android.gms.ads.internal.zzb zzbVar2 = zzbVar == null ? new com.google.android.gms.ads.internal.zzb(this.zzc.getContext(), zzcbsVar, null) : zzbVar;
        this.zzy = new zzbvq(this.zzc, zzbvxVar);
        this.zza = zzcbsVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzaR)).booleanValue()) {
            i = 3;
            zzA(new ObfuscatedString(new long[]{7427425352542792707L, 7889021892502698823L, -7449581089883211695L}).toString(), new zzblv(zzblwVar));
        } else {
            i = 3;
        }
        if (zzblyVar != null) {
            long[] jArr = new long[i];
            // fill-array-data instruction
            jArr[0] = -7350667046510047993L;
            jArr[1] = -8035295195103500852L;
            jArr[2] = 1141991124716288541L;
            zzA(new ObfuscatedString(jArr).toString(), new zzblx(zzblyVar));
        }
        long[] jArr2 = new long[i];
        // fill-array-data instruction
        jArr2[0] = -3136114105650121982L;
        jArr2[1] = -2159978445619704467L;
        jArr2[2] = -8619186492044371553L;
        zzA(new ObfuscatedString(jArr2).toString(), zzbnf.zzj);
        zzA(new ObfuscatedString(new long[]{6296148556203464174L, -7682896402371778885L}).toString(), zzbnf.zzk);
        zzA(new ObfuscatedString(new long[]{7247805042532041262L, -7636118573596006864L, 69362100876637517L}).toString(), zzbnf.zzb);
        zzA(new ObfuscatedString(new long[]{-2957292538226303605L, 622713870531040745L, -2371154956503841053L}).toString(), zzbnf.zza);
        zzA(new ObfuscatedString(new long[]{4906656719437551861L, 409888783943208295L, -2572400537974792829L}).toString(), zzbnf.zzc);
        zzA(new ObfuscatedString(new long[]{5063775123391744935L, 8300911235419354350L}).toString(), zzbnf.zzd);
        zzA(new ObfuscatedString(new long[]{79615779059762507L, 8839209309406260174L, 3343535180948975213L}).toString(), zzbnf.zze);
        zzA(new ObfuscatedString(new long[]{-6803709493500552134L, -2195954763955354752L, 9049689984688963724L}).toString(), zzbnf.zzn);
        zzA(new ObfuscatedString(new long[]{6042782295488962246L, 8841282422174815922L, 3093992666489935184L}).toString(), zzbnf.zzp);
        zzA(new ObfuscatedString(new long[]{-6606699686937434955L, -7426945393288237248L, 3918504609540137936L}).toString(), zzbnf.zzq);
        zzA(new ObfuscatedString(new long[]{4456956427299095288L, 1364536613116571001L, -5158132321143947960L}).toString(), zzbnf.zzr);
        zzA(new ObfuscatedString(new long[]{6566196189271485693L, 3368172046133682004L}).toString(), zzbnf.zzg);
        zzA(new ObfuscatedString(new long[]{1325815694792026539L, 2807136581298184118L}).toString(), new zzbnm(zzbVar2, this.zzy, zzbvxVar));
        zzbvv zzbvvVar = this.zzw;
        if (zzbvvVar != null) {
            zzA(new ObfuscatedString(new long[]{-4541256075447944191L, 870216319709051117L, -926254907479076291L}).toString(), zzbvvVar);
        }
        com.google.android.gms.ads.internal.zzb zzbVar3 = zzbVar2;
        zzA(new ObfuscatedString(new long[]{572806701657699980L, 8029656494990318706L}).toString(), new zzbnr(zzbVar2, this.zzy, zzehhVar, zzdwfVar, zzflwVar, zzcseVar));
        zzA(new ObfuscatedString(new long[]{-2974258981273271802L, -6084853244472887533L, -8101109039788127539L}).toString(), new zzchx());
        zzA(new ObfuscatedString(new long[]{-942017731130721088L, 5815017491608179094L}).toString(), zzbnf.zzi);
        zzA(new ObfuscatedString(new long[]{9216915479400120697L, 4003145318218967148L}).toString(), zzbnf.zzl);
        zzA(new ObfuscatedString(new long[]{-3093130830785557964L, -9064656082328097279L, 2602709715522331239L}).toString(), zzbnf.zzm);
        if (zzehhVar != null && zzfnyVar != null) {
            zzA(new ObfuscatedString(new long[]{-124947849546618654L, -4540949549414387804L}).toString(), new zzbng() { // from class: com.google.android.gms.internal.ads.zzfhp
                @Override // com.google.android.gms.internal.ads.zzbng
                public final void zza(Object obj, Map map) {
                    zzcjk zzcjkVar = (zzcjk) obj;
                    zzbnf.zzc(map, zzdiu.this);
                    String str = (String) map.get(new ObfuscatedString(new long[]{-5825373728659290729L, -1820070375436778221L}).toString());
                    if (str == null) {
                        zzcec.zzj(new ObfuscatedString(new long[]{-4360408745674340519L, -8613116857502084936L, -5789538615169833044L, -1022731644282104153L, 8189085227663999287L}).toString());
                        return;
                    }
                    zzehh zzehhVar2 = zzehhVar;
                    zzfny zzfnyVar2 = zzfnyVar;
                    zzgen.zzr(zzbnf.zza(zzcjkVar, str), new zzfhr(zzcjkVar, zzcseVar, zzfnyVar2, zzehhVar2), zzcep.zza);
                }
            });
            zzA(new ObfuscatedString(new long[]{4838589863857719555L, -755314465856938597L, -649428141014108666L}).toString(), new zzbng() { // from class: com.google.android.gms.internal.ads.zzfhq
                @Override // com.google.android.gms.internal.ads.zzbng
                public final void zza(Object obj, Map map) {
                    zzcjb zzcjbVar = (zzcjb) obj;
                    String str = (String) map.get(new ObfuscatedString(new long[]{-5235774307124649297L, 3591687630842418439L}).toString());
                    if (str == null) {
                        zzcec.zzj(new ObfuscatedString(new long[]{-8964827039011645161L, -1433762696597526113L, -8836922397683085122L, 8543488579947236992L, 4246244899926579418L}).toString());
                    } else if (!zzcjbVar.zzD().zzaj) {
                        zzfny.this.zzc(str, null);
                    } else {
                        zzehhVar.zzd(new zzehj(com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis(), ((zzckj) zzcjbVar).zzP().zzb, str, 2));
                    }
                }
            });
        } else {
            zzA(new ObfuscatedString(new long[]{-8847114613709098532L, 8744787540853351482L}).toString(), new zzbme(zzdiuVar, zzcseVar));
            zzA(new ObfuscatedString(new long[]{-2065293296574060258L, 1656142490050006033L, 4007695832163276568L}).toString(), zzbnf.zzf);
        }
        if (com.google.android.gms.ads.internal.zzt.zzn().zzp(this.zzc.getContext())) {
            zzA(new ObfuscatedString(new long[]{-2711557389044458586L, -4445496317011952693L, -8682505302927943692L}).toString(), new zzbnl(this.zzc.getContext()));
        }
        if (zzbniVar != null) {
            i2 = 5;
            zzA(new ObfuscatedString(new long[]{6282388367008790643L, 8359610306559374370L, -2634344682328952189L, -2393750119015764433L, 8635722024541597114L}).toString(), new zzbnh(zzbniVar));
        } else {
            i2 = 5;
        }
        if (zzbnzVar != null) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziN)).booleanValue()) {
                i3 = 4;
                zzA(new ObfuscatedString(new long[]{5663428802229022739L, -969894166218003674L, -2909766202430079083L, -3793009324553435402L}).toString(), zzbnzVar);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjg)).booleanValue() && zzbnyVar != null) {
                    zzA(new ObfuscatedString(new long[]{-8640394544452460591L, 7334974248574719422L, -6834082046210016373L}).toString(), zzbnyVar);
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjl)).booleanValue() && zzbnsVar != null) {
                    long[] jArr3 = new long[i2];
                    // fill-array-data instruction
                    jArr3[0] = 7799345299596195361L;
                    jArr3[1] = 5116466959747059658L;
                    jArr3[2] = 2768685529420847594L;
                    jArr3[3] = -6498402384817635328L;
                    jArr3[4] = -2513221406805210972L;
                    zzA(new ObfuscatedString(jArr3).toString(), zzbnsVar);
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkT)).booleanValue()) {
                    long[] jArr4 = new long[i3];
                    // fill-array-data instruction
                    jArr4[0] = 5283365804420171663L;
                    jArr4[1] = -1554291979334908923L;
                    jArr4[2] = 3586971204364560554L;
                    jArr4[3] = 2029014802158046856L;
                    zzA(new ObfuscatedString(jArr4).toString(), zzbnf.zzu);
                    long[] jArr5 = new long[i3];
                    // fill-array-data instruction
                    jArr5[0] = 5038160653770449016L;
                    jArr5[1] = -6339989319306287900L;
                    jArr5[2] = 9183442154803925461L;
                    jArr5[3] = -3557270410227274452L;
                    zzA(new ObfuscatedString(jArr5).toString(), zzbnf.zzv);
                    long[] jArr6 = new long[i3];
                    // fill-array-data instruction
                    jArr6[0] = -8763909617031736126L;
                    jArr6[1] = -3363978057721868493L;
                    jArr6[2] = -3833114173460398224L;
                    jArr6[3] = 2603786227742127308L;
                    zzA(new ObfuscatedString(jArr6).toString(), zzbnf.zzw);
                    long[] jArr7 = new long[i2];
                    // fill-array-data instruction
                    jArr7[0] = 6257069068456326537L;
                    jArr7[1] = -737193265677850338L;
                    jArr7[2] = -733829308404592635L;
                    jArr7[3] = 6950009262752426375L;
                    jArr7[4] = -7890204079246527867L;
                    zzA(new ObfuscatedString(jArr7).toString(), zzbnf.zzx);
                    long[] jArr8 = new long[i3];
                    // fill-array-data instruction
                    jArr8[0] = 3081237393016565683L;
                    jArr8[1] = -3459325292840141687L;
                    jArr8[2] = -7211545916531670145L;
                    jArr8[3] = -4240763360990222293L;
                    zzA(new ObfuscatedString(jArr8).toString(), zzbnf.zzy);
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzda)).booleanValue()) {
                    long[] jArr9 = new long[i2];
                    // fill-array-data instruction
                    jArr9[0] = 1452985435763420397L;
                    jArr9[1] = 8118352304004499512L;
                    jArr9[2] = -6257409012478157711L;
                    jArr9[3] = 6544953470567811749L;
                    jArr9[4] = 4663047489950170450L;
                    zzA(new ObfuscatedString(jArr9).toString(), zzbnf.zzA);
                    zzA(new ObfuscatedString(new long[]{2639801453247618683L, -7155263142509587449L, 402897359143072030L}).toString(), zzbnf.zzz);
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzll)).booleanValue()) {
                    zzcjk zzcjkVar = this.zzc;
                    if (zzcjkVar.zzD() != null && zzcjkVar.zzD().zzar) {
                        long[] jArr10 = new long[i3];
                        // fill-array-data instruction
                        jArr10[0] = -5839805435618246324L;
                        jArr10[1] = -191958759797155394L;
                        jArr10[2] = -740344371418965195L;
                        jArr10[3] = -7385918927668057024L;
                        zzA(new ObfuscatedString(jArr10).toString(), zzbnf.zzB);
                        long[] jArr11 = new long[i3];
                        // fill-array-data instruction
                        jArr11[0] = 4099001338645987271L;
                        jArr11[1] = 2469324608890070068L;
                        jArr11[2] = -4850556561926893274L;
                        jArr11[3] = 4849966288249146912L;
                        zzA(new ObfuscatedString(jArr11).toString(), zzbnf.zzC);
                    }
                }
                this.zzg = zzaVar;
                this.zzh = zzpVar;
                this.zzk = zzblwVar;
                this.zzl = zzblyVar;
                this.zzv = zzaaVar;
                this.zzx = zzbVar3;
                this.zzm = zzdiuVar;
                this.zzn = z;
            }
        }
        i3 = 4;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjg)).booleanValue()) {
            zzA(new ObfuscatedString(new long[]{-8640394544452460591L, 7334974248574719422L, -6834082046210016373L}).toString(), zzbnyVar);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjl)).booleanValue()) {
            long[] jArr32 = new long[i2];
            // fill-array-data instruction
            jArr32[0] = 7799345299596195361L;
            jArr32[1] = 5116466959747059658L;
            jArr32[2] = 2768685529420847594L;
            jArr32[3] = -6498402384817635328L;
            jArr32[4] = -2513221406805210972L;
            zzA(new ObfuscatedString(jArr32).toString(), zzbnsVar);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkT)).booleanValue()) {
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzda)).booleanValue()) {
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzll)).booleanValue()) {
        }
        this.zzg = zzaVar;
        this.zzh = zzpVar;
        this.zzk = zzblwVar;
        this.zzl = zzblyVar;
        this.zzv = zzaaVar;
        this.zzx = zzbVar3;
        this.zzm = zzdiuVar;
        this.zzn = z;
    }

    public final ViewTreeObserver.OnGlobalLayoutListener zza() {
        synchronized (this.zzf) {
        }
        return null;
    }

    public final ViewTreeObserver.OnScrollChangedListener zzb() {
        synchronized (this.zzf) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdiu
    public final void zzbo() {
        zzdiu zzdiuVar = this.zzm;
        if (zzdiuVar != null) {
            zzdiuVar.zzbo();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00ca A[Catch: NoClassDefFoundError -> 0x0022, Exception -> 0x0025, TryCatch #9 {Exception -> 0x0025, NoClassDefFoundError -> 0x0022, blocks: (B:3:0x0009, B:5:0x001b, B:8:0x0028, B:10:0x0034, B:12:0x0075, B:14:0x009b, B:16:0x00b2, B:17:0x00b5, B:18:0x00b8, B:20:0x00ca, B:22:0x00e2, B:24:0x00fb, B:37:0x01f2, B:39:0x01d4, B:42:0x034f, B:52:0x0283, B:53:0x02c9, B:48:0x023e, B:49:0x0191, B:63:0x00ef, B:64:0x02ca, B:66:0x02d4, B:68:0x02da, B:70:0x0344, B:73:0x0391, B:75:0x0397, B:77:0x03a5), top: B:2:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x034f A[Catch: NoClassDefFoundError -> 0x0022, Exception -> 0x0025, TryCatch #9 {Exception -> 0x0025, NoClassDefFoundError -> 0x0022, blocks: (B:3:0x0009, B:5:0x001b, B:8:0x0028, B:10:0x0034, B:12:0x0075, B:14:0x009b, B:16:0x00b2, B:17:0x00b5, B:18:0x00b8, B:20:0x00ca, B:22:0x00e2, B:24:0x00fb, B:37:0x01f2, B:39:0x01d4, B:42:0x034f, B:52:0x0283, B:53:0x02c9, B:48:0x023e, B:49:0x0191, B:63:0x00ef, B:64:0x02ca, B:66:0x02d4, B:68:0x02da, B:70:0x0344, B:73:0x0391, B:75:0x0397, B:77:0x03a5), top: B:2:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x02ca A[Catch: NoClassDefFoundError -> 0x0022, Exception -> 0x0025, TryCatch #9 {Exception -> 0x0025, NoClassDefFoundError -> 0x0022, blocks: (B:3:0x0009, B:5:0x001b, B:8:0x0028, B:10:0x0034, B:12:0x0075, B:14:0x009b, B:16:0x00b2, B:17:0x00b5, B:18:0x00b8, B:20:0x00ca, B:22:0x00e2, B:24:0x00fb, B:37:0x01f2, B:39:0x01d4, B:42:0x034f, B:52:0x0283, B:53:0x02c9, B:48:0x023e, B:49:0x0191, B:63:0x00ef, B:64:0x02ca, B:66:0x02d4, B:68:0x02da, B:70:0x0344, B:73:0x0391, B:75:0x0397, B:77:0x03a5), top: B:2:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0397 A[Catch: NoClassDefFoundError -> 0x0022, Exception -> 0x0025, TryCatch #9 {Exception -> 0x0025, NoClassDefFoundError -> 0x0022, blocks: (B:3:0x0009, B:5:0x001b, B:8:0x0028, B:10:0x0034, B:12:0x0075, B:14:0x009b, B:16:0x00b2, B:17:0x00b5, B:18:0x00b8, B:20:0x00ca, B:22:0x00e2, B:24:0x00fb, B:37:0x01f2, B:39:0x01d4, B:42:0x034f, B:52:0x0283, B:53:0x02c9, B:48:0x023e, B:49:0x0191, B:63:0x00ef, B:64:0x02ca, B:66:0x02d4, B:68:0x02da, B:70:0x0344, B:73:0x0391, B:75:0x0397, B:77:0x03a5), top: B:2:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x03aa A[ADDED_TO_REGION, ORIG_RETURN, RETURN] */
    /* JADX WARN: Type inference failed for: r4v20, types: [java.lang.Long] */
    /* JADX WARN: Type inference failed for: r4v21 */
    /* JADX WARN: Type inference failed for: r4v31, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v32 */
    /* JADX WARN: Type inference failed for: r4v45, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v51 */
    /* JADX WARN: Type inference failed for: r4v52 */
    /* JADX WARN: Type inference failed for: r4v53 */
    /* JADX WARN: Type inference failed for: r4v54 */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final WebResourceResponse zzc(String str, Map map) {
        int i;
        InputStream inputStream;
        InputStream zzc;
        ?? r4;
        final boolean z;
        final boolean z2;
        final boolean z3 = true;
        try {
            String zzc2 = zzccj.zzc(str, this.zzc.getContext(), this.zzC);
            if (!zzc2.equals(str)) {
                return zzP(zzc2, map);
            }
            zzbbb zza = zzbbb.zza(Uri.parse(str));
            if (zza != null) {
                HashMap hashMap = new HashMap();
                hashMap.put(new ObfuscatedString(new long[]{-2702073204992084725L, -4028096973568805887L, -2587984700135024494L, 8422870789928267813L, 7063554879658596683L}).toString(), new ObfuscatedString(new long[]{-7365849413829758305L, -5533385603480347190L}).toString());
                Uri parse = Uri.parse(str);
                if (parse.getQueryParameterNames().contains(new ObfuscatedString(new long[]{-3429693294636063935L, -6603906417013571756L}).toString())) {
                    List zzf = zzfxr.zzc(zzfwp.zzc('-')).zzf(parse.getQueryParameter(new ObfuscatedString(new long[]{527006271873044482L, 5873480869902229272L}).toString()));
                    if (zzf.size() == 2) {
                        int parseInt = Integer.parseInt((String) zzf.get(0));
                        int parseInt2 = Integer.parseInt((String) zzf.get(1)) + 1;
                        if (parseInt > 0) {
                            zza.zzh = parseInt;
                        }
                        i = parseInt2 - parseInt;
                        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzej)).booleanValue()) {
                            zza.zzi = zzfxt.zzc(this.zzc.zzr());
                            zza.zzj = this.zzc.zzf();
                            if (zza.zzg) {
                                r4 = (Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzel);
                            } else {
                                r4 = (Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzek);
                            }
                            try {
                                long longValue = r4.longValue();
                                long elapsedRealtime = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime();
                                com.google.android.gms.ads.internal.zzt.zzd();
                                Future zza2 = zzbbm.zza(this.zzc.getContext(), zza);
                                try {
                                    zzbbn zzbbnVar = (zzbbn) zza2.get(longValue, TimeUnit.MILLISECONDS);
                                    try {
                                        try {
                                            hashMap.put(new ObfuscatedString(new long[]{-7646156294213634309L, 6249288013029023530L, 4642891597398421754L, 6573779407403707692L, -7885796147486151587L, -332699605251833145L, 8414599590654833766L}).toString(), Boolean.toString(zzbbnVar.zzd()));
                                            hashMap.put(new ObfuscatedString(new long[]{9208673228339819878L, 4987081629618414190L, -5082817071631101928L, -7648109056403502625L, -7856413809638294176L}).toString(), Boolean.toString(zzbbnVar.zzf()));
                                            hashMap.put(new ObfuscatedString(new long[]{-2593558010396236462L, 1538775051303862635L, -8760906763928148440L, -306392345153324404L, -6047768863746031687L}).toString(), Boolean.toString(zzbbnVar.zze()));
                                            hashMap.put(new ObfuscatedString(new long[]{5060303626723654453L, 6156949275937937174L, -6066768257944107598L, 2731202300326254275L, -338567699127813772L}).toString(), Long.toString(zzbbnVar.zza()));
                                            zzc = zzbbnVar.zzc();
                                            if (i != -1) {
                                                try {
                                                    zzc = zzgci.zza(zzc, i);
                                                } catch (InterruptedException unused) {
                                                    z2 = true;
                                                    zza2.cancel(true);
                                                    Thread.currentThread().interrupt();
                                                    final long elapsedRealtime2 = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime() - elapsedRealtime;
                                                    com.google.android.gms.ads.internal.util.zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcjo
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            zzcjs.this.zzo(z2, elapsedRealtime2);
                                                        }
                                                    });
                                                    r4 = new ObfuscatedString(new long[]{5691326529522973806L, 4391565486876624779L, 162246945857748685L, -2130459754653794916L}).toString() + elapsedRealtime2 + new ObfuscatedString(new long[]{2553770503963121713L, -338723338972860631L}).toString();
                                                    com.google.android.gms.ads.internal.util.zze.zza(r4);
                                                    inputStream = zzc;
                                                    if (inputStream != null) {
                                                    }
                                                    return zzceb.zzk() ? null : null;
                                                } catch (ExecutionException | TimeoutException unused2) {
                                                    z = true;
                                                    zza2.cancel(true);
                                                    final long elapsedRealtime3 = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime() - elapsedRealtime;
                                                    com.google.android.gms.ads.internal.util.zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcjo
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            zzcjs.this.zzo(z, elapsedRealtime3);
                                                        }
                                                    });
                                                    r4 = new ObfuscatedString(new long[]{-1746957777417086677L, -3801207805309591667L, -350083223747167065L, 3580457914514358448L}).toString() + elapsedRealtime3 + new ObfuscatedString(new long[]{6800013432622442292L, 5377247503878363849L}).toString();
                                                    com.google.android.gms.ads.internal.util.zze.zza(r4);
                                                    inputStream = zzc;
                                                    if (inputStream != null) {
                                                    }
                                                    if (zzceb.zzk()) {
                                                    }
                                                }
                                            }
                                            final long elapsedRealtime4 = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime() - elapsedRealtime;
                                            com.google.android.gms.ads.internal.util.zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcjo
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    zzcjs.this.zzo(z3, elapsedRealtime4);
                                                }
                                            });
                                            r4 = new ObfuscatedString(new long[]{-3370504323087681601L, -6155242236053171842L, -4579414423787092235L, 1845935851122461589L}).toString() + elapsedRealtime4 + new ObfuscatedString(new long[]{5317192963206108077L, 1859023209495031181L}).toString();
                                        } catch (Throwable th) {
                                            th = th;
                                            final long elapsedRealtime5 = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime() - elapsedRealtime;
                                            com.google.android.gms.ads.internal.util.zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcjo
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    zzcjs.this.zzo(z3, elapsedRealtime5);
                                                }
                                            });
                                            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-5583286518823919939L, 2197458363876614797L, 8564028886302068920L, -7361336448852989632L}).toString() + elapsedRealtime5 + new ObfuscatedString(new long[]{3760061915111508679L, -8575349397212271124L}).toString());
                                            throw th;
                                        }
                                    } catch (InterruptedException unused3) {
                                        zzc = null;
                                    } catch (ExecutionException | TimeoutException unused4) {
                                        zzc = null;
                                    }
                                } catch (InterruptedException unused5) {
                                    zzc = null;
                                    z2 = false;
                                } catch (ExecutionException | TimeoutException unused6) {
                                    zzc = null;
                                    z = false;
                                } catch (Throwable th2) {
                                    th = th2;
                                    z3 = false;
                                }
                                com.google.android.gms.ads.internal.util.zze.zza(r4);
                            } catch (Throwable th3) {
                                th = th3;
                                z3 = r4;
                            }
                        } else {
                            zzbay zzb2 = com.google.android.gms.ads.internal.zzt.zzc().zzb(zza);
                            if (zzb2 != null && zzb2.zze()) {
                                hashMap.put(new ObfuscatedString(new long[]{6619173866007941293L, -7327522530581962426L, 944541710674835019L, 6739037081960113480L, 219506702477412620L, -1088270601882924570L, 3425705036901156925L}).toString(), Boolean.toString(zzb2.zzd()));
                                hashMap.put(new ObfuscatedString(new long[]{-8629580680979044201L, 3434796964665265691L, -6446655951130340444L, -3239915073813476652L, -5166879749170859377L}).toString(), Boolean.toString(zzb2.zzg()));
                                hashMap.put(new ObfuscatedString(new long[]{-8877832150605181617L, -8491632698156199180L, 6260161300747903660L, -290831976638423039L, 9013596134876148231L}).toString(), Boolean.toString(zzb2.zzf()));
                                hashMap.put(new ObfuscatedString(new long[]{-2220386344220326256L, 7619343448142878361L, -398255023192948556L, -3970248536388012175L, -5487904760747404460L}).toString(), Long.toString(zzb2.zza()));
                                zzc = zzb2.zzc();
                                if (i != -1) {
                                    zzc = zzgci.zza(zzc, i);
                                }
                            } else {
                                inputStream = null;
                                if (inputStream != null) {
                                    return new WebResourceResponse(new ObfuscatedString(new long[]{2741713801877907783L}).toString(), new ObfuscatedString(new long[]{-5781804618471937835L}).toString(), 200, new ObfuscatedString(new long[]{-3215306134163716565L, -2290483177077596662L}).toString(), hashMap, inputStream);
                                }
                            }
                        }
                        inputStream = zzc;
                        if (inputStream != null) {
                        }
                    }
                }
                i = -1;
                if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzej)).booleanValue()) {
                }
                inputStream = zzc;
                if (inputStream != null) {
                }
            }
            if (zzceb.zzk() && ((Boolean) zzbhw.zzb.zze()).booleanValue()) {
                return zzP(str, map);
            }
        } catch (Exception e) {
            e = e;
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{-4963086077300727403L, 7012000262039452133L, -6737219038428587208L, 800103335435217176L, 8191208018808551172L}).toString());
            return zzO();
        } catch (NoClassDefFoundError e2) {
            e = e2;
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{-4963086077300727403L, 7012000262039452133L, -6737219038428587208L, 800103335435217176L, 8191208018808551172L}).toString());
            return zzO();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final com.google.android.gms.ads.internal.zzb zzd() {
        return this.zzx;
    }

    public final void zzg() {
        if (this.zzi != null && ((this.zzz && this.zzB <= 0) || this.zzA || this.zzo)) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbQ)).booleanValue() && this.zzc.zzm() != null) {
                zzbgm.zza(this.zzc.zzm().zza(), this.zzc.zzk(), new ObfuscatedString(new long[]{2307327791816000367L, -6569334474801627462L}).toString());
            }
            zzckw zzckwVar = this.zzi;
            boolean z = false;
            if (!this.zzA && !this.zzo) {
                z = true;
            }
            zzckwVar.zza(z, this.zzp, this.zzq, this.zzr);
            this.zzi = null;
        }
        this.zzc.zzad();
    }

    public final void zzh() {
        zzcbs zzcbsVar = this.zza;
        if (zzcbsVar != null) {
            zzcbsVar.zze();
            this.zza = null;
        }
        zzR();
        synchronized (this.zzf) {
            try {
                this.zze.clear();
                this.zzg = null;
                this.zzh = null;
                this.zzi = null;
                this.zzj = null;
                this.zzk = null;
                this.zzl = null;
                this.zzn = false;
                this.zzs = false;
                this.zzt = false;
                this.zzv = null;
                this.zzx = null;
                this.zzw = null;
                zzbvq zzbvqVar = this.zzy;
                if (zzbvqVar != null) {
                    zzbvqVar.zza(true);
                    this.zzy = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzi(boolean z) {
        this.zzC = z;
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final void zzj(Uri uri) {
        final String obfuscatedString;
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-848701725687808811L, 7758217956793040975L, 7160224419201379697L}).toString().concat(String.valueOf(uri)));
        HashMap hashMap = this.zze;
        String path = uri.getPath();
        List list = (List) hashMap.get(path);
        if (path != null && list != null) {
            String encodedQuery = uri.getEncodedQuery();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzfD)).booleanValue() && this.zzD.contains(path) && encodedQuery != null) {
                if (encodedQuery.length() >= ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzfF)).intValue()) {
                    com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-12454882919259075L, -4762543852535660191L, 7995898771017512267L, -4291773814963481318L, -700860778931746219L, 5735881828375155598L}).toString().concat(path));
                    zzgen.zzr(com.google.android.gms.ads.internal.zzt.zzp().zzb(uri), new zzcjq(this, list, path, uri), zzcep.zze);
                    return;
                }
            }
            com.google.android.gms.ads.internal.zzt.zzp();
            zzQ(com.google.android.gms.ads.internal.util.zzt.zzO(uri), list, path);
            return;
        }
        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-653636716747398916L, -3445574112565421050L, 481973207852417747L, 6758328606787427848L, 2893970780112027413L}).toString().concat(String.valueOf(uri)));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzgM)).booleanValue() && com.google.android.gms.ads.internal.zzt.zzo().zzg() != null) {
            if (path != null && path.length() >= 2) {
                obfuscatedString = path.substring(1);
            } else {
                obfuscatedString = new ObfuscatedString(new long[]{-7477196988716615533L, 1202015856015647966L}).toString();
            }
            zzcep.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcjn
                @Override // java.lang.Runnable
                public final void run() {
                    int i = zzcjs.zzb;
                    com.google.android.gms.ads.internal.zzt.zzo().zzg().zze(obfuscatedString);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final void zzk() {
        zzbbp zzbbpVar = this.zzd;
        if (zzbbpVar != null) {
            zzbbpVar.zzc(10005);
        }
        this.zzA = true;
        this.zzp = 10004;
        this.zzq = new ObfuscatedString(new long[]{5725512432018402060L, 4571013528544016109L, 8294411570625252383L, 3494343486596684400L, -8834050933960225215L}).toString();
        zzg();
        this.zzc.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final void zzl() {
        synchronized (this.zzf) {
        }
        this.zzB++;
        zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final void zzm() {
        this.zzB--;
        zzg();
    }

    public final /* synthetic */ void zzn() {
        this.zzc.zzab();
        com.google.android.gms.ads.internal.overlay.zzm zzL = this.zzc.zzL();
        if (zzL != null) {
            zzL.zzz();
        }
    }

    public final /* synthetic */ void zzo(boolean z, long j) {
        this.zzc.zzv(z, j);
    }

    public final /* synthetic */ void zzp(View view, zzcbs zzcbsVar, int i) {
        zzS(view, zzcbsVar, i - 1);
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final void zzq(int i, int i2, boolean z) {
        zzbvv zzbvvVar = this.zzw;
        if (zzbvvVar != null) {
            zzbvvVar.zzb(i, i2);
        }
        zzbvq zzbvqVar = this.zzy;
        if (zzbvqVar != null) {
            zzbvqVar.zzd(i, i2, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcky
    public final void zzr() {
        zzcbs zzcbsVar = this.zza;
        if (zzcbsVar != null) {
            WebView zzG = this.zzc.zzG();
            if (ViewCompat.isAttachedToWindow(zzG)) {
                zzS(zzG, zzcbsVar, 10);
                return;
            }
            zzR();
            zzcjp zzcjpVar = new zzcjp(this, zzcbsVar);
            this.zzF = zzcjpVar;
            ((View) this.zzc).addOnAttachStateChangeListener(zzcjpVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdiu
    public final void zzs() {
        zzdiu zzdiuVar = this.zzm;
        if (zzdiuVar != null) {
            zzdiuVar.zzs();
        }
    }

    public final void zzu(com.google.android.gms.ads.internal.overlay.zzc zzcVar, boolean z) {
        com.google.android.gms.ads.internal.client.zza zzaVar;
        com.google.android.gms.ads.internal.overlay.zzp zzpVar;
        zzdiu zzdiuVar;
        zzcjk zzcjkVar = this.zzc;
        boolean zzaC = zzcjkVar.zzaC();
        boolean zzU = zzU(zzaC, zzcjkVar);
        boolean z2 = true;
        if (!zzU && z) {
            z2 = false;
        }
        if (zzU) {
            zzaVar = null;
        } else {
            zzaVar = this.zzg;
        }
        if (zzaC) {
            zzpVar = null;
        } else {
            zzpVar = this.zzh;
        }
        com.google.android.gms.ads.internal.overlay.zzaa zzaaVar = this.zzv;
        zzcjk zzcjkVar2 = this.zzc;
        zzcei zzn = zzcjkVar2.zzn();
        if (z2) {
            zzdiuVar = null;
        } else {
            zzdiuVar = this.zzm;
        }
        zzx(new AdOverlayInfoParcel(zzcVar, zzaVar, zzpVar, zzaaVar, zzn, zzcjkVar2, zzdiuVar));
    }

    public final void zzv(String str, String str2, int i) {
        zzehs zzehsVar = this.zzE;
        zzcjk zzcjkVar = this.zzc;
        zzx(new AdOverlayInfoParcel(zzcjkVar, zzcjkVar.zzn(), str, str2, 14, zzehsVar));
    }

    public final void zzw(boolean z, int i, boolean z2) {
        com.google.android.gms.ads.internal.client.zza zzaVar;
        zzdiu zzdiuVar;
        zzehs zzehsVar;
        zzcjk zzcjkVar = this.zzc;
        boolean zzU = zzU(zzcjkVar.zzaC(), zzcjkVar);
        boolean z3 = true;
        if (!zzU && z2) {
            z3 = false;
        }
        if (zzU) {
            zzaVar = null;
        } else {
            zzaVar = this.zzg;
        }
        com.google.android.gms.ads.internal.overlay.zzp zzpVar = this.zzh;
        com.google.android.gms.ads.internal.overlay.zzaa zzaaVar = this.zzv;
        zzcjk zzcjkVar2 = this.zzc;
        zzcei zzn = zzcjkVar2.zzn();
        if (z3) {
            zzdiuVar = null;
        } else {
            zzdiuVar = this.zzm;
        }
        if (zzT(this.zzc)) {
            zzehsVar = this.zzE;
        } else {
            zzehsVar = null;
        }
        zzx(new AdOverlayInfoParcel(zzaVar, zzpVar, zzaaVar, zzcjkVar2, z, i, zzn, zzdiuVar, zzehsVar));
    }

    public final void zzx(AdOverlayInfoParcel adOverlayInfoParcel) {
        boolean z;
        com.google.android.gms.ads.internal.overlay.zzc zzcVar;
        zzbvq zzbvqVar = this.zzy;
        if (zzbvqVar != null) {
            z = zzbvqVar.zzf();
        } else {
            z = false;
        }
        com.google.android.gms.ads.internal.zzt.zzi();
        com.google.android.gms.ads.internal.overlay.zzn.zza(this.zzc.getContext(), adOverlayInfoParcel, !z);
        zzcbs zzcbsVar = this.zza;
        if (zzcbsVar != null) {
            String str = adOverlayInfoParcel.zzl;
            if (str == null && (zzcVar = adOverlayInfoParcel.zza) != null) {
                str = zzcVar.zzb;
            }
            zzcbsVar.zzh(str);
        }
    }

    public final void zzy(boolean z, int i, String str, String str2, boolean z2) {
        com.google.android.gms.ads.internal.client.zza zzaVar;
        zzcjr zzcjrVar;
        zzdiu zzdiuVar;
        zzehs zzehsVar;
        zzcjk zzcjkVar = this.zzc;
        boolean zzaC = zzcjkVar.zzaC();
        boolean zzU = zzU(zzaC, zzcjkVar);
        boolean z3 = true;
        if (!zzU && z2) {
            z3 = false;
        }
        if (zzU) {
            zzaVar = null;
        } else {
            zzaVar = this.zzg;
        }
        if (zzaC) {
            zzcjrVar = null;
        } else {
            zzcjrVar = new zzcjr(this.zzc, this.zzh);
        }
        zzblw zzblwVar = this.zzk;
        zzbly zzblyVar = this.zzl;
        com.google.android.gms.ads.internal.overlay.zzaa zzaaVar = this.zzv;
        zzcjk zzcjkVar2 = this.zzc;
        zzcei zzn = zzcjkVar2.zzn();
        if (z3) {
            zzdiuVar = null;
        } else {
            zzdiuVar = this.zzm;
        }
        if (zzT(this.zzc)) {
            zzehsVar = this.zzE;
        } else {
            zzehsVar = null;
        }
        zzx(new AdOverlayInfoParcel(zzaVar, zzcjrVar, zzblwVar, zzblyVar, zzaaVar, zzcjkVar2, z, i, str, str2, zzn, zzdiuVar, zzehsVar));
    }

    public final void zzz(boolean z, int i, String str, boolean z2, boolean z3) {
        com.google.android.gms.ads.internal.client.zza zzaVar;
        zzcjr zzcjrVar;
        zzdiu zzdiuVar;
        zzehs zzehsVar;
        zzcjk zzcjkVar = this.zzc;
        boolean zzaC = zzcjkVar.zzaC();
        boolean zzU = zzU(zzaC, zzcjkVar);
        boolean z4 = true;
        if (!zzU && z2) {
            z4 = false;
        }
        if (zzU) {
            zzaVar = null;
        } else {
            zzaVar = this.zzg;
        }
        if (zzaC) {
            zzcjrVar = null;
        } else {
            zzcjrVar = new zzcjr(this.zzc, this.zzh);
        }
        zzblw zzblwVar = this.zzk;
        zzbly zzblyVar = this.zzl;
        com.google.android.gms.ads.internal.overlay.zzaa zzaaVar = this.zzv;
        zzcjk zzcjkVar2 = this.zzc;
        zzcei zzn = zzcjkVar2.zzn();
        if (z4) {
            zzdiuVar = null;
        } else {
            zzdiuVar = this.zzm;
        }
        if (zzT(this.zzc)) {
            zzehsVar = this.zzE;
        } else {
            zzehsVar = null;
        }
        zzx(new AdOverlayInfoParcel(zzaVar, zzcjrVar, zzblwVar, zzblyVar, zzaaVar, zzcjkVar2, z, i, str, zzn, zzdiuVar, zzehsVar, z3));
    }
}
