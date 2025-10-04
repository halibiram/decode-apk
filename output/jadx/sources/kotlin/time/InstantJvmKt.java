package kotlin.time;

import kotlin.Metadata;
import kotlin.internal.PlatformImplementationsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0003\u001a\u000f\u0010\u0001\u001a\u00020\u0000H\u0001¢\u0006\u0004\b\u0001\u0010\u0002\u001a\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0000H\u0001¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lkotlin/time/Instant;", "systemClockNow", "()Lkotlin/time/Instant;", "instant", "", "serializedInstant", "(Lkotlin/time/Instant;)Ljava/lang/Object;", "kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class InstantJvmKt {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final Clock f1713xfbe0c504 = PlatformImplementationsKt.IMPLEMENTATIONS.getSystemClock();

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, kotlin.time.뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨] */
    @ExperimentalTime
    @NotNull
    public static final Object serializedInstant(@NotNull Instant instant) {
        Intrinsics.checkNotNullParameter(instant, "instant");
        long epochSeconds = instant.getEpochSeconds();
        int nanosecondsOfSecond = instant.getNanosecondsOfSecond();
        ?? obj = new Object();
        obj.f1732xfbe0c504 = epochSeconds;
        obj.f1733x3271d0aa = nanosecondsOfSecond;
        return obj;
    }

    @ExperimentalTime
    @NotNull
    public static final Instant systemClockNow() {
        return f1713xfbe0c504.now();
    }
}
