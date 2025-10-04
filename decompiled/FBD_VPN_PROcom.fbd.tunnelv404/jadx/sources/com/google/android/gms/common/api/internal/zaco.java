package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.util.concurrent.NumberedThreadFactory;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.ExecutorService;

/* loaded from: classes2.dex */
public final class zaco {
    private static final ExecutorService zaa = com.google.android.gms.internal.base.zap.zaa().zaa(new NumberedThreadFactory(new ObfuscatedString(new long[]{-8856517370923845162L, 431945928214340234L, -4101607315950964195L}).toString()), 1);

    public static ExecutorService zaa() {
        return zaa;
    }
}
