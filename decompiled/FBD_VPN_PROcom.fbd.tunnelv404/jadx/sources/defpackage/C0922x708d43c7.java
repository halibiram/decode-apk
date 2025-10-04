package defpackage;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.savedstate.internal.SavedStateRegistryImpl;
import kotlinx.coroutines.flow.MutableStateFlow;

/* renamed from: 딄뒼뒻돠디딸둔딌땯돷들딜된땳뎡뒾돨딨둠돤돷되딐듼듽됫둡듟땯딅뎠딌딁듌둔뒼딃땍땰땮땵드된따땸둘딅뒵땥뒝따딄돰뒤드두땭된딨된땁들뒹돵딎디도딜뒙딠둑둬땦땰딝땣뎬딞듻땁딸딜땡땳딜땜땤됩딟뒾딽딎땐뒻땳땄땅뒘든땮땟딸뒛딟딄돴듟듔됫땋득듽따뎡도돵돵뒹듼딃땁딞둔돼듸뒾듟득된땳, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C0922x708d43c7 implements LifecycleEventObserver {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f5062xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Object f5063x3271d0aa;

    public /* synthetic */ C0922x708d43c7(Object obj, int i) {
        this.f5062xfbe0c504 = i;
        this.f5063x3271d0aa = obj;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        switch (this.f5062xfbe0c504) {
            case 0:
                Lifecycle._get_currentStateFlow_$lambda$0((MutableStateFlow) this.f5063x3271d0aa, lifecycleOwner, event);
                return;
            default:
                SavedStateRegistryImpl.performAttach$lambda$12((SavedStateRegistryImpl) this.f5063x3271d0aa, lifecycleOwner, event);
                return;
        }
    }
}
