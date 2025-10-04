package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Api;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zabo implements Runnable {
    final /* synthetic */ zabp zaa;

    public zabo(zabp zabpVar) {
        this.zaa = zabpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Api.Client client;
        Api.Client client2;
        zabq zabqVar = this.zaa.zaa;
        client = zabqVar.zac;
        client2 = zabqVar.zac;
        client.disconnect(client2.getClass().getName().concat(new ObfuscatedString(new long[]{3063375330845548852L, -6531567823433666928L, 308617160627229344L, 6896046884862629436L, 6596360655006654047L, 4401531027820399304L, -1297553464071048911L}).toString()));
    }
}
