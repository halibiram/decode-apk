package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzfzy extends zzfya {
    private final zzgaa zza;

    public zzfzy(zzgaa zzgaaVar, int i) {
        super(zzgaaVar.size(), i);
        this.zza = zzgaaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfya
    public final Object zza(int i) {
        return this.zza.get(i);
    }
}
