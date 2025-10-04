package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.panda912.muddy.ObfuscatedString;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzdrj extends zzbli {

    @Nullable
    private final String zza;
    private final zzdmv zzb;
    private final zzdna zzc;
    private final zzdwf zzd;

    public zzdrj(@Nullable String str, zzdmv zzdmvVar, zzdna zzdnaVar, zzdwf zzdwfVar) {
        this.zza = str;
        this.zzb = zzdmvVar;
        this.zzc = zzdnaVar;
        this.zzd = zzdwfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final void zzA() {
        this.zzb.zzG();
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final void zzB(Bundle bundle) {
        this.zzb.zzK(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final void zzC() {
        this.zzb.zzM();
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final void zzD(com.google.android.gms.ads.internal.client.zzcs zzcsVar) {
        this.zzb.zzN(zzcsVar);
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final void zzE(com.google.android.gms.ads.internal.client.zzdg zzdgVar) {
        try {
            if (!zzdgVar.zzf()) {
                this.zzd.zze();
            }
        } catch (RemoteException e) {
            zzcec.zzf(new ObfuscatedString(new long[]{-2690950542498974508L, 1943675271559398642L, -2036056663130781175L, 2391947011286929607L, 6873304473332037899L, -3808618923806734510L, -1294435763906310544L, -5776859432240586561L, -8907901863460641301L}).toString(), e);
        }
        this.zzb.zzO(zzdgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final void zzF(zzblg zzblgVar) {
        this.zzb.zzP(zzblgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final boolean zzG() {
        return this.zzb.zzU();
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final boolean zzH() {
        if (!this.zzc.zzH().isEmpty() && this.zzc.zzk() != null) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final boolean zzI(Bundle bundle) {
        return this.zzb.zzX(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final double zze() {
        return this.zzc.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final Bundle zzf() {
        return this.zzc.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    @Nullable
    public final com.google.android.gms.ads.internal.client.zzdn zzg() {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzgN)).booleanValue()) {
            return null;
        }
        return this.zzb.zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final com.google.android.gms.ads.internal.client.zzdq zzh() {
        return this.zzc.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final zzbjf zzi() {
        return this.zzc.zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final zzbjj zzj() {
        return this.zzb.zzc().zza();
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final zzbjm zzk() {
        return this.zzc.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final IObjectWrapper zzl() {
        return this.zzc.zzv();
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final IObjectWrapper zzm() {
        return ObjectWrapper.wrap(this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final String zzn() {
        return this.zzc.zzx();
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final String zzo() {
        return this.zzc.zzy();
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final String zzp() {
        return this.zzc.zzz();
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final String zzq() {
        return this.zzc.zzB();
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final String zzr() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final String zzs() {
        return this.zzc.zzD();
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final String zzt() {
        return this.zzc.zzE();
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final List zzu() {
        return this.zzc.zzG();
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final List zzv() {
        if (zzH()) {
            return this.zzc.zzH();
        }
        return Collections.emptyList();
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final void zzw() {
        this.zzb.zzu();
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final void zzx() {
        this.zzb.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final void zzy(@Nullable com.google.android.gms.ads.internal.client.zzcw zzcwVar) {
        this.zzb.zzB(zzcwVar);
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final void zzz(Bundle bundle) {
        this.zzb.zzF(bundle);
    }
}
