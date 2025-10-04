package defpackage;

import j$.util.AbstractC1344b;
import j$.util.Comparator;
import java.util.Comparator;
import java.util.function.Function;
import java.util.function.ToDoubleFunction;
import java.util.function.ToIntFunction;
import java.util.function.ToLongFunction;
import kotlin.jvm.internal.Intrinsics;

/* renamed from: 땋뒀뒀돠딝뎡되땠뎹땲된두뒝된땤둔땻땡득딠돸땝듐딝돷땠뎸듔뎠뎽땁땅뒻뎰딌땳득딎돷땠딨땔땰땣되돰디딜뎬땵뎰뎸돵뒹땱듟뒘돴땠둘땔뒷뒋땱딁둥뒷돵땣뎰뒐돸딸됨뎸뒾땰도드됴뒘돷듻땱듟뒋땠땜땫둡뒷딐땮땄뒛될뎨딁듬땩둑돷딁땁뒝디뒵딨돸듐딜둡땭디땩뒵딀돠뒼뒹딝뎽듸땫디땄딁듨땩딸, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C1094x5254129f implements Comparator, j$.util.Comparator {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Comparator f5390xfbe0c504;

    public C1094x5254129f(Comparator comparator) {
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        this.f5390xfbe0c504 = comparator;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return this.f5390xfbe0c504.compare(obj2, obj);
    }

    @Override // java.util.Comparator, j$.util.Comparator
    public final Comparator reversed() {
        return this.f5390xfbe0c504;
    }

    @Override // java.util.Comparator, j$.util.Comparator
    public final /* synthetic */ Comparator thenComparing(Comparator comparator) {
        return Comparator.CC.$default$thenComparing(this, comparator);
    }

    @Override // java.util.Comparator, j$.util.Comparator
    public final /* synthetic */ java.util.Comparator thenComparingDouble(ToDoubleFunction toDoubleFunction) {
        return Comparator.CC.$default$thenComparingDouble(this, toDoubleFunction);
    }

    @Override // java.util.Comparator, j$.util.Comparator
    public final /* synthetic */ java.util.Comparator thenComparingInt(ToIntFunction toIntFunction) {
        return Comparator.CC.$default$thenComparingInt(this, toIntFunction);
    }

    @Override // java.util.Comparator, j$.util.Comparator
    public final /* synthetic */ java.util.Comparator thenComparingLong(ToLongFunction toLongFunction) {
        return Comparator.CC.$default$thenComparingLong(this, toLongFunction);
    }

    @Override // java.util.Comparator, j$.util.Comparator
    public final /* synthetic */ java.util.Comparator thenComparing(Function function) {
        return Comparator.CC.$default$thenComparing(this, function);
    }

    @Override // java.util.Comparator, j$.util.Comparator
    public final /* synthetic */ java.util.Comparator thenComparing(Function function, java.util.Comparator comparator) {
        java.util.Comparator z;
        z = AbstractC1344b.z(this, Comparator.CC.comparing(function, comparator));
        return z;
    }
}
