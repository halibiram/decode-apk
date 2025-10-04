package androidx.window.layout;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.IBinder;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.GuardedBy;
import androidx.annotation.VisibleForTesting;
import androidx.window.core.Version;
import androidx.window.layout.ExtensionInterfaceCompat;
import androidx.window.sidecar.SidecarDeviceState;
import androidx.window.sidecar.SidecarDisplayFeature;
import androidx.window.sidecar.SidecarInterface;
import androidx.window.sidecar.SidecarProvider;
import androidx.window.sidecar.SidecarWindowLayoutInfo;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0000\u0018\u0000 !2\u00020\u0001:\u0005!\"#$%B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u001b\b\u0007\u0012\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\fH\u0007J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0016\u001a\u00020\fH\u0016J\u0010\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0016\u001a\u00020\fH\u0016J\u0016\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\fJ\u0010\u0010\u001c\u001a\u00020\u00182\u0006\u0010\u0016\u001a\u00020\fH\u0002J\u0010\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u0016\u001a\u00020\fH\u0002J\b\u0010\u001f\u001a\u00020 H\u0017R\u001a\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Landroidx/window/layout/SidecarCompat;", "Landroidx/window/layout/ExtensionInterfaceCompat;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "sidecar", "Landroidx/window/sidecar/SidecarInterface;", "sidecarAdapter", "Landroidx/window/layout/SidecarAdapter;", "(Landroidx/window/sidecar/SidecarInterface;Landroidx/window/layout/SidecarAdapter;)V", "componentCallbackMap", "", "Landroid/app/Activity;", "Landroid/content/ComponentCallbacks;", "extensionCallback", "Landroidx/window/layout/ExtensionInterfaceCompat$ExtensionCallbackInterface;", "getSidecar", "()Landroidx/window/sidecar/SidecarInterface;", "windowListenerRegisteredContexts", "Landroid/os/IBinder;", "getWindowLayoutInfo", "Landroidx/window/layout/WindowLayoutInfo;", "activity", "onWindowLayoutChangeListenerAdded", "", "onWindowLayoutChangeListenerRemoved", "register", "windowToken", "registerConfigurationChangeListener", "setExtensionCallback", "unregisterComponentCallback", "validateExtensionInterface", "", "Companion", "DistinctElementCallback", "DistinctSidecarElementCallback", "FirstAttachAdapter", "TranslatingCallback", "window_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SidecarCompat implements ExtensionInterfaceCompat {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    private static final String TAG = "SidecarCompat";

    @NotNull
    private final Map<Activity, ComponentCallbacks> componentCallbackMap;

    @Nullable
    private ExtensionInterfaceCompat.ExtensionCallbackInterface extensionCallback;

    @Nullable
    private final SidecarInterface sidecar;

    @NotNull
    private final SidecarAdapter sidecarAdapter;

    @NotNull
    private final Map<IBinder, Activity> windowListenerRegisteredContexts;

    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0019\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0000¢\u0006\u0002\b\rJ\u0017\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0000¢\u0006\u0002\b\u0012R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u00068F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\u0013"}, d2 = {"Landroidx/window/layout/SidecarCompat$Companion;", "", "()V", "TAG", "", "sidecarVersion", "Landroidx/window/core/Version;", "getSidecarVersion", "()Landroidx/window/core/Version;", "getActivityWindowToken", "Landroid/os/IBinder;", "activity", "Landroid/app/Activity;", "getActivityWindowToken$window_release", "getSidecarCompat", "Landroidx/window/sidecar/SidecarInterface;", "context", "Landroid/content/Context;", "getSidecarCompat$window_release", "window_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final IBinder getActivityWindowToken$window_release(@Nullable Activity activity) {
            Window window;
            WindowManager.LayoutParams attributes;
            if (activity == null || (window = activity.getWindow()) == null || (attributes = window.getAttributes()) == null) {
                return null;
            }
            return attributes.token;
        }

        @Nullable
        public final SidecarInterface getSidecarCompat$window_release(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            return SidecarProvider.getSidecarImpl(context.getApplicationContext());
        }

        @Nullable
        public final Version getSidecarVersion() {
            try {
                String apiVersion = SidecarProvider.getApiVersion();
                if (TextUtils.isEmpty(apiVersion)) {
                    return null;
                }
                return Version.INSTANCE.parse(apiVersion);
            } catch (NoClassDefFoundError | UnsupportedOperationException unused) {
                return null;
            }
        }

        private Companion() {
        }
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0002\u0010\u0003J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0007H\u0016R\u001c\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u00058\u0002X\u0083\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Landroidx/window/layout/SidecarCompat$DistinctElementCallback;", "Landroidx/window/layout/ExtensionInterfaceCompat$ExtensionCallbackInterface;", "callbackInterface", "(Landroidx/window/layout/ExtensionInterfaceCompat$ExtensionCallbackInterface;)V", "activityWindowLayoutInfo", "Ljava/util/WeakHashMap;", "Landroid/app/Activity;", "Landroidx/window/layout/WindowLayoutInfo;", "lock", "Ljava/util/concurrent/locks/ReentrantLock;", "onWindowLayoutChanged", "", "activity", "newLayout", "window_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class DistinctElementCallback implements ExtensionInterfaceCompat.ExtensionCallbackInterface {

        @GuardedBy("mLock")
        @NotNull
        private final WeakHashMap<Activity, WindowLayoutInfo> activityWindowLayoutInfo;

        @NotNull
        private final ExtensionInterfaceCompat.ExtensionCallbackInterface callbackInterface;

        @NotNull
        private final ReentrantLock lock;

        public DistinctElementCallback(@NotNull ExtensionInterfaceCompat.ExtensionCallbackInterface callbackInterface) {
            Intrinsics.checkNotNullParameter(callbackInterface, "callbackInterface");
            this.callbackInterface = callbackInterface;
            this.lock = new ReentrantLock();
            this.activityWindowLayoutInfo = new WeakHashMap<>();
        }

        @Override // androidx.window.layout.ExtensionInterfaceCompat.ExtensionCallbackInterface
        public void onWindowLayoutChanged(@NotNull Activity activity, @NotNull WindowLayoutInfo newLayout) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            Intrinsics.checkNotNullParameter(newLayout, "newLayout");
            ReentrantLock reentrantLock = this.lock;
            reentrantLock.lock();
            try {
                if (Intrinsics.areEqual(newLayout, this.activityWindowLayoutInfo.get(activity))) {
                    return;
                }
                this.activityWindowLayoutInfo.put(activity, newLayout);
                reentrantLock.unlock();
                this.callbackInterface.onWindowLayoutChanged(activity, newLayout);
            } finally {
                reentrantLock.unlock();
            }
        }
    }

    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0001¢\u0006\u0002\u0010\u0005J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0007H\u0016J\u0018\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\rH\u0016R\u000e\u0010\u0004\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000b8\u0002X\u0083\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Landroidx/window/layout/SidecarCompat$DistinctSidecarElementCallback;", "Landroidx/window/sidecar/SidecarInterface$SidecarCallback;", "sidecarAdapter", "Landroidx/window/layout/SidecarAdapter;", "callbackInterface", "(Landroidx/window/layout/SidecarAdapter;Landroidx/window/sidecar/SidecarInterface$SidecarCallback;)V", "lastDeviceState", "Landroidx/window/sidecar/SidecarDeviceState;", "lock", "Ljava/util/concurrent/locks/ReentrantLock;", "mActivityWindowLayoutInfo", "Ljava/util/WeakHashMap;", "Landroid/os/IBinder;", "Landroidx/window/sidecar/SidecarWindowLayoutInfo;", "onDeviceStateChanged", "", "newDeviceState", "onWindowLayoutChanged", "token", "newLayout", "window_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class DistinctSidecarElementCallback implements SidecarInterface.SidecarCallback {

        @NotNull
        private final SidecarInterface.SidecarCallback callbackInterface;

        @GuardedBy("lock")
        @Nullable
        private SidecarDeviceState lastDeviceState;

        @NotNull
        private final ReentrantLock lock;

        @GuardedBy("mLock")
        @NotNull
        private final WeakHashMap<IBinder, SidecarWindowLayoutInfo> mActivityWindowLayoutInfo;

        @NotNull
        private final SidecarAdapter sidecarAdapter;

        public DistinctSidecarElementCallback(@NotNull SidecarAdapter sidecarAdapter, @NotNull SidecarInterface.SidecarCallback callbackInterface) {
            Intrinsics.checkNotNullParameter(sidecarAdapter, "sidecarAdapter");
            Intrinsics.checkNotNullParameter(callbackInterface, "callbackInterface");
            this.sidecarAdapter = sidecarAdapter;
            this.callbackInterface = callbackInterface;
            this.lock = new ReentrantLock();
            this.mActivityWindowLayoutInfo = new WeakHashMap<>();
        }

        public void onDeviceStateChanged(@NotNull SidecarDeviceState newDeviceState) {
            Intrinsics.checkNotNullParameter(newDeviceState, "newDeviceState");
            ReentrantLock reentrantLock = this.lock;
            reentrantLock.lock();
            try {
                if (this.sidecarAdapter.isEqualSidecarDeviceState(this.lastDeviceState, newDeviceState)) {
                    return;
                }
                this.lastDeviceState = newDeviceState;
                this.callbackInterface.onDeviceStateChanged(newDeviceState);
            } finally {
                reentrantLock.unlock();
            }
        }

        public void onWindowLayoutChanged(@NotNull IBinder token, @NotNull SidecarWindowLayoutInfo newLayout) {
            Intrinsics.checkNotNullParameter(token, "token");
            Intrinsics.checkNotNullParameter(newLayout, "newLayout");
            synchronized (this.lock) {
                if (this.sidecarAdapter.isEqualSidecarWindowLayoutInfo(this.mActivityWindowLayoutInfo.get(token), newLayout)) {
                    return;
                }
                this.mActivityWindowLayoutInfo.put(token, newLayout);
                this.callbackInterface.onWindowLayoutChanged(token, newLayout);
            }
        }
    }

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016R\u001c\u0010\u0007\u001a\u0010\u0012\f\u0012\n \t*\u0004\u0018\u00010\u00050\u00050\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Landroidx/window/layout/SidecarCompat$FirstAttachAdapter;", "Landroid/view/View$OnAttachStateChangeListener;", "sidecarCompat", "Landroidx/window/layout/SidecarCompat;", "activity", "Landroid/app/Activity;", "(Landroidx/window/layout/SidecarCompat;Landroid/app/Activity;)V", "activityWeakReference", "Ljava/lang/ref/WeakReference;", "kotlin.jvm.PlatformType", "onViewAttachedToWindow", "", "view", "Landroid/view/View;", "onViewDetachedFromWindow", "window_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class FirstAttachAdapter implements View.OnAttachStateChangeListener {

        @NotNull
        private final WeakReference<Activity> activityWeakReference;

        @NotNull
        private final SidecarCompat sidecarCompat;

        public FirstAttachAdapter(@NotNull SidecarCompat sidecarCompat, @NotNull Activity activity) {
            Intrinsics.checkNotNullParameter(sidecarCompat, "sidecarCompat");
            Intrinsics.checkNotNullParameter(activity, "activity");
            this.sidecarCompat = sidecarCompat;
            this.activityWeakReference = new WeakReference<>(activity);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(@NotNull View view) {
            Intrinsics.checkNotNullParameter(view, "view");
            view.removeOnAttachStateChangeListener(this);
            Activity activity = this.activityWeakReference.get();
            IBinder activityWindowToken$window_release = SidecarCompat.INSTANCE.getActivityWindowToken$window_release(activity);
            if (activity == null || activityWindowToken$window_release == null) {
                return;
            }
            this.sidecarCompat.register(activityWindowToken$window_release, activity);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(@NotNull View view) {
            Intrinsics.checkNotNullParameter(view, "view");
        }
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0080\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0017J\u0018\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0017¨\u0006\f"}, d2 = {"Landroidx/window/layout/SidecarCompat$TranslatingCallback;", "Landroidx/window/sidecar/SidecarInterface$SidecarCallback;", "(Landroidx/window/layout/SidecarCompat;)V", "onDeviceStateChanged", "", "newDeviceState", "Landroidx/window/sidecar/SidecarDeviceState;", "onWindowLayoutChanged", "windowToken", "Landroid/os/IBinder;", "newLayout", "Landroidx/window/sidecar/SidecarWindowLayoutInfo;", "window_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes.dex */
    public final class TranslatingCallback implements SidecarInterface.SidecarCallback {
        final /* synthetic */ SidecarCompat this$0;

        public TranslatingCallback(SidecarCompat this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this.this$0 = this$0;
        }

        @SuppressLint({"SyntheticAccessor"})
        public void onDeviceStateChanged(@NotNull SidecarDeviceState newDeviceState) {
            SidecarInterface sidecar;
            Intrinsics.checkNotNullParameter(newDeviceState, "newDeviceState");
            Collection<Activity> values = this.this$0.windowListenerRegisteredContexts.values();
            SidecarCompat sidecarCompat = this.this$0;
            for (Activity activity : values) {
                IBinder activityWindowToken$window_release = SidecarCompat.INSTANCE.getActivityWindowToken$window_release(activity);
                SidecarWindowLayoutInfo sidecarWindowLayoutInfo = null;
                if (activityWindowToken$window_release != null && (sidecar = sidecarCompat.getSidecar()) != null) {
                    sidecarWindowLayoutInfo = sidecar.getWindowLayoutInfo(activityWindowToken$window_release);
                }
                ExtensionInterfaceCompat.ExtensionCallbackInterface extensionCallbackInterface = sidecarCompat.extensionCallback;
                if (extensionCallbackInterface != null) {
                    extensionCallbackInterface.onWindowLayoutChanged(activity, sidecarCompat.sidecarAdapter.translate(sidecarWindowLayoutInfo, newDeviceState));
                }
            }
        }

        @SuppressLint({"SyntheticAccessor"})
        public void onWindowLayoutChanged(@NotNull IBinder windowToken, @NotNull SidecarWindowLayoutInfo newLayout) {
            SidecarDeviceState deviceState;
            Intrinsics.checkNotNullParameter(windowToken, "windowToken");
            Intrinsics.checkNotNullParameter(newLayout, "newLayout");
            Activity activity = (Activity) this.this$0.windowListenerRegisteredContexts.get(windowToken);
            if (activity != null) {
                SidecarAdapter sidecarAdapter = this.this$0.sidecarAdapter;
                SidecarInterface sidecar = this.this$0.getSidecar();
                if (sidecar == null) {
                    deviceState = null;
                } else {
                    deviceState = sidecar.getDeviceState();
                }
                if (deviceState == null) {
                    deviceState = new SidecarDeviceState();
                }
                WindowLayoutInfo translate = sidecarAdapter.translate(newLayout, deviceState);
                ExtensionInterfaceCompat.ExtensionCallbackInterface extensionCallbackInterface = this.this$0.extensionCallback;
                if (extensionCallbackInterface != null) {
                    extensionCallbackInterface.onWindowLayoutChanged(activity, translate);
                }
            }
        }
    }

    @VisibleForTesting
    public SidecarCompat(@VisibleForTesting @Nullable SidecarInterface sidecarInterface, @NotNull SidecarAdapter sidecarAdapter) {
        Intrinsics.checkNotNullParameter(sidecarAdapter, "sidecarAdapter");
        this.sidecar = sidecarInterface;
        this.sidecarAdapter = sidecarAdapter;
        this.windowListenerRegisteredContexts = new LinkedHashMap();
        this.componentCallbackMap = new LinkedHashMap();
    }

    private final void registerConfigurationChangeListener(final Activity activity) {
        if (this.componentCallbackMap.get(activity) == null) {
            ComponentCallbacks componentCallbacks = new ComponentCallbacks() { // from class: androidx.window.layout.SidecarCompat$registerConfigurationChangeListener$configChangeObserver$1
                @Override // android.content.ComponentCallbacks
                public void onConfigurationChanged(@NotNull Configuration newConfig) {
                    Intrinsics.checkNotNullParameter(newConfig, "newConfig");
                    ExtensionInterfaceCompat.ExtensionCallbackInterface extensionCallbackInterface = SidecarCompat.this.extensionCallback;
                    if (extensionCallbackInterface != null) {
                        Activity activity2 = activity;
                        extensionCallbackInterface.onWindowLayoutChanged(activity2, SidecarCompat.this.getWindowLayoutInfo(activity2));
                    }
                }

                @Override // android.content.ComponentCallbacks
                public void onLowMemory() {
                }
            };
            this.componentCallbackMap.put(activity, componentCallbacks);
            activity.registerComponentCallbacks(componentCallbacks);
        }
    }

    private final void unregisterComponentCallback(Activity activity) {
        activity.unregisterComponentCallbacks(this.componentCallbackMap.get(activity));
        this.componentCallbackMap.remove(activity);
    }

    @Nullable
    public final SidecarInterface getSidecar() {
        return this.sidecar;
    }

    @VisibleForTesting
    @NotNull
    public final WindowLayoutInfo getWindowLayoutInfo(@NotNull Activity activity) {
        SidecarWindowLayoutInfo windowLayoutInfo;
        Intrinsics.checkNotNullParameter(activity, "activity");
        IBinder activityWindowToken$window_release = INSTANCE.getActivityWindowToken$window_release(activity);
        if (activityWindowToken$window_release == null) {
            return new WindowLayoutInfo(CollectionsKt__CollectionsKt.emptyList());
        }
        SidecarInterface sidecarInterface = this.sidecar;
        SidecarDeviceState sidecarDeviceState = null;
        if (sidecarInterface == null) {
            windowLayoutInfo = null;
        } else {
            windowLayoutInfo = sidecarInterface.getWindowLayoutInfo(activityWindowToken$window_release);
        }
        SidecarAdapter sidecarAdapter = this.sidecarAdapter;
        SidecarInterface sidecarInterface2 = this.sidecar;
        if (sidecarInterface2 != null) {
            sidecarDeviceState = sidecarInterface2.getDeviceState();
        }
        if (sidecarDeviceState == null) {
            sidecarDeviceState = new SidecarDeviceState();
        }
        return sidecarAdapter.translate(windowLayoutInfo, sidecarDeviceState);
    }

    @Override // androidx.window.layout.ExtensionInterfaceCompat
    public void onWindowLayoutChangeListenerAdded(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        IBinder activityWindowToken$window_release = INSTANCE.getActivityWindowToken$window_release(activity);
        if (activityWindowToken$window_release != null) {
            register(activityWindowToken$window_release, activity);
        } else {
            activity.getWindow().getDecorView().addOnAttachStateChangeListener(new FirstAttachAdapter(this, activity));
        }
    }

    @Override // androidx.window.layout.ExtensionInterfaceCompat
    public void onWindowLayoutChangeListenerRemoved(@NotNull Activity activity) {
        boolean z;
        SidecarInterface sidecarInterface;
        Intrinsics.checkNotNullParameter(activity, "activity");
        IBinder activityWindowToken$window_release = INSTANCE.getActivityWindowToken$window_release(activity);
        if (activityWindowToken$window_release == null) {
            return;
        }
        SidecarInterface sidecarInterface2 = this.sidecar;
        if (sidecarInterface2 != null) {
            sidecarInterface2.onWindowLayoutChangeListenerRemoved(activityWindowToken$window_release);
        }
        unregisterComponentCallback(activity);
        if (this.windowListenerRegisteredContexts.size() == 1) {
            z = true;
        } else {
            z = false;
        }
        this.windowListenerRegisteredContexts.remove(activityWindowToken$window_release);
        if (z && (sidecarInterface = this.sidecar) != null) {
            sidecarInterface.onDeviceStateListenersChanged(true);
        }
    }

    public final void register(@NotNull IBinder windowToken, @NotNull Activity activity) {
        SidecarInterface sidecarInterface;
        Intrinsics.checkNotNullParameter(windowToken, "windowToken");
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.windowListenerRegisteredContexts.put(windowToken, activity);
        SidecarInterface sidecarInterface2 = this.sidecar;
        if (sidecarInterface2 != null) {
            sidecarInterface2.onWindowLayoutChangeListenerAdded(windowToken);
        }
        if (this.windowListenerRegisteredContexts.size() == 1 && (sidecarInterface = this.sidecar) != null) {
            sidecarInterface.onDeviceStateListenersChanged(false);
        }
        ExtensionInterfaceCompat.ExtensionCallbackInterface extensionCallbackInterface = this.extensionCallback;
        if (extensionCallbackInterface != null) {
            extensionCallbackInterface.onWindowLayoutChanged(activity, getWindowLayoutInfo(activity));
        }
        registerConfigurationChangeListener(activity);
    }

    @Override // androidx.window.layout.ExtensionInterfaceCompat
    public void setExtensionCallback(@NotNull ExtensionInterfaceCompat.ExtensionCallbackInterface extensionCallback) {
        Intrinsics.checkNotNullParameter(extensionCallback, "extensionCallback");
        this.extensionCallback = new DistinctElementCallback(extensionCallback);
        SidecarInterface sidecarInterface = this.sidecar;
        if (sidecarInterface != null) {
            sidecarInterface.setSidecarCallback(new DistinctSidecarElementCallback(this.sidecarAdapter, new TranslatingCallback(this)));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002c A[Catch: all -> 0x018b, TryCatch #2 {all -> 0x018b, blocks: (B:3:0x0002, B:8:0x0024, B:10:0x002c, B:13:0x0034, B:16:0x003c, B:22:0x005d, B:24:0x0065, B:29:0x0084, B:31:0x008a, B:36:0x00a9, B:38:0x00af, B:41:0x00b5, B:42:0x00e7, B:44:0x0103, B:49:0x0106, B:51:0x0131, B:53:0x013b, B:54:0x0142, B:55:0x0143, B:56:0x014a, B:58:0x00b8, B:60:0x00df, B:62:0x014b, B:63:0x0152, B:64:0x0153, B:65:0x015a, B:66:0x015b, B:67:0x0166, B:68:0x00a5, B:69:0x0090, B:72:0x0097, B:73:0x0167, B:74:0x0172, B:75:0x0080, B:76:0x006b, B:79:0x0072, B:80:0x0173, B:81:0x017e, B:82:0x0059, B:83:0x0044, B:86:0x004b, B:87:0x0039, B:88:0x0031, B:89:0x017f, B:90:0x018a, B:91:0x0020, B:92:0x0009, B:95:0x0010), top: B:2:0x0002, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0065 A[Catch: all -> 0x018b, TryCatch #2 {all -> 0x018b, blocks: (B:3:0x0002, B:8:0x0024, B:10:0x002c, B:13:0x0034, B:16:0x003c, B:22:0x005d, B:24:0x0065, B:29:0x0084, B:31:0x008a, B:36:0x00a9, B:38:0x00af, B:41:0x00b5, B:42:0x00e7, B:44:0x0103, B:49:0x0106, B:51:0x0131, B:53:0x013b, B:54:0x0142, B:55:0x0143, B:56:0x014a, B:58:0x00b8, B:60:0x00df, B:62:0x014b, B:63:0x0152, B:64:0x0153, B:65:0x015a, B:66:0x015b, B:67:0x0166, B:68:0x00a5, B:69:0x0090, B:72:0x0097, B:73:0x0167, B:74:0x0172, B:75:0x0080, B:76:0x006b, B:79:0x0072, B:80:0x0173, B:81:0x017e, B:82:0x0059, B:83:0x0044, B:86:0x004b, B:87:0x0039, B:88:0x0031, B:89:0x017f, B:90:0x018a, B:91:0x0020, B:92:0x0009, B:95:0x0010), top: B:2:0x0002, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x008a A[Catch: all -> 0x018b, TryCatch #2 {all -> 0x018b, blocks: (B:3:0x0002, B:8:0x0024, B:10:0x002c, B:13:0x0034, B:16:0x003c, B:22:0x005d, B:24:0x0065, B:29:0x0084, B:31:0x008a, B:36:0x00a9, B:38:0x00af, B:41:0x00b5, B:42:0x00e7, B:44:0x0103, B:49:0x0106, B:51:0x0131, B:53:0x013b, B:54:0x0142, B:55:0x0143, B:56:0x014a, B:58:0x00b8, B:60:0x00df, B:62:0x014b, B:63:0x0152, B:64:0x0153, B:65:0x015a, B:66:0x015b, B:67:0x0166, B:68:0x00a5, B:69:0x0090, B:72:0x0097, B:73:0x0167, B:74:0x0172, B:75:0x0080, B:76:0x006b, B:79:0x0072, B:80:0x0173, B:81:0x017e, B:82:0x0059, B:83:0x0044, B:86:0x004b, B:87:0x0039, B:88:0x0031, B:89:0x017f, B:90:0x018a, B:91:0x0020, B:92:0x0009, B:95:0x0010), top: B:2:0x0002, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00af A[Catch: all -> 0x018b, TRY_LEAVE, TryCatch #2 {all -> 0x018b, blocks: (B:3:0x0002, B:8:0x0024, B:10:0x002c, B:13:0x0034, B:16:0x003c, B:22:0x005d, B:24:0x0065, B:29:0x0084, B:31:0x008a, B:36:0x00a9, B:38:0x00af, B:41:0x00b5, B:42:0x00e7, B:44:0x0103, B:49:0x0106, B:51:0x0131, B:53:0x013b, B:54:0x0142, B:55:0x0143, B:56:0x014a, B:58:0x00b8, B:60:0x00df, B:62:0x014b, B:63:0x0152, B:64:0x0153, B:65:0x015a, B:66:0x015b, B:67:0x0166, B:68:0x00a5, B:69:0x0090, B:72:0x0097, B:73:0x0167, B:74:0x0172, B:75:0x0080, B:76:0x006b, B:79:0x0072, B:80:0x0173, B:81:0x017e, B:82:0x0059, B:83:0x0044, B:86:0x004b, B:87:0x0039, B:88:0x0031, B:89:0x017f, B:90:0x018a, B:91:0x0020, B:92:0x0009, B:95:0x0010), top: B:2:0x0002, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x015b A[Catch: all -> 0x018b, TryCatch #2 {all -> 0x018b, blocks: (B:3:0x0002, B:8:0x0024, B:10:0x002c, B:13:0x0034, B:16:0x003c, B:22:0x005d, B:24:0x0065, B:29:0x0084, B:31:0x008a, B:36:0x00a9, B:38:0x00af, B:41:0x00b5, B:42:0x00e7, B:44:0x0103, B:49:0x0106, B:51:0x0131, B:53:0x013b, B:54:0x0142, B:55:0x0143, B:56:0x014a, B:58:0x00b8, B:60:0x00df, B:62:0x014b, B:63:0x0152, B:64:0x0153, B:65:0x015a, B:66:0x015b, B:67:0x0166, B:68:0x00a5, B:69:0x0090, B:72:0x0097, B:73:0x0167, B:74:0x0172, B:75:0x0080, B:76:0x006b, B:79:0x0072, B:80:0x0173, B:81:0x017e, B:82:0x0059, B:83:0x0044, B:86:0x004b, B:87:0x0039, B:88:0x0031, B:89:0x017f, B:90:0x018a, B:91:0x0020, B:92:0x0009, B:95:0x0010), top: B:2:0x0002, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00a5 A[Catch: all -> 0x018b, TryCatch #2 {all -> 0x018b, blocks: (B:3:0x0002, B:8:0x0024, B:10:0x002c, B:13:0x0034, B:16:0x003c, B:22:0x005d, B:24:0x0065, B:29:0x0084, B:31:0x008a, B:36:0x00a9, B:38:0x00af, B:41:0x00b5, B:42:0x00e7, B:44:0x0103, B:49:0x0106, B:51:0x0131, B:53:0x013b, B:54:0x0142, B:55:0x0143, B:56:0x014a, B:58:0x00b8, B:60:0x00df, B:62:0x014b, B:63:0x0152, B:64:0x0153, B:65:0x015a, B:66:0x015b, B:67:0x0166, B:68:0x00a5, B:69:0x0090, B:72:0x0097, B:73:0x0167, B:74:0x0172, B:75:0x0080, B:76:0x006b, B:79:0x0072, B:80:0x0173, B:81:0x017e, B:82:0x0059, B:83:0x0044, B:86:0x004b, B:87:0x0039, B:88:0x0031, B:89:0x017f, B:90:0x018a, B:91:0x0020, B:92:0x0009, B:95:0x0010), top: B:2:0x0002, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0167 A[Catch: all -> 0x018b, TryCatch #2 {all -> 0x018b, blocks: (B:3:0x0002, B:8:0x0024, B:10:0x002c, B:13:0x0034, B:16:0x003c, B:22:0x005d, B:24:0x0065, B:29:0x0084, B:31:0x008a, B:36:0x00a9, B:38:0x00af, B:41:0x00b5, B:42:0x00e7, B:44:0x0103, B:49:0x0106, B:51:0x0131, B:53:0x013b, B:54:0x0142, B:55:0x0143, B:56:0x014a, B:58:0x00b8, B:60:0x00df, B:62:0x014b, B:63:0x0152, B:64:0x0153, B:65:0x015a, B:66:0x015b, B:67:0x0166, B:68:0x00a5, B:69:0x0090, B:72:0x0097, B:73:0x0167, B:74:0x0172, B:75:0x0080, B:76:0x006b, B:79:0x0072, B:80:0x0173, B:81:0x017e, B:82:0x0059, B:83:0x0044, B:86:0x004b, B:87:0x0039, B:88:0x0031, B:89:0x017f, B:90:0x018a, B:91:0x0020, B:92:0x0009, B:95:0x0010), top: B:2:0x0002, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0080 A[Catch: all -> 0x018b, TryCatch #2 {all -> 0x018b, blocks: (B:3:0x0002, B:8:0x0024, B:10:0x002c, B:13:0x0034, B:16:0x003c, B:22:0x005d, B:24:0x0065, B:29:0x0084, B:31:0x008a, B:36:0x00a9, B:38:0x00af, B:41:0x00b5, B:42:0x00e7, B:44:0x0103, B:49:0x0106, B:51:0x0131, B:53:0x013b, B:54:0x0142, B:55:0x0143, B:56:0x014a, B:58:0x00b8, B:60:0x00df, B:62:0x014b, B:63:0x0152, B:64:0x0153, B:65:0x015a, B:66:0x015b, B:67:0x0166, B:68:0x00a5, B:69:0x0090, B:72:0x0097, B:73:0x0167, B:74:0x0172, B:75:0x0080, B:76:0x006b, B:79:0x0072, B:80:0x0173, B:81:0x017e, B:82:0x0059, B:83:0x0044, B:86:0x004b, B:87:0x0039, B:88:0x0031, B:89:0x017f, B:90:0x018a, B:91:0x0020, B:92:0x0009, B:95:0x0010), top: B:2:0x0002, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001e  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0173 A[Catch: all -> 0x018b, TryCatch #2 {all -> 0x018b, blocks: (B:3:0x0002, B:8:0x0024, B:10:0x002c, B:13:0x0034, B:16:0x003c, B:22:0x005d, B:24:0x0065, B:29:0x0084, B:31:0x008a, B:36:0x00a9, B:38:0x00af, B:41:0x00b5, B:42:0x00e7, B:44:0x0103, B:49:0x0106, B:51:0x0131, B:53:0x013b, B:54:0x0142, B:55:0x0143, B:56:0x014a, B:58:0x00b8, B:60:0x00df, B:62:0x014b, B:63:0x0152, B:64:0x0153, B:65:0x015a, B:66:0x015b, B:67:0x0166, B:68:0x00a5, B:69:0x0090, B:72:0x0097, B:73:0x0167, B:74:0x0172, B:75:0x0080, B:76:0x006b, B:79:0x0072, B:80:0x0173, B:81:0x017e, B:82:0x0059, B:83:0x0044, B:86:0x004b, B:87:0x0039, B:88:0x0031, B:89:0x017f, B:90:0x018a, B:91:0x0020, B:92:0x0009, B:95:0x0010), top: B:2:0x0002, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0059 A[Catch: all -> 0x018b, TryCatch #2 {all -> 0x018b, blocks: (B:3:0x0002, B:8:0x0024, B:10:0x002c, B:13:0x0034, B:16:0x003c, B:22:0x005d, B:24:0x0065, B:29:0x0084, B:31:0x008a, B:36:0x00a9, B:38:0x00af, B:41:0x00b5, B:42:0x00e7, B:44:0x0103, B:49:0x0106, B:51:0x0131, B:53:0x013b, B:54:0x0142, B:55:0x0143, B:56:0x014a, B:58:0x00b8, B:60:0x00df, B:62:0x014b, B:63:0x0152, B:64:0x0153, B:65:0x015a, B:66:0x015b, B:67:0x0166, B:68:0x00a5, B:69:0x0090, B:72:0x0097, B:73:0x0167, B:74:0x0172, B:75:0x0080, B:76:0x006b, B:79:0x0072, B:80:0x0173, B:81:0x017e, B:82:0x0059, B:83:0x0044, B:86:0x004b, B:87:0x0039, B:88:0x0031, B:89:0x017f, B:90:0x018a, B:91:0x0020, B:92:0x0009, B:95:0x0010), top: B:2:0x0002, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x017f A[Catch: all -> 0x018b, TryCatch #2 {all -> 0x018b, blocks: (B:3:0x0002, B:8:0x0024, B:10:0x002c, B:13:0x0034, B:16:0x003c, B:22:0x005d, B:24:0x0065, B:29:0x0084, B:31:0x008a, B:36:0x00a9, B:38:0x00af, B:41:0x00b5, B:42:0x00e7, B:44:0x0103, B:49:0x0106, B:51:0x0131, B:53:0x013b, B:54:0x0142, B:55:0x0143, B:56:0x014a, B:58:0x00b8, B:60:0x00df, B:62:0x014b, B:63:0x0152, B:64:0x0153, B:65:0x015a, B:66:0x015b, B:67:0x0166, B:68:0x00a5, B:69:0x0090, B:72:0x0097, B:73:0x0167, B:74:0x0172, B:75:0x0080, B:76:0x006b, B:79:0x0072, B:80:0x0173, B:81:0x017e, B:82:0x0059, B:83:0x0044, B:86:0x004b, B:87:0x0039, B:88:0x0031, B:89:0x017f, B:90:0x018a, B:91:0x0020, B:92:0x0009, B:95:0x0010), top: B:2:0x0002, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0020 A[Catch: all -> 0x018b, TryCatch #2 {all -> 0x018b, blocks: (B:3:0x0002, B:8:0x0024, B:10:0x002c, B:13:0x0034, B:16:0x003c, B:22:0x005d, B:24:0x0065, B:29:0x0084, B:31:0x008a, B:36:0x00a9, B:38:0x00af, B:41:0x00b5, B:42:0x00e7, B:44:0x0103, B:49:0x0106, B:51:0x0131, B:53:0x013b, B:54:0x0142, B:55:0x0143, B:56:0x014a, B:58:0x00b8, B:60:0x00df, B:62:0x014b, B:63:0x0152, B:64:0x0153, B:65:0x015a, B:66:0x015b, B:67:0x0166, B:68:0x00a5, B:69:0x0090, B:72:0x0097, B:73:0x0167, B:74:0x0172, B:75:0x0080, B:76:0x006b, B:79:0x0072, B:80:0x0173, B:81:0x017e, B:82:0x0059, B:83:0x0044, B:86:0x004b, B:87:0x0039, B:88:0x0031, B:89:0x017f, B:90:0x018a, B:91:0x0020, B:92:0x0009, B:95:0x0010), top: B:2:0x0002, inners: #0, #1 }] */
    @Override // androidx.window.layout.ExtensionInterfaceCompat
    @SuppressLint({"BanUncheckedReflection"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean validateExtensionInterface() {
        Class<?> cls;
        Method method;
        Class<?> returnType;
        Class cls2;
        Class<?> cls3;
        Method method2;
        Class<?> returnType2;
        Class<?> cls4;
        Method method3;
        Class<?> returnType3;
        Class<?> cls5;
        Method method4;
        Class<?> returnType4;
        try {
            SidecarInterface sidecarInterface = this.sidecar;
            if (sidecarInterface != null && (cls = sidecarInterface.getClass()) != null) {
                method = cls.getMethod("setSidecarCallback", SidecarInterface.SidecarCallback.class);
                if (method != null) {
                    returnType = null;
                } else {
                    returnType = method.getReturnType();
                }
                cls2 = Void.TYPE;
                if (!Intrinsics.areEqual(returnType, cls2)) {
                    SidecarInterface sidecarInterface2 = this.sidecar;
                    if (sidecarInterface2 != null) {
                        sidecarInterface2.getDeviceState();
                    }
                    SidecarInterface sidecarInterface3 = this.sidecar;
                    if (sidecarInterface3 != null) {
                        sidecarInterface3.onDeviceStateListenersChanged(true);
                    }
                    SidecarInterface sidecarInterface4 = this.sidecar;
                    if (sidecarInterface4 != null && (cls3 = sidecarInterface4.getClass()) != null) {
                        method2 = cls3.getMethod("getWindowLayoutInfo", IBinder.class);
                        if (method2 != null) {
                            returnType2 = null;
                        } else {
                            returnType2 = method2.getReturnType();
                        }
                        if (!Intrinsics.areEqual(returnType2, SidecarWindowLayoutInfo.class)) {
                            SidecarInterface sidecarInterface5 = this.sidecar;
                            if (sidecarInterface5 != null && (cls4 = sidecarInterface5.getClass()) != null) {
                                method3 = cls4.getMethod("onWindowLayoutChangeListenerAdded", IBinder.class);
                                if (method3 != null) {
                                    returnType3 = null;
                                } else {
                                    returnType3 = method3.getReturnType();
                                }
                                if (!Intrinsics.areEqual(returnType3, cls2)) {
                                    SidecarInterface sidecarInterface6 = this.sidecar;
                                    if (sidecarInterface6 != null && (cls5 = sidecarInterface6.getClass()) != null) {
                                        method4 = cls5.getMethod("onWindowLayoutChangeListenerRemoved", IBinder.class);
                                        if (method4 != null) {
                                            returnType4 = null;
                                        } else {
                                            returnType4 = method4.getReturnType();
                                        }
                                        if (!Intrinsics.areEqual(returnType4, cls2)) {
                                            SidecarDeviceState sidecarDeviceState = new SidecarDeviceState();
                                            try {
                                                sidecarDeviceState.posture = 3;
                                            } catch (NoSuchFieldError unused) {
                                                SidecarDeviceState.class.getMethod("setPosture", Integer.TYPE).invoke(sidecarDeviceState, 3);
                                                Object invoke = SidecarDeviceState.class.getMethod("getPosture", null).invoke(sidecarDeviceState, null);
                                                if (invoke != null) {
                                                    if (((Integer) invoke).intValue() != 3) {
                                                        throw new Exception("Invalid device posture getter/setter");
                                                    }
                                                } else {
                                                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Int");
                                                }
                                            }
                                            SidecarDisplayFeature sidecarDisplayFeature = new SidecarDisplayFeature();
                                            Rect rect = sidecarDisplayFeature.getRect();
                                            Intrinsics.checkNotNullExpressionValue(rect, "displayFeature.rect");
                                            sidecarDisplayFeature.setRect(rect);
                                            sidecarDisplayFeature.getType();
                                            sidecarDisplayFeature.setType(1);
                                            SidecarWindowLayoutInfo sidecarWindowLayoutInfo = new SidecarWindowLayoutInfo();
                                            try {
                                                List list = sidecarWindowLayoutInfo.displayFeatures;
                                            } catch (NoSuchFieldError unused2) {
                                                ArrayList arrayList = new ArrayList();
                                                arrayList.add(sidecarDisplayFeature);
                                                SidecarWindowLayoutInfo.class.getMethod("setDisplayFeatures", List.class).invoke(sidecarWindowLayoutInfo, arrayList);
                                                Object invoke2 = SidecarWindowLayoutInfo.class.getMethod("getDisplayFeatures", null).invoke(sidecarWindowLayoutInfo, null);
                                                if (invoke2 != null) {
                                                    if (!Intrinsics.areEqual(arrayList, (List) invoke2)) {
                                                        throw new Exception("Invalid display feature getter/setter");
                                                    }
                                                } else {
                                                    throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.List<androidx.window.sidecar.SidecarDisplayFeature>");
                                                }
                                            }
                                            return true;
                                        }
                                        throw new NoSuchMethodException(Intrinsics.stringPlus("Illegal return type for 'onWindowLayoutChangeListenerRemoved': ", returnType4));
                                    }
                                    method4 = null;
                                    if (method4 != null) {
                                    }
                                    if (!Intrinsics.areEqual(returnType4, cls2)) {
                                    }
                                } else {
                                    throw new NoSuchMethodException(Intrinsics.stringPlus("Illegal return type for 'onWindowLayoutChangeListenerAdded': ", returnType3));
                                }
                            }
                            method3 = null;
                            if (method3 != null) {
                            }
                            if (!Intrinsics.areEqual(returnType3, cls2)) {
                            }
                        } else {
                            throw new NoSuchMethodException(Intrinsics.stringPlus("Illegal return type for 'getWindowLayoutInfo': ", returnType2));
                        }
                    }
                    method2 = null;
                    if (method2 != null) {
                    }
                    if (!Intrinsics.areEqual(returnType2, SidecarWindowLayoutInfo.class)) {
                    }
                } else {
                    throw new NoSuchMethodException(Intrinsics.stringPlus("Illegal return type for 'setSidecarCallback': ", returnType));
                }
            }
            method = null;
            if (method != null) {
            }
            cls2 = Void.TYPE;
            if (!Intrinsics.areEqual(returnType, cls2)) {
            }
        } catch (Throwable unused3) {
            return false;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SidecarCompat(@NotNull Context context) {
        this(INSTANCE.getSidecarCompat$window_release(context), new SidecarAdapter(null, 1, null));
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
