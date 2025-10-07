package defpackage;

import java.util.NoSuchElementException;
import kotlin.collections.BooleanIterator;
import kotlin.jvm.internal.Intrinsics;

/* renamed from: 뎽딄딟득돛뎨든땥돷두딽뎬돛뒼둬땧딝땨듐듽딸돶딐됩뒤듔뎽땹도듰됫뎠돵땰들듸뎻땤땠돷딤뒻됫뒼땧돷돼뒙듰됨땣뒙뒼땤됩딎됩땝뒛딅땄둡됐두뒘딁뒵뒬땸뎽뎡땨땩디듻돸땳땪땵땄됐땅딠뒨뒐뎸땳됐됨땯듐땦땡듟딞뎹둬땭따딨땨뒵뒝돶땮된득딃돴딸뒐듬뒐돷뒼듟뒵듐뎻딨돰듌둠땨따땸뎻뒵땯딹, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0405xa77e2178 extends BooleanIterator {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final boolean[] f3839xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public int f3840x3271d0aa;

    public C0405xa77e2178(boolean[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        this.f3839xfbe0c504 = array;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f3840x3271d0aa < this.f3839xfbe0c504.length) {
            return true;
        }
        return false;
    }

    @Override // kotlin.collections.BooleanIterator
    public final boolean nextBoolean() {
        try {
            boolean[] zArr = this.f3839xfbe0c504;
            int i = this.f3840x3271d0aa;
            this.f3840x3271d0aa = i + 1;
            return zArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.f3840x3271d0aa--;
            throw new NoSuchElementException(e.getMessage());
        }
    }
}
