package defpackage;

import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.collections.AbstractMutableList;
import kotlin.collections.ReversedList$listIterator$1;
import kotlin.jvm.internal.Intrinsics;

/* renamed from: 땋뒈딝됩딝돰땯딅뎻둣뒼땀딜돷땀땨뒉딹둡돷땄뒈듔딟딹듌듨땵된둑딻뒙돸땋뒀뎬땋디뎨딌둘뎰뒀뒤땵뒾뒝뒉듸땤둑둬땥땦뒼땫딸뒤딎든둥땸딸뒀땦딠뒬땜딠뎡돰뎸두뎡듰뒈돷딎돳돷돤둣땮딸딠뎠뒾돨땨땭돶뒘둘딎땭도땸딝뒀땃딌땲듌땃뎹돼딽땣둥돼뎸듟둡딻땩득됨땍듔뒙딐땍돸들뎹땬땄듬땹돸, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C1095xc103487b extends AbstractMutableList {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final List f5391xfbe0c504;

    public C1095xc103487b(List delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.f5391xfbe0c504 = delegate;
    }

    @Override // kotlin.collections.AbstractMutableList, java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        this.f5391xfbe0c504.add(AbstractC0591xb3732c82.access$reversePositionIndex(this, i), obj);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        this.f5391xfbe0c504.clear();
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        return this.f5391xfbe0c504.get(AbstractC0591xb3732c82.access$reverseElementIndex(this, i));
    }

    @Override // kotlin.collections.AbstractMutableList
    /* renamed from: getSize */
    public final int getF1272x3271d0aa() {
        return this.f5391xfbe0c504.size();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return new ReversedList$listIterator$1(this, 0);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator() {
        return new ReversedList$listIterator$1(this, 0);
    }

    @Override // kotlin.collections.AbstractMutableList
    public final Object removeAt(int i) {
        return this.f5391xfbe0c504.remove(AbstractC0591xb3732c82.access$reverseElementIndex(this, i));
    }

    @Override // kotlin.collections.AbstractMutableList, java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        return this.f5391xfbe0c504.set(AbstractC0591xb3732c82.access$reverseElementIndex(this, i), obj);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i) {
        return new ReversedList$listIterator$1(this, i);
    }
}
