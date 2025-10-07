package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.wifi.WifiManager;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzmo {

    @Nullable
    private final WifiManager zza;

    public zzmo(Context context) {
        this.zza = (WifiManager) context.getApplicationContext().getSystemService(new ObfuscatedString(new long[]{-6679088045778723089L, -4381003447794981146L}).toString());
    }
}
