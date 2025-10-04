package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zabh extends com.google.android.gms.internal.base.zaq {
    final /* synthetic */ zabi zaa;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zabh(zabi zabiVar, Looper looper) {
        super(looper);
        this.zaa = zabiVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i = message.what;
        if (i != 1) {
            if (i != 2) {
                new ObfuscatedString(new long[]{2615348452857077763L, -1106411344313234840L, -6275756230664615544L, 6192482676644746034L}).toString();
                new ObfuscatedString(new long[]{3515263646758987110L, -8503160628409836739L, 8055128828340655186L}).toString();
                return;
            }
            throw ((RuntimeException) message.obj);
        }
        ((zabg) message.obj).zab(this.zaa);
    }
}
