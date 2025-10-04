package defpackage;

import androidx.arch.core.util.Function;
import androidx.camera.camera2.internal.compat.workaround.RequestMonitor;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.processing.DefaultSurfaceProcessor;
import androidx.camera.video.internal.encoder.VideoEncoderConfig;
import androidx.camera.video.internal.encoder.VideoEncoderInfoImpl;
import androidx.work.impl.model.WorkSpec;
import androidx.work.multiprocess.RemoteWorkManagerClient;
import java.util.List;

/* renamed from: 뒉뒤됨뒬땹딝돵땹들딅돠땧된딀땋돷뒀뎨뒵듬딐딞뎰뒼둑듸딅뎰땡땰될뒹뒝돠된듐뒝땧뒐뎨뒨딜둡땰됫듌땭듸뒈뎻뒵딝뎡땜딞듰땥됫딀돛땵둔뒉돤뒀땐될땅돝뒘된땔돴땹땯돠뒈돝땮땱땀돨딐뒈됴드땀듐땬딸듌땥땔됐듬뒈딐딄땹둑땩돰뎨뒙된돨돝땅땦뎹딠뎠듸듬땁땳듌돳되뎹뎬땋땋뒛땤뒋듽뎠땰땤, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C0667x7214e6ee implements Function {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f4487xfbe0c504;

    public /* synthetic */ C0667x7214e6ee(int i) {
        this.f4487xfbe0c504 = i;
    }

    @Override // androidx.arch.core.util.Function
    public final Object apply(Object obj) {
        Void lambda$submitStillCaptureRequest$4;
        List WORK_INFO_MAPPER$lambda$1;
        switch (this.f4487xfbe0c504) {
            case 0:
                return new DefaultSurfaceProcessor((DynamicRange) obj);
            case 1:
                lambda$submitStillCaptureRequest$4 = ImageCapture.lambda$submitStillCaptureRequest$4((List) obj);
                return lambda$submitStillCaptureRequest$4;
            case 2:
                return RemoteWorkManagerClient.m899xfbe0c504((byte[]) obj);
            case 3:
                return RequestMonitor.m174x3271d0aa((List) obj);
            case 4:
                return VideoEncoderInfoImpl.m448xfbe0c504((VideoEncoderConfig) obj);
            default:
                WORK_INFO_MAPPER$lambda$1 = WorkSpec.WORK_INFO_MAPPER$lambda$1((List) obj);
                return WORK_INFO_MAPPER$lambda$1;
        }
    }
}
