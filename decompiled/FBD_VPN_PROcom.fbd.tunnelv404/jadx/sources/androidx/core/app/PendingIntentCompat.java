package androidx.core.app;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.app.PendingIntentCompat;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import java.io.Closeable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.concurrent.CountDownLatch;

/* loaded from: classes.dex */
public final class PendingIntentCompat {

    @RequiresApi(23)
    /* loaded from: classes.dex */
    public static class Api23Impl {
        private Api23Impl() {
        }

        public static void send(PendingIntent pendingIntent, Context context, int i, Intent intent, PendingIntent.OnFinished onFinished, Handler handler, String str, Bundle bundle) {
            pendingIntent.send(context, i, intent, onFinished, handler, str, bundle);
        }
    }

    @RequiresApi(26)
    /* loaded from: classes.dex */
    public static class Api26Impl {
        private Api26Impl() {
        }

        public static PendingIntent getForegroundService(Context context, int i, Intent intent, int i2) {
            return PendingIntent.getForegroundService(context, i, intent, i2);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes.dex */
    public @interface Flags {
    }

    /* loaded from: classes.dex */
    public static class GatedCallback implements Closeable {
        private PendingIntent.OnFinished mCallback;
        private final CountDownLatch mComplete = new CountDownLatch(1);
        private boolean mSuccess = false;

        public GatedCallback(PendingIntent.OnFinished onFinished) {
            this.mCallback = onFinished;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onSendFinished(PendingIntent pendingIntent, Intent intent, int i, String str, Bundle bundle) {
            boolean z = false;
            while (true) {
                try {
                    this.mComplete.await();
                    break;
                } catch (InterruptedException unused) {
                    z = true;
                } catch (Throwable th) {
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                    throw th;
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
            PendingIntent.OnFinished onFinished = this.mCallback;
            if (onFinished != null) {
                onFinished.onSendFinished(pendingIntent, intent, i, str, bundle);
                this.mCallback = null;
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (!this.mSuccess) {
                this.mCallback = null;
            }
            this.mComplete.countDown();
        }

        public void complete() {
            this.mSuccess = true;
        }

        public PendingIntent.OnFinished getCallback() {
            if (this.mCallback == null) {
                return null;
            }
            return new PendingIntent.OnFinished() { // from class: androidx.core.app.뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫
                @Override // android.app.PendingIntent.OnFinished
                public final void onSendFinished(PendingIntent pendingIntent, Intent intent, int i, String str, Bundle bundle) {
                    PendingIntentCompat.GatedCallback.this.onSendFinished(pendingIntent, intent, i, str, bundle);
                }
            };
        }
    }

    private PendingIntentCompat() {
    }

    public static int addMutabilityFlags(boolean z, int i) {
        int i2;
        if (z) {
            if (Build.VERSION.SDK_INT >= 31) {
                i2 = 33554432;
            } else {
                return i;
            }
        } else if (Build.VERSION.SDK_INT >= 23) {
            i2 = AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL;
        } else {
            return i;
        }
        return i | i2;
    }

    public static PendingIntent getActivities(Context context, int i, @SuppressLint({"ArrayReturn"}) Intent[] intentArr, int i2, Bundle bundle, boolean z) {
        return PendingIntent.getActivities(context, i, intentArr, addMutabilityFlags(z, i2), bundle);
    }

    public static PendingIntent getActivity(Context context, int i, Intent intent, int i2, boolean z) {
        return PendingIntent.getActivity(context, i, intent, addMutabilityFlags(z, i2));
    }

    public static PendingIntent getBroadcast(Context context, int i, Intent intent, int i2, boolean z) {
        return PendingIntent.getBroadcast(context, i, intent, addMutabilityFlags(z, i2));
    }

    @RequiresApi(26)
    public static PendingIntent getForegroundService(Context context, int i, Intent intent, int i2, boolean z) {
        return Api26Impl.getForegroundService(context, i, intent, addMutabilityFlags(z, i2));
    }

    public static PendingIntent getService(Context context, int i, Intent intent, int i2, boolean z) {
        return PendingIntent.getService(context, i, intent, addMutabilityFlags(z, i2));
    }

    @SuppressLint({"LambdaLast"})
    public static void send(PendingIntent pendingIntent, int i, PendingIntent.OnFinished onFinished, Handler handler) {
        GatedCallback gatedCallback = new GatedCallback(onFinished);
        try {
            pendingIntent.send(i, gatedCallback.getCallback(), handler);
            gatedCallback.complete();
            gatedCallback.close();
        } catch (Throwable th) {
            try {
                gatedCallback.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static PendingIntent getActivities(Context context, int i, @SuppressLint({"ArrayReturn"}) Intent[] intentArr, int i2, boolean z) {
        return PendingIntent.getActivities(context, i, intentArr, addMutabilityFlags(z, i2));
    }

    public static PendingIntent getActivity(Context context, int i, Intent intent, int i2, Bundle bundle, boolean z) {
        return PendingIntent.getActivity(context, i, intent, addMutabilityFlags(z, i2), bundle);
    }

    @SuppressLint({"LambdaLast"})
    public static void send(PendingIntent pendingIntent, @SuppressLint({"ContextFirst"}) Context context, int i, Intent intent, PendingIntent.OnFinished onFinished, Handler handler) {
        send(pendingIntent, context, i, intent, onFinished, handler, null, null);
    }

    @SuppressLint({"LambdaLast"})
    public static void send(PendingIntent pendingIntent, @SuppressLint({"ContextFirst"}) Context context, int i, Intent intent, PendingIntent.OnFinished onFinished, Handler handler, String str, Bundle bundle) {
        GatedCallback gatedCallback = new GatedCallback(onFinished);
        try {
            if (Build.VERSION.SDK_INT >= 23) {
                Api23Impl.send(pendingIntent, context, i, intent, onFinished, handler, str, bundle);
            } else {
                pendingIntent.send(context, i, intent, gatedCallback.getCallback(), handler, str);
            }
            gatedCallback.complete();
            gatedCallback.close();
        } catch (Throwable th) {
            try {
                gatedCallback.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }
}
