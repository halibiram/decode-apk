package androidx.test.platform.app;

import android.app.Activity;
import android.app.AppComponentFactory;
import android.app.Application;
import android.content.Intent;
import android.os.Build;
import androidx.annotation.ChecksSdkIntAtLeast;
import androidx.annotation.RestrictTo;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J&\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0007J\u001a\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J\b\u0010\u0015\u001a\u00020\u0016H\u0003R0\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@FX\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0006\u0010\u0002\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\u0017"}, d2 = {"Landroidx/test/platform/app/AppComponentFactoryRegistry;", "", "()V", "value", "Landroid/app/AppComponentFactory;", "appComponentFactory", "getAppComponentFactory$annotations", "getAppComponentFactory", "()Landroid/app/AppComponentFactory;", "setAppComponentFactory", "(Landroid/app/AppComponentFactory;)V", "instantiateActivity", "Landroid/app/Activity;", "cl", "Ljava/lang/ClassLoader;", "className", "", "intent", "Landroid/content/Intent;", "instantiateApplication", "Landroid/app/Application;", "isVersionCodeAtLeastP", "", "runner_monitor_java_androidx_test-monitor_kt"}, k = 1, mv = {1, 8, 0}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class AppComponentFactoryRegistry {

    @NotNull
    public static final AppComponentFactoryRegistry INSTANCE = new AppComponentFactoryRegistry();

    @Nullable
    private static volatile AppComponentFactory appComponentFactory;

    private AppComponentFactoryRegistry() {
    }

    @Nullable
    public static final AppComponentFactory getAppComponentFactory() {
        return appComponentFactory;
    }

    @JvmStatic
    public static /* synthetic */ void getAppComponentFactory$annotations() {
    }

    @JvmStatic
    @Nullable
    public static final Activity instantiateActivity(@NotNull ClassLoader cl, @NotNull String className, @Nullable Intent intent) {
        AppComponentFactory appComponentFactory2;
        Activity instantiateActivity;
        Intrinsics.checkNotNullParameter(cl, "cl");
        Intrinsics.checkNotNullParameter(className, "className");
        if (INSTANCE.isVersionCodeAtLeastP() && (appComponentFactory2 = appComponentFactory) != null) {
            instantiateActivity = appComponentFactory2.instantiateActivity(cl, className, intent);
            return instantiateActivity;
        }
        return null;
    }

    public static /* synthetic */ Activity instantiateActivity$default(ClassLoader classLoader, String str, Intent intent, int i, Object obj) {
        if ((i & 4) != 0) {
            intent = null;
        }
        return instantiateActivity(classLoader, str, intent);
    }

    @JvmStatic
    @Nullable
    public static final Application instantiateApplication(@NotNull ClassLoader cl, @NotNull String className) {
        AppComponentFactory appComponentFactory2;
        Application instantiateApplication;
        Intrinsics.checkNotNullParameter(cl, "cl");
        Intrinsics.checkNotNullParameter(className, "className");
        if (INSTANCE.isVersionCodeAtLeastP() && (appComponentFactory2 = appComponentFactory) != null) {
            instantiateApplication = appComponentFactory2.instantiateApplication(cl, className);
            return instantiateApplication;
        }
        return null;
    }

    @ChecksSdkIntAtLeast(api = 28)
    private final boolean isVersionCodeAtLeastP() {
        if (Build.VERSION.SDK_INT >= 28) {
            return true;
        }
        return false;
    }

    public static final void setAppComponentFactory(@Nullable AppComponentFactory appComponentFactory2) {
        if (INSTANCE.isVersionCodeAtLeastP()) {
            appComponentFactory = appComponentFactory2;
            return;
        }
        throw new IllegalStateException("AppComponentFactoryRegistry is not supported on 'VERSION.SDK_INT < VERSION_CODES.P'");
    }
}
