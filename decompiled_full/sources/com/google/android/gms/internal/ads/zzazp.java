package com.google.android.gms.internal.ads;

import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.content.Context;
import android.graphics.Rect;
import android.os.Process;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.util.PlatformVersion;
import com.panda912.muddy.ObfuscatedString;
import java.util.Iterator;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;

@ParametersAreNonnullByDefault
/* loaded from: classes2.dex */
public final class zzazp extends Thread {
    private boolean zza;
    private boolean zzb;
    private final Object zzc;
    private final zzazg zzd;
    private final int zze;
    private final int zzf;
    private final int zzg;
    private final int zzh;
    private final int zzi;
    private final int zzj;
    private final int zzk;
    private final int zzl;
    private final String zzm;
    private final boolean zzn;
    private final boolean zzo;
    private final boolean zzp;

    public zzazp() {
        zzazg zzazgVar = new zzazg();
        this.zza = false;
        this.zzb = false;
        this.zzd = zzazgVar;
        this.zzc = new Object();
        this.zzf = ((Long) zzbhs.zzd.zze()).intValue();
        this.zzg = ((Long) zzbhs.zza.zze()).intValue();
        this.zzh = ((Long) zzbhs.zze.zze()).intValue();
        this.zzi = ((Long) zzbhs.zzc.zze()).intValue();
        this.zzj = ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzS)).intValue();
        this.zzk = ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzT)).intValue();
        this.zzl = ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzU)).intValue();
        this.zze = ((Long) zzbhs.zzf.zze()).intValue();
        this.zzm = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzW);
        this.zzn = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzX)).booleanValue();
        this.zzo = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzY)).booleanValue();
        this.zzp = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzZ)).booleanValue();
        setName(new ObfuscatedString(new long[]{-4107838921331158701L, -6510085416751671386L, -5024189320714861447L}).toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a4, code lost:
    
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0157, code lost:
    
        com.google.android.gms.internal.ads.zzcec.zzh(new com.panda912.muddy.ObfuscatedString(new long[]{5587263517735455404L, 2205014559093483676L, -5281503115489712929L, 4283267933993394786L, -8648840685401824874L}).toString(), r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00a1, code lost:
    
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x012f, code lost:
    
        com.google.android.gms.internal.ads.zzcec.zzh(new com.panda912.muddy.ObfuscatedString(new long[]{5910066218379700258L, 8728116939079957457L, -8366891099929661429L, 418670887190983138L, 2396300475740893671L}).toString(), r2);
        com.google.android.gms.ads.internal.zzt.zzo().zzw(r2, new com.panda912.muddy.ObfuscatedString(new long[]{-6110460151114576952L, -1254175513910678364L, -2911297142984453337L, 1732118966336038504L}).toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x005c, code lost:
    
        if (r5.importance != 100) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0062, code lost:
    
        if (r4.inKeyguardRestrictedInputMode() != false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0064, code lost:
    
        r2 = (android.os.PowerManager) r2.getSystemService(new com.panda912.muddy.ObfuscatedString(new long[]{6098850944376514040L, -8097887184185578829L}).toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0078, code lost:
    
        if (r2 == null) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x007e, code lost:
    
        if (r2.isScreenOn() == false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0080, code lost:
    
        r2 = com.google.android.gms.ads.internal.zzt.zzb().zza();
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0088, code lost:
    
        if (r2 != null) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x008a, code lost:
    
        com.google.android.gms.internal.ads.zzcec.zze(new com.panda912.muddy.ObfuscatedString(new long[]{-2207180057998995005L, -930001796146251398L, 6753131828435816007L, 6206810827350957047L, -1333828665430744122L, -4243665610188159613L, -5224364626330170779L}).toString());
        zzf();
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00a7, code lost:
    
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00ac, code lost:
    
        if (r2.getWindow() == null) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00b6, code lost:
    
        if (r2.getWindow().getDecorView() == null) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00b8, code lost:
    
        r3 = r2.getWindow().getDecorView().findViewById(android.R.id.content);
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00c8, code lost:
    
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00c9, code lost:
    
        com.google.android.gms.ads.internal.zzt.zzo().zzw(r2, new com.panda912.muddy.ObfuscatedString(new long[]{-2148756501746814789L, -6173795813064846365L, -3880423085575103439L, -4700895225194033456L, -2826721560689927788L}).toString());
        com.google.android.gms.internal.ads.zzcec.zze(new com.panda912.muddy.ObfuscatedString(new long[]{4291213327528979399L, 653903312914892699L, -8450535642323763864L, 2545366460027358141L, 1459531346896133920L, -6595141093397786686L, 8963246685531582771L, -5072474209279901079L, -2359568815535866151L}).toString());
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x016b A[EXC_TOP_SPLITTER, LOOP:1: B:10:0x016b->B:17:0x016b, LOOP_START, SYNTHETIC] */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        View view;
        while (true) {
            try {
                Context zzb = com.google.android.gms.ads.internal.zzt.zzb().zzb();
                if (zzb != null) {
                    ActivityManager activityManager = (ActivityManager) zzb.getSystemService(new ObfuscatedString(new long[]{-3467345150648817099L, 7901359211556518660L}).toString());
                    KeyguardManager keyguardManager = (KeyguardManager) zzb.getSystemService(new ObfuscatedString(new long[]{-7950743410940161958L, 7729752143209122143L}).toString());
                    if (activityManager != null && keyguardManager != null && (runningAppProcesses = activityManager.getRunningAppProcesses()) != null) {
                        Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            ActivityManager.RunningAppProcessInfo next = it.next();
                            if (Process.myPid() == next.pid) {
                                break;
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                com.google.android.gms.ads.internal.zzt.zzo().zzw(th, new ObfuscatedString(new long[]{2204659283763401526L, -6344811636641504485L, 7122457548484455024L, 1366343104071343686L, 1236839451862737072L}).toString());
            }
            zzcec.zze(new ObfuscatedString(new long[]{4397192942009334874L, 1376583477673399768L, -8786273137698327366L, -6471704368443512535L, 4929114703655617502L}).toString());
            zzf();
            Thread.sleep(this.zze * 1000);
            synchronized (this.zzc) {
                while (this.zzb) {
                    try {
                        zzcec.zze(new ObfuscatedString(new long[]{-1059132354302343381L, 7170832291448725406L, 8778113203332809786L, -3335419459294721178L, -6077868581705665355L}).toString());
                        this.zzc.wait();
                    } catch (InterruptedException unused) {
                    }
                }
            }
        }
        if (view != null) {
            view.post(new zzazl(this, view));
        }
        Thread.sleep(this.zze * 1000);
        synchronized (this.zzc) {
        }
    }

    public final zzazf zza() {
        return this.zzd.zza(this.zzp);
    }

    @VisibleForTesting
    public final zzazo zzb(@Nullable View view, zzazf zzazfVar) {
        if (view != null) {
            boolean globalVisibleRect = view.getGlobalVisibleRect(new Rect());
            if ((view instanceof TextView) && !(view instanceof EditText)) {
                CharSequence text = ((TextView) view).getText();
                if (!TextUtils.isEmpty(text)) {
                    zzazfVar.zzk(text.toString(), globalVisibleRect, view.getX(), view.getY(), view.getWidth(), view.getHeight());
                    return new zzazo(this, 1, 0);
                }
            } else if ((view instanceof WebView) && !(view instanceof zzcjk)) {
                WebView webView = (WebView) view;
                if (PlatformVersion.isAtLeastKitKat()) {
                    zzazfVar.zzh();
                    webView.post(new zzazn(this, zzazfVar, webView, globalVisibleRect));
                    return new zzazo(this, 0, 1);
                }
            } else if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int i = 0;
                int i2 = 0;
                for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
                    zzazo zzb = zzb(viewGroup.getChildAt(i3), zzazfVar);
                    i += zzb.zza;
                    i2 += zzb.zzb;
                }
                return new zzazo(this, i, i2);
            }
        }
        return new zzazo(this, 0, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x007c, code lost:
    
        if (r11 == 0) goto L23;
     */
    @VisibleForTesting
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzc(View view) {
        try {
            zzazf zzazfVar = new zzazf(this.zzf, this.zzg, this.zzh, this.zzi, this.zzj, this.zzk, this.zzl, this.zzo);
            Context zzb = com.google.android.gms.ads.internal.zzt.zzb().zzb();
            if (zzb != null && !TextUtils.isEmpty(this.zzm)) {
                String str = (String) view.getTag(zzb.getResources().getIdentifier((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzV), new ObfuscatedString(new long[]{243424107144163353L, 8520693786306953747L}).toString(), zzb.getPackageName()));
                if (str != null && str.equals(this.zzm)) {
                    return;
                }
            }
            zzazo zzb2 = zzb(view, zzazfVar);
            zzazfVar.zzm();
            if (zzb2.zza != 0 || zzb2.zzb != 0) {
                int i = zzb2.zzb;
                if (i == 0) {
                    if (zzazfVar.zzc() == 0) {
                        return;
                    }
                }
                if (this.zzd.zzd(zzazfVar)) {
                    return;
                }
                this.zzd.zzb(zzazfVar);
            }
        } catch (Exception e) {
            zzcec.zzh(new ObfuscatedString(new long[]{2211192454974353210L, 7242417747377668491L, -960902493514458536L, -7098060950505917104L, 6745628499591117289L, -3388898587661213674L}).toString(), e);
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{6095670496316033638L, 6307860363286891697L, -3426829620411640138L, -1222507372706655736L, 4648844931061343216L}).toString());
        }
    }

    @VisibleForTesting
    public final void zzd(zzazf zzazfVar, WebView webView, String str, boolean z) {
        zzazfVar.zzg();
        try {
            if (!TextUtils.isEmpty(str)) {
                String optString = new JSONObject(str).optString(new ObfuscatedString(new long[]{9157408208689366987L, -111626474914604617L}).toString());
                if (!this.zzn && !TextUtils.isEmpty(webView.getTitle())) {
                    zzazfVar.zzl(webView.getTitle() + new ObfuscatedString(new long[]{-8127794600799277255L, -5111092720977988386L}).toString() + optString, z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                } else {
                    zzazfVar.zzl(optString, z, webView.getX(), webView.getY(), webView.getWidth(), webView.getHeight());
                }
            }
            if (zzazfVar.zzo()) {
                this.zzd.zzc(zzazfVar);
            }
        } catch (JSONException unused) {
            zzcec.zze(new ObfuscatedString(new long[]{6060275270824570311L, 8144116359493874845L, 481737346224317390L, 7218879514597353559L, -1521975361977271764L}).toString());
        } catch (Throwable th) {
            zzcec.zzf(new ObfuscatedString(new long[]{2463278632459356151L, -5749045650941304851L, 6191451613602120568L, 3652993128996190684L, 4994309403402523505L}).toString(), th);
            com.google.android.gms.ads.internal.zzt.zzo().zzw(th, new ObfuscatedString(new long[]{1758190003285119976L, -7977877014442912463L, -8012365121977910166L, -9200647881912699593L, 1217303909496788160L, -6909306122993865634L}).toString());
        }
    }

    public final void zze() {
        synchronized (this.zzc) {
            try {
                if (this.zza) {
                    zzcec.zze(new ObfuscatedString(new long[]{353389542979935567L, 3854714260627827275L, -412360235839101429L, -3521764428904747936L, 6777487378742577410L, 9003921282364628706L, 6811136855799739622L}).toString());
                } else {
                    this.zza = true;
                    start();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzf() {
        synchronized (this.zzc) {
            this.zzb = true;
            zzcec.zze(new ObfuscatedString(new long[]{-4366957718441246003L, -3504329864735262644L, 5675391026945916551L, 6893899358738937557L, -2015273528899754841L, 8661391758921226616L}).toString() + true);
        }
    }

    public final void zzg() {
        synchronized (this.zzc) {
            this.zzb = false;
            this.zzc.notifyAll();
            zzcec.zze(new ObfuscatedString(new long[]{-6915615358691753656L, 4023462157190095613L, 6346808804628913018L, 339780296675926452L, 8364733744844841443L}).toString());
        }
    }

    public final boolean zzh() {
        return this.zzb;
    }
}
