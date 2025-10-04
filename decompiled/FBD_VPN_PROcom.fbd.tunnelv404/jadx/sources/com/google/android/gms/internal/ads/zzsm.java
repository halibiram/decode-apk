package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.HandlerThread;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.collection.CircularIntArray;
import java.util.ArrayDeque;

/* JADX INFO: Access modifiers changed from: package-private */
@RequiresApi(23)
/* loaded from: classes2.dex */
public final class zzsm extends MediaCodec.Callback {
    private final HandlerThread zzb;
    private Handler zzc;

    @Nullable
    @GuardedBy("lock")
    private MediaFormat zzh;

    @Nullable
    @GuardedBy("lock")
    private MediaFormat zzi;

    @Nullable
    @GuardedBy("lock")
    private MediaCodec.CodecException zzj;

    @Nullable
    @GuardedBy("lock")
    private MediaCodec.CryptoException zzk;

    @GuardedBy("lock")
    private long zzl;

    @GuardedBy("lock")
    private boolean zzm;

    @Nullable
    @GuardedBy("lock")
    private IllegalStateException zzn;
    private final Object zza = new Object();

    @GuardedBy("lock")
    private final CircularIntArray zzd = new CircularIntArray();

    @GuardedBy("lock")
    private final CircularIntArray zze = new CircularIntArray();

    @GuardedBy("lock")
    private final ArrayDeque zzf = new ArrayDeque();

    @GuardedBy("lock")
    private final ArrayDeque zzg = new ArrayDeque();

    public zzsm(HandlerThread handlerThread) {
        this.zzb = handlerThread;
    }

    public static /* synthetic */ void zzd(zzsm zzsmVar) {
        synchronized (zzsmVar.zza) {
            try {
                if (zzsmVar.zzm) {
                    return;
                }
                long j = zzsmVar.zzl - 1;
                zzsmVar.zzl = j;
                if (j > 0) {
                    return;
                }
                if (j < 0) {
                    IllegalStateException illegalStateException = new IllegalStateException();
                    synchronized (zzsmVar.zza) {
                        zzsmVar.zzn = illegalStateException;
                    }
                    return;
                }
                zzsmVar.zzi();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @GuardedBy("lock")
    private final void zzh(MediaFormat mediaFormat) {
        this.zze.addLast(-2);
        this.zzg.add(mediaFormat);
    }

    @GuardedBy("lock")
    private final void zzi() {
        if (!this.zzg.isEmpty()) {
            this.zzi = (MediaFormat) this.zzg.getLast();
        }
        this.zzd.clear();
        this.zze.clear();
        this.zzf.clear();
        this.zzg.clear();
    }

    @GuardedBy("lock")
    private final void zzj() {
        IllegalStateException illegalStateException = this.zzn;
        if (illegalStateException == null) {
            MediaCodec.CodecException codecException = this.zzj;
            if (codecException == null) {
                MediaCodec.CryptoException cryptoException = this.zzk;
                if (cryptoException == null) {
                    return;
                }
                this.zzk = null;
                throw cryptoException;
            }
            this.zzj = null;
            throw codecException;
        }
        this.zzn = null;
        throw illegalStateException;
    }

    @GuardedBy("lock")
    private final boolean zzk() {
        return this.zzl > 0 || this.zzm;
    }

    @Override // android.media.MediaCodec.Callback
    public final void onCryptoError(MediaCodec mediaCodec, MediaCodec.CryptoException cryptoException) {
        synchronized (this.zza) {
            this.zzk = cryptoException;
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onError(MediaCodec mediaCodec, MediaCodec.CodecException codecException) {
        synchronized (this.zza) {
            this.zzj = codecException;
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onInputBufferAvailable(MediaCodec mediaCodec, int i) {
        synchronized (this.zza) {
            this.zzd.addLast(i);
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onOutputBufferAvailable(MediaCodec mediaCodec, int i, MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.zza) {
            try {
                MediaFormat mediaFormat = this.zzi;
                if (mediaFormat != null) {
                    zzh(mediaFormat);
                    this.zzi = null;
                }
                this.zze.addLast(i);
                this.zzf.add(bufferInfo);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        synchronized (this.zza) {
            zzh(mediaFormat);
            this.zzi = null;
        }
    }

    public final int zza() {
        synchronized (this.zza) {
            try {
                zzj();
                int i = -1;
                if (zzk()) {
                    return -1;
                }
                if (!this.zzd.isEmpty()) {
                    i = this.zzd.popFirst();
                }
                return i;
            } finally {
            }
        }
    }

    public final int zzb(MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.zza) {
            try {
                zzj();
                if (zzk()) {
                    return -1;
                }
                if (this.zze.isEmpty()) {
                    return -1;
                }
                int popFirst = this.zze.popFirst();
                if (popFirst >= 0) {
                    zzek.zzb(this.zzh);
                    MediaCodec.BufferInfo bufferInfo2 = (MediaCodec.BufferInfo) this.zzf.remove();
                    bufferInfo.set(bufferInfo2.offset, bufferInfo2.size, bufferInfo2.presentationTimeUs, bufferInfo2.flags);
                } else if (popFirst == -2) {
                    this.zzh = (MediaFormat) this.zzg.remove();
                    popFirst = -2;
                }
                return popFirst;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final MediaFormat zzc() {
        MediaFormat mediaFormat;
        synchronized (this.zza) {
            try {
                mediaFormat = this.zzh;
                if (mediaFormat == null) {
                    throw new IllegalStateException();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return mediaFormat;
    }

    public final void zze() {
        synchronized (this.zza) {
            this.zzl++;
            Handler handler = this.zzc;
            int i = zzfy.zza;
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzsl
                @Override // java.lang.Runnable
                public final void run() {
                    zzsm.zzd(zzsm.this);
                }
            });
        }
    }

    public final void zzf(MediaCodec mediaCodec) {
        boolean z;
        if (this.zzc == null) {
            z = true;
        } else {
            z = false;
        }
        zzek.zzf(z);
        this.zzb.start();
        Handler handler = new Handler(this.zzb.getLooper());
        mediaCodec.setCallback(this, handler);
        this.zzc = handler;
    }

    public final void zzg() {
        synchronized (this.zza) {
            this.zzm = true;
            this.zzb.quit();
            zzi();
        }
    }
}
