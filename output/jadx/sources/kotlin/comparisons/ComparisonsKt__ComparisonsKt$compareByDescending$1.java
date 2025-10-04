package kotlin.comparisons;

import defpackage.AbstractC0613x9f5dff2a;
import java.util.Comparator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 176)
/* loaded from: classes3.dex */
public final class ComparisonsKt__ComparisonsKt$compareByDescending$1<T> implements Comparator {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ Function1 f1326xfbe0c504;

    public ComparisonsKt__ComparisonsKt$compareByDescending$1(Function1<? super T, ? extends Comparable<?>> function1) {
        this.f1326xfbe0c504 = function1;
    }

    @Override // java.util.Comparator
    public final int compare(T t, T t2) {
        Function1 function1 = this.f1326xfbe0c504;
        return AbstractC0613x9f5dff2a.compareValues((Comparable) function1.invoke(t2), (Comparable) function1.invoke(t));
    }
}
