package j$.util;

import j$.time.Instant;
import java.util.Date;

/* loaded from: classes4.dex */
public final /* synthetic */ class DateRetargetClass {
    public static Instant toInstant(Date date) {
        return Instant.D(date.getTime());
    }
}
