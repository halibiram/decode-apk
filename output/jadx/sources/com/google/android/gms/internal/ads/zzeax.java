package com.google.android.gms.internal.ads;

import java.util.UUID;

/* loaded from: classes2.dex */
public final class zzeax implements zzhhd {
    public static zzeax zza() {
        zzeax zzeaxVar;
        zzeaxVar = zzeaw.zza;
        return zzeaxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhhu
    public final /* synthetic */ Object zzb() {
        com.google.android.gms.ads.internal.zzt.zzp();
        String uuid = UUID.randomUUID().toString();
        zzhhl.zzb(uuid);
        return uuid;
    }
}
