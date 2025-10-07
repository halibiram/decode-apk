package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.Collections;
import java.util.Set;

/* loaded from: classes2.dex */
public final class zzdll implements zzhhd {
    private final zzhhu zza;

    public zzdll(zzhhu zzhhuVar) {
        this.zza = zzhhuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhhu
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set emptySet;
        if (((zzdli) this.zza).zza().zze() != null) {
            emptySet = Collections.singleton(new ObfuscatedString(new long[]{6700395424618777220L, 7341761462045183872L}).toString());
        } else {
            emptySet = Collections.emptySet();
        }
        zzhhl.zzb(emptySet);
        return emptySet;
    }
}
