package defpackage;

import androidx.camera.core.DynamicRange;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.processing.DefaultSurfaceProcessor;
import androidx.camera.core.processing.concurrent.DualSurfaceProcessor;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.work.Configuration;
import androidx.work.impl.Schedulers;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.WorkGenerationalId;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;

/* renamed from: 뒉둣땤돷듸땮딃딻땩뎸땁듼든딸돰따땰돸뒈땃뒛돰딀땐득뒙둠딅득돵딻딌딨됩돶든딤딄땡뎠땹돳듰땅땟뒝땪딜땣뒨땃둘땭딀딝땀딐땍돵돨뒻뎽딹딤뒈따따돸딌뒀도딞뒻뒉딽땥둑땧뒹됨땦뎸됐뒈돴딸뎽돶땲땫된돸땦둘돠뒻둣돨돵돷딎따돴됐딌둡됴뒋뒤땠됩뒐땤뒬뎻땄땟땜땍따땯듻땃돨돵딁뒨땬땠뒝, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0666x99196b8a implements Runnable {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f4482xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Object f4483x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ Object f4484x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final /* synthetic */ Object f4485x75d576dc;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public final /* synthetic */ Object f4486x9738a56c;

    public /* synthetic */ RunnableC0666x99196b8a(int i, Object obj, Object obj2, Object obj3, Object obj4) {
        this.f4482xfbe0c504 = i;
        this.f4486x9738a56c = obj;
        this.f4483x3271d0aa = obj2;
        this.f4484x1378447b = obj3;
        this.f4485x75d576dc = obj4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4482xfbe0c504) {
            case 0:
                ((DefaultSurfaceProcessor) this.f4486x9738a56c).lambda$initGlRenderer$9((DynamicRange) this.f4483x3271d0aa, (Map) this.f4484x1378447b, (CallbackToFutureAdapter.Completer) this.f4485x75d576dc);
                return;
            case 1:
                ((DualSurfaceProcessor) this.f4486x9738a56c).lambda$initGlRenderer$5((DynamicRange) this.f4483x3271d0aa, (Map) this.f4484x1378447b, (CallbackToFutureAdapter.Completer) this.f4485x75d576dc);
                return;
            case 2:
                ((ImageCapture) this.f4486x9738a56c).lambda$takePicture$2((ImageCapture.OutputFileOptions) this.f4483x3271d0aa, (Executor) this.f4484x1378447b, (ImageCapture.OnImageSavedCallback) this.f4485x75d576dc);
                return;
            default:
                Schedulers.m868x3271d0aa((List) this.f4486x9738a56c, (WorkGenerationalId) this.f4483x3271d0aa, (Configuration) this.f4484x1378447b, (WorkDatabase) this.f4485x75d576dc);
                return;
        }
    }
}
