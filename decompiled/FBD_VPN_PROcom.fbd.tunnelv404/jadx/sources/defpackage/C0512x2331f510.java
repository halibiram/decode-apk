package defpackage;

import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import kotlinx.coroutines.CancelHandler;
import kotlinx.coroutines.DisposableHandle;

/* renamed from: 돶땨듻듬됨뒀뎹듌둠됨땩뒷듰땮돷뒤땠딜듨땬듐뒼땸듽딤둠든뒀뒀땝땁땅뒙땩뒹둬돛땦둬듻돠둡뒋딄듐돼땄될듰돷딁딞뒷땐땨뒹땥땣뒷땻됩딸땤됩뒾돼땁딸둘땣뎬뒛뎨땸땮든땟뒷땋땵뎬뒹듽드딝둘땣듽뎰땵땐딐되뎡땯딃돝둣듽뎰뒤듸뒾된든돰둔땄딐딸든둑딐땣뒐돝둡땨둠돵든둑돷뒤뒐듸딠땅뎬뒛, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0512x2331f510 implements CancelHandler {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f4014xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final Object f4015x3271d0aa;

    public /* synthetic */ C0512x2331f510(Object obj, int i) {
        this.f4014xfbe0c504 = i;
        this.f4015x3271d0aa = obj;
    }

    @Override // kotlinx.coroutines.CancelHandler
    public final void invoke(Throwable th) {
        switch (this.f4014xfbe0c504) {
            case 0:
                ((ScheduledFuture) this.f4015x3271d0aa).cancel(false);
                return;
            case 1:
                ((DisposableHandle) this.f4015x3271d0aa).dispose();
                return;
            default:
                if (th != null) {
                    ((Future) this.f4015x3271d0aa).cancel(false);
                    return;
                }
                return;
        }
    }

    public final String toString() {
        switch (this.f4014xfbe0c504) {
            case 0:
                return "CancelFutureOnCancel[" + ((ScheduledFuture) this.f4015x3271d0aa) + ']';
            case 1:
                return "DisposeOnCancel[" + ((DisposableHandle) this.f4015x3271d0aa) + ']';
            default:
                return "CancelFutureOnCancel[" + ((Future) this.f4015x3271d0aa) + ']';
        }
    }
}
