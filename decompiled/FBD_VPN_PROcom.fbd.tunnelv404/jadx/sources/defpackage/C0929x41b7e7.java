package defpackage;

import java.io.BufferedReader;
import java.util.Iterator;
import kotlin.io.LinesSequence$iterator$1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;

/* renamed from: 딄땰뒀땠땥땧듻디땣땮땜둥딄땨뎰돷듸땀디땬땥딤땣둠땃땬뒘됩땰땸둥둥뒬뒀땧돴뒬둣뎹둔땳뒬돠딻땔딠됐딞땀돴뒵땪뎻듬됩될뎽땵둡딨땭땭돴딀되됐든땜뒋땹땤땭뎨딝두땨땵든뒐땮딄따딽딀둣도따땰돛땃뎻딁땯뒛둣돶뎰듽둥땄땱뒹듟둣땟딅뎰딤땍땥땃땜듼돰둔돠듐뒾뒘둑땵뎬딨딐딀듟땱땱돝딽, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0929x41b7e7 implements Sequence {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final BufferedReader f5077xfbe0c504;

    public C0929x41b7e7(BufferedReader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        this.f5077xfbe0c504 = reader;
    }

    @Override // kotlin.sequences.Sequence
    public final Iterator iterator() {
        return new LinesSequence$iterator$1(this);
    }
}
