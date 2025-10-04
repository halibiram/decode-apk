package defpackage;

import java.util.Collection;
import java.util.Iterator;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* renamed from: 뎽듼땪뒻딅뒋땬딁뒬뎽딌듌돰됫돶딟들뎽뒛도땹돤뒹뒘땮들든땱딟됩뒵뒻뒨딝땍뒛득둑돤뎽뎻듽뒬뒙딽듐딠땩듼땭땣뒘땁됐딐딃딁땪됨딄땄딄땁땸드돸뎰도뒋딠듔땠딃딄도듼돝뎸돤듽땲땦땨뎽땫두딄딄딽딁뒋땫땯돠듌듸뒼돝땁땱땤둣둠뒙도땸딄뎻듌땟듨될됨땔땧돸돛드됴딞땬딟돸드땤땨땐뒋땥딎, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0404xa8ba67d5 implements Collection, KMappedMarker {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Object[] f3837xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final boolean f3838x3271d0aa;

    public C0404xa8ba67d5(Object[] values, boolean z) {
        Intrinsics.checkNotNullParameter(values, "values");
        this.f3837xfbe0c504 = values;
        this.f3838x3271d0aa = z;
    }

    @Override // java.util.Collection
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean contains(Object obj) {
        return ArraysKt___ArraysKt.contains(this.f3837xfbe0c504, obj);
    }

    @Override // java.util.Collection
    public final boolean containsAll(Collection elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        Collection collection = elements;
        if (collection.isEmpty()) {
            return true;
        }
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!ArraysKt___ArraysKt.contains(this.f3837xfbe0c504, it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection
    public final boolean isEmpty() {
        if (this.f3837xfbe0c504.length == 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return ArrayIteratorKt.iterator(this.f3837xfbe0c504);
    }

    @Override // java.util.Collection
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final int size() {
        return this.f3837xfbe0c504.length;
    }

    @Override // java.util.Collection
    public final Object[] toArray(Object[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return CollectionToArray.toArray(this, array);
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        return AbstractC0586x968d4673.copyToArrayOfAny(this.f3837xfbe0c504, this.f3838x3271d0aa);
    }
}
