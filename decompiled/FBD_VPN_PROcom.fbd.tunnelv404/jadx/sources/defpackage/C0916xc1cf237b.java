package defpackage;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.intrinsics.CancellableKt;
import kotlinx.coroutines.selects.SelectClause2;
import kotlinx.coroutines.selects.SelectClause2Impl;
import kotlinx.coroutines.selects.SelectInstance;

/* renamed from: 딄도든딜땨듔땪돠둬돶돛듬땭돝땲뎨뒨땻뒝돝뒼땳딠땟딸뎨된딃디될돠뒷딅듨듨딅땀뒼드됴땔땨돤듟땣땝돠딹땮돳득돠득뎹돠돰둘둡두둥딽될돴돷돸땸땍되되땭땅돶뒨땯땹딞딄땪돷딀땻둠땯뒘땱돠딹두뎽땁뎨딻뒙땩듽땳땝땨뎬듟딁뒝딄도둘뎠뒋땤땄땫땃딤둣뎰뎻딌뎻듽땦됩땃딜돴돷두딎딤뒵딟드, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0916xc1cf237b extends C0392x4aa4fbad {

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public Continuation f5058x9738a56c;

    /* renamed from: 뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌, reason: contains not printable characters */
    public static final void m3473xad53da1a(C0916xc1cf237b c0916xc1cf237b, SelectInstance selectInstance, Object obj) {
        c0916xc1cf237b.onStart();
        super.getOnSend().getRegFunc().invoke(c0916xc1cf237b, selectInstance, obj);
    }

    @Override // kotlinx.coroutines.channels.ChannelCoroutine, kotlinx.coroutines.channels.SendChannel
    public final boolean close(Throwable th) {
        boolean close = super.close(th);
        start();
        return close;
    }

    @Override // kotlinx.coroutines.channels.ChannelCoroutine, kotlinx.coroutines.channels.SendChannel
    public final SelectClause2 getOnSend() {
        C0915xc34b7a12 c0915xc34b7a12 = C0915xc34b7a12.f5057xfbe0c504;
        Intrinsics.checkNotNull(c0915xc34b7a12, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"select\")] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \"param\")] kotlin.Any?, kotlin.Unit>");
        return new SelectClause2Impl(this, (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(c0915xc34b7a12, 3), super.getOnSend().getProcessResFunc(), null, 8, null);
    }

    @Override // kotlinx.coroutines.channels.ChannelCoroutine, kotlinx.coroutines.channels.SendChannel
    public final boolean offer(Object obj) {
        start();
        return super.offer(obj);
    }

    @Override // kotlinx.coroutines.JobSupport
    public final void onStart() {
        CancellableKt.startCoroutineCancellable((Continuation<? super Unit>) this.f5058x9738a56c, this);
    }

    @Override // kotlinx.coroutines.channels.ChannelCoroutine, kotlinx.coroutines.channels.SendChannel
    public final Object send(Object obj, Continuation continuation) {
        start();
        Object send = super.send(obj, continuation);
        if (send == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            return send;
        }
        return Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.channels.ChannelCoroutine, kotlinx.coroutines.channels.SendChannel
    /* renamed from: trySend-JP2dKIU */
    public final Object mo2254trySendJP2dKIU(Object obj) {
        start();
        return super.mo2254trySendJP2dKIU(obj);
    }
}
