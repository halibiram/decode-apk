package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzaav implements Choreographer.FrameCallback, Handler.Callback {
    private static final zzaav zzb = new zzaav();
    public volatile long zza = -9223372036854775807L;
    private final Handler zzc;
    private final HandlerThread zzd;
    private Choreographer zze;
    private int zzf;

    private zzaav() {
        HandlerThread handlerThread = new HandlerThread(new ObfuscatedString(new long[]{-8231181770795883988L, 1315930187220770817L, -1812565309706132959L, -4277608794199074037L, -3478718751953334092L, -4053177495121296934L}).toString());
        this.zzd = handlerThread;
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper(), this);
        this.zzc = handler;
        handler.sendEmptyMessage(0);
    }

    public static zzaav zza() {
        return zzb;
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j) {
        this.zza = j;
        Choreographer choreographer = this.zze;
        choreographer.getClass();
        choreographer.postFrameCallbackDelayed(this, 500L);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    return false;
                }
                Choreographer choreographer = this.zze;
                if (choreographer != null) {
                    int i2 = this.zzf - 1;
                    this.zzf = i2;
                    if (i2 == 0) {
                        choreographer.removeFrameCallback(this);
                        this.zza = -9223372036854775807L;
                    }
                }
                return true;
            }
            Choreographer choreographer2 = this.zze;
            if (choreographer2 != null) {
                int i3 = this.zzf + 1;
                this.zzf = i3;
                if (i3 == 1) {
                    choreographer2.postFrameCallback(this);
                }
            }
            return true;
        }
        try {
            this.zze = Choreographer.getInstance();
        } catch (RuntimeException e) {
            zzff.zzg(new ObfuscatedString(new long[]{-7450827235726498129L, 6098210435785038635L, -3071785605087371371L, 5474780442401959389L}).toString(), new ObfuscatedString(new long[]{-4722759271015457477L, 2657942362686423173L, -2796137370353546852L, 3974234673165600241L, -518265061907254942L, 2942302565139470980L, 8980538247341172149L}).toString(), e);
        }
        return true;
    }

    public final void zzb() {
        this.zzc.sendEmptyMessage(1);
    }

    public final void zzc() {
        this.zzc.sendEmptyMessage(2);
    }
}
