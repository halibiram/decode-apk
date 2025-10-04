package com.google.android.gms.internal.measurement;

import com.panda912.muddy.ObfuscatedString;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzmd implements Iterator {
    final /* synthetic */ zzmh zza;
    private int zzb = -1;
    private boolean zzc;
    private Iterator zzd;

    private final Iterator zza() {
        Map map;
        if (this.zzd == null) {
            map = this.zza.zzc;
            this.zzd = map.entrySet().iterator();
        }
        return this.zzd;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        Map map;
        int i = this.zzb + 1;
        list = this.zza.zzb;
        if (i < list.size()) {
            return true;
        }
        map = this.zza.zzc;
        if (!map.isEmpty() && zza().hasNext()) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        List list;
        List list2;
        this.zzc = true;
        int i = this.zzb + 1;
        this.zzb = i;
        list = this.zza.zzb;
        if (i < list.size()) {
            list2 = this.zza.zzb;
            return (Map.Entry) list2.get(this.zzb);
        }
        return (Map.Entry) zza().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        List list;
        if (this.zzc) {
            this.zzc = false;
            this.zza.zzn();
            int i = this.zzb;
            list = this.zza.zzb;
            if (i < list.size()) {
                zzmh zzmhVar = this.zza;
                int i2 = this.zzb;
                this.zzb = i2 - 1;
                zzmhVar.zzl(i2);
                return;
            }
            zza().remove();
            return;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{627582261046642696L, -5481962822313931154L, -4118622193303559752L, -2396687725026521815L, -3616916005040332375L, -5135380634646550017L}).toString());
    }
}
