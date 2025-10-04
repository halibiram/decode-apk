package com.google.android.gms.internal.ads;

import android.os.Handler;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes2.dex */
public final class zzrs {
    public final int zza;

    @Nullable
    public final zzur zzb;
    private final CopyOnWriteArrayList zzc;

    private zzrs(CopyOnWriteArrayList copyOnWriteArrayList, int i, @Nullable zzur zzurVar) {
        this.zzc = copyOnWriteArrayList;
        this.zza = 0;
        this.zzb = zzurVar;
    }

    @CheckResult
    public final zzrs zza(int i, @Nullable zzur zzurVar) {
        return new zzrs(this.zzc, 0, zzurVar);
    }

    public final void zzb(Handler handler, zzrt zzrtVar) {
        this.zzc.add(new zzrr(handler, zzrtVar));
    }

    public final void zzc(zzrt zzrtVar) {
        Iterator it = this.zzc.iterator();
        while (it.hasNext()) {
            zzrr zzrrVar = (zzrr) it.next();
            if (zzrrVar.zzb == zzrtVar) {
                this.zzc.remove(zzrrVar);
            }
        }
    }

    public zzrs() {
        this(new CopyOnWriteArrayList(), 0, null);
    }
}
