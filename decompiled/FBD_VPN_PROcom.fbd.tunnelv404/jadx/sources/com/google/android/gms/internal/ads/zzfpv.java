package com.google.android.gms.internal.ads;

import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class zzfpv {
    private final zzfoy zza;
    private final ArrayList zzb;

    public zzfpv(zzfoy zzfoyVar, String str) {
        ArrayList arrayList = new ArrayList();
        this.zzb = arrayList;
        this.zza = zzfoyVar;
        arrayList.add(str);
    }

    public final zzfoy zza() {
        return this.zza;
    }

    public final ArrayList zzb() {
        return this.zzb;
    }

    public final void zzc(String str) {
        this.zzb.add(str);
    }
}
