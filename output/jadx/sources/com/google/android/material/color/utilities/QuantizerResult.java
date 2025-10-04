package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;
import java.util.Map;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public final class QuantizerResult {
    public final Map<Integer, Integer> colorToCount;

    public QuantizerResult(Map<Integer, Integer> map) {
        this.colorToCount = map;
    }
}
