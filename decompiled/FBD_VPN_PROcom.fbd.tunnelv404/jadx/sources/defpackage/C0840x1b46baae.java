package defpackage;

import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.ListenableFuture;

/* renamed from: 들땯땤됐뒛뎹딟땫뒝뒋됴딸딄득딄땯뒬뒻됫딃둘도돤뒋된듽땐됴뒹듌듐뒾뎽뒙뒹듟뒋땫땃듻딟듟땭득뒷뒾땅딅된딤땪땭든땪딸뎨돳둑듨뒤뒨딌뎡됩땐돵딜뒼듸땯돷딹됩뎰땨딹뒬득둑땳둘땄딄뒤뒾딠득딀딀뒼둘땬뒹듨뒻돳듰딀돴돵둔땫땝뒘땥땁뒀뒾돸땀땥땠둬돵뒵땭듐뒛땋뎽돰땡뎨둠돤땝둘딝땣뒨, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C0840x1b46baae implements CallbackToFutureAdapter.Resolver {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f4930xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ ListenableFuture f4931x3271d0aa;

    public /* synthetic */ C0840x1b46baae(ListenableFuture listenableFuture, int i) {
        this.f4930xfbe0c504 = i;
        this.f4931x3271d0aa = listenableFuture;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        Object lambda$transformAsyncOnCompletion$8;
        Object lambda$nonCancellationPropagating$0;
        switch (this.f4930xfbe0c504) {
            case 0:
                lambda$transformAsyncOnCompletion$8 = Futures.lambda$transformAsyncOnCompletion$8(this.f4931x3271d0aa, completer);
                return lambda$transformAsyncOnCompletion$8;
            default:
                lambda$nonCancellationPropagating$0 = Futures.lambda$nonCancellationPropagating$0(this.f4931x3271d0aa, completer);
                return lambda$nonCancellationPropagating$0;
        }
    }
}
