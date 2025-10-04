package defpackage;

import java.util.NoSuchElementException;
import kotlin.collections.LongIterator;
import kotlin.jvm.internal.Intrinsics;

/* renamed from: 도딐땳딃딟땯땐듻땀따두땅뎨땃땄둠땣뒤뒝땻딐딌딄도듬땬뒵듻딝두땳뒷땻딝돠뒵됨돨뒝듻듨딞듔듽땲됩뒹땧뒘듐딄뎹땮땋되땩되땫돝돸된돨땃따도땦됫딎뒾둑돳딄땯듐딐둬따딄뒀딁듔딃땬땟뎬따뒈딸될딸돷땳딨땅땟땍뒛딝땀딃땱듽땯딻뎡땁땯땲땦득뎰딻뒼두딞뒋뒛듟듌둬딅땹땹땨돼됐돝땝땃둥, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0411xd01a3ff6 extends LongIterator {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final long[] f3851xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public int f3852x3271d0aa;

    public C0411xd01a3ff6(long[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        this.f3851xfbe0c504 = array;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f3852x3271d0aa < this.f3851xfbe0c504.length) {
            return true;
        }
        return false;
    }

    @Override // kotlin.collections.LongIterator
    public final long nextLong() {
        try {
            long[] jArr = this.f3851xfbe0c504;
            int i = this.f3852x3271d0aa;
            this.f3852x3271d0aa = i + 1;
            return jArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.f3852x3271d0aa--;
            throw new NoSuchElementException(e.getMessage());
        }
    }
}
