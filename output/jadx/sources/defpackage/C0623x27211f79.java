package defpackage;

import androidx.activity.ComponentActivity;
import androidx.activity.OnBackPressedDispatcher;
import androidx.core.view.MenuHostHelper;
import androidx.core.view.MenuProvider;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleController;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import kotlinx.coroutines.Job;

/* renamed from: 둡됫뎠듼땔딎뒷뎨두딄땳돤돰뒛뎻돷딀뎠딄둠될듽딹뒵땋딎뒘디땨땰땥땣둘뎰디뒵둘됩돵땧뒉되뒬둔딄땔될뒝땨땟땲돝뒐뎻땸두뒘땪듟뒹듐둑돠땁둬돵땩땅둥뎠딄땵땝뒬땳듔됫딝돼돛뎡뎻뎰딝딸듽땬돶땭뎽딝딠둠뒾돝둑딝뒛땣돵된됫뎸돷땜두땳땪딃뒨땸땰돵딻돰딀뎠뎠듟땹돛둣딝됐뒻뒼땹뒉듻돛, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C0623x27211f79 implements LifecycleEventObserver {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f4384xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Object f4385x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ Object f4386x1378447b;

    public /* synthetic */ C0623x27211f79(Object obj, Object obj2, int i) {
        this.f4384xfbe0c504 = i;
        this.f4385x3271d0aa = obj;
        this.f4386x1378447b = obj2;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        switch (this.f4384xfbe0c504) {
            case 0:
                ComponentActivity.addObserverForBackInvoker$lambda$7((OnBackPressedDispatcher) this.f4385x3271d0aa, (ComponentActivity) this.f4386x1378447b, lifecycleOwner, event);
                return;
            case 1:
                LifecycleController.m631xfbe0c504((LifecycleController) this.f4385x3271d0aa, (Job) this.f4386x1378447b, lifecycleOwner, event);
                return;
            default:
                ((MenuHostHelper) this.f4385x3271d0aa).lambda$addMenuProvider$0((MenuProvider) this.f4386x1378447b, lifecycleOwner, event);
                return;
        }
    }
}
