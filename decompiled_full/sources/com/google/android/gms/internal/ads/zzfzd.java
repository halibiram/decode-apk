package com.google.android.gms.internal.ads;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.CheckForNull;

/* loaded from: classes2.dex */
final class zzfzd extends AbstractSet {
    final /* synthetic */ zzfzj zza;

    public zzfzd(zzfzj zzfzjVar) {
        this.zza = zzfzjVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.zza.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(@CheckForNull Object obj) {
        int zzw;
        Map zzl = this.zza.zzl();
        if (zzl != null) {
            return zzl.entrySet().contains(obj);
        }
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            zzw = this.zza.zzw(entry.getKey());
            if (zzw != -1 && zzfwy.zza(zzfzj.zzj(this.zza, zzw), entry.getValue())) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        zzfzj zzfzjVar = this.zza;
        Map zzl = zzfzjVar.zzl();
        if (zzl != null) {
            return zzl.entrySet().iterator();
        }
        return new zzfzb(zzfzjVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(@CheckForNull Object obj) {
        int zzv;
        int[] zzA;
        Object[] zzB;
        Object[] zzC;
        int i;
        Map zzl = this.zza.zzl();
        if (zzl != null) {
            return zzl.entrySet().remove(obj);
        }
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            zzfzj zzfzjVar = this.zza;
            if (!zzfzjVar.zzr()) {
                zzv = zzfzjVar.zzv();
                Object key = entry.getKey();
                Object value = entry.getValue();
                zzfzj zzfzjVar2 = this.zza;
                Object zzi = zzfzj.zzi(zzfzjVar2);
                zzA = zzfzjVar2.zzA();
                zzB = zzfzjVar2.zzB();
                zzC = zzfzjVar2.zzC();
                int zzb = zzfzk.zzb(key, value, zzv, zzi, zzA, zzB, zzC);
                if (zzb != -1) {
                    this.zza.zzq(zzb, zzv);
                    zzfzj zzfzjVar3 = this.zza;
                    i = zzfzjVar3.zzg;
                    zzfzjVar3.zzg = i - 1;
                    this.zza.zzo();
                    return true;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.zza.size();
    }
}
