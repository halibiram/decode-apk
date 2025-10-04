package defpackage;

import android.view.View;
import androidx.camera.camera2.interop.Camera2CameraControl;
import androidx.camera.video.internal.audio.AudioStream;
import androidx.camera.video.internal.audio.AudioStreamImpl;
import com.airbnb.lottie.LottieCompositionFactory;
import com.google.android.material.internal.ViewUtils;
import com.google.zxing.client.android.AmbientLightManager;
import com.journeyapps.barcodescanner.camera.CameraInstance;
import java.io.InputStream;

/* renamed from: 뎻땐듨따뎠돝땯뒙듻땲딄딨듸득돤듰땪뒝딸둥듐뒵될땮뒝딹뎠뎰딎돛뒐돼땍돸돳땹듸된될둔땦딄듻딄돸뎻땩땣딄땝딐땍딐딟땁됴땡딎됫됐뒉돸뒀뒻뒐땬돷둥디돨둔딐땹뒵땃딟딄딞둣뒘딻뒀뎠듐둑뒹딁뒉된딜딸땐땃땳돤돤뎽뒾딐둔듌뎽딨된뒷뎻됨도도딟뎨뎬뎹딞땥드됴됐딹될땫땱땜뎸듸뒘땩둡돷땮, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final /* synthetic */ class RunnableC0395x2fa10a30 implements Runnable {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f3822xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ boolean f3823x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ Object f3824x1378447b;

    public /* synthetic */ RunnableC0395x2fa10a30(int i, Object obj, boolean z) {
        this.f3822xfbe0c504 = i;
        this.f3824x1378447b = obj;
        this.f3823x3271d0aa = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3822xfbe0c504) {
            case 0:
                AmbientLightManager.m1320xfbe0c504((AmbientLightManager) this.f3824x1378447b, this.f3823x3271d0aa);
                return;
            case 1:
                AudioStreamImpl.m399xfbe0c504((AudioStream.AudioStreamCallback) this.f3824x1378447b, this.f3823x3271d0aa);
                return;
            case 2:
                Camera2CameraControl.m182x9738a56c((Camera2CameraControl) this.f3824x1378447b, this.f3823x3271d0aa);
                return;
            case 3:
                CameraInstance.m1332xfbe0c504((CameraInstance) this.f3824x1378447b, this.f3823x3271d0aa);
                return;
            case 4:
                LottieCompositionFactory.lambda$fromJsonInputStream$7(this.f3823x3271d0aa, (InputStream) this.f3824x1378447b);
                return;
            default:
                ViewUtils.m1210xfbe0c504((View) this.f3824x1378447b, this.f3823x3271d0aa);
                return;
        }
    }

    public /* synthetic */ RunnableC0395x2fa10a30(boolean z, InputStream inputStream) {
        this.f3822xfbe0c504 = 4;
        this.f3823x3271d0aa = z;
        this.f3824x1378447b = inputStream;
    }
}
