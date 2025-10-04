package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zabc extends com.google.android.gms.internal.base.zaq {
    final /* synthetic */ zabe zaa;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zabc(zabe zabeVar, Looper looper) {
        super(looper);
        this.zaa = zabeVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i = message.what;
        if (i != 1) {
            if (i != 2) {
                new ObfuscatedString(new long[]{8336658616315594470L, -4136453499071242615L, -3074334386843505353L, -8071110535176541688L}).toString();
                new ObfuscatedString(new long[]{-917408127368338668L, 1989350177932987257L, -2877760050691121931L, -5155321990485130878L}).toString();
                return;
            } else {
                zabe.zai(this.zaa);
                return;
            }
        }
        zabe.zaj(this.zaa);
    }
}
