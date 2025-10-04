package defpackage;

import androidx.arch.core.util.Function;
import androidx.camera.lifecycle.ProcessCameraProvider;
import androidx.camera.view.CameraController;
import kotlin.jvm.functions.Function1;

/* renamed from: 돵딜뎸듰딹뒙땮두뒋뒻땜뒵땄돵됨땩될딝됫듽돤땲디뒨뒤뒤딨뎨뒼땦돵땵딄뒘뎻뎸됨땅듔됨땫땵딄딟땥됐두돝뒐땨듰땨듰딽땔되딎듟땲됫듨땀땜땧딐돠뒋둡둣뒬뒐돨땟딄돳뒨드듌땋땻됩됨땡땱뒨뒼딟땝딸뎸땀뒷뒝땝듰됫뎡듼땤뒷땹딤땡땰딜딐땔딸듰돶듽딽뎠딽뒬땧땱땡됐딤뒉둔돴둣땪돤뒀딞뒋땡, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C0500xcc2dd6c2 implements Function {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f3998xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Object f3999x3271d0aa;

    public /* synthetic */ C0500xcc2dd6c2(Object obj, int i) {
        this.f3998xfbe0c504 = i;
        this.f3999x3271d0aa = obj;
    }

    @Override // androidx.arch.core.util.Function
    public final Object apply(Object obj) {
        switch (this.f3998xfbe0c504) {
            case 0:
                return ((CameraController) this.f3999x3271d0aa).enableTorch(((Boolean) obj).booleanValue());
            case 1:
                return ((CameraController) this.f3999x3271d0aa).setLinearZoom(((Float) obj).floatValue());
            case 2:
                return ((CameraController) this.f3999x3271d0aa).setZoomRatio(((Float) obj).floatValue());
            default:
                return ProcessCameraProvider.Companion.m342xfbe0c504(obj, (Function1) this.f3999x3271d0aa);
        }
    }
}
