package j$.util;

import java.io.Serializable;

/* renamed from: j$.util.f, reason: case insensitive filesystem */
/* loaded from: classes4.dex */
public final class C1348f extends RuntimeException {
    public static void a(String str, Serializable serializable) {
        throw new RuntimeException("Unsupported " + str + " :" + serializable);
    }
}
