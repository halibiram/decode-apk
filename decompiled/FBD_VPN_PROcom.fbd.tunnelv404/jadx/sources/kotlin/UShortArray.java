package kotlin;

import defpackage.C0349x34271fae;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;

@SinceKotlin(version = "1.3")
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0017\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010(\n\u0002\b\u0016\b\u0087@\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u00012B\u0011\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006B\u0011\b\u0001\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u0005\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\r\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fHÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013J\u0018\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0003H\u0086\u0002¢\u0006\u0004\b\u0015\u0010\u0016J \u0010\u001c\u001a\u00020\u00192\u0006\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u0002H\u0086\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0016\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00020\u001dH\u0096\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u0018\u0010$\u001a\u00020\u00112\u0006\u0010!\u001a\u00020\u0002H\u0096\u0002¢\u0006\u0004\b\"\u0010#J\u001d\u0010(\u001a\u00020\u00112\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u0016¢\u0006\u0004\b&\u0010'J\u000f\u0010+\u001a\u00020\u0011H\u0016¢\u0006\u0004\b)\u0010*R\u001a\u0010\b\u001a\u00020\u00078\u0000X\u0081\u0004¢\u0006\f\n\u0004\b,\u0010-\u0012\u0004\b.\u0010/R\u0014\u0010\u0004\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b0\u00101\u0088\u0001\b\u0092\u0001\u00020\u0007¨\u00063"}, d2 = {"Lkotlin/UShortArray;", "", "Lkotlin/UShort;", "", "size", "constructor-impl", "(I)[S", "", "storage", "([S)[S", "", "toString", "()Ljava/lang/String;", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "index", "get-Mh2AYeg", "([SI)S", "get", "value", "", "set-01HTLdE", "([SIS)V", "set", "", "iterator-impl", "([S)Ljava/util/Iterator;", "iterator", "element", "contains-xj2QHRw", "([SS)Z", "contains", "elements", "containsAll-impl", "([SLjava/util/Collection;)Z", "containsAll", "isEmpty-impl", "([S)Z", "isEmpty", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "[S", "getStorage$annotations", "()V", "getSize-impl", "([S)I", "뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
@ExperimentalUnsignedTypes
@JvmInline
@SourceDebugExtension({"SMAP\nUShortArray.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UShortArray.kt\nkotlin/UShortArray\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,82:1\n1740#2,3:83\n*S KotlinDebug\n*F\n+ 1 UShortArray.kt\nkotlin/UShortArray\n*L\n58#1:83,3\n*E\n"})
/* loaded from: classes3.dex */
public final class UShortArray implements Collection<UShort>, KMappedMarker {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
    public final short[] storage;

    public /* synthetic */ UShortArray(short[] sArr) {
        this.storage = sArr;
    }

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ UShortArray m1852boximpl(short[] sArr) {
        return new UShortArray(sArr);
    }

    @PublishedApi
    @NotNull
    /* renamed from: constructor-impl, reason: not valid java name */
    public static short[] m1854constructorimpl(@NotNull short[] storage) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        return storage;
    }

    /* renamed from: containsAll-impl, reason: not valid java name */
    public static boolean m1856containsAllimpl(short[] sArr, @NotNull Collection<UShort> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        Collection<UShort> collection = elements;
        if (collection.isEmpty()) {
            return true;
        }
        for (Object obj : collection) {
            if (!(obj instanceof UShort) || !ArraysKt___ArraysKt.contains(sArr, ((UShort) obj).getData())) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m1857equalsimpl(short[] sArr, Object obj) {
        return (obj instanceof UShortArray) && Intrinsics.areEqual(sArr, ((UShortArray) obj).getStorage());
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1858equalsimpl0(short[] sArr, short[] sArr2) {
        return Intrinsics.areEqual(sArr, sArr2);
    }

    /* renamed from: get-Mh2AYeg, reason: not valid java name */
    public static final short m1859getMh2AYeg(short[] sArr, int i) {
        return UShort.m1846constructorimpl(sArr[i]);
    }

    /* renamed from: getSize-impl, reason: not valid java name */
    public static int m1860getSizeimpl(short[] sArr) {
        return sArr.length;
    }

    @PublishedApi
    public static /* synthetic */ void getStorage$annotations() {
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m1861hashCodeimpl(short[] sArr) {
        return Arrays.hashCode(sArr);
    }

    /* renamed from: isEmpty-impl, reason: not valid java name */
    public static boolean m1862isEmptyimpl(short[] sArr) {
        if (sArr.length == 0) {
            return true;
        }
        return false;
    }

    @NotNull
    /* renamed from: iterator-impl, reason: not valid java name */
    public static Iterator<UShort> m1863iteratorimpl(short[] sArr) {
        return new C0349x34271fae(sArr);
    }

    /* renamed from: set-01HTLdE, reason: not valid java name */
    public static final void m1864set01HTLdE(short[] sArr, int i, short s) {
        sArr[i] = s;
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m1865toStringimpl(short[] sArr) {
        return "UShortArray(storage=" + Arrays.toString(sArr) + ')';
    }

    @Override // java.util.Collection
    public /* bridge */ /* synthetic */ boolean add(UShort uShort) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* renamed from: add-xj2QHRw, reason: not valid java name */
    public boolean m1866addxj2QHRw(short s) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends UShort> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (!(obj instanceof UShort)) {
            return false;
        }
        return m1867containsxj2QHRw(((UShort) obj).getData());
    }

    /* renamed from: contains-xj2QHRw, reason: not valid java name */
    public boolean m1867containsxj2QHRw(short s) {
        return m1855containsxj2QHRw(this.storage, s);
    }

    @Override // java.util.Collection
    public boolean containsAll(@NotNull Collection<?> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return m1856containsAllimpl(this.storage, elements);
    }

    @Override // java.util.Collection
    public boolean equals(Object other) {
        return m1857equalsimpl(this.storage, other);
    }

    @Override // java.util.Collection
    /* renamed from: getSize, reason: merged with bridge method [inline-methods] */
    public int size() {
        return m1860getSizeimpl(this.storage);
    }

    @Override // java.util.Collection
    public int hashCode() {
        return m1861hashCodeimpl(this.storage);
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return m1862isEmptyimpl(this.storage);
    }

    @Override // java.util.Collection, java.lang.Iterable
    @NotNull
    public Iterator<UShort> iterator() {
        return m1863iteratorimpl(this.storage);
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        return CollectionToArray.toArray(this);
    }

    public String toString() {
        return m1865toStringimpl(this.storage);
    }

    /* renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ short[] getStorage() {
        return this.storage;
    }

    @NotNull
    /* renamed from: constructor-impl, reason: not valid java name */
    public static short[] m1853constructorimpl(int i) {
        return m1854constructorimpl(new short[i]);
    }

    /* renamed from: contains-xj2QHRw, reason: not valid java name */
    public static boolean m1855containsxj2QHRw(short[] sArr, short s) {
        return ArraysKt___ArraysKt.contains(sArr, s);
    }

    @Override // java.util.Collection
    public <T> T[] toArray(T[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return (T[]) CollectionToArray.toArray(this, array);
    }
}
