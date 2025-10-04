package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.initialization.AdapterStatus;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzee implements AdapterStatus {
    public zzee(zzej zzejVar) {
    }

    @Override // com.google.android.gms.ads.initialization.AdapterStatus
    public final String getDescription() {
        return new ObfuscatedString(new long[]{-2542400949370907156L, 4865437085831681554L, -2988173071326501859L, 4685305951594851372L, -3043463123345763311L, -2941800913217264822L, -7596205494818380507L, 4350694556305348887L, 4341096007604224495L, -7628028143403710649L, 8284697914819595343L, -6082083304528459809L, -6179096567720157313L, 2361345011629140174L, -4137224418281130447L, 138987924278368078L}).toString();
    }

    @Override // com.google.android.gms.ads.initialization.AdapterStatus
    public final AdapterStatus.State getInitializationState() {
        return AdapterStatus.State.READY;
    }

    @Override // com.google.android.gms.ads.initialization.AdapterStatus
    public final int getLatency() {
        return 0;
    }
}
