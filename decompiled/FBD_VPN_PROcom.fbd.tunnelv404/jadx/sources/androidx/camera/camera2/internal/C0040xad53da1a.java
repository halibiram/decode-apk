package androidx.camera.camera2.internal;

import android.hardware.camera2.TotalCaptureResult;
import androidx.arch.core.util.Function;
import androidx.camera.camera2.internal.Camera2CapturePipeline;
import java.util.List;

/* renamed from: androidx.camera.camera2.internal.뎨땋된땫딜딜땮듔든득됫뒻뒬땃돰땔땠땫뒉딜돛둑땅뒙든듨땁딁땧땦뒼딎듨딽되땩뒤됐땫돳뎻뎨듰딞됐뎸땯뎻땸뎨땋딞뎰딠딅뒐됩뒐뎡뒹딅딞뎽땅둑땟땧땣듸됨뒷땤딀뒉돨딎둠됫딁땳뎰됨땁땧되땔들뒻뎠땨뎠딜뒘땻땤뎰돤딜땦땩딃돸둣땣됐듐땃뒛뒷둔두땃딽땤됐딻땝둔딞뎽돝된땫뒻뎬돛땨딹든듌, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C0040xad53da1a implements Function {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f101xfbe0c504;

    public /* synthetic */ C0040xad53da1a(int i) {
        this.f101xfbe0c504 = i;
    }

    @Override // androidx.arch.core.util.Function
    public final Object apply(Object obj) {
        switch (this.f101xfbe0c504) {
            case 0:
                return Camera2CapturePipeline.AePreCaptureTask.m71xfbe0c504((Void) obj);
            case 1:
                return Camera2CapturePipeline.CameraCapturePipelineImpl.m74x3271d0aa((TotalCaptureResult) obj);
            case 2:
                return Camera2CapturePipeline.Pipeline.AnonymousClass1.m80xfbe0c504((List) obj);
            case 3:
                return Camera2CapturePipeline.ScreenFlashTask.m83x3271d0aa((TotalCaptureResult) obj);
            default:
                return Camera2CapturePipeline.TorchTask.m98x75d576dc((TotalCaptureResult) obj);
        }
    }
}
