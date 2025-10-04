package defpackage;

import android.view.View;
import androidx.camera.camera2.internal.ExposureControl;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import com.google.android.material.sidesheet.SideSheetBehavior;

/* renamed from: 뒨뒙뒤뒼딄들듬듟딄딁땫뒼듼땯들듌땋뎬듼됨뎰든뒝뒹뒷딤땰돶딨돠됨뎡뎰딝돰뎻땫뒵뎻땄됨듬땭뎽땵땫뒐땨딁듬디땩뎡돝땦됨딁돴뒬땀딽뒐딁돳뎽듌땰디뒙딸땣돠뎠뒻돝땻뒀땻둬땥듸땥딎되따뎸딀돝땁딽뎹딌딃뎽득돼됴둔딐드돨둣둠됐듻드뎽됫뒙땻땀돵땬뒵듟딃들딻돴듻땁땃땔딨딅둬될뒻듐뎰, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C0728xf59e6099 implements CallbackToFutureAdapter.Resolver, AccessibilityViewCommand {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f4629xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Object f4630x3271d0aa;

    public /* synthetic */ C0728xf59e6099(Object obj, int i) {
        this.f4630x3271d0aa = obj;
        this.f4629xfbe0c504 = i;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        return ExposureControl.m107x3271d0aa(this.f4629xfbe0c504, (ExposureControl) this.f4630x3271d0aa, completer);
    }

    @Override // androidx.core.view.accessibility.AccessibilityViewCommand
    public boolean perform(View view, AccessibilityViewCommand.CommandArguments commandArguments) {
        boolean lambda$createAccessibilityViewCommandForState$2;
        lambda$createAccessibilityViewCommandForState$2 = ((SideSheetBehavior) this.f4630x3271d0aa).lambda$createAccessibilityViewCommandForState$2(this.f4629xfbe0c504, view, commandArguments);
        return lambda$createAccessibilityViewCommandForState$2;
    }
}
