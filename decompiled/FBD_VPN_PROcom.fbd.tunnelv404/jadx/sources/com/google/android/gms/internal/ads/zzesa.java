package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes2.dex */
final class zzesa implements zzexq {
    private final Set zza;

    public zzesa(Set set) {
        this.zza = set;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final int zza() {
        return 8;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final ListenableFuture zzb() {
        final ArrayList arrayList = new ArrayList();
        Iterator it = this.zza.iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        return zzgen.zzh(new zzexp() { // from class: com.google.android.gms.internal.ads.zzerz
            @Override // com.google.android.gms.internal.ads.zzexp
            public final void zzj(Object obj) {
                ((Bundle) obj).putStringArrayList(new ObfuscatedString(new long[]{8910965414188800304L, -3616027113697784503L}).toString(), arrayList);
            }
        });
    }
}
