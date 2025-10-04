package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

/* loaded from: classes2.dex */
public abstract class zzfzq extends zzfzr implements Map {
    @Override // java.util.Map
    public final void clear() {
        zzb().clear();
    }

    @Override // java.util.Map
    public boolean containsKey(@CheckForNull Object obj) {
        return zzb().containsKey(obj);
    }

    @Override // java.util.Map
    public boolean containsValue(@CheckForNull Object obj) {
        return zzb().containsValue(obj);
    }

    @Override // java.util.Map
    public Set entrySet() {
        return zzb().entrySet();
    }

    @Override // java.util.Map
    public boolean equals(@CheckForNull Object obj) {
        if (obj != this && !zzb().equals(obj)) {
            return false;
        }
        return true;
    }

    @Override // java.util.Map
    @CheckForNull
    public Object get(@CheckForNull Object obj) {
        return zzb().get(obj);
    }

    @Override // java.util.Map
    public int hashCode() {
        return zzb().hashCode();
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return zzb().isEmpty();
    }

    @Override // java.util.Map
    public Set keySet() {
        return zzb().keySet();
    }

    @Override // java.util.Map
    @CheckForNull
    public final Object put(Object obj, Object obj2) {
        return zzb().put(obj, obj2);
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        zzb().putAll(map);
    }

    @Override // java.util.Map
    @CheckForNull
    public final Object remove(@CheckForNull Object obj) {
        return zzb().remove(obj);
    }

    @Override // java.util.Map
    public int size() {
        return zzb().size();
    }

    @Override // java.util.Map
    public final Collection values() {
        return zzb().values();
    }

    @Override // com.google.android.gms.internal.ads.zzfzr
    public /* bridge */ /* synthetic */ Object zza() {
        throw null;
    }

    public abstract Map zzb();

    public final int zzc() {
        return zzgca.zza(entrySet());
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0023, code lost:
    
        if (r1.hasNext() == false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002d, code lost:
    
        if (r5.equals(r1.next()) == false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:2:0x000f, code lost:
    
        if (r5 == null) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0015, code lost:
    
        if (r1.hasNext() == false) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x001b, code lost:
    
        if (r1.next() != null) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001d, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean zzd(@CheckForNull Object obj) {
        zzgaq zzgaqVar = new zzgaq(entrySet().iterator());
    }

    public final boolean zze(@CheckForNull Object obj) {
        return zzgav.zzb(this, obj);
    }
}
