package kotlin.collections.unsigned;

import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.UInt;
import kotlin.UIntArray;
import kotlin.collections.AbstractList;
import kotlin.collections.ArraysKt___ArraysKt;

@Metadata(d1 = {"\u0000'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\r*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00060\u0003j\u0002`\u0004J\b\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\u0002H\u0096\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0018\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u0006H\u0096\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0014\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0016\u0010\u0012R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\u0017"}, d2 = {"kotlin/collections/unsigned/UArraysKt___UArraysJvmKt$asList$1", "Lkotlin/collections/AbstractList;", "Lkotlin/UInt;", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "size", "", "getSize", "()I", "isEmpty", "", "contains", "element", "contains-WZ4Q5Ns", "(I)Z", "get", "index", "get-pVg5ArA", "(I)I", "indexOf", "indexOf-WZ4Q5Ns", "lastIndexOf", "lastIndexOf-WZ4Q5Ns", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class UArraysKt___UArraysJvmKt$asList$1 extends AbstractList<UInt> implements RandomAccess {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int[] f1311xfbe0c504;

    public UArraysKt___UArraysJvmKt$asList$1(int[] iArr) {
        this.f1311xfbe0c504 = iArr;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (!(obj instanceof UInt)) {
            return false;
        }
        return m1949containsWZ4Q5Ns(((UInt) obj).getData());
    }

    /* renamed from: contains-WZ4Q5Ns, reason: not valid java name */
    public boolean m1949containsWZ4Q5Ns(int element) {
        return UIntArray.m1807containsWZ4Q5Ns(this.f1311xfbe0c504, element);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public /* bridge */ /* synthetic */ Object get(int i) {
        return UInt.m1797boximpl(m1950getpVg5ArA(i));
    }

    /* renamed from: get-pVg5ArA, reason: not valid java name */
    public int m1950getpVg5ArA(int index) {
        return UIntArray.m1811getpVg5ArA(this.f1311xfbe0c504, index);
    }

    @Override // kotlin.collections.AbstractList, kotlin.collections.AbstractCollection
    /* renamed from: getSize */
    public int getF1257x1378447b() {
        return UIntArray.m1812getSizeimpl(this.f1311xfbe0c504);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (!(obj instanceof UInt)) {
            return -1;
        }
        return m1951indexOfWZ4Q5Ns(((UInt) obj).getData());
    }

    /* renamed from: indexOf-WZ4Q5Ns, reason: not valid java name */
    public int m1951indexOfWZ4Q5Ns(int element) {
        return ArraysKt___ArraysKt.indexOf(this.f1311xfbe0c504, element);
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return UIntArray.m1814isEmptyimpl(this.f1311xfbe0c504);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (!(obj instanceof UInt)) {
            return -1;
        }
        return m1952lastIndexOfWZ4Q5Ns(((UInt) obj).getData());
    }

    /* renamed from: lastIndexOf-WZ4Q5Ns, reason: not valid java name */
    public int m1952lastIndexOfWZ4Q5Ns(int element) {
        return ArraysKt___ArraysKt.lastIndexOf(this.f1311xfbe0c504, element);
    }
}
