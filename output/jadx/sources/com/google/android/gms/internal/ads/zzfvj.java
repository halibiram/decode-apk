package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzfvj extends zzfvu {
    final /* synthetic */ zzfvs zza;
    final /* synthetic */ int zzb;
    final /* synthetic */ zzfvq zzc;
    final /* synthetic */ TaskCompletionSource zzd;
    final /* synthetic */ zzfvl zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfvj(zzfvl zzfvlVar, TaskCompletionSource taskCompletionSource, zzfvs zzfvsVar, int i, zzfvq zzfvqVar, TaskCompletionSource taskCompletionSource2) {
        super(taskCompletionSource);
        this.zza = zzfvsVar;
        this.zzb = i;
        this.zzc = zzfvqVar;
        this.zzd = taskCompletionSource2;
        this.zze = zzfvlVar;
    }

    /* JADX WARN: Type inference failed for: r2v8, types: [android.os.IInterface, com.google.android.gms.internal.ads.zzfum] */
    @Override // com.google.android.gms.internal.ads.zzfvu
    public final void zza() {
        zzfvt zzfvtVar;
        String str;
        String str2;
        try {
            ?? zze = this.zze.zza.zze();
            if (zze == 0) {
                return;
            }
            zzfvs zzfvsVar = this.zza;
            str2 = this.zze.zzd;
            int i = this.zzb;
            Bundle bundle = new Bundle();
            bundle.putString(new ObfuscatedString(new long[]{2631215871770093944L, 5139129207205687668L, -8783351537530237840L}).toString(), zzfvsVar.zzb());
            bundle.putInt(new ObfuscatedString(new long[]{-8460626547343057018L, 2696055911625851339L, 8936946123422068180L}).toString(), i);
            bundle.putString(new ObfuscatedString(new long[]{-4191462238930712010L, 9070658984570988317L, -1934943077164007637L}).toString(), str2);
            bundle.putString(new ObfuscatedString(new long[]{-3282104438094996807L, -4352723649688721195L}).toString(), zzfvsVar.zza());
            zze.zzg(bundle, new zzfvk(this.zze, this.zzc));
        } catch (RemoteException e) {
            int i2 = this.zzb;
            zzfvtVar = zzfvl.zzb;
            Integer valueOf = Integer.valueOf(i2);
            str = this.zze.zzd;
            zzfvtVar.zzb(e, new ObfuscatedString(new long[]{-6826004155914715412L, 378177613667781071L, 2079224751030278857L, 647906049628716304L, -5364038904144709294L, -5339362274442509705L, 8592550519741360862L}).toString(), valueOf, str);
            this.zzd.trySetException(new RuntimeException(e));
        }
    }
}
