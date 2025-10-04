package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.util.concurrent.NumberedThreadFactory;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.ExecutorService;

/* loaded from: classes2.dex */
public final class zabj {
    private static final ExecutorService zaa = com.google.android.gms.internal.base.zap.zaa().zac(2, new NumberedThreadFactory(new ObfuscatedString(new long[]{-7227726982486543446L, -234548849244971014L, -2844275239142973764L}).toString()), 2);

    public static ExecutorService zaa() {
        return zaa;
    }
}
