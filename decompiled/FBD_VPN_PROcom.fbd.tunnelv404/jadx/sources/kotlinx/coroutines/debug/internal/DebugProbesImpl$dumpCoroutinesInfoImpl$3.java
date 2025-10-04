package kotlinx.coroutines.debug.internal;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.debug.internal.DebugProbesImpl;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDebugProbesImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DebugProbesImpl.kt\nkotlinx/coroutines/debug/internal/DebugProbesImpl$dumpCoroutinesInfoImpl$3\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,616:1\n1#2:617\n*E\n"})
/* loaded from: classes3.dex */
public final class DebugProbesImpl$dumpCoroutinesInfoImpl$3 implements Function1<DebugProbesImpl.CoroutineOwner<?>, Object> {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ Function2 f1894xfbe0c504;

    public DebugProbesImpl$dumpCoroutinesInfoImpl$3(Function2<? super DebugProbesImpl.CoroutineOwner<?>, ? super CoroutineContext, Object> function2) {
        this.f1894xfbe0c504 = function2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(DebugProbesImpl.CoroutineOwner<?> coroutineOwner) {
        CoroutineContext context;
        if (DebugProbesImpl.access$isFinished(DebugProbesImpl.INSTANCE, coroutineOwner) || (context = coroutineOwner.info.getContext()) == null) {
            return null;
        }
        return this.f1894xfbe0c504.invoke(coroutineOwner, context);
    }
}
