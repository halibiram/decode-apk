package defpackage;

import android.content.IntentSender;
import androidx.activity.ComponentActivity$activityResultRegistry$1;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.camera.camera2.internal.ExposureControl;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.profileinstaller.DeviceProfileWriter;
import androidx.work.multiprocess.IWorkManagerImplCallback;
import androidx.work.multiprocess.ListenableWorkerImpl;
import com.tknetwork.tunnel.activities.ActivityUi;
import kotlinx.coroutines.Job;

/* renamed from: 뎻뒤뒙듐뎠딝땨뒙돼딎든둥됨딞돛땁돠땋땔듼듽딀뎬들땝땱땻땳돳땻땃땁따딅딸둡될땩뒬둥딻뎻됩뎠됴뎸돵돤땲땨딞땥돷둔땡땰땲둡땀땍됩뒤뎠딐뒀땜뒀뒹됩뒤든뎰돵두땫땻땐딽땰든돵뎡뒈뎡돸듨됐돼딽돝듸딞땠뎠뎠듰돨딞딐둬딠뒛돛딽땯돳뎸돴뒼땀뎬땮뒋뒬땡뎸땱땧뎡뒵돝딝드둬돤둑땤땍듨땳, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final /* synthetic */ class RunnableC0391x31381f22 implements Runnable {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f3817xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ int f3818x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ Object f3819x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final /* synthetic */ Object f3820x75d576dc;

    public /* synthetic */ RunnableC0391x31381f22(Object obj, int i, Object obj2, int i2) {
        this.f3817xfbe0c504 = i2;
        this.f3819x1378447b = obj;
        this.f3818x3271d0aa = i;
        this.f3820x75d576dc = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3817xfbe0c504) {
            case 0:
                ((ActivityUi) this.f3819x1378447b).lambda$updateState$10((String) this.f3820x75d576dc, this.f3818x3271d0aa);
                return;
            case 1:
                ComponentActivity$activityResultRegistry$1.m8x1378447b((ComponentActivity$activityResultRegistry$1) this.f3819x1378447b, this.f3818x3271d0aa, (ActivityResultContract.SynchronousResult) this.f3820x75d576dc);
                return;
            case 2:
                ComponentActivity$activityResultRegistry$1.m7x3271d0aa((ComponentActivity$activityResultRegistry$1) this.f3819x1378447b, this.f3818x3271d0aa, (IntentSender.SendIntentException) this.f3820x75d576dc);
                return;
            case 3:
                ((DeviceProfileWriter) this.f3819x1378447b).lambda$result$0(this.f3818x3271d0aa, this.f3820x75d576dc);
                return;
            case 4:
                ((ExposureControl) this.f3819x1378447b).lambda$setExposureCompensationIndex$1((CallbackToFutureAdapter.Completer) this.f3820x75d576dc, this.f3818x3271d0aa);
                return;
            default:
                ListenableWorkerImpl.m895xfbe0c504((Job) this.f3819x1378447b, this.f3818x3271d0aa, (IWorkManagerImplCallback) this.f3820x75d576dc);
                return;
        }
    }

    public /* synthetic */ RunnableC0391x31381f22(Object obj, Object obj2, int i, int i2) {
        this.f3817xfbe0c504 = i2;
        this.f3819x1378447b = obj;
        this.f3820x75d576dc = obj2;
        this.f3818x3271d0aa = i;
    }
}
