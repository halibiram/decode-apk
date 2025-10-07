package com.google.android.gms.ads.internal.util;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzftt;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbx {
    private HandlerThread zza = null;
    private Handler zzb = null;
    private int zzc = 0;
    private final Object zzd = new Object();

    public final Handler zza() {
        return this.zzb;
    }

    public final Looper zzb() {
        Looper looper;
        synchronized (this.zzd) {
            try {
                if (this.zzc == 0) {
                    if (this.zza == null) {
                        zze.zza(new ObfuscatedString(new long[]{-5043293592760986020L, -7217209900885049747L, 6778237982726433716L, -490090721267437166L, 3140847672836704490L}).toString());
                        HandlerThread handlerThread = new HandlerThread(new ObfuscatedString(new long[]{67256851766283838L, 1483295072326185992L, -8594402873794136888L}).toString());
                        this.zza = handlerThread;
                        handlerThread.start();
                        this.zzb = new zzftt(this.zza.getLooper());
                        zze.zza(new ObfuscatedString(new long[]{-3372360756105501095L, -1765766565911920677L, 2474424321213947709L, -1093268436997773725L}).toString());
                    } else {
                        zze.zza(new ObfuscatedString(new long[]{8417362808913630316L, 4490964585847344599L, -474652564540407549L, 3253927896004998227L, 2358533725922969899L}).toString());
                        this.zzd.notifyAll();
                    }
                } else {
                    Preconditions.checkNotNull(this.zza, new ObfuscatedString(new long[]{-5515034444865861866L, -2835974079072829450L, 1499550583588912169L, -6358609353241581198L, -6838247634029366830L, -5007148256428303656L, -6668135625214342146L, 1439882442389078359L, -8989399761157116186L}).toString());
                }
                this.zzc++;
                looper = this.zza.getLooper();
            } catch (Throwable th) {
                throw th;
            }
        }
        return looper;
    }
}
