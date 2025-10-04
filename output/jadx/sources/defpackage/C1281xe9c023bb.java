package defpackage;

import androidx.camera.core.CameraInfo;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.Observable;
import androidx.camera.core.impl.Timebase;
import androidx.camera.video.AbstractC0121x952a0a9e;
import androidx.camera.video.VideoCapabilities;
import androidx.camera.video.VideoOutput;

/* renamed from: 땰딝듐됩뒹뒛듔뒙딎땥딸딐땔땩둣듐땄딸돴돤듸딠딹딐딄땝땀땰뎠땁돛돴땅뒬들뎹땤뒵돸땡뒘돴뒼땩듸땜뒵둥듰뎸땹땰딟뒐땔뎻땤땠뒘딽땧돝딽뒻됩돝딸딸땟듰둔딐됩뒐딎돛딃듔뎰둑딁땵뎬둣됨드된뎹도땻듌뒷뎻딀돵됨땫듻땜뒀듰땠뎰따땧딹드딌딌득됐딝듔뒐딝뒾따딄듌뒈땯뒻돴딟돶도든땁돝땁, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C1281xe9c023bb implements VideoOutput {
    @Override // androidx.camera.video.VideoOutput
    public final /* synthetic */ VideoCapabilities getMediaCapabilities(CameraInfo cameraInfo) {
        return AbstractC0121x952a0a9e.m453xfbe0c504(this, cameraInfo);
    }

    @Override // androidx.camera.video.VideoOutput
    public final /* synthetic */ Observable getMediaSpec() {
        return AbstractC0121x952a0a9e.m454x3271d0aa(this);
    }

    @Override // androidx.camera.video.VideoOutput
    public final /* synthetic */ Observable getStreamInfo() {
        return AbstractC0121x952a0a9e.m455x1378447b(this);
    }

    @Override // androidx.camera.video.VideoOutput
    public final /* synthetic */ Observable isSourceStreamRequired() {
        return AbstractC0121x952a0a9e.m456x75d576dc(this);
    }

    @Override // androidx.camera.video.VideoOutput
    public final /* synthetic */ void onSourceStateChanged(VideoOutput.SourceState sourceState) {
        AbstractC0121x952a0a9e.m457x9738a56c(this, sourceState);
    }

    @Override // androidx.camera.video.VideoOutput
    public final void onSurfaceRequested(SurfaceRequest surfaceRequest) {
        surfaceRequest.willNotProvideSurface();
    }

    @Override // androidx.camera.video.VideoOutput
    public final /* synthetic */ void onSurfaceRequested(SurfaceRequest surfaceRequest, Timebase timebase) {
        AbstractC0121x952a0a9e.m458x9e171bf9(this, surfaceRequest, timebase);
    }
}
