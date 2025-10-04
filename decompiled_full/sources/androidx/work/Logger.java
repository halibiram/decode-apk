package androidx.work;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import defpackage.AbstractC0362x4440ab85;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public abstract class Logger {
    private static final int MAX_PREFIXED_TAG_LENGTH = 20;
    private static final int MAX_TAG_LENGTH = 23;
    private static final String TAG_PREFIX = "WM-";
    private static final Object sLock = new Object();
    private static volatile Logger sLogger;

    /* loaded from: classes.dex */
    public static class LogcatLogger extends Logger {
        private final int mLoggingLevel;

        public LogcatLogger(int i) {
            super(i);
            this.mLoggingLevel = i;
        }

        @Override // androidx.work.Logger
        public void debug(@NonNull String str, @NonNull String str2) {
        }

        @Override // androidx.work.Logger
        public void error(@NonNull String str, @NonNull String str2) {
        }

        @Override // androidx.work.Logger
        public void info(@NonNull String str, @NonNull String str2) {
        }

        @Override // androidx.work.Logger
        public void verbose(@NonNull String str, @NonNull String str2) {
        }

        @Override // androidx.work.Logger
        public void warning(@NonNull String str, @NonNull String str2) {
        }

        @Override // androidx.work.Logger
        public void debug(@NonNull String str, @NonNull String str2, @NonNull Throwable th) {
        }

        @Override // androidx.work.Logger
        public void error(@NonNull String str, @NonNull String str2, @NonNull Throwable th) {
        }

        @Override // androidx.work.Logger
        public void info(@NonNull String str, @NonNull String str2, @NonNull Throwable th) {
        }

        @Override // androidx.work.Logger
        public void verbose(@NonNull String str, @NonNull String str2, @NonNull Throwable th) {
        }

        @Override // androidx.work.Logger
        public void warning(@NonNull String str, @NonNull String str2, @NonNull Throwable th) {
        }
    }

    public Logger(int i) {
    }

    @NonNull
    public static Logger get() {
        Logger logger;
        synchronized (sLock) {
            try {
                if (sLogger == null) {
                    sLogger = new LogcatLogger(3);
                }
                logger = sLogger;
            } catch (Throwable th) {
                throw th;
            }
        }
        return logger;
    }

    public static void setLogger(@NonNull Logger logger) {
        synchronized (sLock) {
            try {
                if (sLogger == null) {
                    sLogger = logger;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @NonNull
    public static String tagWithPrefix(@NonNull String str) {
        int length = str.length();
        StringBuilder m2938x1aebc6d9 = AbstractC0362x4440ab85.m2938x1aebc6d9(23, TAG_PREFIX);
        int i = MAX_PREFIXED_TAG_LENGTH;
        if (length >= i) {
            m2938x1aebc6d9.append(str.substring(0, i));
        } else {
            m2938x1aebc6d9.append(str);
        }
        return m2938x1aebc6d9.toString();
    }

    public abstract void debug(@NonNull String str, @NonNull String str2);

    public abstract void debug(@NonNull String str, @NonNull String str2, @NonNull Throwable th);

    public abstract void error(@NonNull String str, @NonNull String str2);

    public abstract void error(@NonNull String str, @NonNull String str2, @NonNull Throwable th);

    public abstract void info(@NonNull String str, @NonNull String str2);

    public abstract void info(@NonNull String str, @NonNull String str2, @NonNull Throwable th);

    public abstract void verbose(@NonNull String str, @NonNull String str2);

    public abstract void verbose(@NonNull String str, @NonNull String str2, @NonNull Throwable th);

    public abstract void warning(@NonNull String str, @NonNull String str2);

    public abstract void warning(@NonNull String str, @NonNull String str2, @NonNull Throwable th);
}
