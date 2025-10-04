package com.google.android.gms.ads;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class AdView extends BaseAdView {
    public AdView(@NonNull Context context) {
        super(context, 0);
        Preconditions.checkNotNull(context, new ObfuscatedString(new long[]{-792763604193211230L, -8228292523038842114L, -1453887237557235655L, -3224224648983969031L}).toString());
    }

    @NonNull
    public final VideoController zza() {
        return this.zza.zzf();
    }

    public AdView(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet, 0);
    }

    public AdView(@NonNull Context context, @NonNull AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, 0);
    }
}
