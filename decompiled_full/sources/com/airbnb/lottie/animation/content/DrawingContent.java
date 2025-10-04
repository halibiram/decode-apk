package com.airbnb.lottie.animation.content;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import com.airbnb.lottie.utils.DropShadow;

/* loaded from: classes.dex */
public interface DrawingContent extends Content {
    void draw(Canvas canvas, Matrix matrix, int i, @Nullable DropShadow dropShadow);

    void getBounds(RectF rectF, Matrix matrix, boolean z);
}
