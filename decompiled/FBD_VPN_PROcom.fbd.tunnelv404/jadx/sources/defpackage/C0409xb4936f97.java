package defpackage;

import java.util.NoSuchElementException;
import kotlin.collections.FloatIterator;
import kotlin.jvm.internal.Intrinsics;

/* renamed from: 도될땬듼땸뎹딤둥돳듸듐뒵뎹돸돳딽땃듻되뒙디따둠뎠듌땠뒼뎠도됫땍따땯땰뒻돵둣땲되딐땡딽땠든두뎬돵뒾뎨둡땐땵뎡딄둡디돤됴뎠땐득돠득땲둬딨돰땹뒤뎡땁땝딻딽뒹뒾둡딀땣땮땭땤돨뎸땝듸땻디땸딄도됩땲땪듼딟돴따뒈됴듨딻땩땫뎸뒻드땍듸뎽될뎹딨뎨땨듟듻딅돛뒷두뎨땨돝땋듼딎뒝듬땭, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0409xb4936f97 extends FloatIterator {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final float[] f3847xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public int f3848x3271d0aa;

    public C0409xb4936f97(float[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        this.f3847xfbe0c504 = array;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f3848x3271d0aa < this.f3847xfbe0c504.length) {
            return true;
        }
        return false;
    }

    @Override // kotlin.collections.FloatIterator
    public final float nextFloat() {
        try {
            float[] fArr = this.f3847xfbe0c504;
            int i = this.f3848x3271d0aa;
            this.f3848x3271d0aa = i + 1;
            return fArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.f3848x3271d0aa--;
            throw new NoSuchElementException(e.getMessage());
        }
    }
}
