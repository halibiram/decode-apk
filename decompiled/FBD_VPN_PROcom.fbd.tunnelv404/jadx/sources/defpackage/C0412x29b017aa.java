package defpackage;

import java.util.NoSuchElementException;
import kotlin.collections.ShortIterator;
import kotlin.jvm.internal.Intrinsics;

/* renamed from: 도딤뒾땝딝땵땔땬돝돰뎽듟땥든딤돳뒵땪딄뒙땦딻땪땋뒋듰땸딨둡땰딹땄딅듐듨땥딄땪뒨듌뎽된땤땥딸됐돠뎡뒨뒋딹도딟딄땰땬뎸딎땣듼딎뒉듐뒋땪딐듰땯땨돶딄듔땫뎠득땦둣돸땩딎딠뎰든돼뒼딝딃듼듨디둔땝땹땟됫든뒐딐땣땫땨땧뎰땹돛듼된돝돸땫땋뒾둔듔땄땫든땥돤뒤땃될딃듌땡돤듐둠딁뎡, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0412x29b017aa extends ShortIterator {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final short[] f3853xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public int f3854x3271d0aa;

    public C0412x29b017aa(short[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        this.f3853xfbe0c504 = array;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f3854x3271d0aa < this.f3853xfbe0c504.length) {
            return true;
        }
        return false;
    }

    @Override // kotlin.collections.ShortIterator
    public final short nextShort() {
        try {
            short[] sArr = this.f3853xfbe0c504;
            int i = this.f3854x3271d0aa;
            this.f3854x3271d0aa = i + 1;
            return sArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.f3854x3271d0aa--;
            throw new NoSuchElementException(e.getMessage());
        }
    }
}
