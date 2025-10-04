package androidx.test.internal.util;

import android.util.Log;
import androidx.annotation.RestrictTo;
import androidx.core.os.EnvironmentCompat;
import androidx.test.internal.util.ProcSummary;
import defpackage.AbstractC0362x4440ab85;
import defpackage.C0941x2175168e;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class LogUtil {
    private static volatile String myProcName;

    /* loaded from: classes.dex */
    public interface Supplier {
        String get();
    }

    private static boolean isLoggable(String str, int i) {
        if (str.length() > 23) {
            str = str.substring(0, 22);
        }
        return Log.isLoggable(str, i);
    }

    public static /* synthetic */ String lambda$logDebug$0(String str) {
        return str;
    }

    public static /* synthetic */ String lambda$logDebugWithProcess$1(String str) {
        StringBuilder m2943xc20437a5 = AbstractC0362x4440ab85.m2943xc20437a5(str, " in ");
        m2943xc20437a5.append(procName());
        return m2943xc20437a5.toString();
    }

    public static Supplier lazyArg(Supplier supplier) {
        return supplier;
    }

    public static void logDebug(String str, String str2, Object... objArr) {
        logDebug(str, new C0941x2175168e(str2, 1), objArr);
    }

    public static void logDebugWithProcess(String str, String str2, Object... objArr) {
        logDebug(str, new C0941x2175168e(str2, 0), objArr);
    }

    private static final String procName() {
        String str;
        String str2 = myProcName;
        if (str2 == null) {
            try {
                str = ProcSummary.summarize("self").cmdline;
            } catch (ProcSummary.SummaryException unused) {
                str = EnvironmentCompat.MEDIA_UNKNOWN;
            }
            if (str.length() > 64 && str.contains("-classpath")) {
                return "robolectric";
            }
            return str;
        }
        return str2;
    }

    private static void logDebug(String str, Supplier supplier, Object... objArr) {
        if (isLoggable(str, 3)) {
            Object[] objArr2 = new Object[objArr.length];
            for (int i = 0; i < objArr.length; i++) {
                Object obj = objArr[i];
                if (obj instanceof Supplier) {
                    objArr2[i] = ((Supplier) obj).get();
                } else {
                    objArr2[i] = obj;
                }
            }
            String.format(supplier.get(), objArr2);
        }
    }
}
