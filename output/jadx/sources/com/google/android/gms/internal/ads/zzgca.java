package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import java.util.SortedSet;
import javax.annotation.CheckForNull;

/* loaded from: classes2.dex */
public final class zzgca {
    public static int zza(Set set) {
        int i;
        int i2 = 0;
        for (Object obj : set) {
            if (obj != null) {
                i = obj.hashCode();
            } else {
                i = 0;
            }
            i2 += i;
        }
        return i2;
    }

    public static zzgbz zzb(Set set, Set set2) {
        zzfxe.zzc(set, new ObfuscatedString(new long[]{-4902444497497426928L, 3298390040229443857L}).toString());
        zzfxe.zzc(set2, new ObfuscatedString(new long[]{-3099973998237905727L, -6576062706590876886L}).toString());
        return new zzgbu(set, set2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.Collection, java.util.Set] */
    public static Set zzc(Set set, zzfxf zzfxfVar) {
        if (set instanceof SortedSet) {
            SortedSet sortedSet = (SortedSet) set;
            if (sortedSet instanceof zzgbv) {
                zzgbv zzgbvVar = (zzgbv) sortedSet;
                return new zzgbw((SortedSet) zzgbvVar.zza, zzfxi.zza(zzgbvVar.zzb, zzfxfVar));
            }
            sortedSet.getClass();
            return new zzgbw(sortedSet, zzfxfVar);
        }
        if (set instanceof zzgbv) {
            zzgbv zzgbvVar2 = (zzgbv) set;
            return new zzgbv(zzgbvVar2.zza, zzfxi.zza(zzgbvVar2.zzb, zzfxfVar));
        }
        set.getClass();
        return new zzgbv(set, zzfxfVar);
    }

    public static boolean zzd(Set set, @CheckForNull Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size()) {
                    if (set.containsAll(set2)) {
                        return true;
                    }
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    public static boolean zze(Set set, Collection collection) {
        collection.getClass();
        if (collection instanceof zzgbg) {
            collection = ((zzgbg) collection).zza();
        }
        if ((collection instanceof Set) && collection.size() > set.size()) {
            Iterator it = set.iterator();
            collection.getClass();
            boolean z = false;
            while (it.hasNext()) {
                if (collection.contains(it.next())) {
                    it.remove();
                    z = true;
                }
            }
            return z;
        }
        return zzf(set, collection.iterator());
    }

    public static boolean zzf(Set set, Iterator it) {
        boolean z = false;
        while (it.hasNext()) {
            z |= set.remove(it.next());
        }
        return z;
    }
}
