package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
abstract class zzfzf implements Iterator {
    int zzb;
    int zzc;
    int zzd;
    final /* synthetic */ zzfzj zze;

    public /* synthetic */ zzfzf(zzfzj zzfzjVar, zzfze zzfzeVar) {
        int i;
        this.zze = zzfzjVar;
        i = zzfzjVar.zzf;
        this.zzb = i;
        this.zzc = zzfzjVar.zze();
        this.zzd = -1;
    }

    private final void zzb() {
        int i;
        i = this.zze.zzf;
        if (i == this.zzb) {
        } else {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzc >= 0;
    }

    @Override // java.util.Iterator
    public final Object next() {
        zzb();
        if (hasNext()) {
            int i = this.zzc;
            this.zzd = i;
            Object zza = zza(i);
            this.zzc = this.zze.zzf(this.zzc);
            return zza;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        boolean z;
        zzb();
        if (this.zzd >= 0) {
            z = true;
        } else {
            z = false;
        }
        zzfxe.zzj(z, new ObfuscatedString(new long[]{9167792230153503235L, -6129510939631538743L, 3903639081981359874L, 4346576389815161187L, 4977357583161334483L, 1626423076234928597L, 2813381484981181486L, 4972721010182658408L}).toString());
        this.zzb += 32;
        int i = this.zzd;
        zzfzj zzfzjVar = this.zze;
        zzfzjVar.remove(zzfzj.zzg(zzfzjVar, i));
        this.zzc--;
        this.zzd = -1;
    }

    public abstract Object zza(int i);
}
