package defpackage;

import androidx.camera.video.internal.encoder.BufferCopiedEncodedData;
import androidx.camera.video.internal.encoder.EncodedDataImpl;
import androidx.camera.video.internal.encoder.EncoderImpl;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: 돨땋뒈뒷돛듰뒨듌땧돤돵땀땩돤땮듟뒷딤둘땐뒨땹딝뒘땜뒈땡딀듰땄땣든딹땵둬딃둡땭둔땱딝돷뎻디뎽뎡돴돨둠딄따뎠듔뒻듟둥땔뎸땱딄뒷드돸돨둠듰뎰돨딁돼될돴듔딃땃돶따땧뒝뒘디땫둣뒷두땳듨돴디딹둥땲딐듻딅듨뒘될뒘둣뎻둘듟딻땸디딌돨땧땪뎹들듨뒘땦뒵딟뎠딹딃딽둡땩디땸됐듨뎹땧돛, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C0458xabc6b8ed implements CallbackToFutureAdapter.Resolver {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f3926xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ AtomicReference f3927x3271d0aa;

    public /* synthetic */ C0458xabc6b8ed(AtomicReference atomicReference, int i) {
        this.f3926xfbe0c504 = i;
        this.f3927x3271d0aa = atomicReference;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        Object lambda$acquireInputBuffer$13;
        Object lambda$new$0;
        switch (this.f3926xfbe0c504) {
            case 0:
                return BufferCopiedEncodedData.m409xfbe0c504(this.f3927x3271d0aa, completer);
            case 1:
                return EncodedDataImpl.m410xfbe0c504(this.f3927x3271d0aa, completer);
            case 2:
                lambda$acquireInputBuffer$13 = EncoderImpl.lambda$acquireInputBuffer$13(this.f3927x3271d0aa, completer);
                return lambda$acquireInputBuffer$13;
            default:
                lambda$new$0 = EncoderImpl.lambda$new$0(this.f3927x3271d0aa, completer);
                return lambda$new$0;
        }
    }
}
