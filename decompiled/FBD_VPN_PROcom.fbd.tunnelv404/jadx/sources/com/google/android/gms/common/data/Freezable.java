package com.google.android.gms.common.data;

import androidx.annotation.NonNull;

/* loaded from: classes2.dex */
public interface Freezable<T> {
    @NonNull
    T freeze();

    boolean isDataValid();
}
