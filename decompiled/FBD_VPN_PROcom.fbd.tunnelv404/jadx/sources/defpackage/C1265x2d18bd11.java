package defpackage;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.UInt;
import kotlin.jvm.internal.markers.KMappedMarker;

/* renamed from: 땮땃뎰딻뎻돷둘땸듰땟뒤뒐딟딜듼될뒋듌땄뎬딁뒷뒋뒘땵딎뒼땣땅듼들땀듽돶될땀뒻땋듼뎸드되돤땯땳돨딞딤땥듔딞따뒋땻되땮돶돵딐두뎠땩된땦따땳뒝둬둡뒵뒨듬둠됩뎬딨돷돤딽둬뒵땻땭땟됨뎽딄뎰돶땭뎽드듐땧뒙땨돼땀뒷뒼뒛뒬땻땪땲딨땪땻땋둠둑들둔된뒻도땐둘뎡땧됴뒵돸땦듽듻딝디땄땃, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C1265x2d18bd11 implements Iterator, KMappedMarker {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final int f5674xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public boolean f5675x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final int f5676x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public int f5677x75d576dc;

    public C1265x2d18bd11(int i, int i2, int i3) {
        this.f5674xfbe0c504 = i2;
        boolean z = false;
        if (i3 <= 0 ? Integer.compare(i ^ Integer.MIN_VALUE, Integer.MIN_VALUE ^ i2) >= 0 : Integer.compare(i ^ Integer.MIN_VALUE, Integer.MIN_VALUE ^ i2) <= 0) {
            z = true;
        }
        this.f5675x3271d0aa = z;
        this.f5676x1378447b = UInt.m1798constructorimpl(i3);
        this.f5677x75d576dc = this.f5675x3271d0aa ? i : i2;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f5675x3271d0aa;
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i = this.f5677x75d576dc;
        if (i == this.f5674xfbe0c504) {
            if (this.f5675x3271d0aa) {
                this.f5675x3271d0aa = false;
            } else {
                throw new NoSuchElementException();
            }
        } else {
            this.f5677x75d576dc = UInt.m1798constructorimpl(this.f5676x1378447b + i);
        }
        return UInt.m1797boximpl(i);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
