package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzcua extends zzbai {
    private final zzctz zza;
    private final com.google.android.gms.ads.internal.client.zzbu zzb;
    private final zzfck zzc;
    private boolean zzd = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzaG)).booleanValue();
    private final zzdwf zze;

    public zzcua(zzctz zzctzVar, com.google.android.gms.ads.internal.client.zzbu zzbuVar, zzfck zzfckVar, zzdwf zzdwfVar) {
        this.zza = zzctzVar;
        this.zzb = zzbuVar;
        this.zzc = zzfckVar;
        this.zze = zzdwfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbaj
    public final com.google.android.gms.ads.internal.client.zzbu zze() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbaj
    @Nullable
    public final com.google.android.gms.ads.internal.client.zzdn zzf() {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzgN)).booleanValue()) {
            return null;
        }
        return this.zza.zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzbaj
    public final void zzg(boolean z) {
        this.zzd = z;
    }

    @Override // com.google.android.gms.internal.ads.zzbaj
    public final void zzh(com.google.android.gms.ads.internal.client.zzdg zzdgVar) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-6633707197462156206L, -7961719595252294873L, 23349097419757958L, -4915216004513772409L, 9110877886466944805L, -174977243340887263L, -8282247574226890533L, 2739906208697853230L, 8464071555113178629L}).toString());
        if (this.zzc != null) {
            try {
                if (!zzdgVar.zzf()) {
                    this.zze.zze();
                }
            } catch (RemoteException e) {
                zzcec.zzf(new ObfuscatedString(new long[]{-2826807175895799455L, 5461142711012536377L, -3408701197973355865L, -2067517969418553206L, 8743589123305053809L, 6486933388705943267L, -4369983803728759486L, -6967787701246169912L, -5963838963400227944L}).toString(), e);
            }
            this.zzc.zzn(zzdgVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbaj
    public final void zzi(IObjectWrapper iObjectWrapper, zzbaq zzbaqVar) {
        try {
            this.zzc.zzq(zzbaqVar);
            this.zza.zzd((Activity) ObjectWrapper.unwrap(iObjectWrapper), zzbaqVar, this.zzd);
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{4286831843506939308L, 8506513472265484134L, -4777021574938536970L, -2738141208544350111L, 2571785506563916693L, -6514807097989630507L}).toString(), e);
        }
    }
}
