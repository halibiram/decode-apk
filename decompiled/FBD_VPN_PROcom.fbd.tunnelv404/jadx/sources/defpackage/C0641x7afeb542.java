package defpackage;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.constraintlayout.core.state.Interpolator;
import androidx.constraintlayout.core.state.Transition;
import androidx.work.multiprocess.RemoteListenableWorker;
import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.ObjectConstructor;

/* renamed from: 둥듟돶땮딅땃뒝뒈듸둑뒙뎰딹뒾되뒉땃땨돠뒉땝딄땯땟듨딟땰딁뎠땬듻뎰땔돛돸땪둣딸땫땡땃땱땄돤땣듌땱따듸땥돰드됩뒘둑돨뎰땄든땣뎬뎨뎸딅뎨뒤뒋뒈둬땔뒹뎰뒀뎸됨디땦땋뎹된돨들들땅뒈딀뒈땤뒘뒘뎠돼됫땳디뒹딄땋디드듌딠딸땮땲돠땸따땀돶둠땰땨둥듨땰됨땄딻딨뒛뎻뎡땀돸땫딜뒋둣땋, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final /* synthetic */ class C0641x7afeb542 implements ObjectConstructor, CallbackToFutureAdapter.Resolver, Interpolator {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f4429xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ String f4430x3271d0aa;

    public /* synthetic */ C0641x7afeb542(String str, int i) {
        this.f4429xfbe0c504 = i;
        this.f4430x3271d0aa = str;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        return RemoteListenableWorker.m898x3271d0aa(this.f4430x3271d0aa, completer);
    }

    @Override // com.google.gson.internal.ObjectConstructor
    public Object construct() {
        switch (this.f4429xfbe0c504) {
            case 0:
                return ConstructorConstructor.m1315xad53da1a(this.f4430x3271d0aa);
            case 1:
                return ConstructorConstructor.m1302x75d576dc(this.f4430x3271d0aa);
            case 2:
                return ConstructorConstructor.m1308x9d12c1f4(this.f4430x3271d0aa);
            case 3:
                return ConstructorConstructor.m1312x1aebc6d9(this.f4430x3271d0aa);
            default:
                return ConstructorConstructor.m1314x85f0360e(this.f4430x3271d0aa);
        }
    }

    @Override // androidx.constraintlayout.core.state.Interpolator
    public float getInterpolation(float f) {
        return Transition.m516x75d576dc(this.f4430x3271d0aa, f);
    }
}
