package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
public final class zzawq implements View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, Application.ActivityLifecycleCallbacks {
    private static final Handler zza = new Handler(Looper.getMainLooper());
    private final Context zzb;
    private Application zzc;

    @Nullable
    private final PowerManager zzd;

    @Nullable
    private final KeyguardManager zze;
    private BroadcastReceiver zzf;
    private final zzawc zzg;
    private WeakReference zzh;

    @Nullable
    private WeakReference zzi;
    private zzavy zzj;
    private byte zzk = -1;
    private int zzl = -1;
    private long zzm = -3;

    public zzawq(Context context, zzawc zzawcVar) {
        Context applicationContext = context.getApplicationContext();
        this.zzb = applicationContext;
        this.zzg = zzawcVar;
        this.zzd = (PowerManager) applicationContext.getSystemService(new ObfuscatedString(new long[]{8433598513178511447L, -1252292869279679967L}).toString());
        this.zze = (KeyguardManager) applicationContext.getSystemService(new ObfuscatedString(new long[]{-8947118276208437332L, 3606206915735658660L}).toString());
        if (applicationContext instanceof Application) {
            Application application = (Application) applicationContext;
            this.zzc = application;
            this.zzj = new zzavy(application, this);
        }
        zzd(null);
    }

    private final void zze(Activity activity, int i) {
        Window window;
        if (this.zzi != null && (window = activity.getWindow()) != null) {
            View peekDecorView = window.peekDecorView();
            View zzb = zzb();
            if (zzb != null && peekDecorView != null && zzb.getRootView() == peekDecorView.getRootView()) {
                this.zzl = i;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0080, code lost:
    
        if ((r9.flags & 524288) != 0) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x006a, code lost:
    
        r7 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzf() {
        int i;
        long j;
        WindowManager.LayoutParams layoutParams;
        Activity activity;
        if (this.zzi != null) {
            View zzb = zzb();
            if (zzb == null) {
                this.zzm = -3L;
                this.zzk = (byte) -1;
                return;
            }
            int i2 = 0;
            if (zzb.getVisibility() != 0) {
                i = 1;
            } else {
                i = 0;
            }
            if (!zzb.isShown()) {
                i |= 2;
            }
            PowerManager powerManager = this.zzd;
            if (powerManager != null && !powerManager.isScreenOn()) {
                i |= 4;
            }
            if (!this.zzg.zza()) {
                KeyguardManager keyguardManager = this.zze;
                if (keyguardManager != null && keyguardManager.inKeyguardRestrictedInputMode()) {
                    int i3 = zzawm.zza;
                    View rootView = zzb.getRootView();
                    if (rootView == null) {
                        rootView = zzb;
                    }
                    Context context = rootView.getContext();
                    while (true) {
                        layoutParams = null;
                        if (!(context instanceof ContextWrapper) || i2 >= 10) {
                            break;
                        }
                        if (context instanceof Activity) {
                            activity = (Activity) context;
                            break;
                        } else {
                            context = ((ContextWrapper) context).getBaseContext();
                            i2++;
                        }
                    }
                    if (activity != null) {
                        Window window = activity.getWindow();
                        if (window != null) {
                            layoutParams = window.getAttributes();
                        }
                        if (layoutParams != null) {
                        }
                    }
                }
                i |= 8;
            }
            if (!zzb.getGlobalVisibleRect(new Rect())) {
                i |= 16;
            }
            if (!zzb.getLocalVisibleRect(new Rect())) {
                i |= 32;
            }
            int windowVisibility = zzb.getWindowVisibility();
            int i4 = this.zzl;
            if (i4 != -1) {
                windowVisibility = i4;
            }
            if (windowVisibility != 0) {
                i |= 64;
            }
            if (this.zzk != i) {
                this.zzk = (byte) i;
                if (i == 0) {
                    j = SystemClock.elapsedRealtime();
                } else {
                    j = (-3) - i;
                }
                this.zzm = j;
            }
        }
    }

    private final void zzg() {
        zza.post(new zzawo(this));
    }

    private final void zzh(View view) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            this.zzh = new WeakReference(viewTreeObserver);
            viewTreeObserver.addOnScrollChangedListener(this);
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        if (this.zzf == null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(new ObfuscatedString(new long[]{3027287180830098996L, -9217789524921550349L, -6543815844917901938L, 8276180863823492757L, -1667957267756017931L}).toString());
            intentFilter.addAction(new ObfuscatedString(new long[]{6705752166002665806L, -508747993176409718L, -7370507081096826460L, 8927459963604887534L, 8249210141058530886L}).toString());
            intentFilter.addAction(new ObfuscatedString(new long[]{-2140081059461201549L, -251881073128674580L, -843174594746675613L, 9162169405380178838L, 6032749365947802049L, -1613787220832398659L}).toString());
            zzawp zzawpVar = new zzawp(this);
            this.zzf = zzawpVar;
            this.zzb.registerReceiver(zzawpVar, intentFilter);
        }
        Application application = this.zzc;
        if (application != null) {
            try {
                application.registerActivityLifecycleCallbacks(this.zzj);
            } catch (Exception unused) {
            }
        }
    }

    private final void zzi(View view) {
        try {
            WeakReference weakReference = this.zzh;
            if (weakReference != null) {
                ViewTreeObserver viewTreeObserver = (ViewTreeObserver) weakReference.get();
                if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnScrollChangedListener(this);
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                }
                this.zzh = null;
            }
        } catch (Exception unused) {
        }
        try {
            ViewTreeObserver viewTreeObserver2 = view.getViewTreeObserver();
            if (viewTreeObserver2.isAlive()) {
                viewTreeObserver2.removeOnScrollChangedListener(this);
                viewTreeObserver2.removeGlobalOnLayoutListener(this);
            }
        } catch (Exception unused2) {
        }
        BroadcastReceiver broadcastReceiver = this.zzf;
        if (broadcastReceiver != null) {
            try {
                this.zzb.unregisterReceiver(broadcastReceiver);
            } catch (Exception unused3) {
            }
            this.zzf = null;
        }
        Application application = this.zzc;
        if (application != null) {
            try {
                application.unregisterActivityLifecycleCallbacks(this.zzj);
            } catch (Exception unused4) {
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        zze(activity, 0);
        zzf();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        zzf();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        zze(activity, 4);
        zzf();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        zze(activity, 0);
        zzf();
        zzg();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        zzf();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        zze(activity, 0);
        zzf();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        zzf();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        zzf();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        zzf();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.zzl = -1;
        zzh(view);
        zzf();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.zzl = -1;
        zzf();
        zzg();
        zzi(view);
    }

    public final long zza() {
        if (this.zzm <= -2 && zzb() == null) {
            this.zzm = -3L;
        }
        return this.zzm;
    }

    @Nullable
    public final View zzb() {
        WeakReference weakReference = this.zzi;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    public final void zzd(View view) {
        long j;
        View zzb = zzb();
        if (zzb != null) {
            zzb.removeOnAttachStateChangeListener(this);
            zzi(zzb);
        }
        this.zzi = new WeakReference(view);
        if (view != null) {
            if (view.getWindowToken() != null || view.getWindowVisibility() != 8) {
                zzh(view);
            }
            view.addOnAttachStateChangeListener(this);
            j = -2;
        } else {
            j = -3;
        }
        this.zzm = j;
    }
}
