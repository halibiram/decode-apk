package defpackage;

import android.os.Bundle;
import androidx.activity.ComponentActivity;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.internal.SavedStateHandleImpl;
import androidx.savedstate.SavedStateRegistry;

/* renamed from: 둠땬듟뒵따돳듸뒷딁둥땩듐딌땥돸되땤딻딞드뒉뒨뎬됫땥뒼딀둥땰됨뎹된땁땄뒼땠뒬듌뎻땭땨돸딃듬듸듻됐둣뒻땩땭뒉돴뎹땥딹뒐땵딄땍땧뒹뒤돳뎽땭될땨된땱뒻돼된딤둠돵땩땅땧땹뎸뒬듰둡땁뒼뒵뎸돸듸땬딄듨땩듔돝딐땡뒀뒷딝뒼딜도뒵땮뒵듸뒾되땍돷딃듨됫땲됩딐뒼딁듟땐뒬돰됴두돰땫딟땄, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C0621x50702162 implements SavedStateRegistry.SavedStateProvider {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f4380xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Object f4381x3271d0aa;

    public /* synthetic */ C0621x50702162(Object obj, int i) {
        this.f4380xfbe0c504 = i;
        this.f4381x3271d0aa = obj;
    }

    @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
    public final Bundle saveState() {
        Bundle _init_$lambda$4;
        Bundle lambda$init$0;
        switch (this.f4380xfbe0c504) {
            case 0:
                _init_$lambda$4 = ComponentActivity._init_$lambda$4((ComponentActivity) this.f4381x3271d0aa);
                return _init_$lambda$4;
            case 1:
                lambda$init$0 = ((FragmentActivity) this.f4381x3271d0aa).lambda$init$0();
                return lambda$init$0;
            case 2:
                return FragmentManager.m616x3271d0aa((FragmentManager) this.f4381x3271d0aa);
            default:
                return SavedStateHandleImpl.m643xfbe0c504((SavedStateHandleImpl) this.f4381x3271d0aa);
        }
    }
}
