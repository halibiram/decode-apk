package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.os.Trace;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.io.IOException;
import java.util.concurrent.ExecutorService;

/* JADX INFO: Access modifiers changed from: package-private */
@SuppressLint({"HandlerLeak"})
/* loaded from: classes2.dex */
public final class zzzf extends Handler implements Runnable {
    final /* synthetic */ zzzk zza;
    private final zzzg zzb;
    private final long zzc;

    @Nullable
    private zzzc zzd;

    @Nullable
    private IOException zze;
    private int zzf;

    @Nullable
    private Thread zzg;
    private boolean zzh;
    private volatile boolean zzi;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzzf(zzzk zzzkVar, Looper looper, zzzg zzzgVar, zzzc zzzcVar, int i, long j) {
        super(looper);
        this.zza = zzzkVar;
        this.zzb = zzzgVar;
        this.zzd = zzzcVar;
        this.zzc = j;
    }

    private final void zzd() {
        ExecutorService executorService;
        zzzf zzzfVar;
        this.zze = null;
        zzzk zzzkVar = this.zza;
        executorService = zzzkVar.zze;
        zzzfVar = zzzkVar.zzf;
        zzzfVar.getClass();
        executorService.execute(zzzfVar);
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i;
        int i2;
        int i3;
        long j;
        long min;
        if (!this.zzi) {
            int i4 = message.what;
            if (i4 == 0) {
                zzd();
                return;
            }
            if (i4 != 3) {
                this.zza.zzf = null;
                long j2 = this.zzc;
                long elapsedRealtime = SystemClock.elapsedRealtime();
                long j3 = elapsedRealtime - j2;
                zzzc zzzcVar = this.zzd;
                zzzcVar.getClass();
                if (this.zzh) {
                    zzzcVar.zzJ(this.zzb, elapsedRealtime, j3, false);
                    return;
                }
                int i5 = message.what;
                if (i5 != 1) {
                    if (i5 == 2) {
                        IOException iOException = (IOException) message.obj;
                        this.zze = iOException;
                        int i6 = this.zzf + 1;
                        this.zzf = i6;
                        zzze zzu = zzzcVar.zzu(this.zzb, elapsedRealtime, j3, iOException, i6);
                        i = zzu.zza;
                        if (i == 3) {
                            this.zza.zzg = this.zze;
                            return;
                        }
                        i2 = zzu.zza;
                        if (i2 != 2) {
                            i3 = zzu.zza;
                            if (i3 == 1) {
                                this.zzf = 1;
                            }
                            j = zzu.zzb;
                            if (j != -9223372036854775807L) {
                                min = zzu.zzb;
                            } else {
                                min = Math.min((this.zzf - 1) * 1000, 5000);
                            }
                            zzc(min);
                            return;
                        }
                        return;
                    }
                    return;
                }
                try {
                    zzzcVar.zzK(this.zzb, elapsedRealtime, j3);
                    return;
                } catch (RuntimeException e) {
                    zzff.zzd(new ObfuscatedString(new long[]{-5970540176290261148L, 1492427116839568925L}).toString(), new ObfuscatedString(new long[]{8509456328384512368L, -7987517563228371749L, 8813556547493798083L, -2623341674188179096L, 907773792596062163L, 3047537266276411663L, 8777467526576527044L}).toString(), e);
                    this.zza.zzg = new zzzj(e);
                    return;
                }
            }
            throw ((Error) message.obj);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        try {
            synchronized (this) {
                z = this.zzh;
                this.zzg = Thread.currentThread();
            }
            if (!z) {
                String str = new ObfuscatedString(new long[]{-6796603871860694209L, -5139072968542331169L}).toString() + this.zzb.getClass().getSimpleName();
                int i = zzfy.zza;
                Trace.beginSection(str);
                try {
                    this.zzb.zzh();
                    Trace.endSection();
                } catch (Throwable th) {
                    Trace.endSection();
                    throw th;
                }
            }
            synchronized (this) {
                this.zzg = null;
                Thread.interrupted();
            }
            if (!this.zzi) {
                sendEmptyMessage(1);
            }
        } catch (IOException e) {
            if (!this.zzi) {
                obtainMessage(2, e).sendToTarget();
            }
        } catch (Error e2) {
            if (!this.zzi) {
                zzff.zzd(new ObfuscatedString(new long[]{7219784506400142134L, 5029493528690637649L}).toString(), new ObfuscatedString(new long[]{2108057691977133950L, -9219000458331043128L, -3569580652302650689L, -2611852563952588372L, 68193744039619909L}).toString(), e2);
                obtainMessage(3, e2).sendToTarget();
            }
            throw e2;
        } catch (Exception e3) {
            if (!this.zzi) {
                zzff.zzd(new ObfuscatedString(new long[]{-4161109075213461893L, -1933603582657084051L}).toString(), new ObfuscatedString(new long[]{-5134925517940995575L, -4336832483404163524L, -1693223429723441984L, -5142014601609295683L, 2629118597429550415L, -4130586631061983608L}).toString(), e3);
                obtainMessage(2, new zzzj(e3)).sendToTarget();
            }
        } catch (OutOfMemoryError e4) {
            if (!this.zzi) {
                zzff.zzd(new ObfuscatedString(new long[]{-7328196073421041618L, -3102316189527122888L}).toString(), new ObfuscatedString(new long[]{-1140906845298805597L, 1479722142317338636L, 9068525335209456031L, -5780781513247859048L, 4658498205143040754L}).toString(), e4);
                obtainMessage(2, new zzzj(e4)).sendToTarget();
            }
        }
    }

    public final void zza(boolean z) {
        this.zzi = z;
        this.zze = null;
        if (hasMessages(0)) {
            this.zzh = true;
            removeMessages(0);
            if (!z) {
                sendEmptyMessage(1);
            }
        } else {
            synchronized (this) {
                try {
                    this.zzh = true;
                    this.zzb.zzg();
                    Thread thread = this.zzg;
                    if (thread != null) {
                        thread.interrupt();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        if (z) {
            this.zza.zzf = null;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            zzzc zzzcVar = this.zzd;
            zzzcVar.getClass();
            zzzcVar.zzJ(this.zzb, elapsedRealtime, elapsedRealtime - this.zzc, true);
            this.zzd = null;
        }
    }

    public final void zzb(int i) {
        IOException iOException = this.zze;
        if (iOException != null && this.zzf > i) {
            throw iOException;
        }
    }

    public final void zzc(long j) {
        zzzf zzzfVar;
        boolean z;
        zzzfVar = this.zza.zzf;
        if (zzzfVar == null) {
            z = true;
        } else {
            z = false;
        }
        zzek.zzf(z);
        this.zza.zzf = this;
        if (j > 0) {
            sendEmptyMessageDelayed(0, j);
        } else {
            zzd();
        }
    }
}
