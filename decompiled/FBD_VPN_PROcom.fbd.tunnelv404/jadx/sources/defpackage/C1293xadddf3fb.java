package defpackage;

import androidx.camera.core.imagecapture.CameraCapturePipeline;
import androidx.camera.core.impl.utils.futures.AsyncFunction;
import androidx.camera.core.streamsharing.VirtualCameraControl;
import androidx.camera.lifecycle.ProcessCameraProvider;
import com.google.common.util.concurrent.ListenableFuture;
import kotlin.jvm.functions.Function1;

/* renamed from: 땱땬둥둬뒙땀둑뒋땭둑돤뒝딃뒵땣드듟땐뒉딠땰뒛돷딠듽땲땰뎠딐땣땨뎽딻뒈땜땯뒤뒛뒻땪딹뒋돤땦돼뒹땅땸드땭딃들둠땻땝딝되됐듼뒝득두뎸돵땐듟뒋듟땋땡듼딨됴둬둔땠뒾듟둘됴딠뒙든뒀됩딀땹땻딻딨딌돷딃땣딨돨뒝땲뒻듟돸뒷땁딟땠땐됫땤뒤땨뎽뒼둡둣땯땧딀땅뒷돴드땤드두딽딞딁땪땥듸, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C1293xadddf3fb implements AsyncFunction {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f5707xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Object f5708x3271d0aa;

    public /* synthetic */ C1293xadddf3fb(Object obj, int i) {
        this.f5707xfbe0c504 = i;
        this.f5708x3271d0aa = obj;
    }

    @Override // androidx.camera.core.impl.utils.futures.AsyncFunction
    public final ListenableFuture apply(Object obj) {
        ListenableFuture orCreateCameraXInstance$lambda$18$lambda$17$lambda$16$lambda$15;
        switch (this.f5707xfbe0c504) {
            case 0:
                return VirtualCameraControl.m338x1378447b((ListenableFuture) this.f5708x3271d0aa, (CameraCapturePipeline) obj);
            case 1:
                return VirtualCameraControl.m337x3271d0aa((ListenableFuture) this.f5708x3271d0aa, (Void) obj);
            default:
                orCreateCameraXInstance$lambda$18$lambda$17$lambda$16$lambda$15 = ProcessCameraProvider.getOrCreateCameraXInstance$lambda$18$lambda$17$lambda$16$lambda$15((Function1) this.f5708x3271d0aa, obj);
                return orCreateCameraXInstance$lambda$18$lambda$17$lambda$16$lambda$15;
        }
    }
}
