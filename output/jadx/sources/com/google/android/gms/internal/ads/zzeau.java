package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzeau implements zzhhd {
    private final zzhhu zza;

    public zzeau(zzhhu zzhhuVar) {
        this.zza = zzhhuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhhu
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final String zzb() {
        String packageName = ((zzclm) this.zza).zza().getPackageName();
        zzhhl.zzb(packageName);
        return packageName;
    }
}
