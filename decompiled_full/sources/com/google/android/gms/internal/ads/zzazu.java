package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.PriorityQueue;

/* loaded from: classes2.dex */
public final class zzazu {
    private final int zza;
    private final zzazr zzb = new zzazw();

    public zzazu(int i) {
        this.zza = i;
    }

    public final String zza(ArrayList arrayList) {
        StringBuilder sb = new StringBuilder();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            sb.append(((String) arrayList.get(i)).toLowerCase(Locale.US));
            sb.append('\n');
        }
        String[] split = sb.toString().split(new ObfuscatedString(new long[]{4989759769382269735L, 8002636813421358155L}).toString());
        if (split.length == 0) {
            return new ObfuscatedString(new long[]{-1343576072312319238L}).toString();
        }
        zzazt zzaztVar = new zzazt();
        PriorityQueue priorityQueue = new PriorityQueue(this.zza, new zzazs(this));
        for (String str : split) {
            String[] zzb = zzazv.zzb(str, false);
            if (zzb.length != 0) {
                zzazz.zzc(zzb, this.zza, 6, priorityQueue);
            }
        }
        Iterator it = priorityQueue.iterator();
        while (it.hasNext()) {
            try {
                zzaztVar.zzb.write(this.zzb.zzb(((zzazy) it.next()).zzb));
            } catch (IOException e) {
                zzcec.zzh(new ObfuscatedString(new long[]{4708802382955592567L, 5293490633080245162L, -7687157735282290770L, 6573591965034947273L, 109061483047252884L, 5393976701486308886L}).toString(), e);
            }
        }
        return zzaztVar.toString();
    }
}
