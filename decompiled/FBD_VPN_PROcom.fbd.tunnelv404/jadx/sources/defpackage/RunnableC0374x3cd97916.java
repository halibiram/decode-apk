package defpackage;

import androidx.camera.camera2.internal.Camera2CameraControlImpl;
import androidx.camera.core.processing.DefaultSurfaceProcessor;
import androidx.camera.core.processing.concurrent.DualSurfaceProcessor;
import app.tunnel.ssh2.tunnel.SSHThread;
import com.tknetwork.tunnel.activities.ActivityUi;
import com.tknetwork.tunnel.service.TunnelVPN;

/* renamed from: 뎰땄돸뒼땯뒀듰뒛뒀뎠따딠뒼디둡딐듻뎠도뎠둘뒤득땮땩뒻땥딨뎸딄땯딤딌딝뒘딐드돰둡둠딎듸땨딠듰땡딅됴두듽돰딀땪뎸돛듟득땻됫땦될된듽돵뒷땩뒬뒉딐땤돴듟땪돴두돼됫땧땰돴뎽뒤뒙땵딎뒛뒾뎰뒈뒉돛딟돛뒾뒛뒈땨돛딸땜뒐둠딸돠딤돰딞땵듨듐돴딅따됫딁땜듔됨됩땅드딨뒀돤뒵땦딃둬듟땦, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final /* synthetic */ class RunnableC0374x3cd97916 implements Runnable {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f3764xfbe0c504;

    public /* synthetic */ RunnableC0374x3cd97916(int i) {
        this.f3764xfbe0c504 = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3764xfbe0c504) {
            case 0:
                ActivityUi.lambda$startSocksOpenVPN$5();
                return;
            case 1:
                Camera2CameraControlImpl.m32x3271d0aa();
                return;
            case 2:
                Camera2CameraControlImpl.m31xfbe0c504();
                return;
            case 3:
                DefaultSurfaceProcessor.m304x9d12c1f4();
                return;
            case 4:
                DualSurfaceProcessor.m324x3271d0aa();
                return;
            case 5:
                SSHThread.m904xfbe0c504();
                return;
            default:
                TunnelVPN.m1566xfbe0c504();
                return;
        }
    }
}
