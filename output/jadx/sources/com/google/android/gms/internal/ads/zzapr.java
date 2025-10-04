package com.google.android.gms.internal.ads;

import android.os.Handler;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzapr {
    private final Executor zza;

    public zzapr(Handler handler) {
        this.zza = new zzapp(this, handler);
    }

    public final void zza(zzaqa zzaqaVar, zzaqj zzaqjVar) {
        zzaqaVar.zzm(new ObfuscatedString(new long[]{-4109875815057012292L, 8846125486227788225L, 8975167733438943387L}).toString());
        ((zzapp) this.zza).zza.post(new zzapq(zzaqaVar, zzaqg.zza(zzaqjVar), null));
    }

    public final void zzb(zzaqa zzaqaVar, zzaqg zzaqgVar, Runnable runnable) {
        zzaqaVar.zzq();
        zzaqaVar.zzm(new ObfuscatedString(new long[]{1894949468895216607L, -5909456083608013092L, 7788111026809913196L}).toString());
        ((zzapp) this.zza).zza.post(new zzapq(zzaqaVar, zzaqgVar, runnable));
    }
}
