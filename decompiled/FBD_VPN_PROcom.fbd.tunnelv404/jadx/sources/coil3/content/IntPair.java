package coil3.content;

import coil3.annotation.ExperimentalCoilApi;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\t\n\u0000\b\u0087@\u0018\u00002\u00020\u0001B\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\b\u001a\u00020\u0007HÖ\u0001¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0003\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0011\u0088\u0001\u0013\u0092\u0001\u00020\u0014¨\u0006\u0015"}, d2 = {"Lcoil3/util/IntPair;", "", "", "first", "second", "constructor-impl", "(II)J", "", "toString", "()Ljava/lang/String;", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "getFirst-impl", "(J)I", "getSecond-impl", "value", "", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
@ExperimentalCoilApi
/* loaded from: classes.dex */
public final class IntPair {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final long f886xfbe0c504;

    public /* synthetic */ IntPair(long j) {
        this.f886xfbe0c504 = j;
    }

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ IntPair m972boximpl(long j) {
        return new IntPair(j);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static long m973constructorimpl(int i, int i2) {
        return (i2 & 4294967295L) | (i << 32);
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m974equalsimpl(long j, Object obj) {
        return (obj instanceof IntPair) && j == ((IntPair) obj).getF886xfbe0c504();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m975equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* renamed from: getFirst-impl, reason: not valid java name */
    public static final int m976getFirstimpl(long j) {
        return (int) (j >> 32);
    }

    /* renamed from: getSecond-impl, reason: not valid java name */
    public static final int m977getSecondimpl(long j) {
        return (int) (j & 4294967295L);
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m978hashCodeimpl(long j) {
        return (int) (j ^ (j >>> 32));
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m979toStringimpl(long j) {
        return "IntPair(value=" + j + ')';
    }

    public boolean equals(Object other) {
        return m974equalsimpl(this.f886xfbe0c504, other);
    }

    public int hashCode() {
        return m978hashCodeimpl(this.f886xfbe0c504);
    }

    public String toString() {
        return m979toStringimpl(this.f886xfbe0c504);
    }

    /* renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ long getF886xfbe0c504() {
        return this.f886xfbe0c504;
    }
}
