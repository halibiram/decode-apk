package defpackage;

import java.util.NoSuchElementException;
import kotlin.collections.CharIterator;
import kotlin.jvm.internal.Intrinsics;

/* renamed from: 뎽땡돨둬땜뎰땩뒨땠뎻돼땨땡됫듌드딀땁땜뒘뎹뒹따듻됨뒨뒀땤듟뎽딽둠될땝돴뒉듔땵듰들뎽땪땰뎻딸딨됴둔돛듸땥뒵돳딁둘딀듰딁뎰딌둥둑땨땳돵땨돷딌된되땫땁딅두딝땣땰뎹듟둠됨뒹뒋딌땰땁딠둥딜땩뎰딄둔땠디뎽뒈땳됫듽뎠둔된듽땨따듟뒨딝따땀뎨뒐땯듼뒘땥뎬땭딄뒛땔딻들듔뒼돳딠됴딤, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0407xd53c5c90 extends CharIterator {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final char[] f3843xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public int f3844x3271d0aa;

    public C0407xd53c5c90(char[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        this.f3843xfbe0c504 = array;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f3844x3271d0aa < this.f3843xfbe0c504.length) {
            return true;
        }
        return false;
    }

    @Override // kotlin.collections.CharIterator
    public final char nextChar() {
        try {
            char[] cArr = this.f3843xfbe0c504;
            int i = this.f3844x3271d0aa;
            this.f3844x3271d0aa = i + 1;
            return cArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.f3844x3271d0aa--;
            throw new NoSuchElementException(e.getMessage());
        }
    }
}
