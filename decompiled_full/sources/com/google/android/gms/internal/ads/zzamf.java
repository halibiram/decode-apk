package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzamf implements Comparable {
    public final int zza;
    public final zzalz zzb;

    public zzamf(int i, zzalz zzalzVar) {
        this.zza = i;
        this.zzb = zzalzVar;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return Integer.compare(this.zza, ((zzamf) obj).zza);
    }
}
