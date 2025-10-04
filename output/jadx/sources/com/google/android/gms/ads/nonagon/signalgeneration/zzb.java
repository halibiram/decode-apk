package com.google.android.gms.ads.nonagon.signalgeneration;

import android.util.Pair;
import java.util.ArrayDeque;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzb extends LinkedHashMap {
    final /* synthetic */ zzc zza;

    public zzb(zzc zzcVar) {
        this.zza = zzcVar;
    }

    @Override // java.util.LinkedHashMap
    public final boolean removeEldestEntry(Map.Entry entry) {
        int i;
        ArrayDeque arrayDeque;
        int i2;
        synchronized (this.zza) {
            try {
                int size = size();
                zzc zzcVar = this.zza;
                i = zzcVar.zza;
                boolean z = false;
                if (size <= i) {
                    return false;
                }
                arrayDeque = zzcVar.zzf;
                arrayDeque.add(new Pair((String) entry.getKey(), (String) ((Pair) entry.getValue()).second));
                int size2 = size();
                i2 = this.zza.zza;
                if (size2 > i2) {
                    z = true;
                }
                return z;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
