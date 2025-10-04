package com.airbnb.lottie.value;

import android.graphics.PointF;
import androidx.annotation.NonNull;
import com.airbnb.lottie.utils.MiscUtils;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes.dex */
public class LottieRelativePointValueCallback extends LottieValueCallback<PointF> {
    private final PointF point;

    public LottieRelativePointValueCallback() {
        this.point = new PointF();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PointF getOffset(LottieFrameInfo<PointF> lottieFrameInfo) {
        T t = this.value;
        if (t != 0) {
            return (PointF) t;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{4136667270045581790L, -4005556396116801487L, -5620019210270181664L, -5917788017128407435L, 1874896135885652443L, 5347269979814491029L, -5588046534846190318L, 5052991598418799581L, -8021043123236775212L, 6384485256591695046L, -5744109671101356216L, -904403416756005348L, -2911370203745398613L}).toString());
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.airbnb.lottie.value.LottieValueCallback
    public final PointF getValue(LottieFrameInfo<PointF> lottieFrameInfo) {
        this.point.set(MiscUtils.lerp(lottieFrameInfo.getStartValue().x, lottieFrameInfo.getEndValue().x, lottieFrameInfo.getInterpolatedKeyframeProgress()), MiscUtils.lerp(lottieFrameInfo.getStartValue().y, lottieFrameInfo.getEndValue().y, lottieFrameInfo.getInterpolatedKeyframeProgress()));
        PointF offset = getOffset(lottieFrameInfo);
        this.point.offset(offset.x, offset.y);
        return this.point;
    }

    public LottieRelativePointValueCallback(@NonNull PointF pointF) {
        super(pointF);
        this.point = new PointF();
    }
}
