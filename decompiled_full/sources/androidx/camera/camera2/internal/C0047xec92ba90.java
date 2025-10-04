package androidx.camera.camera2.internal;

import androidx.camera.camera2.internal.Camera2CapturePipeline;
import androidx.camera.core.impl.utils.futures.AsyncFunction;
import com.google.common.util.concurrent.ListenableFuture;

/* renamed from: androidx.camera.camera2.internal.뎬딹땋뎨땵뒀땸땤딹딌땩두돷돛딤둥뒼득땁뒝뎰땨딜뎡땀딞되뒈듼땃땤됨딃땣땍땡둡뎨딌땪돠뒐딀딄뎹돤둣딤땡듌뒹든됫듰둠땭땻듔땔둥들될돵딸됴돳돰뒉됴뒛딤땟땧땨딄뒋땀딹땭뎹뎨딜땪돴땧딸뎻땋땟뒋땮뎰땳드뒐돰뒘딟돸땟둥땧딻뎸딠딞땍돨돸땁둡뒙돝뒋딜듬듰돳딨딀돴뒝돛뎨땩뒝땬듟뒋돨, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C0047xec92ba90 implements AsyncFunction {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f111xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Object f112x3271d0aa;

    public /* synthetic */ C0047xec92ba90(Object obj, int i) {
        this.f111xfbe0c504 = i;
        this.f112x3271d0aa = obj;
    }

    @Override // androidx.camera.core.impl.utils.futures.AsyncFunction
    public final ListenableFuture apply(Object obj) {
        ListenableFuture lambda$preCapture$1;
        ListenableFuture lambda$preCapture$3;
        ListenableFuture lambda$executePreCapture$3;
        switch (this.f111xfbe0c504) {
            case 0:
                lambda$preCapture$1 = ((Camera2CapturePipeline.TorchTask) this.f112x3271d0aa).lambda$preCapture$1((Void) obj);
                return lambda$preCapture$1;
            case 1:
                lambda$preCapture$3 = ((Camera2CapturePipeline.TorchTask) this.f112x3271d0aa).lambda$preCapture$3((Void) obj);
                return lambda$preCapture$3;
            default:
                lambda$executePreCapture$3 = ((Camera2CapturePipeline.Pipeline) this.f112x3271d0aa).lambda$executePreCapture$3((Boolean) obj);
                return lambda$executePreCapture$3;
        }
    }
}
