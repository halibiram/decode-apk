package defpackage;

import kotlinx.coroutines.channels.BroadcastChannelImpl;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.ConflatedBufferedChannel;

/* renamed from: 돨됩딜딝땃둠뎡듔땵뒐땵딝듼됫딄딤득뒤뎬둣돸뒬둠디돴뒉듰뒨땠뒾됴땜돵뎠땋딄둘듬돨땫뒨딄땃두뎰딸땧둔돳듌딄딅뒼듌듸뒘딸됩듻딄둣듰될뒾따뎹될딤딁돝돨땍땟뒾둡뒉땭뒀땵뒤뒋딃뒷딟땄뒾딤듻땯딽둠듽딄딟땥땤딽땰듨든딻둬두됨땀땭뒷들땃땠땃듽딽듰딐딜듰땟땰딟두딄땲땳듬뒵뎡돼될듽, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0453xac8b86aa extends ConflatedBufferedChannel {

    /* renamed from: 뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁, reason: contains not printable characters */
    public final /* synthetic */ BroadcastChannelImpl f3909x8c6fc18a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0453xac8b86aa(BroadcastChannelImpl broadcastChannelImpl) {
        super(1, BufferOverflow.DROP_OLDEST, null, 4, null);
        this.f3909x8c6fc18a = broadcastChannelImpl;
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel
    public final boolean cancelImpl$kotlinx_coroutines_core(Throwable th) {
        BroadcastChannelImpl.access$removeSubscriber(this.f3909x8c6fc18a, this);
        return super.cancelImpl$kotlinx_coroutines_core(th);
    }
}
