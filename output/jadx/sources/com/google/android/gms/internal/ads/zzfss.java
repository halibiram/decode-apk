package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzfss {
    final /* synthetic */ zzfst zza;
    private final byte[] zzb;
    private int zzc;
    private int zzd;

    public /* synthetic */ zzfss(zzfst zzfstVar, byte[] bArr, zzfsr zzfsrVar) {
        this.zza = zzfstVar;
        this.zzb = bArr;
    }

    public final zzfss zza(int i) {
        this.zzd = i;
        return this;
    }

    public final zzfss zzb(int i) {
        this.zzc = i;
        return this;
    }

    public final synchronized void zzc() {
        try {
            zzfst zzfstVar = this.zza;
            if (zzfstVar.zzb) {
                zzfstVar.zza.zzj(this.zzb);
                this.zza.zza.zzi(this.zzc);
                this.zza.zza.zzg(this.zzd);
                this.zza.zza.zzh(null);
                this.zza.zza.zzf();
            }
        } catch (RemoteException unused) {
            new ObfuscatedString(new long[]{-3508162552328405854L, -1573401232549226275L}).toString();
            new ObfuscatedString(new long[]{4396576209189767891L, -6370322677542062122L, 2136160275973927626L, -7987726512500910841L}).toString();
        }
    }
}
