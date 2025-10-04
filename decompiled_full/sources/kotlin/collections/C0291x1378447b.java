package kotlin.collections;

import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0586x968d4673;
import java.util.Arrays;
import java.util.Iterator;
import java.util.RandomAccess;
import kotlin.jvm.internal.Intrinsics;

/* renamed from: kotlin.collections.뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0291x1378447b extends AbstractList implements RandomAccess {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Object[] f1319xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final int f1320x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public int f1321x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public int f1322x75d576dc;

    public C0291x1378447b(Object[] buffer, int i) {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        this.f1319xfbe0c504 = buffer;
        if (i >= 0) {
            if (i <= buffer.length) {
                this.f1320x3271d0aa = buffer.length;
                this.f1322x75d576dc = i;
                return;
            } else {
                StringBuilder m2939xab142723 = AbstractC0362x4440ab85.m2939xab142723(i, "ring buffer filled size: ", " cannot be larger than the buffer size: ");
                m2939xab142723.append(buffer.length);
                throw new IllegalArgumentException(m2939xab142723.toString().toString());
            }
        }
        throw new IllegalArgumentException(AbstractC0362x4440ab85.m2929x9738a56c(i, "ring buffer filled size should not be negative but it is ").toString());
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final Object get(int i) {
        AbstractList.INSTANCE.checkElementIndex$kotlin_stdlib(i, size());
        return this.f1319xfbe0c504[(this.f1321x1378447b + i) % this.f1320x3271d0aa];
    }

    @Override // kotlin.collections.AbstractList, kotlin.collections.AbstractCollection
    /* renamed from: getSize */
    public final int getF1257x1378447b() {
        return this.f1322x75d576dc;
    }

    @Override // kotlin.collections.AbstractList, kotlin.collections.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new AbstractIterator<Object>() { // from class: kotlin.collections.RingBuffer$iterator$1

            /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
            public int f1262x1378447b;

            /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
            public int f1263x75d576dc;

            {
                this.f1262x1378447b = C0291x1378447b.this.size();
                this.f1263x75d576dc = C0291x1378447b.this.f1321x1378447b;
            }

            @Override // kotlin.collections.AbstractIterator
            public void computeNext() {
                if (this.f1262x1378447b == 0) {
                    done();
                    return;
                }
                C0291x1378447b c0291x1378447b = C0291x1378447b.this;
                setNext(c0291x1378447b.f1319xfbe0c504[this.f1263x75d576dc]);
                this.f1263x75d576dc = (this.f1263x75d576dc + 1) % c0291x1378447b.f1320x3271d0aa;
                this.f1262x1378447b--;
            }
        };
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public final Object[] toArray(Object[] array) {
        Object[] objArr;
        Intrinsics.checkNotNullParameter(array, "array");
        if (array.length < size()) {
            array = Arrays.copyOf(array, size());
            Intrinsics.checkNotNullExpressionValue(array, "copyOf(...)");
        }
        int size = size();
        int i = this.f1321x1378447b;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            objArr = this.f1319xfbe0c504;
            if (i3 >= size || i >= this.f1320x3271d0aa) {
                break;
            }
            array[i3] = objArr[i];
            i3++;
            i++;
        }
        while (i3 < size) {
            array[i3] = objArr[i2];
            i3++;
            i2++;
        }
        return AbstractC0586x968d4673.terminateCollectionToArray(size, array);
    }

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final void m1965x1378447b(int i) {
        if (i >= 0) {
            if (i <= size()) {
                if (i > 0) {
                    int i2 = this.f1321x1378447b;
                    int i3 = this.f1320x3271d0aa;
                    int i4 = (i2 + i) % i3;
                    Object[] objArr = this.f1319xfbe0c504;
                    if (i2 > i4) {
                        ArraysKt___ArraysJvmKt.fill(objArr, (Object) null, i2, i3);
                        ArraysKt___ArraysJvmKt.fill(objArr, (Object) null, 0, i4);
                    } else {
                        ArraysKt___ArraysJvmKt.fill(objArr, (Object) null, i2, i4);
                    }
                    this.f1321x1378447b = i4;
                    this.f1322x75d576dc = size() - i;
                    return;
                }
                return;
            }
            StringBuilder m2939xab142723 = AbstractC0362x4440ab85.m2939xab142723(i, "n shouldn't be greater than the buffer size: n = ", ", size = ");
            m2939xab142723.append(size());
            throw new IllegalArgumentException(m2939xab142723.toString().toString());
        }
        throw new IllegalArgumentException(AbstractC0362x4440ab85.m2929x9738a56c(i, "n shouldn't be negative but it is ").toString());
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public final Object[] toArray() {
        return toArray(new Object[size()]);
    }
}
