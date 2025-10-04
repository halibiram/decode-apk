package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.HandlerThread;
import android.os.Trace;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.panda912.muddy.ObfuscatedString;
import java.nio.ByteBuffer;

@RequiresApi(23)
/* loaded from: classes2.dex */
public final class zzsg implements zzsr {
    private final MediaCodec zza;
    private final zzsm zzb;
    private final zzss zzc;
    private boolean zzd;
    private int zze = 0;

    public /* synthetic */ zzsg(MediaCodec mediaCodec, HandlerThread handlerThread, zzss zzssVar, zzsf zzsfVar) {
        this.zza = mediaCodec;
        this.zzb = new zzsm(handlerThread);
        this.zzc = zzssVar;
    }

    public static /* synthetic */ String zzd(int i) {
        return zzr(i, new ObfuscatedString(new long[]{-6458990866033227743L, 8279050373583229542L, -8968850791636055096L, 5234462317393354791L, -8882584275609276367L, -5207710796426011850L}).toString());
    }

    public static /* synthetic */ String zze(int i) {
        return zzr(i, new ObfuscatedString(new long[]{-173047548524144922L, -4305289619807660341L, 2425549166291431793L, 559519134916108107L, -438545136601029492L, 8088336423514118219L}).toString());
    }

    public static /* synthetic */ void zzh(zzsg zzsgVar, MediaFormat mediaFormat, Surface surface, MediaCrypto mediaCrypto, int i) {
        zzsgVar.zzb.zzf(zzsgVar.zza);
        int i2 = zzfy.zza;
        Trace.beginSection(new ObfuscatedString(new long[]{6575606583885868920L, 5003784897229948469L, -6833936194856715471L}).toString());
        zzsgVar.zza.configure(mediaFormat, surface, (MediaCrypto) null, i);
        Trace.endSection();
        zzsgVar.zzc.zzh();
        Trace.beginSection(new ObfuscatedString(new long[]{6424648999206412361L, 2653473405847882361L, -2602819381885585528L}).toString());
        zzsgVar.zza.start();
        Trace.endSection();
        zzsgVar.zze = 1;
    }

    public static String zzr(int i, String str) {
        StringBuilder sb = new StringBuilder(str);
        if (i == 1) {
            sb.append(new ObfuscatedString(new long[]{-3015150845354217656L, -5725667179270069433L}).toString());
        } else if (i == 2) {
            sb.append(new ObfuscatedString(new long[]{24189572300565075L, 8721615006100756501L}).toString());
        } else {
            sb.append(new ObfuscatedString(new long[]{4545343358765160782L, 6443721827188088350L}).toString());
            sb.append(i);
            sb.append(new ObfuscatedString(new long[]{113087470877361596L, 2159632391706629621L}).toString());
        }
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzsr
    public final int zza() {
        this.zzc.zzc();
        return this.zzb.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzsr
    public final int zzb(MediaCodec.BufferInfo bufferInfo) {
        this.zzc.zzc();
        return this.zzb.zzb(bufferInfo);
    }

    @Override // com.google.android.gms.internal.ads.zzsr
    public final MediaFormat zzc() {
        return this.zzb.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzsr
    @Nullable
    public final ByteBuffer zzf(int i) {
        return this.zza.getInputBuffer(i);
    }

    @Override // com.google.android.gms.internal.ads.zzsr
    @Nullable
    public final ByteBuffer zzg(int i) {
        return this.zza.getOutputBuffer(i);
    }

    @Override // com.google.android.gms.internal.ads.zzsr
    public final void zzi() {
        this.zzc.zzb();
        this.zza.flush();
        this.zzb.zze();
        this.zza.start();
    }

    @Override // com.google.android.gms.internal.ads.zzsr
    public final void zzj(int i, int i2, int i3, long j, int i4) {
        this.zzc.zzd(i, 0, i3, j, i4);
    }

    @Override // com.google.android.gms.internal.ads.zzsr
    public final void zzk(int i, int i2, zzie zzieVar, long j, int i3) {
        this.zzc.zze(i, 0, zzieVar, j, 0);
    }

    @Override // com.google.android.gms.internal.ads.zzsr
    public final void zzl() {
        try {
            if (this.zze == 1) {
                this.zzc.zzg();
                this.zzb.zzg();
            }
            this.zze = 2;
            if (!this.zzd) {
                this.zza.release();
                this.zzd = true;
            }
        } catch (Throwable th) {
            if (!this.zzd) {
                this.zza.release();
                this.zzd = true;
            }
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsr
    public final void zzm(int i, long j) {
        this.zza.releaseOutputBuffer(i, j);
    }

    @Override // com.google.android.gms.internal.ads.zzsr
    public final void zzn(int i, boolean z) {
        this.zza.releaseOutputBuffer(i, false);
    }

    @Override // com.google.android.gms.internal.ads.zzsr
    public final void zzo(Surface surface) {
        this.zza.setOutputSurface(surface);
    }

    @Override // com.google.android.gms.internal.ads.zzsr
    public final void zzp(Bundle bundle) {
        this.zzc.zzf(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzsr
    public final void zzq(int i) {
        this.zza.setVideoScalingMode(i);
    }
}
