package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzhch implements Iterator {
    final /* synthetic */ zzhcl zza;
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
                zzhcl zzhclVar = this.zza;
                int i2 = this.zzb;
                this.zzb = i2 - 1;
                zzhclVar.zzl(i2);
                return;
            }
            zza().remove();
            return;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{6429156331393888622L, 7165030650940429216L, 4880579312717061291L, 1289710676130587497L, 7476644447390519344L, -1640231250003179848L}).toString());
    }
}
