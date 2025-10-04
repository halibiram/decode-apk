package com.google.android.gms.internal.ads;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.Nullable;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.Map;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzdtj {
    private final zzdav zza;
    private final zzdis zzb;
    private final zzdce zzc;
    private final zzdcr zzd;
    private final zzddd zze;
    private final zzdfr zzf;
    private final Executor zzg;
    private final zzdio zzh;
    private final zzctb zzi;
    private final com.google.android.gms.ads.internal.zzb zzj;
    private final zzcbs zzk;
    private final zzavi zzl;
    private final zzdfi zzm;
    private final zzehh zzn;
    private final zzfny zzo;
    private final zzdwf zzp;
    private final zzflw zzq;
    private final zzcse zzr;
    private final zzdtp zzs;

    public zzdtj(zzdav zzdavVar, zzdce zzdceVar, zzdcr zzdcrVar, zzddd zzdddVar, zzdfr zzdfrVar, Executor executor, zzdio zzdioVar, zzctb zzctbVar, com.google.android.gms.ads.internal.zzb zzbVar, @Nullable zzcbs zzcbsVar, zzavi zzaviVar, zzdfi zzdfiVar, zzehh zzehhVar, zzfny zzfnyVar, zzdwf zzdwfVar, zzflw zzflwVar, zzdis zzdisVar, zzcse zzcseVar, zzdtp zzdtpVar) {
        this.zza = zzdavVar;
        this.zzc = zzdceVar;
        this.zzd = zzdcrVar;
        this.zze = zzdddVar;
        this.zzf = zzdfrVar;
        this.zzg = executor;
        this.zzh = zzdioVar;
        this.zzi = zzctbVar;
        this.zzj = zzbVar;
        this.zzk = zzcbsVar;
        this.zzl = zzaviVar;
        this.zzm = zzdfiVar;
        this.zzn = zzehhVar;
        this.zzo = zzfnyVar;
        this.zzp = zzdwfVar;
        this.zzq = zzflwVar;
        this.zzb = zzdisVar;
        this.zzr = zzcseVar;
        this.zzs = zzdtpVar;
    }

    public static final ListenableFuture zzj(zzcjk zzcjkVar, String str, String str2) {
        final zzceu zzceuVar = new zzceu();
        zzcjkVar.zzN().zzB(new zzckw() { // from class: com.google.android.gms.internal.ads.zzdta
            @Override // com.google.android.gms.internal.ads.zzckw
            public final void zza(boolean z, int i, String str3, String str4) {
                zzceu zzceuVar2 = zzceu.this;
                if (z) {
                    zzceuVar2.zzc(null);
                    return;
                }
                StringBuilder sb = new StringBuilder();
                sb.append(new ObfuscatedString(new long[]{582756090826551604L, 2047170270614342147L, -2080427207880909456L, -9038403419571228143L, -2534432207325364271L, 2412250900903023249L}).toString());
                sb.append(i);
                sb.append(new ObfuscatedString(new long[]{7608846870662184737L, 8034154110930385818L, 4036375589627451303L}).toString());
                sb.append(str3);
                zzceuVar2.zzd(new Exception(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-4916353763583665940L, -7844570216633036744L, 4005903383318672357L}), sb, str4)));
            }
        });
        zzcjkVar.zzac(str, str2, null);
        return zzceuVar;
    }

    public final /* synthetic */ void zzc() {
        this.zza.onAdClicked();
    }

    public final /* synthetic */ void zzd(String str, String str2) {
        this.zzf.zzb(str, str2);
    }

    public final /* synthetic */ void zze() {
        this.zzc.zzb();
    }

    public final /* synthetic */ void zzf(View view) {
        this.zzj.zza();
    }

    public final /* synthetic */ void zzg(zzcjk zzcjkVar, zzcjk zzcjkVar2, Map map) {
        this.zzi.zzh(zzcjkVar);
    }

    public final /* synthetic */ boolean zzh(View view, MotionEvent motionEvent) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjL)).booleanValue() && motionEvent != null && motionEvent.getAction() == 0) {
            this.zzs.zzb(motionEvent);
        }
        this.zzj.zza();
        if (view != null) {
            view.performClick();
            return false;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void zzi(final zzcjk zzcjkVar, boolean z, zzbni zzbniVar) {
        zzcky zzN = zzcjkVar.zzN();
        com.google.android.gms.ads.internal.client.zza zzaVar = new com.google.android.gms.ads.internal.client.zza() { // from class: com.google.android.gms.internal.ads.zzdtb
            @Override // com.google.android.gms.ads.internal.client.zza
            public final void onAdClicked() {
                zzdtj.this.zzc();
            }
        };
        zzbly zzblyVar = new zzbly() { // from class: com.google.android.gms.internal.ads.zzdtc
            @Override // com.google.android.gms.internal.ads.zzbly
            public final void zzb(String str, String str2) {
                zzdtj.this.zzd(str, str2);
            }
        };
        com.google.android.gms.ads.internal.overlay.zzaa zzaaVar = new com.google.android.gms.ads.internal.overlay.zzaa() { // from class: com.google.android.gms.internal.ads.zzdtd
            @Override // com.google.android.gms.ads.internal.overlay.zzaa
            public final void zzg() {
                zzdtj.this.zze();
            }
        };
        zzdti zzdtiVar = new zzdti(this);
        zzcbs zzcbsVar = this.zzk;
        zzehh zzehhVar = this.zzn;
        zzfny zzfnyVar = this.zzo;
        zzdwf zzdwfVar = this.zzp;
        zzN.zzN(zzaVar, this.zzd, this.zze, zzblyVar, zzaaVar, z, zzbniVar, this.zzj, zzdtiVar, zzcbsVar, zzehhVar, zzfnyVar, zzdwfVar, this.zzq, null, this.zzb, null, null, this.zzr);
        zzcjkVar.setOnTouchListener(new View.OnTouchListener() { // from class: com.google.android.gms.internal.ads.zzdte
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                zzdtj.this.zzh(view, motionEvent);
                return false;
            }
        });
        zzcjkVar.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.gms.internal.ads.zzdtf
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                zzdtj.this.zzf(view);
            }
        });
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzcv)).booleanValue()) {
            this.zzl.zzc().zzo((View) zzcjkVar);
        }
        this.zzh.zzo(zzcjkVar, this.zzg);
        this.zzh.zzo(new zzayq() { // from class: com.google.android.gms.internal.ads.zzdtg
            @Override // com.google.android.gms.internal.ads.zzayq
            public final void zzby(zzayp zzaypVar) {
                zzcky zzN2 = zzcjk.this.zzN();
                Rect rect = zzaypVar.zzd;
                zzN2.zzq(rect.left, rect.top, false);
            }
        }, this.zzg);
        this.zzh.zza((View) zzcjkVar);
        zzcjkVar.zzae(new ObfuscatedString(new long[]{5721534542668384816L, 8274745974961938899L, 677098547794279418L, -6672034007316831004L}).toString(), new zzbng() { // from class: com.google.android.gms.internal.ads.zzdth
            @Override // com.google.android.gms.internal.ads.zzbng
            public final void zza(Object obj, Map map) {
                zzdtj.this.zzg(zzcjkVar, (zzcjk) obj, map);
            }
        });
        this.zzi.zzi(zzcjkVar);
    }
}
