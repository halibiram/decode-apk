package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NavigableMap;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class zzfyt extends zzfyw implements Serializable {
    private final transient Map zza;
    private transient int zzb;

    public zzfyt(Map map) {
        zzfxe.zze(map.isEmpty());
        this.zza = map;
    }

    public static /* bridge */ /* synthetic */ void zzo(zzfyt zzfytVar, Object obj) {
        Object obj2;
        try {
            obj2 = zzfytVar.zza.remove(obj);
        } catch (ClassCastException | NullPointerException unused) {
            obj2 = null;
        }
        Collection collection = (Collection) obj2;
        if (collection != null) {
            int size = collection.size();
            collection.clear();
            zzfytVar.zzb -= size;
        }
    }

    public abstract Collection zza();

    public Collection zzb(Collection collection) {
        throw null;
    }

    public Collection zzc(Object obj, Collection collection) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzgaw
    public final int zze() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfyw
    public final Collection zzf() {
        return new zzfyv(this);
    }

    @Override // com.google.android.gms.internal.ads.zzfyw
    public final Iterator zzg() {
        return new zzfyd(this);
    }

    public final List zzh(Object obj, List list, @CheckForNull zzfyq zzfyqVar) {
        if (list instanceof RandomAccess) {
            return new zzfym(this, obj, list, zzfyqVar);
        }
        return new zzfys(this, obj, list, zzfyqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfyw
    public Map zzj() {
        throw null;
    }

    public final Map zzk() {
        Map map = this.zza;
        if (map instanceof NavigableMap) {
            return new zzfyk(this, (NavigableMap) map);
        }
        if (map instanceof SortedMap) {
            return new zzfyn(this, (SortedMap) map);
        }
        return new zzfyg(this, map);
    }

    @Override // com.google.android.gms.internal.ads.zzfyw
    public Set zzl() {
        throw null;
    }

    public final Set zzm() {
        Map map = this.zza;
        if (map instanceof NavigableMap) {
            return new zzfyl(this, (NavigableMap) map);
        }
        if (map instanceof SortedMap) {
            return new zzfyo(this, (SortedMap) map);
        }
        return new zzfyj(this, map);
    }

    @Override // com.google.android.gms.internal.ads.zzgaw
    public final void zzp() {
        Iterator it = this.zza.values().iterator();
        while (it.hasNext()) {
            ((Collection) it.next()).clear();
        }
        this.zza.clear();
        this.zzb = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzfyw, com.google.android.gms.internal.ads.zzgaw
    public final boolean zzq(Object obj, Object obj2) {
        Collection collection = (Collection) this.zza.get(obj);
        if (collection == null) {
            Collection zza = zza();
            if (zza.add(obj2)) {
                this.zzb++;
                this.zza.put(obj, zza);
                return true;
            }
            throw new AssertionError(new ObfuscatedString(new long[]{-580616563196800583L, 508640604567853371L, -5440004876269489645L, -8664578902753483071L, -8872548447231225067L, -8667496678930660060L, -4700031008108303888L}).toString());
        }
        if (collection.add(obj2)) {
            this.zzb++;
            return true;
        }
        return false;
    }
}
