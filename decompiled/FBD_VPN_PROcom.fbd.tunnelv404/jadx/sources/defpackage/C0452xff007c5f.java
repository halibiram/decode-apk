package defpackage;

import java.util.concurrent.locks.ReentrantLock;
import kotlinx.coroutines.channels.BroadcastChannelImpl;
import kotlinx.coroutines.channels.BufferedChannel;

/* renamed from: 돨됩됫돳딻뎰땪딽땲둬돤땣둑뒼된딐뎨땥듟뒙땤땔뎸뒘땱딌땥뒬둑땫뒛됫됴돷땅듟땅도뒨땬땻뒀듔듸듨둣땥땁따딤딅땮듐둬땭뎠돴돷뒤듐뒘됐뒹땳뒉뒨됴땍뎠뒐딌돤됩땃둡듐딄됨돛됫뒷뒛돶뒷뎨딐뎰딜뒻득딌땸땝둑둔땥뒵땵되뎠땃땃땬듸되딞땁든땄듬둔딁뒐듸뒀땃듰땀둬뒹뒤뒷듼돝땍딄돝땵딄듸, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0452xff007c5f extends BufferedChannel {

    /* renamed from: 뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻, reason: contains not printable characters */
    public final /* synthetic */ BroadcastChannelImpl f3908xd2bcb0cf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0452xff007c5f(BroadcastChannelImpl broadcastChannelImpl) {
        super(broadcastChannelImpl.getCapacity(), null, 2, null);
        this.f3908xd2bcb0cf = broadcastChannelImpl;
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel
    public final boolean cancelImpl$kotlinx_coroutines_core(Throwable th) {
        ReentrantLock reentrantLock;
        BroadcastChannelImpl broadcastChannelImpl = this.f3908xd2bcb0cf;
        reentrantLock = broadcastChannelImpl.f1805x8c6fc18a;
        reentrantLock.lock();
        try {
            BroadcastChannelImpl.access$removeSubscriber(broadcastChannelImpl, this);
            return super.cancelImpl$kotlinx_coroutines_core(th);
        } finally {
            reentrantLock.unlock();
        }
    }
}
