package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraCaptureSession;
import androidx.camera.camera2.internal.CameraBurstCaptureCallback;
import androidx.concurrent.futures.CallbackToFutureAdapter;

/* renamed from: androidx.camera.camera2.internal.뎬땀뎰뎠땹딄딄딃땠돠땝딄딞돵딅따뒹딽딜땋딄딽돶돰둘둑땯땧땟딟뎠돝땠둣땧될듐뒉도땡둡듼둥됩들돰듐땝따듸땮뒤땧두뎹뒉땬땰뒋땋둘돷땬땫딎뎹뎰돼듬딜땻땐땔딃뎡돶딄듔딅땣듐듰땤따뒝둠딽듨딎듼땭뒻땮땹따뎠둡두딝둣땲돸돛두땅돳뒋둔듰돨됨딄땹땧뒉땳둘뎨땣딝듰딻땱땮딻딁뒨됴땨둥, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C0048xe1f61061 implements CameraBurstCaptureCallback.CaptureSequenceCallback, CallbackToFutureAdapter.Resolver {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ CaptureSession f113xfbe0c504;

    public /* synthetic */ C0048xe1f61061(CaptureSession captureSession) {
        this.f113xfbe0c504 = captureSession;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        return CaptureSession.m101x3271d0aa(this.f113xfbe0c504, completer);
    }

    @Override // androidx.camera.camera2.internal.CameraBurstCaptureCallback.CaptureSequenceCallback
    public void onCaptureSequenceCompletedOrAborted(CameraCaptureSession cameraCaptureSession, int i, boolean z) {
        CaptureSession.m103x75d576dc(this.f113xfbe0c504, cameraCaptureSession, i, z);
    }
}
