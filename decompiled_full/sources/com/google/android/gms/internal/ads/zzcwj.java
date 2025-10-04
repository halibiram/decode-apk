package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzcwj implements zzcwk {
    private final Map zza;

    public zzcwj(Map map) {
        this.zza = map;
    }

    @Override // com.google.android.gms.internal.ads.zzcwk
    @Nullable
    public final zzein zza(int i, String str) {
        return (zzein) this.zza.get(str);
    }
}
