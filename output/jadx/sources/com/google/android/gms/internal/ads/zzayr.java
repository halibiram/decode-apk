package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.PowerManager;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.panda912.muddy.ObfuscatedString;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzayr implements View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, Application.ActivityLifecycleCallbacks {
    private static final long zzc = ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbm)).longValue();

    @Nullable
    @VisibleForTesting
    BroadcastReceiver zza;
    final WeakReference zzb;
    private final Context zzd;
    private Application zze;
    private final WindowManager zzf;
    private final PowerManager zzg;
    private final KeyguardManager zzh;
    private WeakReference zzi;
    private zzazd zzj;
    private final com.google.android.gms.ads.internal.util.zzcb zzk = new com.google.android.gms.ads.internal.util.zzcb(zzc);
    private boolean zzl = false;
    private int zzm = -1;
    private final HashSet zzn = new HashSet();
    private final DisplayMetrics zzo;
    private final Rect zzp;

    public zzayr(Context context, View view) {
        View view2;
        Context applicationContext = context.getApplicationContext();
        this.zzd = applicationContext;
        WindowManager windowManager = (WindowManager) context.getSystemService(new ObfuscatedString(new long[]{-567641869156796681L, -5570339482200542771L}).toString());
        this.zzf = windowManager;
        this.zzg = (PowerManager) applicationContext.getSystemService(new ObfuscatedString(new long[]{-1622884445138365723L, -1490287517558404762L}).toString());
        this.zzh = (KeyguardManager) context.getSystemService(new ObfuscatedString(new long[]{-3289423111548062285L, 8908810652952382914L}).toString());
        if (applicationContext instanceof Application) {
            Application application = (Application) applicationContext;
            this.zze = application;
            this.zzj = new zzazd(application, this);
        }
        this.zzo = context.getResources().getDisplayMetrics();
        Rect rect = new Rect();
        this.zzp = rect;
        rect.right = windowManager.getDefaultDisplay().getWidth();
        rect.bottom = windowManager.getDefaultDisplay().getHeight();
        WeakReference weakReference = this.zzb;
        if (weakReference != null) {
            view2 = (View) weakReference.get();
        } else {
            view2 = null;
        }
        if (view2 != null) {
            view2.removeOnAttachStateChangeListener(this);
            zzm(view2);
        }
        this.zzb = new WeakReference(view);
        if (view != null) {
            if (view.isAttachedToWindow()) {
                zzl(view);
            }
            view.addOnAttachStateChangeListener(this);
        }
    }

    private final int zzh(int i) {
        return (int) (i / this.zzo.density);
    }

    private final void zzi(Activity activity, int i) {
        Window window;
        if (this.zzb != null && (window = activity.getWindow()) != null) {
            WeakReference weakReference = this.zzb;
            View peekDecorView = window.peekDecorView();
            View view = (View) weakReference.get();
            if (view != null && peekDecorView != null && view.getRootView() == peekDecorView.getRootView()) {
                this.zzm = i;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0171, code lost:
    
        if (r9 == 0) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x014c, code lost:
    
        if (r9 == 0) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x014e, code lost:
    
        r3 = true;
        r9 = 0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01d3  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01e1  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0209  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0247 A[LOOP:1: B:90:0x0241->B:92:0x0247, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0210  */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v27, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v28, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r3v18 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v8, types: [boolean] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzj(int i) {
        WeakReference weakReference;
        View view;
        boolean z;
        boolean z2;
        ?? emptyList;
        int i2;
        boolean z3;
        boolean z4;
        int i3;
        Iterator it;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        if (!this.zzn.isEmpty() && (weakReference = this.zzb) != null) {
            View view2 = (View) weakReference.get();
            Rect rect = new Rect();
            Rect rect2 = new Rect();
            Rect rect3 = new Rect();
            Rect rect4 = new Rect();
            int[] iArr = new int[2];
            int[] iArr2 = new int[2];
            if (view2 != null) {
                z = view2.getGlobalVisibleRect(rect2);
                z2 = view2.getLocalVisibleRect(rect3);
                view2.getHitRect(rect4);
                try {
                    view2.getLocationOnScreen(iArr);
                    view2.getLocationInWindow(iArr2);
                } catch (Exception e) {
                    zzcec.zzh(new ObfuscatedString(new long[]{-5918963583898356269L, -2199190266729571772L, -7392564270255556089L, 8678797264587306167L, 1818793477880889732L}).toString(), e);
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzeM)).booleanValue()) {
                    rect.left = iArr2[0];
                    rect.top = iArr2[1];
                } else {
                    rect.left = iArr[0];
                    rect.top = iArr[1];
                }
                rect.right = view2.getWidth() + rect.left;
                rect.bottom = view2.getHeight() + rect.top;
                view = view2;
            } else {
                view = null;
                z = false;
                z2 = false;
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbp)).booleanValue() && view != null) {
                try {
                    emptyList = new ArrayList();
                    for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                        View view3 = (View) parent;
                        Rect rect5 = new Rect();
                        if (view3.isScrollContainer() && view3.getGlobalVisibleRect(rect5)) {
                            emptyList.add(zza(rect5));
                        }
                    }
                } catch (Exception e2) {
                    com.google.android.gms.ads.internal.zzt.zzo().zzw(e2, new ObfuscatedString(new long[]{-3683825317898127886L, 2501179109847616401L, -7417423082540800062L, -4065221470854203431L, 897990396164778439L, 8738176905559541309L}).toString());
                    emptyList = Collections.emptyList();
                }
            } else {
                emptyList = Collections.emptyList();
            }
            List list = emptyList;
            if (view != null) {
                i2 = view.getWindowVisibility();
            } else {
                i2 = 8;
            }
            int i9 = this.zzm;
            if (i9 != -1) {
                i2 = i9;
            }
            com.google.android.gms.ads.internal.zzt.zzp();
            long zzv = com.google.android.gms.ads.internal.util.zzt.zzv(view);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkc)).booleanValue()) {
                if (view2 != null) {
                    PowerManager powerManager = this.zzg;
                    KeyguardManager keyguardManager = this.zzh;
                    com.google.android.gms.ads.internal.zzt.zzp();
                    if (com.google.android.gms.ads.internal.util.zzt.zzR(view, powerManager, keyguardManager)) {
                        if (z) {
                            if (z2) {
                                if (zzv >= ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkf)).intValue()) {
                                }
                                boolean z5 = false;
                                z = true;
                                z2 = true;
                                z3 = z5;
                                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkh)).booleanValue()) {
                                    PowerManager powerManager2 = this.zzg;
                                    KeyguardManager keyguardManager2 = this.zzh;
                                    com.google.android.gms.ads.internal.zzt.zzp();
                                    if (true != com.google.android.gms.ads.internal.util.zzt.zzR(view, powerManager2, keyguardManager2)) {
                                        i4 = 0;
                                    } else {
                                        i4 = 64;
                                    }
                                    if (true != z) {
                                        i5 = 0;
                                    } else {
                                        i5 = 8;
                                    }
                                    if (true != z2) {
                                        i6 = 0;
                                    } else {
                                        i6 = 16;
                                    }
                                    if (i2 == 0) {
                                        i7 = 128;
                                    } else {
                                        i7 = 0;
                                    }
                                    if (zzv >= ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkf)).intValue()) {
                                        i8 = 32;
                                    } else {
                                        i8 = 0;
                                    }
                                    com.google.android.gms.ads.internal.zzt.zzp();
                                    com.google.android.gms.ads.internal.util.zzt.zzI(view, i8 | i7 | i4 | i5 | i6 | z3, null);
                                }
                                if (i == 1 || this.zzk.zzb() || z3 != this.zzl) {
                                    if (z3 != 0 && !this.zzl) {
                                        if (i == 1) {
                                            return;
                                        }
                                    }
                                    long elapsedRealtime = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime();
                                    boolean isScreenOn = this.zzg.isScreenOn();
                                    if (view == null && view.isAttachedToWindow()) {
                                        z4 = true;
                                    } else {
                                        z4 = false;
                                    }
                                    if (view != null) {
                                        i3 = view.getWindowVisibility();
                                    } else {
                                        i3 = 8;
                                    }
                                    zzayp zzaypVar = new zzayp(elapsedRealtime, isScreenOn, z4, i3, zza(this.zzp), zza(rect), zza(rect2), z, zza(rect3), z2, zzv, zza(rect4), this.zzo.density, z3, list);
                                    it = this.zzn.iterator();
                                    while (it.hasNext()) {
                                        ((zzayq) it.next()).zzby(zzaypVar);
                                    }
                                    this.zzl = z3;
                                }
                                return;
                            }
                            z3 = 0;
                            z = true;
                            z2 = false;
                            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkh)).booleanValue()) {
                            }
                            if (i == 1) {
                            }
                            if (z3 != 0) {
                            }
                            long elapsedRealtime2 = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime();
                            boolean isScreenOn2 = this.zzg.isScreenOn();
                            if (view == null) {
                            }
                            z4 = false;
                            if (view != null) {
                            }
                            zzayp zzaypVar2 = new zzayp(elapsedRealtime2, isScreenOn2, z4, i3, zza(this.zzp), zza(rect), zza(rect2), z, zza(rect3), z2, zzv, zza(rect4), this.zzo.density, z3, list);
                            it = this.zzn.iterator();
                            while (it.hasNext()) {
                            }
                            this.zzl = z3;
                        }
                        z3 = 0;
                        z = false;
                        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkh)).booleanValue()) {
                        }
                        if (i == 1) {
                        }
                        if (z3 != 0) {
                        }
                        long elapsedRealtime22 = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime();
                        boolean isScreenOn22 = this.zzg.isScreenOn();
                        if (view == null) {
                        }
                        z4 = false;
                        if (view != null) {
                        }
                        zzayp zzaypVar22 = new zzayp(elapsedRealtime22, isScreenOn22, z4, i3, zza(this.zzp), zza(rect), zza(rect2), z, zza(rect3), z2, zzv, zza(rect4), this.zzo.density, z3, list);
                        it = this.zzn.iterator();
                        while (it.hasNext()) {
                        }
                        this.zzl = z3;
                    }
                }
                z3 = 0;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkh)).booleanValue()) {
                }
                if (i == 1) {
                }
                if (z3 != 0) {
                }
                long elapsedRealtime222 = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime();
                boolean isScreenOn222 = this.zzg.isScreenOn();
                if (view == null) {
                }
                z4 = false;
                if (view != null) {
                }
                zzayp zzaypVar222 = new zzayp(elapsedRealtime222, isScreenOn222, z4, i3, zza(this.zzp), zza(rect), zza(rect2), z, zza(rect3), z2, zzv, zza(rect4), this.zzo.density, z3, list);
                it = this.zzn.iterator();
                while (it.hasNext()) {
                }
                this.zzl = z3;
            }
            if (view2 != null) {
                PowerManager powerManager3 = this.zzg;
                KeyguardManager keyguardManager3 = this.zzh;
                com.google.android.gms.ads.internal.zzt.zzp();
                if (com.google.android.gms.ads.internal.util.zzt.zzR(view, powerManager3, keyguardManager3)) {
                    if (z) {
                        if (z2) {
                        }
                        z3 = 0;
                        z = true;
                        z2 = false;
                        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkh)).booleanValue()) {
                        }
                        if (i == 1) {
                        }
                        if (z3 != 0) {
                        }
                        long elapsedRealtime2222 = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime();
                        boolean isScreenOn2222 = this.zzg.isScreenOn();
                        if (view == null) {
                        }
                        z4 = false;
                        if (view != null) {
                        }
                        zzayp zzaypVar2222 = new zzayp(elapsedRealtime2222, isScreenOn2222, z4, i3, zza(this.zzp), zza(rect), zza(rect2), z, zza(rect3), z2, zzv, zza(rect4), this.zzo.density, z3, list);
                        it = this.zzn.iterator();
                        while (it.hasNext()) {
                        }
                        this.zzl = z3;
                    }
                    z3 = 0;
                    z = false;
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkh)).booleanValue()) {
                    }
                    if (i == 1) {
                    }
                    if (z3 != 0) {
                    }
                    long elapsedRealtime22222 = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime();
                    boolean isScreenOn22222 = this.zzg.isScreenOn();
                    if (view == null) {
                    }
                    z4 = false;
                    if (view != null) {
                    }
                    zzayp zzaypVar22222 = new zzayp(elapsedRealtime22222, isScreenOn22222, z4, i3, zza(this.zzp), zza(rect), zza(rect2), z, zza(rect3), z2, zzv, zza(rect4), this.zzo.density, z3, list);
                    it = this.zzn.iterator();
                    while (it.hasNext()) {
                    }
                    this.zzl = z3;
                }
            }
            z3 = 0;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkh)).booleanValue()) {
            }
            if (i == 1) {
            }
            if (z3 != 0) {
            }
            long elapsedRealtime222222 = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime();
            boolean isScreenOn222222 = this.zzg.isScreenOn();
            if (view == null) {
            }
            z4 = false;
            if (view != null) {
            }
            zzayp zzaypVar222222 = new zzayp(elapsedRealtime222222, isScreenOn222222, z4, i3, zza(this.zzp), zza(rect), zza(rect2), z, zza(rect3), z2, zzv, zza(rect4), this.zzo.density, z3, list);
            it = this.zzn.iterator();
            while (it.hasNext()) {
            }
            this.zzl = z3;
        }
    }

    private final void zzk() {
        com.google.android.gms.ads.internal.util.zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzayn
            @Override // java.lang.Runnable
            public final void run() {
                zzayr.this.zzd();
            }
        });
    }

    private final void zzl(View view) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            this.zzi = new WeakReference(viewTreeObserver);
            viewTreeObserver.addOnScrollChangedListener(this);
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        if (this.zza == null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(new ObfuscatedString(new long[]{7439982597404659451L, -2754069659732749033L, 6488406963058531330L, -5852246375549374858L, -6940982447722550143L}).toString());
            intentFilter.addAction(new ObfuscatedString(new long[]{3603585892271014884L, -403786138260415320L, 4300060458278671904L, -5360521803579535883L, -8405562154001785185L}).toString());
            intentFilter.addAction(new ObfuscatedString(new long[]{-4473167006432476339L, 6261425063093008921L, -5130072642344607197L, 1112593746983277271L, -1335126572111168618L, -367796998159846121L}).toString());
            this.zza = new zzayo(this);
            com.google.android.gms.ads.internal.zzt.zzv().zzc(this.zzd, this.zza, intentFilter);
        }
        Application application = this.zze;
        if (application != null) {
            try {
                application.registerActivityLifecycleCallbacks(this.zzj);
            } catch (Exception e) {
                zzcec.zzh(new ObfuscatedString(new long[]{-5605897605068552225L, 1478531534136951425L, -4424240418109366758L, 631160027261405470L, -1627713114423947148L, 1870585452608318424L, -7968774043245555037L}).toString(), e);
            }
        }
    }

    private final void zzm(View view) {
        try {
            WeakReference weakReference = this.zzi;
            if (weakReference != null) {
                ViewTreeObserver viewTreeObserver = (ViewTreeObserver) weakReference.get();
                if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnScrollChangedListener(this);
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                }
                this.zzi = null;
            }
        } catch (Exception e) {
            zzcec.zzh(new ObfuscatedString(new long[]{5242809093570440816L, -1079664477860052788L, 3001252084294049089L, 6919772281311522229L, 9025980035050208416L, 7572615995781523308L, 8906707650864438576L, -9080096298629035938L, 8023436755236810213L, -5657623699169827981L}).toString(), e);
        }
        try {
            ViewTreeObserver viewTreeObserver2 = view.getViewTreeObserver();
            if (viewTreeObserver2.isAlive()) {
                viewTreeObserver2.removeOnScrollChangedListener(this);
                viewTreeObserver2.removeGlobalOnLayoutListener(this);
            }
        } catch (Exception e2) {
            zzcec.zzh(new ObfuscatedString(new long[]{2858431269906108025L, -8481843949750051605L, -2528624956732419797L, -8026187662154275752L, 7756239295502309036L, -3835995193733891492L, 3928434750865717206L, 6813435566656010999L, 2631497731207791834L}).toString(), e2);
        }
        if (this.zza != null) {
            try {
                com.google.android.gms.ads.internal.zzt.zzv().zzd(this.zzd, this.zza);
            } catch (IllegalStateException e3) {
                zzcec.zzh(new ObfuscatedString(new long[]{-61493060464983184L, -2981466541890104733L, -1110994947397560664L, -3473262571521001132L, -2893628738710825805L, 6352658455663454663L}).toString(), e3);
            } catch (Exception e4) {
                com.google.android.gms.ads.internal.zzt.zzo().zzw(e4, new ObfuscatedString(new long[]{-6313518850239544931L, 1567309364300148090L, -1407564461524605274L, 5258428543524809126L, 3309944282210208113L, -2883523111468182960L, 5928199947673046033L}).toString());
            }
            this.zza = null;
        }
        Application application = this.zze;
        if (application != null) {
            try {
                application.unregisterActivityLifecycleCallbacks(this.zzj);
            } catch (Exception e5) {
                zzcec.zzh(new ObfuscatedString(new long[]{-1116673783591989744L, 860988689206058341L, -3157462596100891645L, -4375310840780301455L, 7216395201383920297L, -1587363235621387892L, 6676760742387040950L}).toString(), e5);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        zzi(activity, 0);
        zzj(3);
        zzk();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        zzj(3);
        zzk();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        zzi(activity, 4);
        zzj(3);
        zzk();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        zzi(activity, 0);
        zzj(3);
        zzk();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        zzj(3);
        zzk();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        zzi(activity, 0);
        zzj(3);
        zzk();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        zzj(3);
        zzk();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        zzj(2);
        zzk();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        zzj(1);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.zzm = -1;
        zzl(view);
        zzj(3);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.zzm = -1;
        zzj(3);
        zzk();
        zzm(view);
    }

    public final Rect zza(Rect rect) {
        return new Rect(zzh(rect.left), zzh(rect.top), zzh(rect.right), zzh(rect.bottom));
    }

    public final void zzc(zzayq zzayqVar) {
        this.zzn.add(zzayqVar);
        zzj(3);
    }

    public final /* synthetic */ void zzd() {
        zzj(3);
    }

    public final void zze(zzayq zzayqVar) {
        this.zzn.remove(zzayqVar);
    }

    public final void zzf() {
        this.zzk.zza(zzc);
    }

    public final void zzg(long j) {
        this.zzk.zza(j);
    }
}
