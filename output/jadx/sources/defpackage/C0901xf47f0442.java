package defpackage;

import io.github.g00fy2.quickie.QRScannerActivity;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.JobNode;

/* renamed from: 딁듨듼뎬딃땟뒀뎸땸땥될땦둣됩뒀뒐딨뎸듌딀땔딻듟둣뒋뒾딞딐돵땮둣땋땸딸땪듸뒬땃뒋뒘뒋따됫돸뒀둑됫뒋뎽땃땋딜딨돵땡뒬돵뎠딝득듌뒋딟딨두돰딤뒙땣땲뒼땵딁둥됴딞뒀뒹뒙딜뒻뒉돤땳도땠듼뒈둣땬땅땁뎠딻돶땲땻돵딠딟딤땳땪둔뎠땐돴둡뒀땟뒻땯뎽된뒀뒐딸뒵딎땡땹듌땡됨딃딌땻득된듐, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final /* synthetic */ class C0901xf47f0442 extends FunctionReferenceImpl implements Function1 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f5029xfbe0c504;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0901xf47f0442(int i, Object obj, Class cls, String str, String str2, int i2) {
        super(i, obj, cls, str, str2, i2);
        this.f5029xfbe0c504 = 0;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.f5029xfbe0c504) {
            case 0:
                ((JobNode) this.receiver).invoke((Throwable) obj);
                return Unit.INSTANCE;
            case 1:
                String p0 = (String) obj;
                Intrinsics.checkNotNullParameter(p0, "p0");
                ((QRScannerActivity) this.receiver).m1748xd2bcb0cf(p0);
                return Unit.INSTANCE;
            default:
                Throwable p02 = (Throwable) obj;
                Intrinsics.checkNotNullParameter(p02, "p0");
                ((QRScannerActivity) this.receiver).m1747x1db10c9d(p02);
                return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0901xf47f0442(Object obj, int i) {
        super(1, obj, QRScannerActivity.class, "onSuccess", "onSuccess(Ljava/lang/String;)V", 0);
        this.f5029xfbe0c504 = i;
        switch (i) {
            case 2:
                super(1, obj, QRScannerActivity.class, "onFailure", "onFailure(Ljava/lang/Throwable;)V", 0);
                return;
            default:
                return;
        }
    }
}
