package com.google.android.gms.common.internal;

import android.os.IBinder;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzx extends com.google.android.gms.internal.common.zza implements ICancelToken {
    public zzx(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{-8151042101887612296L, -7705232114404583490L, 1933420296561040884L, 827407853200126583L, 3548442220001948036L, 1676076239020713929L, -7150801897178375169L, 5551381182289972086L}).toString());
    }

    @Override // com.google.android.gms.common.internal.ICancelToken
    public final void cancel() {
        zzD(2, zza());
    }
}
