package com.google.android.gms.internal.ads;

import androidx.annotation.VisibleForTesting;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzara extends zzaqo {
    @VisibleForTesting
    public static List zza(Map map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry entry : map.entrySet()) {
            if (entry.getKey() != null) {
                Iterator it = ((List) entry.getValue()).iterator();
                while (it.hasNext()) {
                    arrayList.add(new zzaps((String) entry.getKey(), (String) it.next()));
                }
            }
        }
        return arrayList;
    }
}
