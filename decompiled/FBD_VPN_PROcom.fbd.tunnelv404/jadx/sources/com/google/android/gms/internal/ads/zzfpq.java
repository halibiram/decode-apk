package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzfpq extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (intent.getAction() == new ObfuscatedString(new long[]{-8372261862973479189L, -8571734738589235076L, -3241337290497611904L, -3683140900047413060L, 5628459914451730411L, -8660805044471188664L}).toString()) {
            int intExtra = intent.getIntExtra(new ObfuscatedString(new long[]{9067575970208080386L, -4777529523761424545L, -5841295952992673027L, -1564843764339146707L, 2854118010039303894L, -2866281253343338610L}).toString(), -1);
            if (intExtra == 0) {
                zzfpr.zza = 1;
            } else if (intExtra == 1) {
                zzfpr.zza = 2;
            }
        }
    }
}
