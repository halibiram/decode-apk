package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.panda912.muddy.ObfuscatedString;
import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
final class zzazd implements Application.ActivityLifecycleCallbacks {
    private final Application zza;
    private final WeakReference zzb;
    private boolean zzc = false;

    public zzazd(Application application, Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        this.zzb = new WeakReference(activityLifecycleCallbacks);
        this.zza = application;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        zza(new zzayv(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        zza(new zzazb(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        zza(new zzayy(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        zza(new zzayx(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        zza(new zzaza(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        zza(new zzayw(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        zza(new zzayz(this, activity));
    }

    public final void zza(zzazc zzazcVar) {
        try {
            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = (Application.ActivityLifecycleCallbacks) this.zzb.get();
            if (activityLifecycleCallbacks != null) {
                zzazcVar.zza(activityLifecycleCallbacks);
            } else if (!this.zzc) {
                this.zza.unregisterActivityLifecycleCallbacks(this);
                this.zzc = true;
            }
        } catch (Exception e) {
            zzcec.zzh(new ObfuscatedString(new long[]{8031492271844038785L, 800673546974149859L, -1299287386511650821L, 441682979809251362L, 8806358874668112003L, -130748625985201058L, 2442050440294007717L}).toString(), e);
        }
    }
}
