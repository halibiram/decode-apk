package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public class zzdgl {
    protected final Map zza = new HashMap();

    public zzdgl(Set set) {
        zzp(set);
    }

    public final synchronized void zzk(zzdim zzdimVar) {
        zzo(zzdimVar.zza, zzdimVar.zzb);
    }

    public final synchronized void zzo(Object obj, Executor executor) {
        this.zza.put(obj, executor);
    }

    public final synchronized void zzp(Set set) {
        Iterator it = set.iterator();
        while (it.hasNext()) {
            zzk((zzdim) it.next());
        }
    }

    public final synchronized void zzu(final zzdgk zzdgkVar) {
        for (Map.Entry entry : this.zza.entrySet()) {
            final Object key = entry.getKey();
            ((Executor) entry.getValue()).execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdgj
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        zzdgk.this.zza(key);
                    } catch (Throwable th) {
                        com.google.android.gms.ads.internal.zzt.zzo().zzv(th, new ObfuscatedString(new long[]{-9062085328450217494L, -7196444553985911110L, 6649318076763237934L, 6589656327889669207L}).toString());
                        com.google.android.gms.ads.internal.util.zze.zzb(new ObfuscatedString(new long[]{3124338946783378443L, 5082140389617277625L, 1987213530723068063L, 9141954334985956463L}).toString(), th);
                    }
                }
            });
        }
    }
}
