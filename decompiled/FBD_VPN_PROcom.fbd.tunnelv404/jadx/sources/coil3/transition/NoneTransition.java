package coil3.transition;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import coil3.request.ErrorResult;
import coil3.request.ImageResult;
import coil3.request.SuccessResult;
import coil3.transition.Transition;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001:\u0001\u000bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcoil3/transition/NoneTransition;", "Lcoil3/transition/Transition;", "Lcoil3/transition/TransitionTarget;", TypedValues.AttributesType.S_TARGET, "Lcoil3/request/ImageResult;", "result", "<init>", "(Lcoil3/transition/TransitionTarget;Lcoil3/request/ImageResult;)V", "", "transition", "()V", "Factory", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final class NoneTransition implements Transition {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final TransitionTarget f878xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final ImageResult f879x3271d0aa;

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\n"}, d2 = {"Lcoil3/transition/NoneTransition$Factory;", "Lcoil3/transition/Transition$Factory;", "<init>", "()V", "create", "Lcoil3/transition/Transition;", TypedValues.AttributesType.S_TARGET, "Lcoil3/transition/TransitionTarget;", "result", "Lcoil3/request/ImageResult;", "coil-core_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Factory implements Transition.Factory {
        @Override // coil3.transition.Transition.Factory
        @NotNull
        public Transition create(@NotNull TransitionTarget target, @NotNull ImageResult result) {
            return new NoneTransition(target, result);
        }
    }

    public NoneTransition(@NotNull TransitionTarget transitionTarget, @NotNull ImageResult imageResult) {
        this.f878xfbe0c504 = transitionTarget;
        this.f879x3271d0aa = imageResult;
    }

    @Override // coil3.transition.Transition
    public void transition() {
        ImageResult imageResult = this.f879x3271d0aa;
        boolean z = imageResult instanceof SuccessResult;
        TransitionTarget transitionTarget = this.f878xfbe0c504;
        if (z) {
            transitionTarget.onSuccess(((SuccessResult) imageResult).getImage());
        } else {
            if (imageResult instanceof ErrorResult) {
                transitionTarget.onError(((ErrorResult) imageResult).getImage());
                return;
            }
            throw new NoWhenBranchMatchedException();
        }
    }
}
