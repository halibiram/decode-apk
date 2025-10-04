package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzgyb extends zzgyd {
    final /* synthetic */ zzgyl zza;
    private int zzb = 0;
    private final int zzc;

    public zzgyb(zzgyl zzgylVar) {
        this.zza = zzgylVar;
        this.zzc = zzgylVar.zzd();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzb < this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzgyf
    public final byte zza() {
        int i = this.zzb;
        if (i < this.zzc) {
            this.zzb = i + 1;
            return this.zza.zzb(i);
        }
        throw new NoSuchElementException();
    }
}
