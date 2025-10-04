package com.google.android.gms.ads.nonagon.signalgeneration;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import android.view.MotionEvent;
import android.webkit.CookieManager;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.ads.query.QueryInfo;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.ads.zzavi;
import com.google.android.gms.internal.ads.zzavj;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzcec;
import com.google.android.gms.internal.ads.zzcep;
import com.google.android.gms.internal.ads.zzdwk;
import com.google.android.gms.internal.ads.zzfhl;
import com.google.android.gms.internal.ads.zzfny;
import com.google.android.gms.internal.ads.zzgey;
import com.panda912.muddy.ObfuscatedString;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class TaggingLibraryJsInterface {
    private final Context zza;
    private final WebView zzb;
    private final zzavi zzc;
    private final zzfhl zzd;
    private final int zze;
    private final zzdwk zzf;
    private final boolean zzg;
    private final zzgey zzh = zzcep.zze;
    private final zzfny zzi;

    public TaggingLibraryJsInterface(WebView webView, zzavi zzaviVar, zzdwk zzdwkVar, zzfny zzfnyVar, zzfhl zzfhlVar) {
        this.zzb = webView;
        Context context = webView.getContext();
        this.zza = context;
        this.zzc = zzaviVar;
        this.zzf = zzdwkVar;
        zzbgc.zza(context);
        this.zze = ((Integer) zzba.zzc().zza(zzbgc.zzjq)).intValue();
        this.zzg = ((Boolean) zzba.zzc().zza(zzbgc.zzjr)).booleanValue();
        this.zzi = zzfnyVar;
        this.zzd = zzfhlVar;
    }

    @JavascriptInterface
    @KeepForSdk
    @TargetApi(21)
    public String getClickSignals(String str) {
        try {
            long currentTimeMillis = com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis();
            String zze = this.zzc.zzc().zze(this.zza, str, this.zzb);
            if (this.zzg) {
                zzf.zzc(this.zzf, null, new ObfuscatedString(new long[]{-2955095181709456546L, -4455529641714923278L}).toString(), new Pair(new ObfuscatedString(new long[]{-8869200487161850644L, -6218126064810124714L}).toString(), String.valueOf(com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis() - currentTimeMillis)));
            }
            return zze;
        } catch (RuntimeException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-7920625526008453758L, -4792875205058830812L, 2954828977855406431L, 3438080321585337433L, 316950058273194969L, -1060249181118737029L}).toString(), e);
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{-4910965942280543035L, 3156786235751638894L, 3303161986227589501L, -1255020129903215718L, -3728663768341797995L, -8129623392732265166L, 1929263305618494740L}).toString());
            return new ObfuscatedString(new long[]{-945542298546569110L}).toString();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @JavascriptInterface
    @KeepForSdk
    @TargetApi(21)
    public String getClickSignalsWithTimeout(final String str, int i) {
        if (i <= 0) {
            zzcec.zzg(new ObfuscatedString(new long[]{-2523583384045570589L, 3688060511231486680L, -2178140662950679722L, -7286047143277128655L, -7029503335269498441L, 7182917213887142677L, -8855034491334439961L, 2200307340717980149L}).toString() + i);
            return new ObfuscatedString(new long[]{-2235797347155648641L}).toString();
        }
        try {
            return (String) zzcep.zza.zzb(new Callable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzap
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return TaggingLibraryJsInterface.this.getClickSignals(str);
                }
            }).get(Math.min(i, this.zze), TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{7259220074615882877L, 3021323862263409048L, -63429255096715366L, -7225273592240428144L, 2838911960259951755L, -4112033495604599282L, -602308713179198742L}).toString(), e);
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{2070369025624519264L, -7714521205117671729L, -8853788363951426508L, 6131850599487233092L, -3236377699689656916L, -3567774610598849065L, -8602881547651044616L, 965614378950612721L}).toString());
            if (e instanceof TimeoutException) {
                return new ObfuscatedString(new long[]{924536855083877771L, -2148945736545621241L}).toString();
            }
            return new ObfuscatedString(new long[]{-1189423147108953336L}).toString();
        }
    }

    @JavascriptInterface
    @KeepForSdk
    @TargetApi(21)
    public String getQueryInfo() {
        com.google.android.gms.ads.internal.zzt.zzp();
        String uuid = UUID.randomUUID().toString();
        final Bundle bundle = new Bundle();
        bundle.putString(new ObfuscatedString(new long[]{7990164801801854285L, 5501197564797781892L, -7977296547333717419L}).toString(), new ObfuscatedString(new long[]{1996360765189306335L, 4763972435483129164L, 8359827003334786195L}).toString());
        final zzar zzarVar = new zzar(this, uuid);
        if (((Boolean) zzba.zzc().zza(zzbgc.zzjt)).booleanValue()) {
            this.zzh.execute(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzaq
                @Override // java.lang.Runnable
                public final void run() {
                    TaggingLibraryJsInterface.this.zzb(bundle, zzarVar);
                }
            });
        } else {
            QueryInfo.generate(this.zza, AdFormat.BANNER, new AdRequest.Builder().addNetworkExtrasBundle(AdMobAdapter.class, bundle).build(), zzarVar);
        }
        return uuid;
    }

    @JavascriptInterface
    @KeepForSdk
    @TargetApi(21)
    public String getViewSignals() {
        try {
            long currentTimeMillis = com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis();
            String zzh = this.zzc.zzc().zzh(this.zza, this.zzb, null);
            if (this.zzg) {
                zzf.zzc(this.zzf, null, new ObfuscatedString(new long[]{-2956317562484911982L, 5441042006769191192L}).toString(), new Pair(new ObfuscatedString(new long[]{2193115035346775400L, 8043081227831933137L}).toString(), String.valueOf(com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis() - currentTimeMillis)));
            }
            return zzh;
        } catch (RuntimeException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-7907618680189671664L, -726707636088811664L, 4152751537702885474L, -7861818959129207875L, 1524298563336520603L}).toString(), e);
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{-6479426485580015115L, 4774451328742991921L, 6329657984806861469L, 6912641413297371509L, 5810911190855364553L, 829262482755553152L}).toString());
            return new ObfuscatedString(new long[]{9152134814742166439L}).toString();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @JavascriptInterface
    @KeepForSdk
    @TargetApi(21)
    public String getViewSignalsWithTimeout(int i) {
        if (i <= 0) {
            zzcec.zzg(new ObfuscatedString(new long[]{-2784928107142592086L, -1591849725614050737L, 890895152833417121L, 1377108799196545361L, 2497152297158254198L, -9174076804902182791L, -7798900897977091222L, -7224156836885995630L}).toString() + i);
            return new ObfuscatedString(new long[]{-3701643849434368086L}).toString();
        }
        try {
            return (String) zzcep.zza.zzb(new Callable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzan
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return TaggingLibraryJsInterface.this.getViewSignals();
                }
            }).get(Math.min(i, this.zze), TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{3018710979872992056L, 501859202315466505L, -8517198144223797076L, 6712995312303796347L, -2774604130290321578L, 5503590157223633327L, -1582183606536295385L}).toString(), e);
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{-350581245649893771L, 2046578240106890099L, 793775670259996827L, -1247355847659518237L, -1922005618220315587L, 7514515826003426145L, 649409955893506280L, -7661470390295664977L}).toString());
            if (e instanceof TimeoutException) {
                return new ObfuscatedString(new long[]{-4387318373718450275L, 8017488707192157191L}).toString();
            }
            return new ObfuscatedString(new long[]{1336541011164288435L}).toString();
        }
    }

    @JavascriptInterface
    @KeepForSdk
    @TargetApi(21)
    public void recordClick(final String str) {
        if (((Boolean) zzba.zzc().zza(zzbgc.zzjv)).booleanValue() && !TextUtils.isEmpty(str)) {
            zzcep.zza.execute(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzao
                @Override // java.lang.Runnable
                public final void run() {
                    TaggingLibraryJsInterface.this.zzc(str);
                }
            });
        }
    }

    @JavascriptInterface
    @KeepForSdk
    @TargetApi(21)
    public void reportTouchEvent(String str) {
        int i;
        try {
            JSONObject jSONObject = new JSONObject(str);
            int i2 = jSONObject.getInt(new ObfuscatedString(new long[]{-3491478592258796795L, -7320929807682598528L}).toString());
            int i3 = jSONObject.getInt(new ObfuscatedString(new long[]{1535221901560427841L, 3212790705008524490L}).toString());
            int i4 = jSONObject.getInt(new ObfuscatedString(new long[]{8205155268401070335L, 8491802191372726569L, 7041595678851917336L}).toString());
            float f = (float) jSONObject.getDouble(new ObfuscatedString(new long[]{3970006598510917909L, -565334983910651171L}).toString());
            int i5 = jSONObject.getInt(new ObfuscatedString(new long[]{2012826116307440334L, 6636697888416165200L}).toString());
            if (i5 != 0) {
                if (i5 != 1) {
                    if (i5 != 2) {
                        if (i5 != 3) {
                            i = -1;
                        } else {
                            i = 3;
                        }
                    } else {
                        i = 2;
                    }
                } else {
                    i = 1;
                }
            } else {
                i = 0;
            }
            try {
                this.zzc.zzd(MotionEvent.obtain(0L, i4, i, i2, i3, f, 1.0f, 0, 1.0f, 1.0f, 0, 0));
            } catch (RuntimeException e) {
                e = e;
                zzcec.zzh(new ObfuscatedString(new long[]{-428079101527364937L, -4713957928976591989L, 8474192020724280279L, -3075920267437207034L, -8981517009589924913L, 9018404599749161734L}).toString(), e);
                com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{4358715741060246053L, -7628927611597758916L, 6008383720140162289L, 6586905806643991892L, -304826783359133464L, -778984586073538591L, -3959360702188967515L}).toString());
            } catch (JSONException e2) {
                e = e2;
                zzcec.zzh(new ObfuscatedString(new long[]{-428079101527364937L, -4713957928976591989L, 8474192020724280279L, -3075920267437207034L, -8981517009589924913L, 9018404599749161734L}).toString(), e);
                com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{4358715741060246053L, -7628927611597758916L, 6008383720140162289L, 6586905806643991892L, -304826783359133464L, -778984586073538591L, -3959360702188967515L}).toString());
            }
        } catch (RuntimeException | JSONException e3) {
            e = e3;
        }
    }

    public final /* synthetic */ void zzb(Bundle bundle, QueryInfoGenerationCallback queryInfoGenerationCallback) {
        boolean z;
        CookieManager zza = com.google.android.gms.ads.internal.zzt.zzq().zza(this.zza);
        if (zza != null) {
            z = zza.acceptThirdPartyCookies(this.zzb);
        } else {
            z = false;
        }
        bundle.putBoolean(new ObfuscatedString(new long[]{-4544896125093670483L, 2395407684911635586L, 3720040677332681543L}).toString(), z);
        QueryInfo.generate(this.zza, AdFormat.BANNER, new AdRequest.Builder().addNetworkExtrasBundle(AdMobAdapter.class, bundle).build(), queryInfoGenerationCallback);
    }

    public final /* synthetic */ void zzc(String str) {
        zzfhl zzfhlVar;
        Uri parse = Uri.parse(str);
        try {
            if (((Boolean) zzba.zzc().zza(zzbgc.zzlr)).booleanValue() && (zzfhlVar = this.zzd) != null) {
                parse = zzfhlVar.zza(parse, this.zza, this.zzb, null);
            } else {
                parse = this.zzc.zza(parse, this.zza, this.zzb, null);
            }
        } catch (zzavj e) {
            zzcec.zzf(new ObfuscatedString(new long[]{-8251062671540005480L, -4106199393796403572L, 2988489948543383032L, 7780542175422504788L, 3979047785596854672L, -4869522149216384745L, -4226520620452136659L}).toString(), e);
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{-2760028402837482745L, -5804780397229193486L, 5733095079080819812L, -5504379422239292145L, 6638418015429110050L, 1255690258441695402L}).toString());
        }
        this.zzi.zzc(parse.toString(), null);
    }
}
