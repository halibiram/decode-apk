package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.annotation.NonNull;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzawc extends BroadcastReceiver {
    private boolean zza = true;

    public zzawc(@NonNull Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(new ObfuscatedString(new long[]{-7659674727879217206L, 5905760665144826567L, 7424982014108253131L, -15848149541607821L, -4997297681902444332L, -6923560713144440315L}).toString());
        intentFilter.addAction(new ObfuscatedString(new long[]{-6620607477717879903L, -3228038802871542590L, -5358860084366206080L, 2297415474819946164L, -8285816174660625807L}).toString());
        context.registerReceiver(this, intentFilter);
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (new ObfuscatedString(new long[]{-3057694251256033346L, 6873579112222193195L, -560482012234319137L, 24944797980914950L, 5395969320989532755L, 1608927141369636953L}).toString().equals(intent.getAction())) {
            this.zza = true;
            return;
        }
        if (new ObfuscatedString(new long[]{-2110885279793809284L, -6054575593009029870L, 7608963327611525817L, 6697063150839522331L, 8919431795338922071L}).toString().equals(intent.getAction())) {
            this.zza = false;
        }
    }

    public final boolean zza() {
        return this.zza;
    }
}
