package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzbws;
import com.google.android.gms.internal.ads.zzdiu;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzz extends zzbws {
    private final AdOverlayInfoParcel zza;
    private final Activity zzb;
    private boolean zzc = false;
    private boolean zzd = false;
    private boolean zze = false;

    public zzz(Activity activity, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.zza = adOverlayInfoParcel;
        this.zzb = activity;
    }

    private final synchronized void zzb() {
        try {
            if (!this.zzd) {
                zzp zzpVar = this.zza.zzc;
                if (zzpVar != null) {
                    zzpVar.zzbD(4);
                }
                this.zzd = true;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwt
    public final boolean zzH() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbwt
    public final void zzh(int i, int i2, Intent intent) {
    }

    @Override // com.google.android.gms.internal.ads.zzbwt
    public final void zzi() {
    }

    @Override // com.google.android.gms.internal.ads.zzbwt
    public final void zzk(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzbwt
    public final void zzl(@Nullable Bundle bundle) {
        zzp zzpVar;
        if (((Boolean) zzba.zzc().zza(zzbgc.zziL)).booleanValue() && !this.zze) {
            this.zzb.requestWindowFeature(1);
        }
        boolean z = false;
        if (bundle != null && bundle.getBoolean(new ObfuscatedString(new long[]{954534034752452850L, -8181305158625557567L, 8075734691471395828L, -8922484218784689927L, -593160453073632794L, -7299120319179202668L, 6788339965532466454L, -2170082066500617704L}).toString(), false)) {
            z = true;
        }
        AdOverlayInfoParcel adOverlayInfoParcel = this.zza;
        if (adOverlayInfoParcel == null) {
            this.zzb.finish();
            return;
        }
        if (z) {
            this.zzb.finish();
            return;
        }
        if (bundle == null) {
            com.google.android.gms.ads.internal.client.zza zzaVar = adOverlayInfoParcel.zzb;
            if (zzaVar != null) {
                zzaVar.onAdClicked();
            }
            zzdiu zzdiuVar = this.zza.zzu;
            if (zzdiuVar != null) {
                zzdiuVar.zzs();
            }
            if (this.zzb.getIntent() != null && this.zzb.getIntent().getBooleanExtra(new ObfuscatedString(new long[]{-6665928536831612728L, 3444754204926952463L, -4143470202810297648L, 8773779775926206958L, -2080572613538262062L}).toString(), true) && (zzpVar = this.zza.zzc) != null) {
                zzpVar.zzbA();
            }
        }
        Activity activity = this.zzb;
        AdOverlayInfoParcel adOverlayInfoParcel2 = this.zza;
        com.google.android.gms.ads.internal.zzt.zzh();
        zzc zzcVar = adOverlayInfoParcel2.zza;
        if (!zza.zzb(activity, zzcVar, adOverlayInfoParcel2.zzi, zzcVar.zzi)) {
            this.zzb.finish();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwt
    public final void zzm() {
        if (this.zzb.isFinishing()) {
            zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwt
    public final void zzo() {
        zzp zzpVar = this.zza.zzc;
        if (zzpVar != null) {
            zzpVar.zzbt();
        }
        if (this.zzb.isFinishing()) {
            zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwt
    public final void zzp(int i, String[] strArr, int[] iArr) {
    }

    @Override // com.google.android.gms.internal.ads.zzbwt
    public final void zzq() {
    }

    @Override // com.google.android.gms.internal.ads.zzbwt
    public final void zzr() {
        if (this.zzc) {
            this.zzb.finish();
            return;
        }
        this.zzc = true;
        zzp zzpVar = this.zza.zzc;
        if (zzpVar != null) {
            zzpVar.zzbP();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwt
    public final void zzs(Bundle bundle) {
        bundle.putBoolean(new ObfuscatedString(new long[]{4940153448561705264L, 5608644763133656760L, 2258641895174134900L, -8303281827608971239L, 8582167838370136445L, 306162901097522L, 263652175991671299L, 797224498766921109L}).toString(), this.zzc);
    }

    @Override // com.google.android.gms.internal.ads.zzbwt
    public final void zzt() {
    }

    @Override // com.google.android.gms.internal.ads.zzbwt
    public final void zzu() {
        if (this.zzb.isFinishing()) {
            zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwt
    public final void zzv() {
        zzp zzpVar = this.zza.zzc;
        if (zzpVar != null) {
            zzpVar.zzbC();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwt
    public final void zzx() {
        this.zze = true;
    }
}
