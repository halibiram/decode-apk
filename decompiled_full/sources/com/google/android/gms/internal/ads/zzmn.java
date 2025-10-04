package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.PowerManager;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzmn {

    @Nullable
    private final PowerManager zza;

    public zzmn(Context context) {
        this.zza = (PowerManager) context.getApplicationContext().getSystemService(new ObfuscatedString(new long[]{7301471718127199573L, -5453641179274616073L}).toString());
    }
}
