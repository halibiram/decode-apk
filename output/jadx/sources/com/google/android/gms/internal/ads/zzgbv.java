package com.google.android.gms.internal.ads;

import java.util.Set;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzgbv extends zzfyy implements Set {
    public zzgbv(Set set, zzfxf zzfxfVar) {
        super(set, zzfxfVar);
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(@CheckForNull Object obj) {
        return zzgca.zzd(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        return zzgca.zza(this);
    }
}
