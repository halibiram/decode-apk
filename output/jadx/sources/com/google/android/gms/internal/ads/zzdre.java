package com.google.android.gms.internal.ads;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzdre extends zzbkc {

    @Nullable
    private final String zza;
    private final zzdmv zzb;
    private final zzdna zzc;

    public zzdre(@Nullable String str, zzdmv zzdmvVar, zzdna zzdnaVar) {
        this.zza = str;
        this.zzb = zzdmvVar;
        this.zzc = zzdnaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbkd
    public final Bundle zzb() {
        return this.zzc.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzbkd
    public final com.google.android.gms.ads.internal.client.zzdq zzc() {
        return this.zzc.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzbkd
    public final zzbjf zzd() {
        return this.zzc.zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzbkd
    public final zzbjm zze() {
        return this.zzc.zzo();
    }

    @Override // com.google.android.gms.internal.ads.zzbkd
    public final IObjectWrapper zzf() {
        return this.zzc.zzv();
    }

    @Override // com.google.android.gms.internal.ads.zzbkd
    public final IObjectWrapper zzg() {
        return ObjectWrapper.wrap(this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzbkd
    public final String zzh() {
        return this.zzc.zzx();
    }

    @Override // com.google.android.gms.internal.ads.zzbkd
    public final String zzi() {
        return this.zzc.zzy();
    }

    @Override // com.google.android.gms.internal.ads.zzbkd
    public final String zzj() {
        return this.zzc.zzz();
    }

    @Override // com.google.android.gms.internal.ads.zzbkd
    public final String zzk() {
        return this.zzc.zzB();
    }

    @Override // com.google.android.gms.internal.ads.zzbkd
    public final String zzl() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzbkd
    public final List zzm() {
        return this.zzc.zzG();
    }

    @Override // com.google.android.gms.internal.ads.zzbkd
    public final void zzn() {
        this.zzb.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzbkd
    public final void zzo(Bundle bundle) {
        this.zzb.zzF(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbkd
    public final void zzp(Bundle bundle) {
        this.zzb.zzK(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzbkd
    public final boolean zzq(Bundle bundle) {
        return this.zzb.zzX(bundle);
    }
}
