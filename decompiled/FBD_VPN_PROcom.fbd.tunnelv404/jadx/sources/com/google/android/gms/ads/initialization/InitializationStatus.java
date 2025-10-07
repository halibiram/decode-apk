package com.google.android.gms.ads.initialization;

import androidx.annotation.NonNull;
import java.util.Map;

/* loaded from: classes2.dex */
public interface InitializationStatus {
    @NonNull
    Map<String, AdapterStatus> getAdapterStatusMap();
}
