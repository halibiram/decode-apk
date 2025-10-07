package defpackage;

import java.util.Iterator;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.GeneratorSequence$iterator$1;
import kotlin.sequences.Sequence;

/* renamed from: 듨뒼딁뎨땳듽땄땳듌뎸딻땹땥되돤돼땃땯뒹두딃돰둘딸뒨됨딃뒈땨뎨땁뒋듌딅딽둣땭드뒵뒀땧따딜땰뒀듔땫뒾딐뎸듌뒼뒙땭땔딅뒘둥됴딠둣땤땜땰듽됫돷뒷딀땔땥뒻돨땳딃땀땡듽듰땔딐됴뒨뒾뒾딃땭듼땬듔듔뒙딎땮딄땦뒻듔두듽딸딠뒻뎸뒐돶땰뒝둬땅땟딀땻뎬듬땀됫땨듽둣땬딽딠됐딅듟땐뎻둥딀, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0845x4ee05cae implements Sequence {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Function0 f4947xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final Function1 f4948x3271d0aa;

    public C0845x4ee05cae(Function0 getInitialValue, Function1 getNextValue) {
        Intrinsics.checkNotNullParameter(getInitialValue, "getInitialValue");
        Intrinsics.checkNotNullParameter(getNextValue, "getNextValue");
        this.f4947xfbe0c504 = getInitialValue;
        this.f4948x3271d0aa = getNextValue;
    }

    @Override // kotlin.sequences.Sequence
    public final Iterator iterator() {
        return new GeneratorSequence$iterator$1(this);
    }
}
