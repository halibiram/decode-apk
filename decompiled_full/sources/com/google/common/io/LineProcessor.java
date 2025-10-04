package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.errorprone.annotations.CanIgnoreReturnValue;

@ElementTypesAreNonnullByDefault
@Beta
@GwtIncompatible
/* loaded from: classes2.dex */
public interface LineProcessor<T> {
    @ParametricNullness
    T getResult();

    @CanIgnoreReturnValue
    boolean processLine(String str);
}
