package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzij extends BroadcastReceiver implements Runnable {
    final /* synthetic */ zzil zza;
    private final zzik zzb;
    private final Handler zzc;

    public zzij(zzil zzilVar, Handler handler, zzik zzikVar) {
        this.zza = zzilVar;
        this.zzc = handler;
        this.zzb = zzikVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (new ObfuscatedString(new long[]{6846197003611899607L, -5215761836590425840L, 5792469374700359848L, 6804393489013618826L, 4868446914453456836L, 5282085339409790772L}).toString().equals(intent.getAction())) {
            this.zzc.post(this);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
    }
}
