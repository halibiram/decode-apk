package kotlin.collections;

import androidx.exifinterface.media.ExifInterface;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0413x7cc5182f;
import defpackage.AbstractC0586x968d4673;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.AbstractC0296x1378447b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@SinceKotlin(version = "1.4")
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u001c\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0007\u0018\u0000 M*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002:\u0001MB\u0011\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006B\t\b\u0016¢\u0006\u0004\b\u0005\u0010\u0007B\u0017\b\u0016\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\b¢\u0006\u0004\b\u0005\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\r\u0010\u000e\u001a\u00028\u0000¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u0010\u0010\u000fJ\r\u0010\u0011\u001a\u00028\u0000¢\u0006\u0004\b\u0011\u0010\u000fJ\u000f\u0010\u0012\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u0012\u0010\u000fJ\u0015\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00028\u0000¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00028\u0000¢\u0006\u0004\b\u0017\u0010\u0016J\r\u0010\u0018\u001a\u00028\u0000¢\u0006\u0004\b\u0018\u0010\u000fJ\u000f\u0010\u0019\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u0019\u0010\u000fJ\r\u0010\u001a\u001a\u00028\u0000¢\u0006\u0004\b\u001a\u0010\u000fJ\u000f\u0010\u001b\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\u001b\u0010\u000fJ\u0017\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u001f\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u001c\u0010\u001fJ\u001d\u0010 \u001a\u00020\u000b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\bH\u0016¢\u0006\u0004\b \u0010!J%\u0010 \u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u00032\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\bH\u0016¢\u0006\u0004\b \u0010\"J\u0018\u0010#\u001a\u00028\u00002\u0006\u0010\u001e\u001a\u00020\u0003H\u0096\u0002¢\u0006\u0004\b#\u0010$J \u0010%\u001a\u00028\u00002\u0006\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b%\u0010&J\u0018\u0010'\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0004\b'\u0010\u001dJ\u0017\u0010(\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00028\u0000H\u0016¢\u0006\u0004\b(\u0010)J\u0017\u0010*\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00028\u0000H\u0016¢\u0006\u0004\b*\u0010)J\u0017\u0010+\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00028\u0000H\u0016¢\u0006\u0004\b+\u0010\u001dJ\u0017\u0010,\u001a\u00028\u00002\u0006\u0010\u001e\u001a\u00020\u0003H\u0016¢\u0006\u0004\b,\u0010$J\u001d\u0010-\u001a\u00020\u000b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\bH\u0016¢\u0006\u0004\b-\u0010!J\u001d\u0010.\u001a\u00020\u000b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\bH\u0016¢\u0006\u0004\b.\u0010!J\u000f\u0010/\u001a\u00020\u0014H\u0016¢\u0006\u0004\b/\u0010\u0007J)\u00103\u001a\b\u0012\u0004\u0012\u00028\u000101\"\u0004\b\u0001\u001002\f\u00102\u001a\b\u0012\u0004\u0012\u00028\u000101H\u0016¢\u0006\u0004\b3\u00104J\u0017\u00103\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010501H\u0016¢\u0006\u0004\b3\u00106J\u001f\u00109\u001a\u00020\u00142\u0006\u00107\u001a\u00020\u00032\u0006\u00108\u001a\u00020\u0003H\u0014¢\u0006\u0004\b9\u0010:J)\u0010<\u001a\b\u0012\u0004\u0012\u00028\u000101\"\u0004\b\u0001\u001002\f\u00102\u001a\b\u0012\u0004\u0012\u00028\u000101H\u0000¢\u0006\u0004\b;\u00104J\u0017\u0010<\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010501H\u0000¢\u0006\u0004\b;\u00106J\u001f\u0010>\u001a\u00020\u00142\u0006\u00107\u001a\u00020\u00032\u0006\u00108\u001a\u00020\u0003H\u0000¢\u0006\u0004\b=\u0010:JO\u0010F\u001a\u00020\u00142>\u0010C\u001a:\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b@\u0012\b\bA\u0012\u0004\b\b(B\u0012\u001b\u0012\u0019\u0012\u0006\u0012\u0004\u0018\u00010501¢\u0006\f\b@\u0012\b\bA\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00020\u00140?H\u0000¢\u0006\u0004\bD\u0010ER$\u0010L\u001a\u00020\u00032\u0006\u0010G\u001a\u00020\u00038\u0016@RX\u0096\u000e¢\u0006\f\n\u0004\bH\u0010I\u001a\u0004\bJ\u0010K¨\u0006N"}, d2 = {"Lkotlin/collections/ArrayDeque;", ExifInterface.LONGITUDE_EAST, "Lkotlin/collections/AbstractMutableList;", "", "initialCapacity", "<init>", "(I)V", "()V", "", "elements", "(Ljava/util/Collection;)V", "", "isEmpty", "()Z", "first", "()Ljava/lang/Object;", "firstOrNull", "last", "lastOrNull", "element", "", "addFirst", "(Ljava/lang/Object;)V", "addLast", "removeFirst", "removeFirstOrNull", "removeLast", "removeLastOrNull", "add", "(Ljava/lang/Object;)Z", "index", "(ILjava/lang/Object;)V", "addAll", "(Ljava/util/Collection;)Z", "(ILjava/util/Collection;)Z", "get", "(I)Ljava/lang/Object;", "set", "(ILjava/lang/Object;)Ljava/lang/Object;", "contains", "indexOf", "(Ljava/lang/Object;)I", "lastIndexOf", "remove", "removeAt", "removeAll", "retainAll", "clear", ExifInterface.GPS_DIRECTION_TRUE, "", "array", "toArray", "([Ljava/lang/Object;)[Ljava/lang/Object;", "", "()[Ljava/lang/Object;", "fromIndex", "toIndex", "removeRange", "(II)V", "testToArray$kotlin_stdlib", "testToArray", "testRemoveRange$kotlin_stdlib", "testRemoveRange", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "head", "structure", "internalStructure$kotlin_stdlib", "(Lkotlin/jvm/functions/Function2;)V", "internalStructure", "value", "뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉", "I", "getSize", "()I", "size", "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nArrayDeque.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArrayDeque.kt\nkotlin/collections/ArrayDeque\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,660:1\n476#1,53:665\n476#1,53:718\n37#2:661\n36#2,3:662\n*S KotlinDebug\n*F\n+ 1 ArrayDeque.kt\nkotlin/collections/ArrayDeque\n*L\n471#1:665,53\n473#1:718,53\n46#1:661\n46#1:662,3\n*E\n"})
/* loaded from: classes3.dex */
public final class ArrayDeque<E> extends AbstractMutableList<E> {

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public static final Object[] f1211x75d576dc = new Object[0];

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public int f1212xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public Object[] f1213x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters and from kotlin metadata */
    public int size;

    public ArrayDeque(int i) {
        Object[] objArr;
        if (i == 0) {
            objArr = f1211x75d576dc;
        } else if (i > 0) {
            objArr = new Object[i];
        } else {
            throw new IllegalArgumentException(AbstractC0362x4440ab85.m2929x9738a56c(i, "Illegal Capacity: "));
        }
        this.f1213x3271d0aa = objArr;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E element) {
        addLast(element);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(@NotNull Collection<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        if (elements.isEmpty()) {
            return false;
        }
        m1880x3db60231();
        m1875x75d576dc(elements.size() + size());
        m1874x1378447b(m1879x95f25580(size() + this.f1212xfbe0c504), elements);
        return true;
    }

    public final void addFirst(E element) {
        int i;
        m1880x3db60231();
        m1875x75d576dc(size() + 1);
        int i2 = this.f1212xfbe0c504;
        if (i2 == 0) {
            i = ArraysKt___ArraysKt.getLastIndex(this.f1213x3271d0aa);
        } else {
            i = i2 - 1;
        }
        this.f1212xfbe0c504 = i;
        this.f1213x3271d0aa[i] = element;
        this.size = size() + 1;
    }

    public final void addLast(E element) {
        m1880x3db60231();
        m1875x75d576dc(size() + 1);
        this.f1213x3271d0aa[m1879x95f25580(size() + this.f1212xfbe0c504)] = element;
        this.size = size() + 1;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        if (!isEmpty()) {
            m1880x3db60231();
            m1878x34271fae(this.f1212xfbe0c504, m1879x95f25580(size() + this.f1212xfbe0c504));
        }
        this.f1212xfbe0c504 = 0;
        this.size = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object element) {
        if (indexOf(element) != -1) {
            return true;
        }
        return false;
    }

    public final E first() {
        if (!isEmpty()) {
            return (E) this.f1213x3271d0aa[this.f1212xfbe0c504];
        }
        throw new NoSuchElementException("ArrayDeque is empty.");
    }

    @Nullable
    public final E firstOrNull() {
        if (isEmpty()) {
            return null;
        }
        return (E) this.f1213x3271d0aa[this.f1212xfbe0c504];
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int index) {
        AbstractList.INSTANCE.checkElementIndex$kotlin_stdlib(index, size());
        return (E) this.f1213x3271d0aa[m1879x95f25580(this.f1212xfbe0c504 + index)];
    }

    @Override // kotlin.collections.AbstractMutableList
    /* renamed from: getSize, reason: from getter */
    public int getF1272x3271d0aa() {
        return this.size;
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object element) {
        int i;
        int m1879x95f25580 = m1879x95f25580(size() + this.f1212xfbe0c504);
        int i2 = this.f1212xfbe0c504;
        if (i2 < m1879x95f25580) {
            while (i2 < m1879x95f25580) {
                if (Intrinsics.areEqual(element, this.f1213x3271d0aa[i2])) {
                    i = this.f1212xfbe0c504;
                } else {
                    i2++;
                }
            }
            return -1;
        }
        if (i2 >= m1879x95f25580) {
            int length = this.f1213x3271d0aa.length;
            while (true) {
                if (i2 < length) {
                    if (Intrinsics.areEqual(element, this.f1213x3271d0aa[i2])) {
                        i = this.f1212xfbe0c504;
                        break;
                    }
                    i2++;
                } else {
                    for (int i3 = 0; i3 < m1879x95f25580; i3++) {
                        if (Intrinsics.areEqual(element, this.f1213x3271d0aa[i3])) {
                            i2 = i3 + this.f1213x3271d0aa.length;
                            i = this.f1212xfbe0c504;
                        }
                    }
                    return -1;
                }
            }
        } else {
            return -1;
        }
        return i2 - i;
    }

    public final void internalStructure$kotlin_stdlib(@NotNull Function2<? super Integer, ? super Object[], Unit> structure) {
        int i;
        int i2;
        Intrinsics.checkNotNullParameter(structure, "structure");
        int m1879x95f25580 = m1879x95f25580(size() + this.f1212xfbe0c504);
        if (!isEmpty() && (i2 = this.f1212xfbe0c504) >= m1879x95f25580) {
            i = i2 - this.f1213x3271d0aa.length;
        } else {
            i = this.f1212xfbe0c504;
        }
        structure.invoke(Integer.valueOf(i), toArray());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        if (size() == 0) {
            return true;
        }
        return false;
    }

    public final E last() {
        if (!isEmpty()) {
            return (E) this.f1213x3271d0aa[m1879x95f25580(CollectionsKt__CollectionsKt.getLastIndex(this) + this.f1212xfbe0c504)];
        }
        throw new NoSuchElementException("ArrayDeque is empty.");
    }

    @Override // java.util.AbstractList, java.util.List
    public int lastIndexOf(Object element) {
        int lastIndex;
        int i;
        int m1879x95f25580 = m1879x95f25580(size() + this.f1212xfbe0c504);
        int i2 = this.f1212xfbe0c504;
        if (i2 < m1879x95f25580) {
            lastIndex = m1879x95f25580 - 1;
            if (i2 <= lastIndex) {
                while (!Intrinsics.areEqual(element, this.f1213x3271d0aa[lastIndex])) {
                    if (lastIndex != i2) {
                        lastIndex--;
                    }
                }
                i = this.f1212xfbe0c504;
                return lastIndex - i;
            }
            return -1;
        }
        if (i2 > m1879x95f25580) {
            int i3 = m1879x95f25580 - 1;
            while (true) {
                if (-1 < i3) {
                    if (Intrinsics.areEqual(element, this.f1213x3271d0aa[i3])) {
                        lastIndex = i3 + this.f1213x3271d0aa.length;
                        i = this.f1212xfbe0c504;
                        break;
                    }
                    i3--;
                } else {
                    lastIndex = ArraysKt___ArraysKt.getLastIndex(this.f1213x3271d0aa);
                    int i4 = this.f1212xfbe0c504;
                    if (i4 <= lastIndex) {
                        while (!Intrinsics.areEqual(element, this.f1213x3271d0aa[lastIndex])) {
                            if (lastIndex != i4) {
                                lastIndex--;
                            }
                        }
                        i = this.f1212xfbe0c504;
                    }
                }
            }
        }
        return -1;
    }

    @Nullable
    public final E lastOrNull() {
        if (isEmpty()) {
            return null;
        }
        return (E) this.f1213x3271d0aa[m1879x95f25580(CollectionsKt__CollectionsKt.getLastIndex(this) + this.f1212xfbe0c504)];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object element) {
        int indexOf = indexOf(element);
        if (indexOf == -1) {
            return false;
        }
        remove(indexOf);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(@NotNull Collection<?> elements) {
        int m1879x95f25580;
        Intrinsics.checkNotNullParameter(elements, "elements");
        boolean z = false;
        z = false;
        z = false;
        if (!isEmpty() && this.f1213x3271d0aa.length != 0) {
            int m1879x95f255802 = m1879x95f25580(size() + this.f1212xfbe0c504);
            int i = this.f1212xfbe0c504;
            if (i < m1879x95f255802) {
                m1879x95f25580 = i;
                while (i < m1879x95f255802) {
                    Object obj = this.f1213x3271d0aa[i];
                    if (!elements.contains(obj)) {
                        this.f1213x3271d0aa[m1879x95f25580] = obj;
                        m1879x95f25580++;
                    } else {
                        z = true;
                    }
                    i++;
                }
                ArraysKt___ArraysJvmKt.fill(this.f1213x3271d0aa, (Object) null, m1879x95f25580, m1879x95f255802);
            } else {
                int length = this.f1213x3271d0aa.length;
                int i2 = i;
                boolean z2 = false;
                while (i < length) {
                    Object[] objArr = this.f1213x3271d0aa;
                    Object obj2 = objArr[i];
                    objArr[i] = null;
                    if (!elements.contains(obj2)) {
                        this.f1213x3271d0aa[i2] = obj2;
                        i2++;
                    } else {
                        z2 = true;
                    }
                    i++;
                }
                m1879x95f25580 = m1879x95f25580(i2);
                for (int i3 = 0; i3 < m1879x95f255802; i3++) {
                    Object[] objArr2 = this.f1213x3271d0aa;
                    Object obj3 = objArr2[i3];
                    objArr2[i3] = null;
                    if (!elements.contains(obj3)) {
                        this.f1213x3271d0aa[m1879x95f25580] = obj3;
                        m1879x95f25580 = m1876x9738a56c(m1879x95f25580);
                    } else {
                        z2 = true;
                    }
                }
                z = z2;
            }
            if (z) {
                m1880x3db60231();
                this.size = m1877x9e171bf9(m1879x95f25580 - this.f1212xfbe0c504);
            }
        }
        return z;
    }

    @Override // kotlin.collections.AbstractMutableList
    public E removeAt(int index) {
        AbstractList.INSTANCE.checkElementIndex$kotlin_stdlib(index, size());
        if (index == CollectionsKt__CollectionsKt.getLastIndex(this)) {
            return removeLast();
        }
        if (index == 0) {
            return removeFirst();
        }
        m1880x3db60231();
        int m1879x95f25580 = m1879x95f25580(this.f1212xfbe0c504 + index);
        E e = (E) this.f1213x3271d0aa[m1879x95f25580];
        if (index < (size() >> 1)) {
            int i = this.f1212xfbe0c504;
            if (m1879x95f25580 >= i) {
                Object[] objArr = this.f1213x3271d0aa;
                ArraysKt___ArraysJvmKt.copyInto(objArr, objArr, i + 1, i, m1879x95f25580);
            } else {
                Object[] objArr2 = this.f1213x3271d0aa;
                ArraysKt___ArraysJvmKt.copyInto(objArr2, objArr2, 1, 0, m1879x95f25580);
                Object[] objArr3 = this.f1213x3271d0aa;
                objArr3[0] = objArr3[objArr3.length - 1];
                int i2 = this.f1212xfbe0c504;
                ArraysKt___ArraysJvmKt.copyInto(objArr3, objArr3, i2 + 1, i2, objArr3.length - 1);
            }
            Object[] objArr4 = this.f1213x3271d0aa;
            int i3 = this.f1212xfbe0c504;
            objArr4[i3] = null;
            this.f1212xfbe0c504 = m1876x9738a56c(i3);
        } else {
            int m1879x95f255802 = m1879x95f25580(CollectionsKt__CollectionsKt.getLastIndex(this) + this.f1212xfbe0c504);
            if (m1879x95f25580 <= m1879x95f255802) {
                Object[] objArr5 = this.f1213x3271d0aa;
                ArraysKt___ArraysJvmKt.copyInto(objArr5, objArr5, m1879x95f25580, m1879x95f25580 + 1, m1879x95f255802 + 1);
            } else {
                Object[] objArr6 = this.f1213x3271d0aa;
                ArraysKt___ArraysJvmKt.copyInto(objArr6, objArr6, m1879x95f25580, m1879x95f25580 + 1, objArr6.length);
                Object[] objArr7 = this.f1213x3271d0aa;
                objArr7[objArr7.length - 1] = objArr7[0];
                ArraysKt___ArraysJvmKt.copyInto(objArr7, objArr7, 0, 1, m1879x95f255802 + 1);
            }
            this.f1213x3271d0aa[m1879x95f255802] = null;
        }
        this.size = size() - 1;
        return e;
    }

    public final E removeFirst() {
        if (!isEmpty()) {
            m1880x3db60231();
            Object[] objArr = this.f1213x3271d0aa;
            int i = this.f1212xfbe0c504;
            E e = (E) objArr[i];
            objArr[i] = null;
            this.f1212xfbe0c504 = m1876x9738a56c(i);
            this.size = size() - 1;
            return e;
        }
        throw new NoSuchElementException("ArrayDeque is empty.");
    }

    @Nullable
    public final E removeFirstOrNull() {
        if (isEmpty()) {
            return null;
        }
        return removeFirst();
    }

    public final E removeLast() {
        if (!isEmpty()) {
            m1880x3db60231();
            int m1879x95f25580 = m1879x95f25580(CollectionsKt__CollectionsKt.getLastIndex(this) + this.f1212xfbe0c504);
            Object[] objArr = this.f1213x3271d0aa;
            E e = (E) objArr[m1879x95f25580];
            objArr[m1879x95f25580] = null;
            this.size = size() - 1;
            return e;
        }
        throw new NoSuchElementException("ArrayDeque is empty.");
    }

    @Nullable
    public final E removeLastOrNull() {
        if (isEmpty()) {
            return null;
        }
        return removeLast();
    }

    @Override // java.util.AbstractList
    public void removeRange(int fromIndex, int toIndex) {
        AbstractList.INSTANCE.checkRangeIndexes$kotlin_stdlib(fromIndex, toIndex, size());
        int i = toIndex - fromIndex;
        if (i == 0) {
            return;
        }
        if (i == size()) {
            clear();
            return;
        }
        if (i == 1) {
            remove(fromIndex);
            return;
        }
        m1880x3db60231();
        if (fromIndex < size() - toIndex) {
            int m1879x95f25580 = m1879x95f25580((fromIndex - 1) + this.f1212xfbe0c504);
            int m1879x95f255802 = m1879x95f25580((toIndex - 1) + this.f1212xfbe0c504);
            while (fromIndex > 0) {
                int i2 = m1879x95f25580 + 1;
                int min = Math.min(fromIndex, Math.min(i2, m1879x95f255802 + 1));
                Object[] objArr = this.f1213x3271d0aa;
                int i3 = m1879x95f255802 - min;
                int i4 = m1879x95f25580 - min;
                ArraysKt___ArraysJvmKt.copyInto(objArr, objArr, i3 + 1, i4 + 1, i2);
                m1879x95f25580 = m1877x9e171bf9(i4);
                m1879x95f255802 = m1877x9e171bf9(i3);
                fromIndex -= min;
            }
            int m1879x95f255803 = m1879x95f25580(this.f1212xfbe0c504 + i);
            m1878x34271fae(this.f1212xfbe0c504, m1879x95f255803);
            this.f1212xfbe0c504 = m1879x95f255803;
        } else {
            int m1879x95f255804 = m1879x95f25580(this.f1212xfbe0c504 + toIndex);
            int m1879x95f255805 = m1879x95f25580(this.f1212xfbe0c504 + fromIndex);
            int size = size();
            while (true) {
                size -= toIndex;
                if (size <= 0) {
                    break;
                }
                Object[] objArr2 = this.f1213x3271d0aa;
                toIndex = Math.min(size, Math.min(objArr2.length - m1879x95f255804, objArr2.length - m1879x95f255805));
                Object[] objArr3 = this.f1213x3271d0aa;
                int i5 = m1879x95f255804 + toIndex;
                ArraysKt___ArraysJvmKt.copyInto(objArr3, objArr3, m1879x95f255805, m1879x95f255804, i5);
                m1879x95f255804 = m1879x95f25580(i5);
                m1879x95f255805 = m1879x95f25580(m1879x95f255805 + toIndex);
            }
            int m1879x95f255806 = m1879x95f25580(size() + this.f1212xfbe0c504);
            m1878x34271fae(m1877x9e171bf9(m1879x95f255806 - i), m1879x95f255806);
        }
        this.size = size() - i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean retainAll(@NotNull Collection<?> elements) {
        int m1879x95f25580;
        Intrinsics.checkNotNullParameter(elements, "elements");
        boolean z = false;
        z = false;
        z = false;
        if (!isEmpty() && this.f1213x3271d0aa.length != 0) {
            int m1879x95f255802 = m1879x95f25580(size() + this.f1212xfbe0c504);
            int i = this.f1212xfbe0c504;
            if (i < m1879x95f255802) {
                m1879x95f25580 = i;
                while (i < m1879x95f255802) {
                    Object obj = this.f1213x3271d0aa[i];
                    if (elements.contains(obj)) {
                        this.f1213x3271d0aa[m1879x95f25580] = obj;
                        m1879x95f25580++;
                    } else {
                        z = true;
                    }
                    i++;
                }
                ArraysKt___ArraysJvmKt.fill(this.f1213x3271d0aa, (Object) null, m1879x95f25580, m1879x95f255802);
            } else {
                int length = this.f1213x3271d0aa.length;
                int i2 = i;
                boolean z2 = false;
                while (i < length) {
                    Object[] objArr = this.f1213x3271d0aa;
                    Object obj2 = objArr[i];
                    objArr[i] = null;
                    if (elements.contains(obj2)) {
                        this.f1213x3271d0aa[i2] = obj2;
                        i2++;
                    } else {
                        z2 = true;
                    }
                    i++;
                }
                m1879x95f25580 = m1879x95f25580(i2);
                for (int i3 = 0; i3 < m1879x95f255802; i3++) {
                    Object[] objArr2 = this.f1213x3271d0aa;
                    Object obj3 = objArr2[i3];
                    objArr2[i3] = null;
                    if (elements.contains(obj3)) {
                        this.f1213x3271d0aa[m1879x95f25580] = obj3;
                        m1879x95f25580 = m1876x9738a56c(m1879x95f25580);
                    } else {
                        z2 = true;
                    }
                }
                z = z2;
            }
            if (z) {
                m1880x3db60231();
                this.size = m1877x9e171bf9(m1879x95f25580 - this.f1212xfbe0c504);
            }
        }
        return z;
    }

    @Override // kotlin.collections.AbstractMutableList, java.util.AbstractList, java.util.List
    public E set(int index, E element) {
        AbstractList.INSTANCE.checkElementIndex$kotlin_stdlib(index, size());
        int m1879x95f25580 = m1879x95f25580(this.f1212xfbe0c504 + index);
        Object[] objArr = this.f1213x3271d0aa;
        E e = (E) objArr[m1879x95f25580];
        objArr[m1879x95f25580] = element;
        return e;
    }

    public final void testRemoveRange$kotlin_stdlib(int fromIndex, int toIndex) {
        removeRange(fromIndex, toIndex);
    }

    @NotNull
    public final <T> T[] testToArray$kotlin_stdlib(@NotNull T[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return (T[]) toArray(array);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    @NotNull
    public <T> T[] toArray(@NotNull T[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        if (array.length < size()) {
            array = (T[]) AbstractC0413x7cc5182f.arrayOfNulls(array, size());
        }
        int m1879x95f25580 = m1879x95f25580(size() + this.f1212xfbe0c504);
        int i = this.f1212xfbe0c504;
        if (i < m1879x95f25580) {
            ArraysKt___ArraysJvmKt.copyInto$default(this.f1213x3271d0aa, array, 0, i, m1879x95f25580, 2, (Object) null);
        } else if (!isEmpty()) {
            Object[] objArr = this.f1213x3271d0aa;
            ArraysKt___ArraysJvmKt.copyInto(objArr, array, 0, this.f1212xfbe0c504, objArr.length);
            Object[] objArr2 = this.f1213x3271d0aa;
            ArraysKt___ArraysJvmKt.copyInto(objArr2, array, objArr2.length - this.f1212xfbe0c504, 0, m1879x95f25580);
        }
        return (T[]) AbstractC0586x968d4673.terminateCollectionToArray(size(), array);
    }

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final void m1874x1378447b(int i, Collection collection) {
        Iterator<E> it = collection.iterator();
        int length = this.f1213x3271d0aa.length;
        while (i < length && it.hasNext()) {
            this.f1213x3271d0aa[i] = it.next();
            i++;
        }
        int i2 = this.f1212xfbe0c504;
        for (int i3 = 0; i3 < i2 && it.hasNext(); i3++) {
            this.f1213x3271d0aa[i3] = it.next();
        }
        this.size = collection.size() + size();
    }

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final void m1875x75d576dc(int i) {
        if (i >= 0) {
            Object[] objArr = this.f1213x3271d0aa;
            if (i <= objArr.length) {
                return;
            }
            if (objArr == f1211x75d576dc) {
                this.f1213x3271d0aa = new Object[AbstractC0296x1378447b.coerceAtLeast(i, 10)];
                return;
            }
            Object[] objArr2 = new Object[AbstractList.INSTANCE.newCapacity$kotlin_stdlib(objArr.length, i)];
            Object[] objArr3 = this.f1213x3271d0aa;
            ArraysKt___ArraysJvmKt.copyInto(objArr3, objArr2, 0, this.f1212xfbe0c504, objArr3.length);
            Object[] objArr4 = this.f1213x3271d0aa;
            int length = objArr4.length;
            int i2 = this.f1212xfbe0c504;
            ArraysKt___ArraysJvmKt.copyInto(objArr4, objArr2, length - i2, 0, i2);
            this.f1212xfbe0c504 = 0;
            this.f1213x3271d0aa = objArr2;
            return;
        }
        throw new IllegalStateException("Deque is too big.");
    }

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public final int m1876x9738a56c(int i) {
        if (i == ArraysKt___ArraysKt.getLastIndex(this.f1213x3271d0aa)) {
            return 0;
        }
        return i + 1;
    }

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
    public final int m1877x9e171bf9(int i) {
        if (i < 0) {
            return i + this.f1213x3271d0aa.length;
        }
        return i;
    }

    /* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋, reason: contains not printable characters */
    public final void m1878x34271fae(int i, int i2) {
        if (i < i2) {
            ArraysKt___ArraysJvmKt.fill(this.f1213x3271d0aa, (Object) null, i, i2);
            return;
        }
        Object[] objArr = this.f1213x3271d0aa;
        ArraysKt___ArraysJvmKt.fill(objArr, (Object) null, i, objArr.length);
        ArraysKt___ArraysJvmKt.fill(this.f1213x3271d0aa, (Object) null, 0, i2);
    }

    /* renamed from: 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두, reason: contains not printable characters */
    public final int m1879x95f25580(int i) {
        Object[] objArr = this.f1213x3271d0aa;
        if (i >= objArr.length) {
            return i - objArr.length;
        }
        return i;
    }

    /* renamed from: 뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷, reason: contains not printable characters */
    public final void m1880x3db60231() {
        ((java.util.AbstractList) this).modCount++;
    }

    @Override // kotlin.collections.AbstractMutableList, java.util.AbstractList, java.util.List
    public void add(int index, E element) {
        AbstractList.INSTANCE.checkPositionIndex$kotlin_stdlib(index, size());
        if (index == size()) {
            addLast(element);
            return;
        }
        if (index == 0) {
            addFirst(element);
            return;
        }
        m1880x3db60231();
        m1875x75d576dc(size() + 1);
        int m1879x95f25580 = m1879x95f25580(this.f1212xfbe0c504 + index);
        if (index < ((size() + 1) >> 1)) {
            int lastIndex = m1879x95f25580 == 0 ? ArraysKt___ArraysKt.getLastIndex(this.f1213x3271d0aa) : m1879x95f25580 - 1;
            int i = this.f1212xfbe0c504;
            int lastIndex2 = i == 0 ? ArraysKt___ArraysKt.getLastIndex(this.f1213x3271d0aa) : i - 1;
            int i2 = this.f1212xfbe0c504;
            if (lastIndex >= i2) {
                Object[] objArr = this.f1213x3271d0aa;
                objArr[lastIndex2] = objArr[i2];
                ArraysKt___ArraysJvmKt.copyInto(objArr, objArr, i2, i2 + 1, lastIndex + 1);
            } else {
                Object[] objArr2 = this.f1213x3271d0aa;
                ArraysKt___ArraysJvmKt.copyInto(objArr2, objArr2, i2 - 1, i2, objArr2.length);
                Object[] objArr3 = this.f1213x3271d0aa;
                objArr3[objArr3.length - 1] = objArr3[0];
                ArraysKt___ArraysJvmKt.copyInto(objArr3, objArr3, 0, 1, lastIndex + 1);
            }
            this.f1213x3271d0aa[lastIndex] = element;
            this.f1212xfbe0c504 = lastIndex2;
        } else {
            int m1879x95f255802 = m1879x95f25580(size() + this.f1212xfbe0c504);
            if (m1879x95f25580 < m1879x95f255802) {
                Object[] objArr4 = this.f1213x3271d0aa;
                ArraysKt___ArraysJvmKt.copyInto(objArr4, objArr4, m1879x95f25580 + 1, m1879x95f25580, m1879x95f255802);
            } else {
                Object[] objArr5 = this.f1213x3271d0aa;
                ArraysKt___ArraysJvmKt.copyInto(objArr5, objArr5, 1, 0, m1879x95f255802);
                Object[] objArr6 = this.f1213x3271d0aa;
                objArr6[0] = objArr6[objArr6.length - 1];
                ArraysKt___ArraysJvmKt.copyInto(objArr6, objArr6, m1879x95f25580 + 1, m1879x95f25580, objArr6.length - 1);
            }
            this.f1213x3271d0aa[m1879x95f25580] = element;
        }
        this.size = size() + 1;
    }

    @NotNull
    public final Object[] testToArray$kotlin_stdlib() {
        return toArray();
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int index, @NotNull Collection<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        AbstractList.INSTANCE.checkPositionIndex$kotlin_stdlib(index, size());
        if (elements.isEmpty()) {
            return false;
        }
        if (index == size()) {
            return addAll(elements);
        }
        m1880x3db60231();
        m1875x75d576dc(elements.size() + size());
        int m1879x95f25580 = m1879x95f25580(size() + this.f1212xfbe0c504);
        int m1879x95f255802 = m1879x95f25580(this.f1212xfbe0c504 + index);
        int size = elements.size();
        if (index < ((size() + 1) >> 1)) {
            int i = this.f1212xfbe0c504;
            int i2 = i - size;
            if (m1879x95f255802 < i) {
                Object[] objArr = this.f1213x3271d0aa;
                ArraysKt___ArraysJvmKt.copyInto(objArr, objArr, i2, i, objArr.length);
                if (size >= m1879x95f255802) {
                    Object[] objArr2 = this.f1213x3271d0aa;
                    ArraysKt___ArraysJvmKt.copyInto(objArr2, objArr2, objArr2.length - size, 0, m1879x95f255802);
                } else {
                    Object[] objArr3 = this.f1213x3271d0aa;
                    ArraysKt___ArraysJvmKt.copyInto(objArr3, objArr3, objArr3.length - size, 0, size);
                    Object[] objArr4 = this.f1213x3271d0aa;
                    ArraysKt___ArraysJvmKt.copyInto(objArr4, objArr4, 0, size, m1879x95f255802);
                }
            } else if (i2 >= 0) {
                Object[] objArr5 = this.f1213x3271d0aa;
                ArraysKt___ArraysJvmKt.copyInto(objArr5, objArr5, i2, i, m1879x95f255802);
            } else {
                Object[] objArr6 = this.f1213x3271d0aa;
                i2 += objArr6.length;
                int i3 = m1879x95f255802 - i;
                int length = objArr6.length - i2;
                if (length >= i3) {
                    ArraysKt___ArraysJvmKt.copyInto(objArr6, objArr6, i2, i, m1879x95f255802);
                } else {
                    ArraysKt___ArraysJvmKt.copyInto(objArr6, objArr6, i2, i, i + length);
                    Object[] objArr7 = this.f1213x3271d0aa;
                    ArraysKt___ArraysJvmKt.copyInto(objArr7, objArr7, 0, this.f1212xfbe0c504 + length, m1879x95f255802);
                }
            }
            this.f1212xfbe0c504 = i2;
            m1874x1378447b(m1877x9e171bf9(m1879x95f255802 - size), elements);
        } else {
            int i4 = m1879x95f255802 + size;
            if (m1879x95f255802 < m1879x95f25580) {
                int i5 = size + m1879x95f25580;
                Object[] objArr8 = this.f1213x3271d0aa;
                if (i5 <= objArr8.length) {
                    ArraysKt___ArraysJvmKt.copyInto(objArr8, objArr8, i4, m1879x95f255802, m1879x95f25580);
                } else if (i4 >= objArr8.length) {
                    ArraysKt___ArraysJvmKt.copyInto(objArr8, objArr8, i4 - objArr8.length, m1879x95f255802, m1879x95f25580);
                } else {
                    int length2 = m1879x95f25580 - (i5 - objArr8.length);
                    ArraysKt___ArraysJvmKt.copyInto(objArr8, objArr8, 0, length2, m1879x95f25580);
                    Object[] objArr9 = this.f1213x3271d0aa;
                    ArraysKt___ArraysJvmKt.copyInto(objArr9, objArr9, i4, m1879x95f255802, length2);
                }
            } else {
                Object[] objArr10 = this.f1213x3271d0aa;
                ArraysKt___ArraysJvmKt.copyInto(objArr10, objArr10, size, 0, m1879x95f25580);
                Object[] objArr11 = this.f1213x3271d0aa;
                if (i4 >= objArr11.length) {
                    ArraysKt___ArraysJvmKt.copyInto(objArr11, objArr11, i4 - objArr11.length, m1879x95f255802, objArr11.length);
                } else {
                    ArraysKt___ArraysJvmKt.copyInto(objArr11, objArr11, 0, objArr11.length - size, objArr11.length);
                    Object[] objArr12 = this.f1213x3271d0aa;
                    ArraysKt___ArraysJvmKt.copyInto(objArr12, objArr12, i4, m1879x95f255802, objArr12.length - size);
                }
            }
            m1874x1378447b(m1879x95f255802, elements);
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    @NotNull
    public Object[] toArray() {
        return toArray(new Object[size()]);
    }

    public ArrayDeque() {
        this.f1213x3271d0aa = f1211x75d576dc;
    }

    public ArrayDeque(@NotNull Collection<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        Object[] array = elements.toArray(new Object[0]);
        this.f1213x3271d0aa = array;
        this.size = array.length;
        if (array.length == 0) {
            this.f1213x3271d0aa = f1211x75d576dc;
        }
    }
}
