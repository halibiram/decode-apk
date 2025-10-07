package com.google.android.play.core.appupdate.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzw implements ServiceConnection {
    final /* synthetic */ zzx zza;

    public /* synthetic */ zzw(zzx zzxVar, zzv zzvVar) {
        this.zza = zzxVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        zzx.zzf(this.zza).zzd(new ObfuscatedString(new long[]{-8134781260800342951L, 3943353496667699673L, -4253001959874856346L, 5498674216349581272L, 3205596030178763329L, 8126769824737570098L, 8520226611303743484L}).toString(), componentName);
        this.zza.zzc().post(new zzt(this, iBinder));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        zzx.zzf(this.zza).zzd(new ObfuscatedString(new long[]{-7203745474590978107L, -1415746379493913618L, 2634769943310739609L, 3937583773553288884L, 4037234818201798634L, -8541067476535978923L, -4796017414460860296L}).toString(), componentName);
        this.zza.zzc().post(new zzu(this));
    }
}
