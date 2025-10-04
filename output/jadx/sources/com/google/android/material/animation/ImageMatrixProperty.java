package com.google.android.material.animation;

import android.graphics.Matrix;
import android.util.Property;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public class ImageMatrixProperty extends Property<ImageView, Matrix> {
    private final Matrix matrix;

    public ImageMatrixProperty() {
        super(Matrix.class, new ObfuscatedString(new long[]{5543087205082806631L, 7822909287212711925L, 7326814114907782343L, -3304442681466184075L}).toString());
        this.matrix = new Matrix();
    }

    @Override // android.util.Property
    @NonNull
    public Matrix get(@NonNull ImageView imageView) {
        this.matrix.set(imageView.getImageMatrix());
        return this.matrix;
    }

    @Override // android.util.Property
    public void set(@NonNull ImageView imageView, @NonNull Matrix matrix) {
        imageView.setImageMatrix(matrix);
    }
}
