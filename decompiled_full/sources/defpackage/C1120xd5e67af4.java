package defpackage;

import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.sync.SemaphoreKt;

/* renamed from: 땔뎽뒵뎹뒨뒷딅땻땹뎠뒤뒙듻뒛뒛땹딌돝뒙땃돠뎻땳땝됴딃딜뒋딁될땁뒹든딟둠듟뒵뎻뎽듐땐땹될두둔뒈땐둔땣뒼듰뒘뒈듔듻땲듽땔돠땫둣돨딸땸땃뒙됩뒹뒉듟뒙뒵땦될땡땄뒾됴된땜딎땝뒛땥뒷땩땋돸뎨둡땝땸딝도듽뎨땄듽듌땰땭듌땳뒉뒐뒝됫딤땥뎠둠둠딄뒼뎰딨듰뒾딁뒀뒈땮듽땀땬듻딨땟뒝돵, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C1120xd5e67af4 extends Segment {

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final /* synthetic */ AtomicReferenceArray f5428x75d576dc;

    public C1120xd5e67af4(long j, C1120xd5e67af4 c1120xd5e67af4, int i) {
        super(j, c1120xd5e67af4, i);
        int i2;
        i2 = SemaphoreKt.f2503x9e171bf9;
        this.f5428x75d576dc = new AtomicReferenceArray(i2);
    }

    @Override // kotlinx.coroutines.internal.Segment
    public final int getNumberOfSlots() {
        int i;
        i = SemaphoreKt.f2503x9e171bf9;
        return i;
    }

    @Override // kotlinx.coroutines.internal.Segment
    public final void onCancellation(int i, Throwable th, CoroutineContext coroutineContext) {
        Symbol symbol;
        symbol = SemaphoreKt.f2502x9738a56c;
        this.f5428x75d576dc.set(i, symbol);
        onSlotCleaned();
    }

    public final String toString() {
        return "SemaphoreSegment[id=" + this.id + ", hashCode=" + hashCode() + ']';
    }
}
