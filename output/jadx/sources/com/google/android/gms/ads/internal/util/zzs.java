package com.google.android.gms.ads.internal.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzs extends BroadcastReceiver {
    final /* synthetic */ zzt zza;

    public /* synthetic */ zzs(zzt zztVar, zzr zzrVar) {
        this.zza = zztVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (new ObfuscatedString(new long[]{1548743757061771905L, 5573857309611878843L, 2805116845966536788L, 3922095101554906920L, 2455324909874466352L, 7666747248467737011L}).toString().equals(intent.getAction())) {
            zzt.zze(this.zza, true);
            return;
        }
        if (new ObfuscatedString(new long[]{3226446418044126511L, -113426121313597776L, -1219949654003854850L, -981765433624017602L, -6843473656084535156L}).toString().equals(intent.getAction())) {
            zzt.zze(this.zza, false);
        }
    }
}
