package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class zzbz extends zzce {
    private final AtomicReference zza = new AtomicReference();
    private boolean zzb;

    public static final Object zze(Bundle bundle, Class cls) {
        Object obj;
        if (bundle == null || (obj = bundle.get(new ObfuscatedString(new long[]{-2520988602714653426L, 4916223898104181679L}).toString())) == null) {
            return null;
        }
        try {
            return cls.cast(obj);
        } catch (ClassCastException e) {
            Object[] objArr = {cls.getCanonicalName(), obj.getClass().getCanonicalName()};
            new ObfuscatedString(new long[]{5363187370903774891L, 4501519269707027209L}).toString();
            String.format(new ObfuscatedString(new long[]{6911889770274832690L, 7467365026040690070L, 3860309837760342618L, 7651924894477983379L, -4901877907056105973L, 4274631348368462315L, -2175316937562684734L, 268589337565920271L}).toString(), objArr);
            throw e;
        }
    }

    public final Bundle zzb(long j) {
        Bundle bundle;
        synchronized (this.zza) {
            if (!this.zzb) {
                try {
                    this.zza.wait(j);
                } catch (InterruptedException unused) {
                    return null;
                }
            }
            bundle = (Bundle) this.zza.get();
        }
        return bundle;
    }

    public final String zzc(long j) {
        return (String) zze(zzb(j), String.class);
    }

    @Override // com.google.android.gms.internal.measurement.zzcf
    public final void zzd(Bundle bundle) {
        synchronized (this.zza) {
            try {
                try {
                    this.zza.set(bundle);
                    this.zzb = true;
                } finally {
                    this.zza.notify();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
