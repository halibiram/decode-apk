package com.google.android.gms.internal.ads;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.util.Collections;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzgz {

    @Nullable
    private Uri zza;
    private Map zzb = Collections.emptyMap();
    private long zzc;
    private int zzd;

    public final zzgz zza(int i) {
        this.zzd = 6;
        return this;
    }

    public final zzgz zzb(Map map) {
        this.zzb = map;
        return this;
    }

    public final zzgz zzc(long j) {
        this.zzc = j;
        return this;
    }

    public final zzgz zzd(Uri uri) {
        this.zza = uri;
        return this;
    }

    public final zzhb zze() {
        if (this.zza != null) {
            return new zzhb(this.zza, this.zzb, this.zzc, this.zzd);
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{-2301392982053554611L, 8597133618466160195L, 8414475814647316030L, 4967115875187546381L}).toString());
    }
}
