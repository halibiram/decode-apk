package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzfu implements zzew {

    @GuardedBy("messagePool")
    private static final List zza = new ArrayList(50);
    private final Handler zzb;

    public zzfu(Handler handler) {
        this.zzb = handler;
    }

    public static /* bridge */ /* synthetic */ void zzl(zzft zzftVar) {
        List list = zza;
        synchronized (list) {
            try {
                if (list.size() < 50) {
                    list.add(zzftVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static zzft zzm() {
        zzft zzftVar;
        List list = zza;
        synchronized (list) {
            try {
                if (list.isEmpty()) {
                    zzftVar = new zzft(null);
                } else {
                    zzftVar = (zzft) list.remove(list.size() - 1);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzftVar;
    }

    @Override // com.google.android.gms.internal.ads.zzew
    public final Looper zza() {
        return this.zzb.getLooper();
    }

    @Override // com.google.android.gms.internal.ads.zzew
    public final zzev zzb(int i) {
        Handler handler = this.zzb;
        zzft zzm = zzm();
        zzm.zzb(handler.obtainMessage(i), this);
        return zzm;
    }

    @Override // com.google.android.gms.internal.ads.zzew
    public final zzev zzc(int i, @Nullable Object obj) {
        Handler handler = this.zzb;
        zzft zzm = zzm();
        zzm.zzb(handler.obtainMessage(i, obj), this);
        return zzm;
    }

    @Override // com.google.android.gms.internal.ads.zzew
    public final zzev zzd(int i, int i2, int i3) {
        Handler handler = this.zzb;
        zzft zzm = zzm();
        zzm.zzb(handler.obtainMessage(1, i2, i3), this);
        return zzm;
    }

    @Override // com.google.android.gms.internal.ads.zzew
    public final void zze(@Nullable Object obj) {
        this.zzb.removeCallbacksAndMessages(null);
    }

    @Override // com.google.android.gms.internal.ads.zzew
    public final void zzf(int i) {
        this.zzb.removeMessages(i);
    }

    @Override // com.google.android.gms.internal.ads.zzew
    public final boolean zzg(int i) {
        return this.zzb.hasMessages(0);
    }

    @Override // com.google.android.gms.internal.ads.zzew
    public final boolean zzh(Runnable runnable) {
        return this.zzb.post(runnable);
    }

    @Override // com.google.android.gms.internal.ads.zzew
    public final boolean zzi(int i) {
        return this.zzb.sendEmptyMessage(i);
    }

    @Override // com.google.android.gms.internal.ads.zzew
    public final boolean zzj(int i, long j) {
        return this.zzb.sendEmptyMessageAtTime(2, j);
    }

    @Override // com.google.android.gms.internal.ads.zzew
    public final boolean zzk(zzev zzevVar) {
        return ((zzft) zzevVar).zzc(this.zzb);
    }
}
