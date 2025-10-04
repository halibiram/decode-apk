package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes2.dex */
public final class zzfn {

    @Nullable
    private static zzfn zza;
    private final Handler zzb = new Handler(Looper.getMainLooper());
    private final CopyOnWriteArrayList zzc = new CopyOnWriteArrayList();
    private final Object zzd = new Object();

    @GuardedBy("networkTypeLock")
    private int zze = 0;

    private zzfn(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(new ObfuscatedString(new long[]{7247585622479283920L, -2345024591774850734L, 1367355995604848724L, 3764734796604103724L, -6528312324792021288L, -5618886907708114268L}).toString());
        context.registerReceiver(new zzfm(this, null), intentFilter);
    }

    public static synchronized zzfn zzb(Context context) {
        zzfn zzfnVar;
        synchronized (zzfn.class) {
            try {
                if (zza == null) {
                    zza = new zzfn(context);
                }
                zzfnVar = zza;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzfnVar;
    }

    public static /* synthetic */ void zzc(zzfn zzfnVar, int i) {
        synchronized (zzfnVar.zzd) {
            try {
                if (zzfnVar.zze == i) {
                    return;
                }
                zzfnVar.zze = i;
                Iterator it = zzfnVar.zzc.iterator();
                while (it.hasNext()) {
                    WeakReference weakReference = (WeakReference) it.next();
                    zzyy zzyyVar = (zzyy) weakReference.get();
                    if (zzyyVar != null) {
                        zzyyVar.zza.zzk(i);
                    } else {
                        zzfnVar.zzc.remove(weakReference);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final int zza() {
        int i;
        synchronized (this.zzd) {
            i = this.zze;
        }
        return i;
    }

    public final void zzd(final zzyy zzyyVar) {
        Iterator it = this.zzc.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            if (weakReference.get() == null) {
                this.zzc.remove(weakReference);
            }
        }
        this.zzc.add(new WeakReference(zzyyVar));
        this.zzb.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfj
            @Override // java.lang.Runnable
            public final void run() {
                zzyyVar.zza.zzk(zzfn.this.zza());
            }
        });
    }
}
