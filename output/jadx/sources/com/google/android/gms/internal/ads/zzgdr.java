package com.google.android.gms.internal.ads;

import java.util.Set;
import javax.annotation.CheckForNull;

/* loaded from: classes2.dex */
final class zzgdr extends zzgdo {
    public /* synthetic */ zzgdr(zzgdq zzgdqVar) {
        super(null);
    }

    @Override // com.google.android.gms.internal.ads.zzgdo
    public final int zza(zzgds zzgdsVar) {
        int i;
        int i2;
        synchronized (zzgdsVar) {
            i = zzgdsVar.remaining;
            i2 = i - 1;
            zzgdsVar.remaining = i2;
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.zzgdo
    public final void zzb(zzgds zzgdsVar, @CheckForNull Set set, Set set2) {
        Set set3;
        synchronized (zzgdsVar) {
            try {
                set3 = zzgdsVar.seenExceptions;
                if (set3 == null) {
                    zzgdsVar.seenExceptions = set2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private zzgdr() {
        super(null);
    }
}
