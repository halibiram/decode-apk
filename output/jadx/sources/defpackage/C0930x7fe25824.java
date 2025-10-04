package defpackage;

import java.util.AbstractList;
import java.util.ConcurrentModificationException;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableListIterator;

/* renamed from: 딄땵둑뎡돵뒋뒛딨땧뒤딃듻뒈땡땤뒀두땲돝듸둘딠땻듸땐돳됐뎽땰돴땡둣들뒼됐돤뒻뒬딤뒀듔두뎰뒀된둥뒻된뒹뒬됴됫딞듟뒋딀듟둬듽돝땳둬듽득듽땰땲듼돶땩땱땋딜듐딄돝듸땠땱땔돠두딄둡됩뒬땬땝뒛듽뎠딠듽땮뒘뎻딟땪땜뎸뒝돠든듽뒵땱딅땟딨땠딨둣든뒵둔딻둡딃뒵딤돨땃듟돷됩돸딝땟땥듔, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0930x7fe25824 implements ListIterator, KMutableListIterator {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final ListBuilder f5078xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public int f5079x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public int f5080x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public int f5081x75d576dc;

    public C0930x7fe25824(ListBuilder list, int i) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.f5078xfbe0c504 = list;
        this.f5079x3271d0aa = i;
        this.f5080x1378447b = -1;
        this.f5081x75d576dc = ((AbstractList) list).modCount;
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        m3505x1378447b();
        int i = this.f5079x3271d0aa;
        this.f5079x3271d0aa = i + 1;
        ListBuilder listBuilder = this.f5078xfbe0c504;
        listBuilder.add(i, obj);
        this.f5080x1378447b = -1;
        this.f5081x75d576dc = ((AbstractList) listBuilder).modCount;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        int i;
        int i2 = this.f5079x3271d0aa;
        i = this.f5078xfbe0c504.f1272x3271d0aa;
        if (i2 < i) {
            return true;
        }
        return false;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        if (this.f5079x3271d0aa > 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        int i;
        m3505x1378447b();
        int i2 = this.f5079x3271d0aa;
        ListBuilder listBuilder = this.f5078xfbe0c504;
        i = listBuilder.f1272x3271d0aa;
        if (i2 < i) {
            int i3 = this.f5079x3271d0aa;
            this.f5079x3271d0aa = i3 + 1;
            this.f5080x1378447b = i3;
            return listBuilder.f1271xfbe0c504[this.f5080x1378447b];
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f5079x3271d0aa;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        m3505x1378447b();
        int i = this.f5079x3271d0aa;
        if (i > 0) {
            int i2 = i - 1;
            this.f5079x3271d0aa = i2;
            this.f5080x1378447b = i2;
            return this.f5078xfbe0c504.f1271xfbe0c504[this.f5080x1378447b];
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f5079x3271d0aa - 1;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        m3505x1378447b();
        int i = this.f5080x1378447b;
        if (i != -1) {
            ListBuilder listBuilder = this.f5078xfbe0c504;
            listBuilder.remove(i);
            this.f5079x3271d0aa = this.f5080x1378447b;
            this.f5080x1378447b = -1;
            this.f5081x75d576dc = ((AbstractList) listBuilder).modCount;
            return;
        }
        throw new IllegalStateException("Call next() or previous() before removing element from the iterator.");
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        m3505x1378447b();
        int i = this.f5080x1378447b;
        if (i != -1) {
            this.f5078xfbe0c504.set(i, obj);
            return;
        }
        throw new IllegalStateException("Call next() or previous() before replacing element from the iterator.");
    }

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final void m3505x1378447b() {
        if (((AbstractList) this.f5078xfbe0c504).modCount == this.f5081x75d576dc) {
        } else {
            throw new ConcurrentModificationException();
        }
    }
}
