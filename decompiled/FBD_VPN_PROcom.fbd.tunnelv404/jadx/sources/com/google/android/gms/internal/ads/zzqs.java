package com.google.android.gms.internal.ads;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import defpackage.AbstractC1321x18c67f64;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzqs {
    public final zzam zza;
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final int zze;
    public final int zzf;
    public final int zzg;
    public final int zzh;
    public final zzdq zzi;
    public final boolean zzj = false;
    public final boolean zzk = false;
    public final boolean zzl = false;

    public zzqs(zzam zzamVar, int i, int i2, int i3, int i4, int i5, int i6, int i7, zzdq zzdqVar, boolean z, boolean z2, boolean z3) {
        this.zza = zzamVar;
        this.zzb = i;
        this.zzc = i2;
        this.zzd = i3;
        this.zze = i4;
        this.zzf = i5;
        this.zzg = i6;
        this.zzh = i7;
        this.zzi = zzdqVar;
    }

    public final AudioTrack zza(zzk zzkVar, int i) {
        AudioTrack audioTrack;
        AudioTrack.Builder audioAttributes;
        AudioTrack.Builder audioFormat;
        AudioTrack.Builder transferMode;
        AudioTrack.Builder bufferSizeInBytes;
        AudioTrack.Builder sessionId;
        boolean z;
        AudioTrack.Builder offloadedPlayback;
        try {
            if (zzfy.zza >= 29) {
                AudioFormat zzv = zzfy.zzv(this.zze, this.zzf, this.zzg);
                AudioAttributes audioAttributes2 = zzkVar.zza().zza;
                AbstractC1321x18c67f64.m4373x1aebc6d9();
                audioAttributes = AbstractC1321x18c67f64.m4363x75d576dc().setAudioAttributes(audioAttributes2);
                audioFormat = audioAttributes.setAudioFormat(zzv);
                transferMode = audioFormat.setTransferMode(1);
                bufferSizeInBytes = transferMode.setBufferSizeInBytes(this.zzh);
                sessionId = bufferSizeInBytes.setSessionId(i);
                if (this.zzc == 1) {
                    z = true;
                } else {
                    z = false;
                }
                offloadedPlayback = sessionId.setOffloadedPlayback(z);
                audioTrack = offloadedPlayback.build();
            } else {
                audioTrack = new AudioTrack(zzkVar.zza().zza, zzfy.zzv(this.zze, this.zzf, this.zzg), this.zzh, 1, i);
            }
            int state = audioTrack.getState();
            if (state == 1) {
                return audioTrack;
            }
            try {
                audioTrack.release();
            } catch (Exception unused) {
            }
            throw new zzpx(state, this.zze, this.zzf, this.zzh, this.zza, zzc(), null);
        } catch (IllegalArgumentException e) {
            e = e;
            throw new zzpx(0, this.zze, this.zzf, this.zzh, this.zza, zzc(), e);
        } catch (UnsupportedOperationException e2) {
            e = e2;
            throw new zzpx(0, this.zze, this.zzf, this.zzh, this.zza, zzc(), e);
        }
    }

    public final zzpv zzb() {
        boolean z = this.zzc == 1;
        return new zzpv(this.zzg, this.zze, this.zzf, false, z, this.zzh);
    }

    public final boolean zzc() {
        return this.zzc == 1;
    }
}
