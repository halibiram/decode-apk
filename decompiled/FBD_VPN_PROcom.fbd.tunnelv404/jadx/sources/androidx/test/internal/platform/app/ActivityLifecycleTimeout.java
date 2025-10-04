package androidx.test.internal.platform.app;

import androidx.annotation.RestrictTo;
import androidx.test.internal.platform.util.InstrumentationParameterUtil;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class ActivityLifecycleTimeout {
    private static final String ACTIVITY_LIFECYCLE_CHANGE_TIMEOUT_MILLIS_KEY = "activityLifecycleChangeTimeoutMillis";
    private static final int DEFAULT_ACTIVITY_LIFECYCLE_CHANGE_TIMEOUT_MILLIS = 45000;

    public static long getMillis() {
        return InstrumentationParameterUtil.getTimeoutMillis(ACTIVITY_LIFECYCLE_CHANGE_TIMEOUT_MILLIS_KEY, 45000L);
    }
}
