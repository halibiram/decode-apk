package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzfmb {
    private final Clock zza;
    private final Map zzb = new HashMap();
    private final Map zzc = new HashMap();

    public zzfmb(Clock clock) {
        this.zza = clock;
    }

    private final void zzd(String str, String str2) {
        if (!this.zzb.containsKey(str)) {
            this.zzb.put(str, new ArrayList());
        }
        ((List) this.zzb.get(str)).add(str2);
    }

    public final List zza() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : this.zzb.entrySet()) {
            int i = 0;
            if (((List) entry.getValue()).size() > 1) {
                Iterator it = ((List) entry.getValue()).iterator();
                while (it.hasNext()) {
                    i++;
                    arrayList.add(new zzfma(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-1130842219238524115L, 3956423578586131329L}), AbstractC0749x8313616e.m3341xc20437a5((String) entry.getKey()), i), (String) it.next()));
                }
            } else {
                arrayList.add(new zzfma((String) entry.getKey(), (String) ((List) entry.getValue()).get(0)));
            }
        }
        return arrayList;
    }

    public final void zzb(String str) {
        if (this.zzc.containsKey(str)) {
            long elapsedRealtime = this.zza.elapsedRealtime() - ((Long) this.zzc.remove(str)).longValue();
            StringBuilder sb = new StringBuilder();
            sb.append(elapsedRealtime);
            zzd(str, sb.toString());
            return;
        }
        this.zzc.put(str, Long.valueOf(this.zza.elapsedRealtime()));
    }

    public final void zzc(String str, String str2) {
        if (this.zzc.containsKey(str)) {
            zzd(str, str2 + (this.zza.elapsedRealtime() - ((Long) this.zzc.remove(str)).longValue()));
            return;
        }
        this.zzc.put(str, Long.valueOf(this.zza.elapsedRealtime()));
    }
}
