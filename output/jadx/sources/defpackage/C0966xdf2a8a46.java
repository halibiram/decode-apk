package defpackage;

import android.window.OnBackInvokedCallback;
import androidx.activity.OnBackPressedDispatcher;
import com.google.android.material.motion.MaterialBackHandler;
import kotlin.jvm.functions.Function0;

/* renamed from: 디땪딁딌뎸듸듬땣뎹뒬뎹됫돶된뒵땲돸딃딄뒐돶도딻딝돵딞돤땮딹돼뎡돷딠땰둥뎡뎡땋땲땀땠딸딄득두딅돸땫든땟될뒛땡돵둘뒷땱듽딀두듨땬뒛딽뎨땜듔땁땰뒝땮듰디땐듨땦됨땩돨땻땮딅듬땻뒘땝땱뒤딸딟땬뒘돛되듨땟딞돶돨땩됫땦땁딽딨땥돷듐뒹되땟뒼딻딀땦듬뒬돸뒼땳뒻듬돼디뒼둑디듻땹듨, reason: contains not printable characters */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0966xdf2a8a46 implements OnBackInvokedCallback {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f5138xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Object f5139x3271d0aa;

    public /* synthetic */ C0966xdf2a8a46(Object obj, int i) {
        this.f5138xfbe0c504 = i;
        this.f5139x3271d0aa = obj;
    }

    @Override // android.window.OnBackInvokedCallback
    public final void onBackInvoked() {
        switch (this.f5138xfbe0c504) {
            case 0:
                ((MaterialBackHandler) this.f5139x3271d0aa).handleBackInvoked();
                return;
            case 1:
                OnBackPressedDispatcher.Api33Impl.m13xfbe0c504((Function0) this.f5139x3271d0aa);
                return;
            default:
                ((Runnable) this.f5139x3271d0aa).run();
                return;
        }
    }
}
