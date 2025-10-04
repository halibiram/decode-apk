package com.google.android.gms.ads.internal.client;

import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzbpk;
import com.google.android.gms.internal.ads.zzbsv;
import com.google.android.gms.internal.ads.zzcdv;
import com.google.android.gms.internal.ads.zzcec;
import com.panda912.muddy.ObfuscatedString;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzey extends zzcn {
    private zzbpk zza;

    public final /* synthetic */ void zzb() {
        zzbpk zzbpkVar = this.zza;
        if (zzbpkVar != null) {
            try {
                zzbpkVar.zzb(Collections.emptyList());
            } catch (RemoteException e) {
                zzcec.zzk(new ObfuscatedString(new long[]{-5579307535213106644L, -4789191864305628248L, -2307311361188204108L, 8263177352029760865L, -7998923045589783059L, -6738065193547268721L}).toString(), e);
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final float zze() {
        return 1.0f;
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final String zzf() {
        return new ObfuscatedString(new long[]{-3850282414745348402L}).toString();
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final List zzg() {
        return Collections.emptyList();
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzh(@Nullable String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzi() {
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzj(boolean z) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzk() {
        zzcec.zzg(new ObfuscatedString(new long[]{7066795381739485793L, 6096470823158269660L, -8223842006514894809L, 7453722058133544461L, 1677206121526906544L, -515791249606160042L, 536855081517119541L, 7471962014932795760L, -9100709403713095941L, 6792483968997731544L, -6587972384199429572L, -4565116766081207671L, 3820106445140933478L, 1235837037892237875L}).toString());
        zzcdv.zza.post(new Runnable() { // from class: com.google.android.gms.ads.internal.client.zzex
            @Override // java.lang.Runnable
            public final void run() {
                zzey.this.zzb();
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzl(@Nullable String str, IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzm(zzda zzdaVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzn(IObjectWrapper iObjectWrapper, String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzo(zzbsv zzbsvVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzp(boolean z) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzq(float f) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzr(String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzs(zzbpk zzbpkVar) {
        this.zza = zzbpkVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzt(String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzu(zzff zzffVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final boolean zzv() {
        return false;
    }
}
