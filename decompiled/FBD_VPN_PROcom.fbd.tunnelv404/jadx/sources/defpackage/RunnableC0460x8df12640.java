package defpackage;

import androidx.camera.core.imagecapture.TakePictureRequest;
import androidx.camera.video.internal.audio.BufferedAudioStream;
import androidx.camera.view.CameraController;
import androidx.core.content.res.ResourcesCompat;
import com.google.android.material.sidesheet.SideSheetBehavior;
import com.tknetwork.tunnel.activities.ServerActivity;

/* renamed from: 돨땲듔땳둘땩둣뎠뒋땩뒹뎰두뒤땔땨딌뎽듽땤땜뎽듸딤듸땦땵뎹돠땍뒷땻땋땋땄딐둡뎬뒵땐딄뎬뒀땧득땨돰될듸뒼땯땡땜땍듼듌듼딁뒤땧뒹땝뒾뒀땣뎹땱돳둥뒛된드뒐땤땀땃땯땄딤뎽땠뒨땍둘듬될뒵됩돨둡뒻딌둬둔딸돸듰뎸듼뎠됨들땟듨둠두땯딟딜돰듟돵딽뎡뒉듐딠땪듐땣돸땥돛든뒼땣땅딽뒘땧, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0460x8df12640 implements Runnable {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f3930xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ int f3931x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ Object f3932x1378447b;

    public /* synthetic */ RunnableC0460x8df12640(Object obj, int i, int i2) {
        this.f3930xfbe0c504 = i2;
        this.f3932x1378447b = obj;
        this.f3931x3271d0aa = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3930xfbe0c504) {
            case 0:
                ((BufferedAudioStream) this.f3932x1378447b).lambda$updateCollectionBufferSizeAsync$4(this.f3931x3271d0aa);
                return;
            case 1:
                CameraController.m461x1378447b((CameraController) this.f3932x1378447b, this.f3931x3271d0aa);
                return;
            case 2:
                ResourcesCompat.FontCallback.m553x3271d0aa((ResourcesCompat.FontCallback) this.f3932x1378447b, this.f3931x3271d0aa);
                return;
            case 3:
                ((ServerActivity) this.f3932x1378447b).lambda$onCreate$0(this.f3931x3271d0aa);
                return;
            case 4:
                SideSheetBehavior.m1236x3271d0aa((SideSheetBehavior) this.f3932x1378447b, this.f3931x3271d0aa);
                return;
            default:
                TakePictureRequest.m250x9738a56c((TakePictureRequest) this.f3932x1378447b, this.f3931x3271d0aa);
                return;
        }
    }
}
