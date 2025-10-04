package defpackage;

import java.util.NoSuchElementException;
import kotlin.collections.DoubleIterator;
import kotlin.jvm.internal.Intrinsics;

/* renamed from: 뎽땰돰둬돤돼듌둡돴돠딟땭뒨돵둘땨뒛땪땪딸돶뎽딄드땸뒾딸뒝됴땯땹땭듨둡둠땵뒵듼되듔딨뒐뒾돝둑듬뎬딟듨땸땀딻두땐땵뎸뎸뒐뒵둘돸뒉될딞됐딄뒤됐땭돵딤딝듸돳땀둥땵듽도뒷딸뒷될듟됩땧됨둔둣든땱땣따들됫뒨땜듌땤뎨뎹돠뎡딁듰딞땫뒐딅땠둥딄땐디뒙뒷뒾딹두땟뒤딝되돼땄땦땡땻듻듰, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0408x72f43c8d extends DoubleIterator {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final double[] f3845xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public int f3846x3271d0aa;

    public C0408x72f43c8d(double[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        this.f3845xfbe0c504 = array;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f3846x3271d0aa < this.f3845xfbe0c504.length) {
            return true;
        }
        return false;
    }

    @Override // kotlin.collections.DoubleIterator
    public final double nextDouble() {
        try {
            double[] dArr = this.f3845xfbe0c504;
            int i = this.f3846x3271d0aa;
            this.f3846x3271d0aa = i + 1;
            return dArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.f3846x3271d0aa--;
            throw new NoSuchElementException(e.getMessage());
        }
    }
}
