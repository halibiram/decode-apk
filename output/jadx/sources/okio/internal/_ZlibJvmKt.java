package okio.internal;

import java.util.GregorianCalendar;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a?\u0010\b\u001a\u00020\u00072\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0000H\u0000¢\u0006\u0004\b\b\u0010\t\"\u001a\u0010\n\u001a\u00020\u00008\u0000X\u0080D¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r*\f\b\u0000\u0010\u000f\"\u00020\u000e2\u00020\u000e¨\u0006\u0010"}, d2 = {"", "year", "month", "day", "hour", "minute", "second", "", "datePartsToEpochMillis", "(IIIIII)J", "DEFAULT_COMPRESSION", "I", "getDEFAULT_COMPRESSION", "()I", "Ljava/util/zip/CRC32;", "CRC32", "okio"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class _ZlibJvmKt {
    public static final long datePartsToEpochMillis(int i, int i2, int i3, int i4, int i5, int i6) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.set(14, 0);
        gregorianCalendar.set(i, i2 - 1, i3, i4, i5, i6);
        return gregorianCalendar.getTime().getTime();
    }

    public static final int getDEFAULT_COMPRESSION() {
        return -1;
    }
}
