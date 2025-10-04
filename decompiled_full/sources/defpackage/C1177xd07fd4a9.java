package defpackage;

import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;

/* renamed from: 땣땪둡둑둥듌땳뎸땋딸딄됫됴땀됴든딁땄돰돰듸딻돼뒀땨듔된뒉됩뎠됫돼듟딠딄돶딄뎬돴뒬딽돴뒀돠뒈뎹땃땅뒈뎻되땸땲땮딞돝둘돳땦땡딄딻뒤뒨땟된뒹뒹돴돠됨돨땭땯뒻둡땨땁뒋땱뒵땍둬딤땪듐땸땥뒐디돼땃듽뒘땸땔땭땨됐도둑뒘땭땥돰딁땹둣땦돸뒛뒹딠딀딨땦듬뒙듐드딟땰돶둔딎딄둬딝땬도, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C1177xd07fd4a9 implements SharingStarted {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final long f5554xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final long f5555x3271d0aa;

    public C1177xd07fd4a9(long j, long j2) {
        this.f5554xfbe0c504 = j;
        this.f5555x3271d0aa = j2;
        if (j >= 0) {
            if (j2 >= 0) {
                return;
            }
            throw new IllegalArgumentException(("replayExpiration(" + j2 + " ms) cannot be negative").toString());
        }
        throw new IllegalArgumentException(("stopTimeout(" + j + " ms) cannot be negative").toString());
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [kotlin.coroutines.jvm.internal.SuspendLambda, kotlin.jvm.functions.Function2] */
    @Override // kotlinx.coroutines.flow.SharingStarted
    public final Flow command(StateFlow stateFlow) {
        return FlowKt.distinctUntilChanged(FlowKt.dropWhile(FlowKt.transformLatest(stateFlow, new C1175x480cd410(this, null)), new SuspendLambda(2, null)));
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C1177xd07fd4a9) {
            C1177xd07fd4a9 c1177xd07fd4a9 = (C1177xd07fd4a9) obj;
            if (this.f5554xfbe0c504 == c1177xd07fd4a9.f5554xfbe0c504 && this.f5555x3271d0aa == c1177xd07fd4a9.f5555x3271d0aa) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.f5554xfbe0c504;
        int i = ((int) (j ^ (j >>> 32))) * 31;
        long j2 = this.f5555x3271d0aa;
        return i + ((int) (j2 ^ (j2 >>> 32)));
    }

    public final String toString() {
        List createListBuilder = AbstractC0586x968d4673.createListBuilder(2);
        long j = this.f5554xfbe0c504;
        if (j > 0) {
            createListBuilder.add("stopTimeout=" + j + "ms");
        }
        long j2 = this.f5555x3271d0aa;
        if (j2 < Long.MAX_VALUE) {
            createListBuilder.add("replayExpiration=" + j2 + "ms");
        }
        return "SharingStarted.WhileSubscribed(" + CollectionsKt___CollectionsKt.joinToString$default(AbstractC0586x968d4673.build(createListBuilder), null, null, null, 0, null, null, 63, null) + ')';
    }
}
