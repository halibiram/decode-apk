package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0005\"\u001a\u0010\u0001\u001a\u00020\u00008\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0001\u0010\u0002\u001a\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"", "ANDROID_DETECTED", "Z", "getANDROID_DETECTED", "()Z", "kotlinx-coroutines-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nFastServiceLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FastServiceLoader.kt\nkotlinx/coroutines/internal/FastServiceLoaderKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,169:1\n1#2:170\n*E\n"})
/* loaded from: classes3.dex */
public final class FastServiceLoaderKt {
    static {
        Object m1764constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            m1764constructorimpl = Result.m1764constructorimpl(Class.forName("android.os.Build"));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m1764constructorimpl = Result.m1764constructorimpl(ResultKt.createFailure(th));
        }
        Result.m1770isSuccessimpl(m1764constructorimpl);
    }

    public static final boolean getANDROID_DETECTED() {
        return true;
    }
}
