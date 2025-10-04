package defpackage;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.BroadcastChannel;
import kotlinx.coroutines.channels.C0308xfbe0c504;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.intrinsics.CancellableKt;

/* renamed from: 딄도듽듔땲돸땫땟뎰땄뒉뎡뎽땲뒻뎰뒀딠듬뒻듼돨딞듐딸땭둘딜돸둡둬듰딌듽땳둣돰둬돸땱딁됩둬듬뎠든뒈뎬뎹됐딠딁땫뒐둥돠딹될땵득땩듽듐둠될딄딸딸됴땩돶듸둑딅둔땬땻딜돨뒙딝땥된딜뒵뒹듔뒛됩뒋됨땟땹뎡뒨땪땩뒬뎡뎹땤땧뒈뎰땁땅뒵땔듸딅땨듸됫땤뒻둡들땋둠둘도뎻듌딄둔땭땲딎딃땬, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0917xee93767 extends C0308xfbe0c504 {

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public final Continuation f5059x9738a56c;

    public C0917xee93767(CoroutineContext coroutineContext, BroadcastChannel broadcastChannel, Function2 function2) {
        super(coroutineContext, broadcastChannel, false);
        this.f5059x9738a56c = IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted(function2, this, this);
    }

    @Override // kotlinx.coroutines.JobSupport
    public final void onStart() {
        CancellableKt.startCoroutineCancellable((Continuation<? super Unit>) this.f5059x9738a56c, this);
    }

    @Override // kotlinx.coroutines.channels.C0308xfbe0c504, kotlinx.coroutines.channels.BroadcastChannel
    public final ReceiveChannel openSubscription() {
        ReceiveChannel openSubscription = this.f1851x75d576dc.openSubscription();
        start();
        return openSubscription;
    }
}
