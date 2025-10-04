package defpackage;

import java.util.NoSuchElementException;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.Intrinsics;

/* renamed from: 도둬뒤딤뒛뒐듔돷땦됩뎽딸딎돴됐듻된듟뒹땦둡됫딀둥땱두딟됨따돰땲땮듔땍드돝돼돶뎹딞땠뒹땔땳뒙돨듸돼듰들돵땝딅딨땸둠딨뎻땲둬딌둔뒛듰땧될땮딄둬땲땅땝돷딨땭뎸돤드뒵뒾딐뒾듟뎻뒾땠둡둑뒀둑딽듻돤뎰든땰득땐뎰뒀땤땳돛딁땬땸뎰뎨땥땟돠뒈땩땮땭땟딁듔땦됫듰딸둠땵뒨딠뒀딨뒙딟, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0410x6b628 extends IntIterator {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final int[] f3849xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public int f3850x3271d0aa;

    public C0410x6b628(int[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        this.f3849xfbe0c504 = array;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f3850x3271d0aa < this.f3849xfbe0c504.length) {
            return true;
        }
        return false;
    }

    @Override // kotlin.collections.IntIterator
    public final int nextInt() {
        try {
            int[] iArr = this.f3849xfbe0c504;
            int i = this.f3850x3271d0aa;
            this.f3850x3271d0aa = i + 1;
            return iArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.f3850x3271d0aa--;
            throw new NoSuchElementException(e.getMessage());
        }
    }
}
