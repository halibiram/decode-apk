package com.google.android.gms.internal.ads;

import android.media.AudioTrack;

/* loaded from: classes2.dex */
final class zzra extends AudioTrack.StreamEventCallback {
    final /* synthetic */ zzrd zza;
    final /* synthetic */ zzrb zzb;

    public zzra(zzrb zzrbVar, zzrd zzrdVar) {
        this.zza = zzrdVar;
        this.zzb = zzrbVar;
    }

    @Override // android.media.AudioTrack.StreamEventCallback
    public final void onDataRequest(AudioTrack audioTrack, int i) {
        if (audioTrack.equals(zzrd.zzD(this.zzb.zza))) {
            zzrd zzrdVar = this.zzb.zza;
            if (zzrd.zzE(zzrdVar) != null && zzrd.zzH(zzrdVar)) {
                zzrd.zzE(zzrdVar).zzb();
            }
        }
    }

    @Override // android.media.AudioTrack.StreamEventCallback
    public final void onTearDown(AudioTrack audioTrack) {
        if (audioTrack.equals(zzrd.zzD(this.zzb.zza))) {
            zzrd zzrdVar = this.zzb.zza;
            if (zzrd.zzE(zzrdVar) != null && zzrd.zzH(zzrdVar)) {
                zzrd.zzE(zzrdVar).zzb();
            }
        }
    }
}
