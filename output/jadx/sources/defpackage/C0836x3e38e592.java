package defpackage;

import androidx.arch.core.util.Function;
import androidx.camera.core.ImageAnalysis;
import androidx.lifecycle.MediatorLiveData;
import androidx.lifecycle.Transformations;
import io.github.g00fy2.quickie.QRScannerActivity;
import java.util.concurrent.CompletableFuture;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.android.HandlerContext;
import kotlinx.coroutines.sync.MutexImpl;

/* renamed from: 들딤땰딀딠둣뒉돴뒬듟딝둣돵듻듐땹돼뒹돛듰땤돰뎠둡딽듬뎡뒻땪뒛됫땜듽됩뎰둑듬돴돝돶둑돳딸딟땁딀땧돴뒐땧둥돼되땩땐듸돤딃뒼들든됫듌뎹돛따도땜땭뒋딝뎠뎠듸딜드뎽된땭땪둘땭뒙됩듰돳될땜땡됐듽땬땪딸땵땬딨됩땸땤딄뎹딞딽땹땁땀도뎹땰둠땃뒐됫딄땠뎡땋뒀딜돴딀뒨땤뒉땐뎹뒾딐딨, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final /* synthetic */ class C0836x3e38e592 implements Function1 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f4921xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Object f4922x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ Object f4923x1378447b;

    public /* synthetic */ C0836x3e38e592(Object obj, Object obj2, int i) {
        this.f4921xfbe0c504 = i;
        this.f4922x3271d0aa = obj;
        this.f4923x1378447b = obj2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Unit map$lambda$0;
        Unit distinctUntilChanged$lambda$4;
        Unit map$lambda$1;
        Object obj2 = this.f4923x1378447b;
        Object obj3 = this.f4922x3271d0aa;
        switch (this.f4921xfbe0c504) {
            case 0:
                CompletableFuture completableFuture = (CompletableFuture) obj3;
                try {
                    completableFuture.complete(((Deferred) obj2).getCompleted());
                } catch (Throwable th) {
                    completableFuture.completeExceptionally(th);
                }
                return Unit.INSTANCE;
            case 1:
                ((HandlerContext) obj3).f1800xfbe0c504.removeCallbacks((RunnableC0371x742e2fda) obj2);
                return Unit.INSTANCE;
            case 2:
                ((MutexImpl) obj3).unlock(((C0991x18f9c879) obj2).f5168x3271d0aa);
                return Unit.INSTANCE;
            case 3:
                String barcode = (String) obj;
                QRScannerActivity.Companion companion = QRScannerActivity.INSTANCE;
                Intrinsics.checkNotNullParameter(barcode, "barcode");
                ((ImageAnalysis) obj3).clearAnalyzer();
                ((QRScannerActivity) obj2).m1748xd2bcb0cf(barcode);
                return Unit.INSTANCE;
            case 4:
                Ref.BooleanRef booleanRef = (Ref.BooleanRef) obj3;
                boolean z = true;
                if (!booleanRef.element && Intrinsics.areEqual(obj, obj2)) {
                    booleanRef.element = true;
                    z = false;
                }
                return Boolean.valueOf(z);
            case 5:
                map$lambda$0 = Transformations.map$lambda$0((MediatorLiveData) obj3, (Function1) obj2, obj);
                return map$lambda$0;
            case 6:
                distinctUntilChanged$lambda$4 = Transformations.distinctUntilChanged$lambda$4((MediatorLiveData) obj3, (Ref.BooleanRef) obj2, obj);
                return distinctUntilChanged$lambda$4;
            default:
                map$lambda$1 = Transformations.map$lambda$1((MediatorLiveData) obj3, (Function) obj2, obj);
                return map$lambda$1;
        }
    }
}
