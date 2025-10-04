package kotlin.time;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.AbstractC0691xdc9a9f41;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.WasExperimental;
import kotlin.jvm.internal.SourceDebugExtension;

@SinceKotlin(version = "1.9")
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u0018\u0010\f\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0086\u0002¢\u0006\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Lkotlin/time/TestTimeSource;", "Lkotlin/time/AbstractLongTimeSource;", "<init>", "()V", "", "read", "()J", "Lkotlin/time/Duration;", TypedValues.TransitionType.S_DURATION, "", "plusAssign-LRDsOJo", "(J)V", "plusAssign", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
@WasExperimental(markerClass = {ExperimentalTime.class})
@SourceDebugExtension({"SMAP\nTimeSources.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TimeSources.kt\nkotlin/time/TestTimeSource\n+ 2 longSaturatedMath.kt\nkotlin/time/LongSaturatedMathKt\n*L\n1#1,202:1\n80#2:203\n80#2:204\n*S KotlinDebug\n*F\n+ 1 TimeSources.kt\nkotlin/time/TestTimeSource\n*L\n176#1:203\n183#1:204\n*E\n"})
/* loaded from: classes3.dex */
public final class TestTimeSource extends AbstractLongTimeSource {

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public long f1719x1378447b;

    public TestTimeSource() {
        super(DurationUnit.NANOSECONDS);
        markNow();
    }

    /* renamed from: plusAssign-LRDsOJo, reason: not valid java name */
    public final void m2181plusAssignLRDsOJo(long duration) {
        long m2123toLongimpl = Duration.m2123toLongimpl(duration, getUnit());
        if (((m2123toLongimpl - 1) | 1) == Long.MAX_VALUE) {
            long m2092divUwyO8pc = Duration.m2092divUwyO8pc(duration, 2);
            if ((1 | (Duration.m2123toLongimpl(m2092divUwyO8pc, getUnit()) - 1)) != Long.MAX_VALUE) {
                long j = this.f1719x1378447b;
                try {
                    m2181plusAssignLRDsOJo(m2092divUwyO8pc);
                    m2181plusAssignLRDsOJo(Duration.m2112minusLRDsOJo(duration, m2092divUwyO8pc));
                    return;
                } catch (IllegalStateException e) {
                    this.f1719x1378447b = j;
                    throw e;
                }
            }
            m2182xfbe0c504(duration);
            throw null;
        }
        long j2 = this.f1719x1378447b;
        long j3 = j2 + m2123toLongimpl;
        if ((m2123toLongimpl ^ j2) >= 0 && (j2 ^ j3) < 0) {
            m2182xfbe0c504(duration);
            throw null;
        }
        this.f1719x1378447b = j3;
    }

    @Override // kotlin.time.AbstractLongTimeSource
    /* renamed from: read, reason: from getter */
    public long getF1719x1378447b() {
        return this.f1719x1378447b;
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final void m2182xfbe0c504(long j) {
        throw new IllegalStateException("TestTimeSource will overflow if its reading " + this.f1719x1378447b + AbstractC0691xdc9a9f41.shortName(getUnit()) + " is advanced by " + ((Object) Duration.m2124toStringimpl(j)) + '.');
    }
}
