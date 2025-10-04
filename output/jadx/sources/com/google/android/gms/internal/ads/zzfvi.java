package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzfvi extends zzfvu {
    final /* synthetic */ zzfvc zza;
    final /* synthetic */ zzfvq zzb;
    final /* synthetic */ TaskCompletionSource zzc;
    final /* synthetic */ zzfvl zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfvi(zzfvl zzfvlVar, TaskCompletionSource taskCompletionSource, zzfvc zzfvcVar, zzfvq zzfvqVar, TaskCompletionSource taskCompletionSource2) {
        super(taskCompletionSource);
        this.zza = zzfvcVar;
        this.zzb = zzfvqVar;
        this.zzc = taskCompletionSource2;
        this.zzd = zzfvlVar;
    }

    /* JADX WARN: Type inference failed for: r1v7, types: [android.os.IInterface, com.google.android.gms.internal.ads.zzfum] */
    @Override // com.google.android.gms.internal.ads.zzfvu
    public final void zza() {
        zzfvt zzfvtVar;
        String str;
        String str2;
        try {
            ?? zze = this.zzd.zza.zze();
            if (zze == 0) {
                return;
            }
            zzfvc zzfvcVar = this.zza;
            str2 = this.zzd.zzd;
            Bundle bundle = new Bundle();
            bundle.putString(new ObfuscatedString(new long[]{-4503134394655316300L, 333274717433723648L, -1361966666887867799L}).toString(), zzfvcVar.zzb());
            bundle.putString(new ObfuscatedString(new long[]{7916492379731354849L, -450058802338019334L, -1269444950284166697L}).toString(), str2);
            bundle.putString(new ObfuscatedString(new long[]{-1944427907360288459L, -300437233817635178L}).toString(), zzfvcVar.zza());
            zze.zze(bundle, new zzfvk(this.zzd, this.zzb));
        } catch (RemoteException e) {
            zzfvl zzfvlVar = this.zzd;
            zzfvtVar = zzfvl.zzb;
            str = zzfvlVar.zzd;
            zzfvtVar.zzb(e, new ObfuscatedString(new long[]{8267205221332847973L, 39074716881045964L, 4029466127155144044L, 2733786233052071278L, -8742261668451753716L}).toString(), str);
            this.zzc.trySetException(new RuntimeException(e));
        }
    }
}
