package defpackage;

import android.animation.ValueAnimator;
import androidx.camera.view.ScreenFlashView;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.airbnb.lottie.LottieDrawable;
import com.google.android.material.internal.ClippableRoundedCornerLayout;
import com.google.android.material.motion.MaterialMainContainerBackHelper;
import com.google.android.material.navigation.DrawerLayoutUtils;
import com.v2ray.ang.helper.SimpleItemTouchHelperCallback;

/* renamed from: 뒐딅땍땔딀땤땳뒙뒋디뒹땝땵뎽듌땅뒉들뒘딞딻드둬뒛딅돛둡듌됴돳땸둬됐딠땭땝뒘딃땫땲땀땀듨돠듬드땱딜땧딞듬들돝땨디됐딨땬땟들뒝된돰땪돛뒬돸도뎨땋될딟뎨뎡땭땍둣딸딎듽듐둑땔듐뎸돶딁듼땣될땵땱된딞땠땫될땣뒋땲딜땲땅듸땠돠딅듸뒹딽둘뒾뒀뎹돶뒹뎽듸땨됩돰돳둥딝뒬돛뒛됫딌땤, reason: contains not printable characters */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0686x24b55628 implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f4525xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Object f4526x3271d0aa;

    public /* synthetic */ C0686x24b55628(Object obj, int i) {
        this.f4525xfbe0c504 = i;
        this.f4526x3271d0aa = obj;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        switch (this.f4525xfbe0c504) {
            case 0:
                DrawerLayoutUtils.lambda$getScrimCloseAnimatorUpdateListener$0((DrawerLayout) this.f4526x3271d0aa, valueAnimator);
                return;
            case 1:
                ((LottieDrawable) this.f4526x3271d0aa).lambda$new$0(valueAnimator);
                return;
            case 2:
                MaterialMainContainerBackHelper.m1211xfbe0c504((ClippableRoundedCornerLayout) this.f4526x3271d0aa, valueAnimator);
                return;
            case 3:
                ScreenFlashView.m474xfbe0c504((ScreenFlashView) this.f4526x3271d0aa, valueAnimator);
                return;
            default:
                SimpleItemTouchHelperCallback.m1719xfbe0c504((RecyclerView.ViewHolder) this.f4526x3271d0aa, valueAnimator);
                return;
        }
    }
}
