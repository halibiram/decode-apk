package j$.util;

import j$.time.Instant;
import java.util.Date;

/* loaded from: classes4.dex */
public final /* synthetic */ class DesugarDate {
    public static Date from(Instant instant) {
        try {
            return new Date(instant.G());
        } catch (ArithmeticException e) {
            throw new IllegalArgumentException(e);
        }
    }
}
