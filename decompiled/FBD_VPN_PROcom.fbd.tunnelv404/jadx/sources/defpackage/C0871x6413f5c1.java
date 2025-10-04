package defpackage;

import androidx.camera.core.ImageAnalysis;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.Preview;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.video.VideoCapture;

/* renamed from: 듻딸뎰뒼됫땯뒘듔디딅땠뒙둑득뒛딜땡뒛딤뒵땰돠땦딜땩듐땰돝둡뒼딜뎬뎨뒤돨땣땪뒐땡딐둡뎡뒋땥돠듟됨뒹땳돼듻뒹뎽땝뒋듰뒨딁도둡둬딃둔땧됐딝딻딻뎻뒤뎹듰둑뎰땁듽땫듐뒤된득땥딞땟땔뎡뒨땳땅딃듌둡뒬듽될땨땲뎹둠뎽돝뒷듽뒼딝듸땣둑돤뎡둣된뒐두딃돼딄뎬듽뒐땋둑돰땃됩듸드둑땃땳, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C0871x6413f5c1 implements SessionConfig.ErrorListener {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f4994xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Object f4995x3271d0aa;

    public /* synthetic */ C0871x6413f5c1(Object obj, int i) {
        this.f4994xfbe0c504 = i;
        this.f4995x3271d0aa = obj;
    }

    @Override // androidx.camera.core.impl.SessionConfig.ErrorListener
    public final void onError(SessionConfig sessionConfig, SessionConfig.SessionError sessionError) {
        switch (this.f4994xfbe0c504) {
            case 0:
                ImageAnalysis.m195xfbe0c504((ImageAnalysis) this.f4995x3271d0aa, sessionConfig, sessionError);
                return;
            case 1:
                ImageCapture.m205x1378447b((ImageCapture) this.f4995x3271d0aa, sessionConfig, sessionError);
                return;
            case 2:
                Preview.m212xfbe0c504((Preview) this.f4995x3271d0aa, sessionConfig, sessionError);
                return;
            case 3:
                SessionConfig.ValidatingBuilder.m274xfbe0c504((SessionConfig.ValidatingBuilder) this.f4995x3271d0aa, sessionConfig, sessionError);
                return;
            default:
                VideoCapture.m372xfbe0c504((VideoCapture) this.f4995x3271d0aa, sessionConfig, sessionError);
                return;
        }
    }
}
