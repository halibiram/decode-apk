package kotlin.internal.jdk8;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Clock;
import kotlin.time.Instant;
import kotlin.time.jdk8.InstantConversionsJDK8Kt;

@Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"kotlin/internal/jdk8/JDK8PlatformImplementations$getSystemClock$1", "Lkotlin/time/Clock;", "now", "Lkotlin/time/Instant;", "kotlin-stdlib-jdk8"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class JDK8PlatformImplementations$getSystemClock$1 implements Clock {
    @Override // kotlin.time.Clock
    public Instant now() {
        j$.time.Instant now = j$.time.Instant.now();
        Intrinsics.checkNotNullExpressionValue(now, "now(...)");
        return InstantConversionsJDK8Kt.toKotlinInstant(now);
    }
}
