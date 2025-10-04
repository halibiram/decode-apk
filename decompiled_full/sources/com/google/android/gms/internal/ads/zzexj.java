package com.google.android.gms.internal.ads;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzexj implements zzexq {
    private final boolean zza;

    public zzexj(@Nullable zzfeh zzfehVar) {
        this.zza = zzfehVar != null;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final int zza() {
        return 36;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final ListenableFuture zzb() {
        zzexi zzexiVar;
        if (this.zza) {
            zzexiVar = new zzexp() { // from class: com.google.android.gms.internal.ads.zzexi
                @Override // com.google.android.gms.internal.ads.zzexp
                public final void zzj(Object obj) {
                    ((Bundle) obj).putBoolean(new ObfuscatedString(new long[]{6116447851479545507L, 2481941024716499821L, -7380361524848214776L}).toString(), true);
                }
            };
        } else {
            zzexiVar = null;
        }
        return zzgen.zzh(zzexiVar);
    }
}
