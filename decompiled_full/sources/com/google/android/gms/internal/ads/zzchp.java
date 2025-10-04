package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzchp implements Iterable {
    private final List zza = new ArrayList();

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return this.zza.iterator();
    }

    @Nullable
    public final zzcho zza(zzcgl zzcglVar) {
        Iterator it = iterator();
        while (it.hasNext()) {
            zzcho zzchoVar = (zzcho) it.next();
            if (zzchoVar.zza == zzcglVar) {
                return zzchoVar;
            }
        }
        return null;
    }

    public final void zzb(zzcho zzchoVar) {
        this.zza.add(zzchoVar);
    }

    public final void zzc(zzcho zzchoVar) {
        this.zza.remove(zzchoVar);
    }

    public final boolean zzd(zzcgl zzcglVar) {
        ArrayList arrayList = new ArrayList();
        Iterator it = iterator();
        while (it.hasNext()) {
            zzcho zzchoVar = (zzcho) it.next();
            if (zzchoVar.zza == zzcglVar) {
                arrayList.add(zzchoVar);
            }
        }
        if (arrayList.isEmpty()) {
            return false;
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((zzcho) it2.next()).zzb.zzf();
        }
        return true;
    }
}
