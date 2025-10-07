package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes2.dex */
final class zzhh extends zzfzq {
    private final Map zza;

    public zzhh(Map map) {
        this.zza = map;
    }

    @Override // com.google.android.gms.internal.ads.zzfzq, java.util.Map
    public final boolean containsKey(@Nullable Object obj) {
        if (obj != null && super.containsKey(obj)) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzfzq, java.util.Map
    public final boolean containsValue(@Nullable Object obj) {
        return zzd(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzfzq, java.util.Map
    public final Set entrySet() {
        return zzgca.zzc(this.zza.entrySet(), new zzfxf() { // from class: com.google.android.gms.internal.ads.zzhf
            @Override // com.google.android.gms.internal.ads.zzfxf
            public final boolean zza(Object obj) {
                if (((Map.Entry) obj).getKey() != null) {
                    return true;
                }
                return false;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzfzq, java.util.Map
    public final boolean equals(@Nullable Object obj) {
        if (obj != null && zze(obj)) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzfzq, java.util.Map
    @Nullable
    public final /* synthetic */ Object get(@Nullable Object obj) {
        if (obj == null) {
            return null;
        }
        return (List) this.zza.get(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzfzq, java.util.Map
    public final int hashCode() {
        return zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzfzq, java.util.Map
    public final boolean isEmpty() {
        if (this.zza.isEmpty()) {
            return true;
        }
        if (super.size() == 1 && super.containsKey(null)) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzfzq, java.util.Map
    public final Set keySet() {
        return zzgca.zzc(this.zza.keySet(), new zzfxf() { // from class: com.google.android.gms.internal.ads.zzhg
            @Override // com.google.android.gms.internal.ads.zzfxf
            public final boolean zza(Object obj) {
                return ((String) obj) != null;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzfzq, java.util.Map
    public final int size() {
        return super.size() - (super.containsKey(null) ? 1 : 0);
    }

    @Override // com.google.android.gms.internal.ads.zzfzq, com.google.android.gms.internal.ads.zzfzr
    public final /* synthetic */ Object zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzfzq
    public final Map zzb() {
        return this.zza;
    }
}
