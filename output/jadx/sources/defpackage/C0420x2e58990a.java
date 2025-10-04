package defpackage;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import kotlin.jvm.internal.Intrinsics;
import okio.AsyncTimeout;

/* renamed from: 돛둥땐뎹디딻딤뎡땻돵둬뒬돛둑땱딃땳됴뎹뒨돛뒈땫딃듽들뎻되뒛둥딤뎨되될딻땄돝땀뒘뒾땲드땥땡듐돼땩뒙뒼땪딌돨둣뒋땟둥땪땋뎨돼들듨드둔딠듸땔땩땠듰듐돛뎬뎻뒐따딸듽됨뎬듌딨듼된딻뒨둔땄딟뒤딸딻돤땱뒉돷뒻득뒐됩뒘돤딎돰뒝땐뒝뒾듐됴뒼됫땧뒷듻딄듸둬딐돰듟땰딁돤딹뒝땲딃뒵딸, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0420x2e58990a {
    /* JADX WARN: Incorrect condition in loop: B:10:0x0057 */
    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void m3077xfbe0c504(AsyncTimeout asyncTimeout, long j, boolean z) {
        AsyncTimeout asyncTimeout2;
        AsyncTimeout asyncTimeout3;
        AsyncTimeout asyncTimeout4;
        AsyncTimeout asyncTimeout5;
        AsyncTimeout asyncTimeout6;
        Condition condition;
        AsyncTimeout asyncTimeout7;
        C0420x2e58990a c0420x2e58990a = AsyncTimeout.f3557x95f25580;
        asyncTimeout2 = AsyncTimeout.f3562x8c6fc18a;
        if (asyncTimeout2 == null) {
            AsyncTimeout.f3562x8c6fc18a = new AsyncTimeout();
            Thread thread = new Thread("Okio Watchdog");
            thread.setDaemon(true);
            thread.start();
        }
        long nanoTime = System.nanoTime();
        if (j != 0 && z) {
            asyncTimeout.f3565x34271fae = Math.min(j, asyncTimeout.deadlineNanoTime() - nanoTime) + nanoTime;
        } else if (j != 0) {
            asyncTimeout.f3565x34271fae = j + nanoTime;
        } else if (z) {
            asyncTimeout.f3565x34271fae = asyncTimeout.deadlineNanoTime();
        } else {
            throw new AssertionError();
        }
        long access$remainingNanos = AsyncTimeout.access$remainingNanos(asyncTimeout, nanoTime);
        asyncTimeout3 = AsyncTimeout.f3562x8c6fc18a;
        Intrinsics.checkNotNull(asyncTimeout3);
        while (asyncTimeout4 != null) {
            asyncTimeout7 = asyncTimeout3.f3564x9e171bf9;
            Intrinsics.checkNotNull(asyncTimeout7);
            if (access$remainingNanos < AsyncTimeout.access$remainingNanos(asyncTimeout7, nanoTime)) {
                break;
            }
            asyncTimeout3 = asyncTimeout3.f3564x9e171bf9;
            Intrinsics.checkNotNull(asyncTimeout3);
        }
        asyncTimeout5 = asyncTimeout3.f3564x9e171bf9;
        asyncTimeout.f3564x9e171bf9 = asyncTimeout5;
        asyncTimeout3.f3564x9e171bf9 = asyncTimeout;
        asyncTimeout6 = AsyncTimeout.f3562x8c6fc18a;
        if (asyncTimeout3 == asyncTimeout6) {
            condition = AsyncTimeout.f3559x9d12c1f4;
            condition.signal();
        }
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final void m3078x3271d0aa(AsyncTimeout asyncTimeout) {
        AsyncTimeout asyncTimeout2;
        AsyncTimeout asyncTimeout3;
        AsyncTimeout asyncTimeout4;
        C0420x2e58990a c0420x2e58990a = AsyncTimeout.f3557x95f25580;
        for (asyncTimeout2 = AsyncTimeout.f3562x8c6fc18a; asyncTimeout2 != null; asyncTimeout2 = asyncTimeout2.f3564x9e171bf9) {
            asyncTimeout3 = asyncTimeout2.f3564x9e171bf9;
            if (asyncTimeout3 == asyncTimeout) {
                asyncTimeout4 = asyncTimeout.f3564x9e171bf9;
                asyncTimeout2.f3564x9e171bf9 = asyncTimeout4;
                asyncTimeout.f3564x9e171bf9 = null;
                return;
            }
        }
        throw new IllegalStateException("node was not found in the queue");
    }

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public static AsyncTimeout m3079x1378447b() {
        AsyncTimeout asyncTimeout;
        AsyncTimeout asyncTimeout2;
        AsyncTimeout asyncTimeout3;
        AsyncTimeout asyncTimeout4;
        Condition condition;
        Condition condition2;
        long j;
        AsyncTimeout asyncTimeout5;
        AsyncTimeout asyncTimeout6;
        long j2;
        AsyncTimeout asyncTimeout7;
        asyncTimeout = AsyncTimeout.f3562x8c6fc18a;
        Intrinsics.checkNotNull(asyncTimeout);
        asyncTimeout2 = asyncTimeout.f3564x9e171bf9;
        if (asyncTimeout2 == null) {
            long nanoTime = System.nanoTime();
            condition2 = AsyncTimeout.f3559x9d12c1f4;
            j = AsyncTimeout.f3560x1db10c9d;
            condition2.await(j, TimeUnit.MILLISECONDS);
            asyncTimeout5 = AsyncTimeout.f3562x8c6fc18a;
            Intrinsics.checkNotNull(asyncTimeout5);
            asyncTimeout6 = asyncTimeout5.f3564x9e171bf9;
            if (asyncTimeout6 != null) {
                return null;
            }
            long nanoTime2 = System.nanoTime() - nanoTime;
            j2 = AsyncTimeout.f3561xd2bcb0cf;
            if (nanoTime2 >= j2) {
                asyncTimeout7 = AsyncTimeout.f3562x8c6fc18a;
                return asyncTimeout7;
            }
            return null;
        }
        long access$remainingNanos = AsyncTimeout.access$remainingNanos(asyncTimeout2, System.nanoTime());
        if (access$remainingNanos > 0) {
            condition = AsyncTimeout.f3559x9d12c1f4;
            condition.await(access$remainingNanos, TimeUnit.NANOSECONDS);
            return null;
        }
        asyncTimeout3 = AsyncTimeout.f3562x8c6fc18a;
        Intrinsics.checkNotNull(asyncTimeout3);
        asyncTimeout4 = asyncTimeout2.f3564x9e171bf9;
        asyncTimeout3.f3564x9e171bf9 = asyncTimeout4;
        asyncTimeout2.f3564x9e171bf9 = null;
        asyncTimeout2.f3563x9738a56c = 2;
        return asyncTimeout2;
    }
}
