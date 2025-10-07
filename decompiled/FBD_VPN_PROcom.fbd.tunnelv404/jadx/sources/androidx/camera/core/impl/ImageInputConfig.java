package androidx.camera.core.impl;

import androidx.annotation.NonNull;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.impl.Config;

/* loaded from: classes.dex */
public interface ImageInputConfig extends ReadableConfig {
    public static final Config.Option<Integer> OPTION_INPUT_FORMAT = Config.Option.create("camerax.core.imageInput.inputFormat", Integer.TYPE);
    public static final Config.Option<DynamicRange> OPTION_INPUT_DYNAMIC_RANGE = Config.Option.create("camerax.core.imageInput.inputDynamicRange", DynamicRange.class);

    /* loaded from: classes.dex */
    public interface Builder<B> {
        @NonNull
        B setDynamicRange(@NonNull DynamicRange dynamicRange);
    }

    @NonNull
    DynamicRange getDynamicRange();

    int getInputFormat();

    boolean hasDynamicRange();
}
