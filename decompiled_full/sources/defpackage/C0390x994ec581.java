package defpackage;

import android.view.KeyEvent;
import android.widget.CompoundButton;
import com.google.android.material.chip.Chip;
import com.tknetwork.tunnel.activities.ActivityUi;

/* renamed from: 뎻뒝땰뎡딞됨뎽뎰뒛됐땤둠뒈됫돶돛딤딠듼땣뒝딜돵듐듐뎹땭둑뒤돸딅뒬뒬땲땄뎻땧땦듰따딁둘듔땮땔땁딟둔딠땭땮듰땬뒐뎰뒤둔땳듔됐뒈딸뎰땥땻땸뒾뎡뎻딸돳땃듬둘땣뎽돸돷됴땍뒾돸땀득딄돶됩딠돳둑땸뒉되따딜둑둠되땁땯됫도뒝뒤딹둘뎠땍뒻돛땪뒙뒋땲뒈돳뎡땬딟돳딃둥땃돴듻뒛땀뒵땜딸, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final /* synthetic */ class C0390x994ec581 implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f3815xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ KeyEvent.Callback f3816x3271d0aa;

    public /* synthetic */ C0390x994ec581(KeyEvent.Callback callback, int i) {
        this.f3815xfbe0c504 = i;
        this.f3816x3271d0aa = callback;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        switch (this.f3815xfbe0c504) {
            case 0:
                ((ActivityUi) this.f3816x3271d0aa).lambda$loadAdview$37(compoundButton, z);
                return;
            default:
                Chip.m1035xfbe0c504((Chip) this.f3816x3271d0aa, compoundButton, z);
                return;
        }
    }
}
