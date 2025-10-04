package androidx.test.internal.util;

import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.test.internal.platform.ServiceLoaderWrapper;
import androidx.test.internal.platform.ThreadChecker;
import com.google.errorprone.annotations.CanIgnoreReturnValue;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class Checks {

    /* loaded from: classes.dex */
    public static class ThreadCheckerSingleton {
        private static final ThreadChecker INSTANCE = (ThreadChecker) ServiceLoaderWrapper.loadSingleService(ThreadChecker.class, new Object());

        private ThreadCheckerSingleton() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ ThreadChecker lambda$static$0() {
            return new ThreadChecker() { // from class: androidx.test.internal.util.Checks.ThreadCheckerSingleton.1
                @Override // androidx.test.internal.platform.ThreadChecker
                public void checkMainThread() {
                    Checks.checkState(Thread.currentThread().equals(Looper.getMainLooper().getThread()), "Method cannot be called off the main application thread (on: %s)", Thread.currentThread().getName());
                }

                @Override // androidx.test.internal.platform.ThreadChecker
                public void checkNotMainThread() {
                    Checks.checkState(!Thread.currentThread().equals(Looper.getMainLooper().getThread()), "Method cannot be called on the main application thread (on: %s)", Thread.currentThread().getName());
                }
            };
        }
    }

    private Checks() {
    }

    public static void checkArgument(boolean z) {
        if (!z) {
            throw new IllegalArgumentException();
        }
    }

    public static void checkMainThread() {
        ThreadCheckerSingleton.INSTANCE.checkMainThread();
    }

    public static void checkNotMainThread() {
        ThreadCheckerSingleton.INSTANCE.checkNotMainThread();
    }

    @NonNull
    @CanIgnoreReturnValue
    public static <T> T checkNotNull(T t) {
        t.getClass();
        return t;
    }

    public static void checkState(boolean z) {
        if (!z) {
            throw new IllegalStateException();
        }
    }

    private static String format(String str, Object... objArr) {
        int indexOf;
        String valueOf = String.valueOf(str);
        StringBuilder sb = new StringBuilder((objArr.length * 16) + valueOf.length());
        int i = 0;
        int i2 = 0;
        while (i < objArr.length && (indexOf = valueOf.indexOf("%s", i2)) != -1) {
            sb.append(valueOf.substring(i2, indexOf));
            sb.append(objArr[i]);
            i2 = indexOf + 2;
            i++;
        }
        sb.append(valueOf.substring(i2));
        if (i < objArr.length) {
            sb.append(" [");
            sb.append(objArr[i]);
            for (int i3 = i + 1; i3 < objArr.length; i3++) {
                sb.append(", ");
                sb.append(objArr[i3]);
            }
            sb.append(']');
        }
        return sb.toString();
    }

    public static void checkArgument(boolean z, Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    @NonNull
    @CanIgnoreReturnValue
    public static <T> T checkNotNull(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    public static void checkState(boolean z, Object obj) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    public static void checkArgument(boolean z, String str, Object... objArr) {
        if (!z) {
            throw new IllegalArgumentException(format(str, objArr));
        }
    }

    @NonNull
    @CanIgnoreReturnValue
    public static <T> T checkNotNull(T t, String str, Object... objArr) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(format(str, objArr));
    }

    public static void checkState(boolean z, String str, Object... objArr) {
        if (!z) {
            throw new IllegalStateException(format(str, objArr));
        }
    }
}
