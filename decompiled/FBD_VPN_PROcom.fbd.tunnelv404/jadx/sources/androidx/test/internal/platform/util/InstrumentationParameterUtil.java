package androidx.test.internal.platform.util;

import androidx.test.internal.util.Checks;
import androidx.test.platform.app.InstrumentationRegistry;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class InstrumentationParameterUtil {
    public static long getTimeoutMillis(String str, long j) {
        boolean z;
        if (j != 0) {
            z = true;
        } else {
            z = false;
        }
        Checks.checkArgument(z, "default timeout value cannot be zero");
        long parseLong = Long.parseLong(InstrumentationRegistry.getArguments().getString(str, "0"));
        if (parseLong != 0) {
            j = parseLong;
        }
        if (j < 0) {
            return TimeUnit.DAYS.toMillis(1L);
        }
        return j;
    }
}
