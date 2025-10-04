package okhttp3.internal.platform.android;

import java.util.logging.Level;
import java.util.logging.LogRecord;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"okhttp"}, k = 2, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class AndroidLogKt {
    public static final int access$getAndroidLevel(LogRecord logRecord) {
        int intValue = logRecord.getLevel().intValue();
        Level level = Level.INFO;
        if (intValue > level.intValue()) {
            return 5;
        }
        if (logRecord.getLevel().intValue() == level.intValue()) {
            return 4;
        }
        return 3;
    }
}
