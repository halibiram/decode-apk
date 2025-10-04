package defpackage;

import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.StateFlow;

/* renamed from: 땧든땁돷돸땸딸들땀돼땳두뒼뒬든땄됫딽딹땳둠땲땱돷듐듟뎽됩땪도딄됴땣되돴딟딤땀듬딄딞딟딻둣돼드둠땍됨듟둬딤땡듨둬듸뒋땅돷듬땮뒝땮땩따돼되땄땄듸땱된뎰돴뒵뒤딌딁둥땮딜둔돨돛땲딸딟돵돝딐듔땩땵딐둘땁뒀땵뎡뒼도뎬딨됴됫듬딠둣땲돝땳돛뒾뒷둘땨둑됴둡땅됴딐딌딀뒝딄딽딠둔땦, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C1206x301dfd68 extends SharedFlowImpl implements StateFlow {
    @Override // kotlinx.coroutines.flow.StateFlow
    public final Object getValue() {
        Integer valueOf;
        synchronized (this) {
            valueOf = Integer.valueOf(((Number) getLastReplayedLocked()).intValue());
        }
        return valueOf;
    }

    /* renamed from: 뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀, reason: contains not printable characters */
    public final void m3950x1aebc6d9(int i) {
        synchronized (this) {
            tryEmit(Integer.valueOf(((Number) getLastReplayedLocked()).intValue() + i));
        }
    }
}
