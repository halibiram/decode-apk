package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzcga {
    private final Context zza;
    private final zzcgl zzb;
    private final ViewGroup zzc;
    private zzcfz zzd;

    public zzcga(Context context, ViewGroup viewGroup, zzcjk zzcjkVar) {
        this.zza = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.zzc = viewGroup;
        this.zzb = zzcjkVar;
        this.zzd = null;
    }

    public final zzcfz zza() {
        return this.zzd;
    }

    @Nullable
    public final Integer zzb() {
        zzcfz zzcfzVar = this.zzd;
        if (zzcfzVar != null) {
            return zzcfzVar.zzl();
        }
        return null;
    }

    public final void zzc(int i, int i2, int i3, int i4) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{4663634973456961065L, -1375599327200581968L, -89005220811193793L, -4389413901630062690L, 4348268122986712399L, -8083633938729913781L, 5539896445854579111L, -2517773768228737995L}).toString());
        zzcfz zzcfzVar = this.zzd;
        if (zzcfzVar != null) {
            zzcfzVar.zzF(i, i2, i3, i4);
        }
    }

    public final void zzd(int i, int i2, int i3, int i4, int i5, boolean z, zzcgk zzcgkVar) {
        if (this.zzd != null) {
            return;
        }
        zzbgm.zza(this.zzb.zzm().zza(), this.zzb.zzk(), new ObfuscatedString(new long[]{-3792282096167659347L, 6118899506357214563L}).toString());
        Context context = this.zza;
        zzcgl zzcglVar = this.zzb;
        zzcfz zzcfzVar = new zzcfz(context, zzcglVar, i5, z, zzcglVar.zzm().zza(), zzcgkVar);
        this.zzd = zzcfzVar;
        this.zzc.addView(zzcfzVar, 0, new ViewGroup.LayoutParams(-1, -1));
        this.zzd.zzF(i, i2, i3, i4);
        this.zzb.zzz(false);
    }

    public final void zze() {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{4687509547239313034L, 8454982053149954599L, -475724419963574139L, -7846455372596592985L, 8280346429895438737L, 8226495962350981330L, -5459121367827348660L}).toString());
        zzcfz zzcfzVar = this.zzd;
        if (zzcfzVar != null) {
            zzcfzVar.zzo();
            this.zzc.removeView(this.zzd);
            this.zzd = null;
        }
    }

    public final void zzf() {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-4004460888806301621L, 5258063087436359992L, -143319625203996041L, 5030644466096381803L, -6988743329619089862L, -8656201501169775252L, 5433740424930610316L}).toString());
        zzcfz zzcfzVar = this.zzd;
        if (zzcfzVar != null) {
            zzcfzVar.zzu();
        }
    }

    public final void zzg(int i) {
        zzcfz zzcfzVar = this.zzd;
        if (zzcfzVar != null) {
            zzcfzVar.zzC(i);
        }
    }
}
