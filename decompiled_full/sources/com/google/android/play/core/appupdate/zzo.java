package com.google.android.play.core.appupdate;

import android.os.Bundle;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
class zzo extends com.google.android.play.core.appupdate.internal.zzg {
    final com.google.android.play.core.appupdate.internal.zzm zza;
    final TaskCompletionSource zzb;
    final /* synthetic */ zzr zzc;

    public zzo(zzr zzrVar, com.google.android.play.core.appupdate.internal.zzm zzmVar, TaskCompletionSource taskCompletionSource) {
        this.zzc = zzrVar;
        this.zza = zzmVar;
        this.zzb = taskCompletionSource;
    }

    @Override // com.google.android.play.core.appupdate.internal.zzh
    public void zzb(Bundle bundle) {
        this.zzc.zza.zzu(this.zzb);
        this.zza.zzd(new ObfuscatedString(new long[]{-6492772822653439026L, -1979408850280583462L, -4564239944145528952L}).toString(), new Object[0]);
    }

    @Override // com.google.android.play.core.appupdate.internal.zzh
    public void zzc(Bundle bundle) {
        this.zzc.zza.zzu(this.zzb);
        this.zza.zzd(new ObfuscatedString(new long[]{-7718008959757009972L, -5424878210288801639L, -1415179818187382997L}).toString(), new Object[0]);
    }
}
