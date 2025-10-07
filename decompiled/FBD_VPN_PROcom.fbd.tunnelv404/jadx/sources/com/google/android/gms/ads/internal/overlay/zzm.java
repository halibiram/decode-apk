package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.webkit.CookieManager;
import android.webkit.WebChromeClient;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.Toolbar;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.ViewCompat;
import com.google.android.gms.ads.impl.R;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbbp;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzblw;
import com.google.android.gms.internal.ads.zzbly;
import com.google.android.gms.internal.ads.zzbvw;
import com.google.android.gms.internal.ads.zzbwm;
import com.google.android.gms.internal.ads.zzbws;
import com.google.android.gms.internal.ads.zzcec;
import com.google.android.gms.internal.ads.zzcei;
import com.google.android.gms.internal.ads.zzcjk;
import com.google.android.gms.internal.ads.zzcjx;
import com.google.android.gms.internal.ads.zzckw;
import com.google.android.gms.internal.ads.zzcky;
import com.google.android.gms.internal.ads.zzcla;
import com.google.android.gms.internal.ads.zzdbk;
import com.google.android.gms.internal.ads.zzdiu;
import com.google.android.gms.internal.ads.zzeht;
import com.google.android.gms.internal.ads.zzehu;
import com.google.android.gms.internal.ads.zzfod;
import com.google.android.gms.internal.ads.zzftt;
import com.panda912.muddy.ObfuscatedString;
import java.util.Collections;

/* loaded from: classes2.dex */
public class zzm extends zzbws implements zzae {

    @VisibleForTesting
    static final int zza = Color.argb(0, 0, 0, 0);
    protected final Activity zzb;

    @Nullable
    @VisibleForTesting
    AdOverlayInfoParcel zzc;

    @VisibleForTesting
    zzcjk zzd;

    @VisibleForTesting
    zzi zze;

    @VisibleForTesting
    zzs zzf;

    @VisibleForTesting
    FrameLayout zzh;

    @VisibleForTesting
    WebChromeClient.CustomViewCallback zzi;

    @VisibleForTesting
    zzh zzl;
    private Runnable zzq;
    private boolean zzr;
    private boolean zzs;
    private Toolbar zzw;

    @VisibleForTesting
    boolean zzg = false;

    @VisibleForTesting
    boolean zzj = false;

    @VisibleForTesting
    boolean zzk = false;

    @VisibleForTesting
    boolean zzm = false;

    @VisibleForTesting
    int zzn = 1;
    private final Object zzo = new Object();
    private final View.OnClickListener zzp = new zzf(this);
    private boolean zzt = false;
    private boolean zzu = false;
    private boolean zzv = true;

    public zzm(Activity activity) {
        this.zzb = activity;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0031, code lost:
    
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(com.google.android.gms.internal.ads.zzbgc.zzaF)).booleanValue() != false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0034, code lost:
    
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0048, code lost:
    
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(com.google.android.gms.internal.ads.zzbgc.zzaE)).booleanValue() != false) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void zzJ(Configuration configuration) {
        boolean z;
        com.google.android.gms.ads.internal.zzj zzjVar;
        int i;
        com.google.android.gms.ads.internal.zzj zzjVar2;
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        boolean z2 = true;
        boolean z3 = false;
        if (adOverlayInfoParcel != null && (zzjVar2 = adOverlayInfoParcel.zzo) != null && zzjVar2.zzb) {
            z = true;
        } else {
            z = false;
        }
        boolean zzd = com.google.android.gms.ads.internal.zzt.zzq().zzd(this.zzb, configuration);
        if (this.zzk && !z) {
        }
        if (zzd) {
        }
        AdOverlayInfoParcel adOverlayInfoParcel2 = this.zzc;
        if (adOverlayInfoParcel2 != null && (zzjVar = adOverlayInfoParcel2.zzo) != null && zzjVar.zzg) {
            z3 = true;
        }
        Window window = this.zzb.getWindow();
        if (((Boolean) zzba.zzc().zza(zzbgc.zzbe)).booleanValue()) {
            View decorView = window.getDecorView();
            if (z2) {
                if (z3) {
                    i = 5894;
                } else {
                    i = 5380;
                }
            } else {
                i = 256;
            }
            decorView.setSystemUiVisibility(i);
            return;
        }
        if (z2) {
            window.addFlags(1024);
            window.clearFlags(2048);
            if (z3) {
                window.getDecorView().setSystemUiVisibility(InputDeviceCompat.SOURCE_TOUCHSCREEN);
                return;
            }
            return;
        }
        window.addFlags(2048);
        window.clearFlags(1024);
    }

    private static final void zzK(@Nullable zzfod zzfodVar, @Nullable View view) {
        if (zzfodVar != null && view != null) {
            com.google.android.gms.ads.internal.zzt.zzA().zzh(zzfodVar, view);
        }
    }

    public final void zzA(int i) {
        if (this.zzb.getApplicationInfo().targetSdkVersion >= ((Integer) zzba.zzc().zza(zzbgc.zzfY)).intValue()) {
            if (this.zzb.getApplicationInfo().targetSdkVersion <= ((Integer) zzba.zzc().zza(zzbgc.zzfZ)).intValue()) {
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= ((Integer) zzba.zzc().zza(zzbgc.zzga)).intValue()) {
                    if (i2 <= ((Integer) zzba.zzc().zza(zzbgc.zzgb)).intValue()) {
                        return;
                    }
                }
            }
        }
        try {
            this.zzb.setRequestedOrientation(i);
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzt.zzo().zzv(th, new ObfuscatedString(new long[]{6454489006482811700L, -3055849537436209350L, 4087188794259538709L, -8181390693450593824L, -6525682594345363077L, 8451082954589457533L}).toString());
        }
    }

    public final void zzB(boolean z) {
        if (z) {
            this.zzl.setBackgroundColor(0);
        } else {
            this.zzl.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        }
    }

    public final void zzC(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        FrameLayout frameLayout = new FrameLayout(this.zzb);
        this.zzh = frameLayout;
        frameLayout.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        this.zzh.addView(view, -1, -1);
        this.zzb.setContentView(this.zzh);
        this.zzs = true;
        this.zzi = customViewCallback;
        this.zzg = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x01d3  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x01e4  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x020c  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x02cd  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x02dc  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00c3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzD(boolean z) {
        zzcky zzckyVar;
        boolean z2;
        boolean z3;
        zzcla zzclaVar;
        String str;
        com.google.android.gms.ads.internal.zza zzaVar;
        zzcjk zzcjkVar;
        if (!this.zzs) {
            this.zzb.requestWindowFeature(1);
        }
        Window window = this.zzb.getWindow();
        if (window != null) {
            zzcjk zzcjkVar2 = this.zzc.zzd;
            com.google.android.gms.ads.internal.zzb zzbVar = null;
            if (zzcjkVar2 != null) {
                zzckyVar = zzcjkVar2.zzN();
            } else {
                zzckyVar = null;
            }
            if (zzckyVar != null && zzckyVar.zzL()) {
                z2 = true;
            } else {
                z2 = false;
            }
            this.zzm = false;
            if (z2) {
                int i = this.zzc.zzj;
                if (i == 6) {
                    if (this.zzb.getResources().getConfiguration().orientation == 1) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    this.zzm = z3;
                } else if (i == 7) {
                    if (this.zzb.getResources().getConfiguration().orientation == 2) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    this.zzm = z3;
                }
                zzcec.zze(new ObfuscatedString(new long[]{1858301784407393331L, -3425450053778984146L, -3782879043457686579L, -449059737740719193L, -8437270833472927223L, -8759097348517576444L, -4908924911196620268L}).toString() + z3);
                zzA(this.zzc.zzj);
                window.setFlags(16777216, 16777216);
                zzcec.zze(new ObfuscatedString(new long[]{7790037216945656985L, -8314028111045921154L, 5346084007025050139L, 8830080448097376424L, -1519050534709211283L, 4017256782276915453L, -2482333177477244566L, 4586191278119240758L}).toString());
                if (this.zzk) {
                    this.zzl.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
                } else {
                    this.zzl.setBackgroundColor(zza);
                }
                this.zzb.setContentView(this.zzl);
                this.zzs = true;
                if (!z) {
                    try {
                        com.google.android.gms.ads.internal.zzt.zzz();
                        Activity activity = this.zzb;
                        zzcjk zzcjkVar3 = this.zzc.zzd;
                        if (zzcjkVar3 != null) {
                            zzclaVar = zzcjkVar3.zzO();
                        } else {
                            zzclaVar = null;
                        }
                        zzcjk zzcjkVar4 = this.zzc.zzd;
                        if (zzcjkVar4 != null) {
                            str = zzcjkVar4.zzT();
                        } else {
                            str = null;
                        }
                        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
                        zzcei zzceiVar = adOverlayInfoParcel.zzm;
                        zzcjk zzcjkVar5 = adOverlayInfoParcel.zzd;
                        if (zzcjkVar5 != null) {
                            zzaVar = zzcjkVar5.zzj();
                        } else {
                            zzaVar = null;
                        }
                        zzcjk zza2 = zzcjx.zza(activity, zzclaVar, str, true, z2, null, null, zzceiVar, null, null, zzaVar, zzbbp.zza(), null, null, null, null);
                        this.zzd = zza2;
                        zzcky zzN = zza2.zzN();
                        AdOverlayInfoParcel adOverlayInfoParcel2 = this.zzc;
                        zzblw zzblwVar = adOverlayInfoParcel2.zzp;
                        zzbly zzblyVar = adOverlayInfoParcel2.zze;
                        zzaa zzaaVar = adOverlayInfoParcel2.zzi;
                        zzcjk zzcjkVar6 = adOverlayInfoParcel2.zzd;
                        if (zzcjkVar6 != null) {
                            zzbVar = zzcjkVar6.zzN().zzd();
                        }
                        zzN.zzN(null, zzblwVar, null, zzblyVar, zzaaVar, true, null, zzbVar, null, null, null, null, null, null, null, null, null, null, null);
                        this.zzd.zzN().zzB(new zzckw() { // from class: com.google.android.gms.ads.internal.overlay.zze
                            @Override // com.google.android.gms.internal.ads.zzckw
                            public final void zza(boolean z4, int i2, String str2, String str3) {
                                zzcjk zzcjkVar7 = zzm.this.zzd;
                                if (zzcjkVar7 != null) {
                                    zzcjkVar7.zzY();
                                }
                            }
                        });
                        AdOverlayInfoParcel adOverlayInfoParcel3 = this.zzc;
                        String str2 = adOverlayInfoParcel3.zzl;
                        if (str2 != null) {
                            this.zzd.loadUrl(str2);
                        } else {
                            String str3 = adOverlayInfoParcel3.zzh;
                            if (str3 != null) {
                                this.zzd.loadDataWithBaseURL(adOverlayInfoParcel3.zzf, str3, new ObfuscatedString(new long[]{54505448908961730L, 6865603935496428930L, -8740205918700645480L}).toString(), new ObfuscatedString(new long[]{4736375567361179661L, 6980133241644783066L}).toString(), null);
                            } else {
                                throw new zzg(new ObfuscatedString(new long[]{3904970090383997865L, 6198502006913572061L, 6770471039016322240L, -1628177257192571412L, 6251374546084872166L, 4605395916947037604L}).toString());
                            }
                        }
                        zzcjk zzcjkVar7 = this.zzc.zzd;
                        if (zzcjkVar7 != null) {
                            zzcjkVar7.zzat(this);
                        }
                    } catch (Exception e) {
                        zzcec.zzh(new ObfuscatedString(new long[]{633189862826084896L, -5475356659796918684L, 3925723435721237936L, -6722132712632716369L}).toString(), e);
                        throw new zzg(new ObfuscatedString(new long[]{-1661674105815543771L, 4124326767382807666L, -2472148764756485493L, 9121100969980635364L, 2587933136946667579L, -6493844679052438188L, 4610876485314293860L}).toString(), e);
                    }
                } else {
                    zzcjk zzcjkVar8 = this.zzc.zzd;
                    this.zzd = zzcjkVar8;
                    zzcjkVar8.zzal(this.zzb);
                }
                if (this.zzc.zzw) {
                    CookieManager.getInstance().setAcceptThirdPartyCookies(this.zzd.zzG(), false);
                }
                this.zzd.zzag(this);
                zzcjkVar = this.zzc.zzd;
                if (zzcjkVar != null) {
                    zzK(zzcjkVar.zzR(), this.zzl);
                }
                if (this.zzc.zzk != 5) {
                    ViewParent parent = this.zzd.getParent();
                    if (parent != null && (parent instanceof ViewGroup)) {
                        ((ViewGroup) parent).removeView(this.zzd.zzF());
                    }
                    if (this.zzk) {
                        this.zzd.zzak();
                    }
                    if (this.zzc.zzw && Build.VERSION.SDK_INT >= 24) {
                        Toolbar toolbar = new Toolbar(this.zzb);
                        this.zzw = toolbar;
                        toolbar.setId(View.generateViewId());
                        this.zzd.zzF().setId(View.generateViewId());
                        this.zzw.setBackgroundColor(-12303292);
                        this.zzw.setVisibility(0);
                        this.zzw.setNavigationIcon(com.google.android.gms.ads.internal.zzt.zzo().zze().getDrawable(R.drawable.admob_close_button_white_cross));
                        this.zzw.setNavigationOnClickListener(this.zzp);
                        this.zzw.setTitleMarginStart(0);
                        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
                        layoutParams.addRule(10);
                        this.zzl.addView(this.zzw, layoutParams);
                        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
                        layoutParams2.addRule(3, this.zzw.getId());
                        layoutParams2.addRule(12);
                        this.zzl.addView(this.zzd.zzF(), layoutParams2);
                    } else {
                        this.zzl.addView(this.zzd.zzF(), -1, -1);
                    }
                }
                if (!z && !this.zzm) {
                    zze();
                }
                if (this.zzc.zzk == 5) {
                    zzw(z2);
                    if (this.zzd.zzay()) {
                        zzy(z2, true);
                        return;
                    }
                    return;
                }
                Activity activity2 = this.zzb;
                zzeht zze = zzehu.zze();
                zze.zza(activity2);
                zze.zzb(this);
                zze.zzc(this.zzc.zzq);
                zze.zzd(this.zzc.zzr);
                try {
                    zzf(zze.zze());
                    return;
                } catch (RemoteException | zzg e2) {
                    throw new zzg(e2.getMessage(), e2);
                }
            }
            z3 = false;
            zzcec.zze(new ObfuscatedString(new long[]{1858301784407393331L, -3425450053778984146L, -3782879043457686579L, -449059737740719193L, -8437270833472927223L, -8759097348517576444L, -4908924911196620268L}).toString() + z3);
            zzA(this.zzc.zzj);
            window.setFlags(16777216, 16777216);
            zzcec.zze(new ObfuscatedString(new long[]{7790037216945656985L, -8314028111045921154L, 5346084007025050139L, 8830080448097376424L, -1519050534709211283L, 4017256782276915453L, -2482333177477244566L, 4586191278119240758L}).toString());
            if (this.zzk) {
            }
            this.zzb.setContentView(this.zzl);
            this.zzs = true;
            if (!z) {
            }
            if (this.zzc.zzw) {
            }
            this.zzd.zzag(this);
            zzcjkVar = this.zzc.zzd;
            if (zzcjkVar != null) {
            }
            if (this.zzc.zzk != 5) {
            }
            if (!z) {
                zze();
            }
            if (this.zzc.zzk == 5) {
            }
        } else {
            throw new zzg(new ObfuscatedString(new long[]{-6655187741013229504L, -8010794148467052941L, -8865508244740139656L, 4450000367604447309L, -8179506507772451042L, -1148781711413829237L}).toString());
        }
    }

    public final void zzE() {
        synchronized (this.zzo) {
            try {
                this.zzr = true;
                Runnable runnable = this.zzq;
                if (runnable != null) {
                    zzftt zzfttVar = com.google.android.gms.ads.internal.util.zzt.zza;
                    zzfttVar.removeCallbacks(runnable);
                    zzfttVar.post(this.zzq);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzF() {
        AdOverlayInfoParcel adOverlayInfoParcel;
        zzp zzpVar;
        if (this.zzb.isFinishing() && !this.zzt) {
            this.zzt = true;
            zzcjk zzcjkVar = this.zzd;
            if (zzcjkVar != null) {
                zzcjkVar.zzX(this.zzn - 1);
                synchronized (this.zzo) {
                    try {
                        if (!this.zzr && this.zzd.zzaz()) {
                            if (((Boolean) zzba.zzc().zza(zzbgc.zzeI)).booleanValue() && !this.zzu && (adOverlayInfoParcel = this.zzc) != null && (zzpVar = adOverlayInfoParcel.zzc) != null) {
                                zzpVar.zzbz();
                            }
                            Runnable runnable = new Runnable() { // from class: com.google.android.gms.ads.internal.overlay.zzd
                                @Override // java.lang.Runnable
                                public final void run() {
                                    zzm.this.zzc();
                                }
                            };
                            this.zzq = runnable;
                            com.google.android.gms.ads.internal.util.zzt.zza.postDelayed(runnable, ((Long) zzba.zzc().zza(zzbgc.zzaX)).longValue());
                            return;
                        }
                    } finally {
                    }
                }
            }
            zzc();
        }
    }

    @RequiresApi(api = 21)
    public final void zzG(String str) {
        Toolbar toolbar = this.zzw;
        if (toolbar != null) {
            toolbar.setSubtitle(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwt
    public final boolean zzH() {
        this.zzn = 1;
        if (this.zzd == null) {
            return true;
        }
        if (((Boolean) zzba.zzc().zza(zzbgc.zziN)).booleanValue() && this.zzd.canGoBack()) {
            this.zzd.goBack();
            return false;
        }
        boolean zzaE = this.zzd.zzaE();
        if (!zzaE) {
            this.zzd.zzd(new ObfuscatedString(new long[]{-4702450452640273587L, 6929214504315572824L, -1091900542066367050L}).toString(), Collections.emptyMap());
        }
        return zzaE;
    }

    public final void zzb() {
        this.zzn = 3;
        this.zzb.finish();
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel != null && adOverlayInfoParcel.zzk == 5) {
            this.zzb.overridePendingTransition(0, 0);
        }
    }

    @VisibleForTesting
    public final void zzc() {
        zzcjk zzcjkVar;
        zzp zzpVar;
        if (!this.zzu) {
            this.zzu = true;
            zzcjk zzcjkVar2 = this.zzd;
            if (zzcjkVar2 != null) {
                this.zzl.removeView(zzcjkVar2.zzF());
                zzi zziVar = this.zze;
                if (zziVar != null) {
                    this.zzd.zzal(zziVar.zzd);
                    this.zzd.zzao(false);
                    ViewGroup viewGroup = this.zze.zzc;
                    View zzF = this.zzd.zzF();
                    zzi zziVar2 = this.zze;
                    viewGroup.addView(zzF, zziVar2.zza, zziVar2.zzb);
                    this.zze = null;
                } else if (this.zzb.getApplicationContext() != null) {
                    this.zzd.zzal(this.zzb.getApplicationContext());
                }
                this.zzd = null;
            }
            AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
            if (adOverlayInfoParcel != null && (zzpVar = adOverlayInfoParcel.zzc) != null) {
                zzpVar.zzbD(this.zzn);
            }
            AdOverlayInfoParcel adOverlayInfoParcel2 = this.zzc;
            if (adOverlayInfoParcel2 != null && (zzcjkVar = adOverlayInfoParcel2.zzd) != null) {
                zzK(zzcjkVar.zzR(), this.zzc.zzd.zzF());
            }
        }
    }

    public final void zzd() {
        this.zzl.zzb = true;
    }

    public final void zze() {
        this.zzd.zzY();
    }

    public final void zzf(zzehu zzehuVar) {
        zzbwm zzbwmVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel != null && (zzbwmVar = adOverlayInfoParcel.zzv) != null) {
            zzbwmVar.zzg(ObjectWrapper.wrap(zzehuVar));
            return;
        }
        throw new zzg(new ObfuscatedString(new long[]{-6090798458062857421L, 6152777056730282066L}).toString());
    }

    public final void zzg() {
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel != null && this.zzg) {
            zzA(adOverlayInfoParcel.zzj);
        }
        if (this.zzh != null) {
            this.zzb.setContentView(this.zzl);
            this.zzs = true;
            this.zzh.removeAllViews();
            this.zzh = null;
        }
        WebChromeClient.CustomViewCallback customViewCallback = this.zzi;
        if (customViewCallback != null) {
            customViewCallback.onCustomViewHidden();
            this.zzi = null;
        }
        this.zzg = false;
    }

    @Override // com.google.android.gms.internal.ads.zzbwt
    public final void zzh(int i, int i2, Intent intent) {
    }

    @Override // com.google.android.gms.internal.ads.zzbwt
    public final void zzi() {
        this.zzn = 1;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzae
    public final void zzj() {
        this.zzn = 2;
        this.zzb.finish();
    }

    @Override // com.google.android.gms.internal.ads.zzbwt
    public final void zzk(IObjectWrapper iObjectWrapper) {
        zzJ((Configuration) ObjectWrapper.unwrap(iObjectWrapper));
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00b0 A[Catch: zzg -> 0x0049, TryCatch #0 {zzg -> 0x0049, blocks: (B:11:0x002b, B:13:0x0039, B:15:0x003d, B:17:0x0043, B:18:0x004c, B:19:0x0057, B:21:0x0062, B:22:0x0064, B:24:0x006c, B:25:0x0086, B:27:0x008c, B:30:0x0099, B:32:0x009d, B:34:0x00a2, B:36:0x00b0, B:38:0x00b4, B:40:0x00ba, B:41:0x00bd, B:43:0x00c3, B:44:0x00c6, B:46:0x00cc, B:48:0x00d0, B:49:0x00d3, B:51:0x00d9, B:52:0x00dc, B:59:0x010b, B:62:0x010f, B:63:0x0122, B:64:0x0123, B:66:0x0127, B:68:0x0134, B:70:0x0093, B:72:0x0097, B:73:0x00ac, B:74:0x0138, B:75:0x014b), top: B:10:0x002b }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0134 A[Catch: zzg -> 0x0049, TryCatch #0 {zzg -> 0x0049, blocks: (B:11:0x002b, B:13:0x0039, B:15:0x003d, B:17:0x0043, B:18:0x004c, B:19:0x0057, B:21:0x0062, B:22:0x0064, B:24:0x006c, B:25:0x0086, B:27:0x008c, B:30:0x0099, B:32:0x009d, B:34:0x00a2, B:36:0x00b0, B:38:0x00b4, B:40:0x00ba, B:41:0x00bd, B:43:0x00c3, B:44:0x00c6, B:46:0x00cc, B:48:0x00d0, B:49:0x00d3, B:51:0x00d9, B:52:0x00dc, B:59:0x010b, B:62:0x010f, B:63:0x0122, B:64:0x0123, B:66:0x0127, B:68:0x0134, B:70:0x0093, B:72:0x0097, B:73:0x00ac, B:74:0x0138, B:75:0x014b), top: B:10:0x002b }] */
    @Override // com.google.android.gms.internal.ads.zzbwt
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void zzl(Bundle bundle) {
        boolean z;
        int i;
        if (!this.zzs) {
            this.zzb.requestWindowFeature(1);
        }
        if (bundle != null && bundle.getBoolean(new ObfuscatedString(new long[]{-1124953210624230108L, 4807651525294416213L, -7960616775311849708L, -4981547167200940967L, 5974810261844686380L, -7584756430760655799L, -4194102473828567307L, 7956685328955368288L}).toString(), false)) {
            z = true;
        } else {
            z = false;
        }
        this.zzj = z;
        try {
            AdOverlayInfoParcel zza2 = AdOverlayInfoParcel.zza(this.zzb.getIntent());
            this.zzc = zza2;
            if (zza2 != null) {
                if (zza2.zzw) {
                    if (Build.VERSION.SDK_INT >= 28) {
                        this.zzb.setShowWhenLocked(true);
                    } else {
                        this.zzb.getWindow().addFlags(524288);
                    }
                }
                if (this.zzc.zzm.zzc > 7500000) {
                    this.zzn = 4;
                }
                if (this.zzb.getIntent() != null) {
                    this.zzv = this.zzb.getIntent().getBooleanExtra(new ObfuscatedString(new long[]{-6727529169351235260L, 5283151054756458381L, 4008506373443710459L, -3756385562808660034L, 1250179944428374345L}).toString(), true);
                }
                AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
                com.google.android.gms.ads.internal.zzj zzjVar = adOverlayInfoParcel.zzo;
                if (zzjVar != null) {
                    boolean z2 = zzjVar.zza;
                    this.zzk = z2;
                    if (z2) {
                        if (adOverlayInfoParcel.zzk != 5 && zzjVar.zzf != -1) {
                            new zzl(this, null).zzb();
                        }
                    }
                    if (bundle == null) {
                        if (this.zzv) {
                            zzdbk zzdbkVar = this.zzc.zzt;
                            if (zzdbkVar != null) {
                                zzdbkVar.zze();
                            }
                            zzp zzpVar = this.zzc.zzc;
                            if (zzpVar != null) {
                                zzpVar.zzbA();
                            }
                        }
                        AdOverlayInfoParcel adOverlayInfoParcel2 = this.zzc;
                        if (adOverlayInfoParcel2.zzk != 1) {
                            com.google.android.gms.ads.internal.client.zza zzaVar = adOverlayInfoParcel2.zzb;
                            if (zzaVar != null) {
                                zzaVar.onAdClicked();
                            }
                            zzdiu zzdiuVar = this.zzc.zzu;
                            if (zzdiuVar != null) {
                                zzdiuVar.zzs();
                            }
                        }
                    }
                    Activity activity = this.zzb;
                    AdOverlayInfoParcel adOverlayInfoParcel3 = this.zzc;
                    zzh zzhVar = new zzh(activity, adOverlayInfoParcel3.zzn, adOverlayInfoParcel3.zzm.zza, adOverlayInfoParcel3.zzs);
                    this.zzl = zzhVar;
                    zzhVar.setId(1000);
                    com.google.android.gms.ads.internal.zzt.zzq().zzk(this.zzb);
                    AdOverlayInfoParcel adOverlayInfoParcel4 = this.zzc;
                    i = adOverlayInfoParcel4.zzk;
                    if (i != 1) {
                        if (i != 2) {
                            if (i != 3) {
                                if (i == 5) {
                                    zzD(false);
                                    return;
                                }
                                throw new zzg(new ObfuscatedString(new long[]{7480676630470404348L, -4168382004415083478L, 825611143587087895L, -4833800653050267546L, -2305522616810878283L, 5972545580663558363L}).toString());
                            }
                            zzD(true);
                            return;
                        }
                        this.zze = new zzi(adOverlayInfoParcel4.zzd);
                        zzD(false);
                        return;
                    }
                    zzD(false);
                    return;
                }
                if (adOverlayInfoParcel.zzk == 5) {
                    this.zzk = true;
                    if (adOverlayInfoParcel.zzk != 5) {
                        new zzl(this, null).zzb();
                    }
                    if (bundle == null) {
                    }
                    Activity activity2 = this.zzb;
                    AdOverlayInfoParcel adOverlayInfoParcel32 = this.zzc;
                    zzh zzhVar2 = new zzh(activity2, adOverlayInfoParcel32.zzn, adOverlayInfoParcel32.zzm.zza, adOverlayInfoParcel32.zzs);
                    this.zzl = zzhVar2;
                    zzhVar2.setId(1000);
                    com.google.android.gms.ads.internal.zzt.zzq().zzk(this.zzb);
                    AdOverlayInfoParcel adOverlayInfoParcel42 = this.zzc;
                    i = adOverlayInfoParcel42.zzk;
                    if (i != 1) {
                    }
                } else {
                    this.zzk = false;
                    if (bundle == null) {
                    }
                    Activity activity22 = this.zzb;
                    AdOverlayInfoParcel adOverlayInfoParcel322 = this.zzc;
                    zzh zzhVar22 = new zzh(activity22, adOverlayInfoParcel322.zzn, adOverlayInfoParcel322.zzm.zza, adOverlayInfoParcel322.zzs);
                    this.zzl = zzhVar22;
                    zzhVar22.setId(1000);
                    com.google.android.gms.ads.internal.zzt.zzq().zzk(this.zzb);
                    AdOverlayInfoParcel adOverlayInfoParcel422 = this.zzc;
                    i = adOverlayInfoParcel422.zzk;
                    if (i != 1) {
                    }
                }
            } else {
                throw new zzg(new ObfuscatedString(new long[]{-4175020238248151587L, 2970252175346553751L, -4838745798282922038L, 2756309253590375323L, -3341966654390321099L, 5848625498674924108L}).toString());
            }
        } catch (zzg e) {
            zzcec.zzj(e.getMessage());
            this.zzn = 4;
            this.zzb.finish();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwt
    public final void zzm() {
        zzcjk zzcjkVar = this.zzd;
        if (zzcjkVar != null) {
            try {
                this.zzl.removeView(zzcjkVar.zzF());
            } catch (NullPointerException unused) {
            }
        }
        zzF();
    }

    public final void zzn() {
        if (this.zzm) {
            this.zzm = false;
            zze();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwt
    public final void zzo() {
        zzp zzpVar;
        zzg();
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel != null && (zzpVar = adOverlayInfoParcel.zzc) != null) {
            zzpVar.zzbt();
        }
        if (!((Boolean) zzba.zzc().zza(zzbgc.zzeK)).booleanValue() && this.zzd != null && (!this.zzb.isFinishing() || this.zze == null)) {
            this.zzd.onPause();
        }
        zzF();
    }

    @Override // com.google.android.gms.internal.ads.zzbwt
    public final void zzp(int i, String[] strArr, int[] iArr) {
        zzm zzmVar;
        if (i == 12345) {
            Activity activity = this.zzb;
            zzeht zze = zzehu.zze();
            zze.zza(activity);
            if (this.zzc.zzk == 5) {
                zzmVar = this;
            } else {
                zzmVar = null;
            }
            zze.zzb(zzmVar);
            try {
                this.zzc.zzv.zzf(strArr, iArr, ObjectWrapper.wrap(zze.zze()));
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwt
    public final void zzq() {
    }

    @Override // com.google.android.gms.internal.ads.zzbwt
    public final void zzr() {
        zzp zzpVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel != null && (zzpVar = adOverlayInfoParcel.zzc) != null) {
            zzpVar.zzbP();
        }
        zzJ(this.zzb.getResources().getConfiguration());
        if (!((Boolean) zzba.zzc().zza(zzbgc.zzeK)).booleanValue()) {
            zzcjk zzcjkVar = this.zzd;
            if (zzcjkVar != null && !zzcjkVar.zzaB()) {
                this.zzd.onResume();
            } else {
                zzcec.zzj(new ObfuscatedString(new long[]{-3430126251931442677L, -354893359713813030L, 1027241312800901644L, -400748331349770021L, -2739682521943898368L, -7160624956384069222L, -7961339966463515164L}).toString());
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwt
    public final void zzs(Bundle bundle) {
        bundle.putBoolean(new ObfuscatedString(new long[]{619887313743471951L, 7883364736780377113L, -6907764546668404558L, 6097159714588401570L, 1489723519119698146L, 1253736326908848663L, -2305301306424442614L, -7899095453490493508L}).toString(), this.zzj);
    }

    @Override // com.google.android.gms.internal.ads.zzbwt
    public final void zzt() {
        if (((Boolean) zzba.zzc().zza(zzbgc.zzeK)).booleanValue()) {
            zzcjk zzcjkVar = this.zzd;
            if (zzcjkVar != null && !zzcjkVar.zzaB()) {
                this.zzd.onResume();
            } else {
                zzcec.zzj(new ObfuscatedString(new long[]{8635410861451467950L, 1795531402583577387L, 244567627999092493L, -364182565556005993L, 8410056974020367809L, -5145594868269181365L, 6714268427958333732L}).toString());
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwt
    public final void zzu() {
        if (((Boolean) zzba.zzc().zza(zzbgc.zzeK)).booleanValue() && this.zzd != null && (!this.zzb.isFinishing() || this.zze == null)) {
            this.zzd.onPause();
        }
        zzF();
    }

    @Override // com.google.android.gms.internal.ads.zzbwt
    public final void zzv() {
        zzp zzpVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzc;
        if (adOverlayInfoParcel != null && (zzpVar = adOverlayInfoParcel.zzc) != null) {
            zzpVar.zzbC();
        }
    }

    public final void zzw(boolean z) {
        boolean z2;
        int i;
        int i2;
        if (this.zzc.zzw) {
            return;
        }
        int intValue = ((Integer) zzba.zzc().zza(zzbgc.zzeN)).intValue();
        int i3 = 0;
        if (((Boolean) zzba.zzc().zza(zzbgc.zzba)).booleanValue() || z) {
            z2 = true;
        } else {
            z2 = false;
        }
        zzr zzrVar = new zzr();
        zzrVar.zzd = 50;
        if (true != z2) {
            i = 0;
        } else {
            i = intValue;
        }
        zzrVar.zza = i;
        if (true != z2) {
            i3 = intValue;
        }
        zzrVar.zzb = i3;
        zzrVar.zzc = intValue;
        this.zzf = new zzs(this.zzb, zzrVar, this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        if (true != z2) {
            i2 = 9;
        } else {
            i2 = 11;
        }
        layoutParams.addRule(i2);
        zzy(z, this.zzc.zzg);
        this.zzl.addView(this.zzf, layoutParams);
    }

    @Override // com.google.android.gms.internal.ads.zzbwt
    public final void zzx() {
        this.zzs = true;
    }

    public final void zzy(boolean z, boolean z2) {
        boolean z3;
        boolean z4;
        AdOverlayInfoParcel adOverlayInfoParcel;
        com.google.android.gms.ads.internal.zzj zzjVar;
        AdOverlayInfoParcel adOverlayInfoParcel2;
        com.google.android.gms.ads.internal.zzj zzjVar2;
        boolean z5 = true;
        if (((Boolean) zzba.zzc().zza(zzbgc.zzaY)).booleanValue() && (adOverlayInfoParcel2 = this.zzc) != null && (zzjVar2 = adOverlayInfoParcel2.zzo) != null && zzjVar2.zzh) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (((Boolean) zzba.zzc().zza(zzbgc.zzaZ)).booleanValue() && (adOverlayInfoParcel = this.zzc) != null && (zzjVar = adOverlayInfoParcel.zzo) != null && zzjVar.zzi) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (z && z2 && z3 && !z4) {
            new zzbvw(this.zzd, new ObfuscatedString(new long[]{-8908084286160371350L, -2037195686785918585L, -5954942143914803218L}).toString()).zzh(new ObfuscatedString(new long[]{8234317815267205918L, -5574034041721940778L, -3010864281684007561L, 6167164442164435489L, -2094628163412737210L, -5471683597751996852L, 3944317348868851629L, 7100807159052174381L, 7927210320647145842L, -1839441139926768616L}).toString());
        }
        zzs zzsVar = this.zzf;
        if (zzsVar != null) {
            if (!z4 && (!z2 || z3)) {
                z5 = false;
            }
            zzsVar.zzb(z5);
        }
    }

    public final void zzz() {
        this.zzl.removeView(this.zzf);
        zzw(true);
    }
}
