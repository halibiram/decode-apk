package com.google.android.play.core.review;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.panda912.muddy.ObfuscatedString;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzf extends com.google.android.play.core.review.internal.zzj {
    final /* synthetic */ TaskCompletionSource zza;
    final /* synthetic */ zzi zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzf(zzi zziVar, TaskCompletionSource taskCompletionSource, TaskCompletionSource taskCompletionSource2) {
        super(taskCompletionSource);
        this.zza = taskCompletionSource2;
        this.zzb = zziVar;
    }

    @Override // com.google.android.play.core.review.internal.zzj
    public final void zza() {
        com.google.android.play.core.review.internal.zzi zziVar;
        String str;
        String str2;
        String str3;
        try {
            com.google.android.play.core.review.internal.zzf zzfVar = (com.google.android.play.core.review.internal.zzf) this.zzb.zza.zze();
            str2 = this.zzb.zzc;
            Bundle bundle = new Bundle();
            Map zza = zzj.zza();
            bundle.putInt(new ObfuscatedString(new long[]{855477324503955981L, -4105682343051770176L, 4439647937092877284L, 5727245824429587562L}).toString(), ((Integer) zza.get(new ObfuscatedString(new long[]{-7394840520048333059L, 4951899166493157677L}).toString())).intValue());
            if (zza.containsKey(new ObfuscatedString(new long[]{-4361192508496342918L, 9112007958814692432L}).toString())) {
                bundle.putInt(new ObfuscatedString(new long[]{6336594344329033993L, 4613335215594133442L, 3842243348780861871L, -6711963497479988952L}).toString(), ((Integer) zza.get(new ObfuscatedString(new long[]{-4579685142920450755L, -5606730718052716450L}).toString())).intValue());
            }
            if (zza.containsKey(new ObfuscatedString(new long[]{7313495489520228607L, -5318302579923610862L}).toString())) {
                bundle.putInt(new ObfuscatedString(new long[]{-2603240620796171054L, -2671259044735305057L, -1221932858949068394L, 220787131221950484L}).toString(), ((Integer) zza.get(new ObfuscatedString(new long[]{2329418127707855375L, -607739929760044478L}).toString())).intValue());
            }
            zzi zziVar2 = this.zzb;
            TaskCompletionSource taskCompletionSource = this.zza;
            str3 = zziVar2.zzc;
            zzfVar.zzc(str2, bundle, new zzh(zziVar2, taskCompletionSource, str3));
        } catch (RemoteException e) {
            zzi zziVar3 = this.zzb;
            zziVar = zzi.zzb;
            str = zziVar3.zzc;
            zziVar.zzb(e, new ObfuscatedString(new long[]{8339656432858379611L, 5141732283219966526L, 2587001001541205851L, -3013790846711519478L, -8470207479854673885L, -8605737244662374148L}).toString(), str);
            this.zza.trySetException(new RuntimeException(e));
        }
    }
}
