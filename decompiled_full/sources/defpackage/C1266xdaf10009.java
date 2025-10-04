package defpackage;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.ULong;
import kotlin.jvm.internal.markers.KMappedMarker;

/* renamed from: 땮땡디뒻돷뒹뒷땣땳딅딎땨듽둘둬딝뒵돛땤뒵땫둘땵듌딤돶둡듰뎰됩뒹듔뒐돶돵뒐뒾디땫듰뒬땹뎡두땤딻듰돳딨뒝되땃딝땮돶딞땃땮땟듽돨된딅들뒋딄뒉땳뒤돼뒻땔딐땍됩뎡딹땤돼뎨땧땅땫됨뎬딀땣뎨땰땸땨딹두돨둔됨뎡딎둬뎨땝뎡땡땐들득딃돶됴돠땫뒐듸땝딎땩뒀됨딹땫땳뎹땐땀땭두뎰뒼뒈뒉, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C1266xdaf10009 implements Iterator, KMappedMarker {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final long f5678xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public boolean f5679x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final long f5680x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public long f5681x75d576dc;

    public C1266xdaf10009(long j, long j2, long j3) {
        this.f5678xfbe0c504 = j2;
        boolean z = false;
        if (j3 <= 0 ? Long.compare(j ^ Long.MIN_VALUE, Long.MIN_VALUE ^ j2) >= 0 : Long.compare(j ^ Long.MIN_VALUE, Long.MIN_VALUE ^ j2) <= 0) {
            z = true;
        }
        this.f5679x3271d0aa = z;
        this.f5680x1378447b = ULong.m1822constructorimpl(j3);
        this.f5681x75d576dc = this.f5679x3271d0aa ? j : j2;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f5679x3271d0aa;
    }

    @Override // java.util.Iterator
    public final Object next() {
        long j = this.f5681x75d576dc;
        if (j == this.f5678xfbe0c504) {
            if (this.f5679x3271d0aa) {
                this.f5679x3271d0aa = false;
            } else {
                throw new NoSuchElementException();
            }
        } else {
            this.f5681x75d576dc = ULong.m1822constructorimpl(this.f5680x1378447b + j);
        }
        return ULong.m1821boximpl(j);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
