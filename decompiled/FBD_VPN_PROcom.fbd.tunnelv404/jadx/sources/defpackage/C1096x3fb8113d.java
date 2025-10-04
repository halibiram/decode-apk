package defpackage;

import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.collections.AbstractList;
import kotlin.collections.ReversedListReadOnly$listIterator$1;
import kotlin.jvm.internal.Intrinsics;

/* renamed from: 땋뒵딃땔뒙뎡뒬딜둥땦뒾됐땅듬뒬돛둡드땸됫돠됴땍듼뎽뒘뎠될땨뒤뒬딜듌땹둑두디뎠딀땭둠듻뎸돳땃둥됩딞땰땩땐땋뒈듨딁뒘돰뒘뒷딄딤딽디땝땜딐뎡디땟땹뒛돨뒬딸돶뎽땣땭두땄듸뎬딄땩따둔딅됨땁뒘땀돴뒝딟됫땍둬도됫땔뒙뒝땐뎡딹돴돵딠뎽뎸됐듔딤돨뎨땧딨돠땰뎬듟둔뎡될돰땅땬듬땸뒤, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C1096x3fb8113d extends AbstractList {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final List f5392xfbe0c504;

    public C1096x3fb8113d(List delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.f5392xfbe0c504 = delegate;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final Object get(int i) {
        return this.f5392xfbe0c504.get(AbstractC0591xb3732c82.access$reverseElementIndex(this, i));
    }

    @Override // kotlin.collections.AbstractList, kotlin.collections.AbstractCollection
    public final int getSize() {
        return this.f5392xfbe0c504.size();
    }

    @Override // kotlin.collections.AbstractList, kotlin.collections.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new ReversedListReadOnly$listIterator$1(this, 0);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final ListIterator listIterator() {
        return new ReversedListReadOnly$listIterator$1(this, 0);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final ListIterator listIterator(int i) {
        return new ReversedListReadOnly$listIterator$1(this, i);
    }
}
