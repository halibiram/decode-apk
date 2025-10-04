package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.util.Clock;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes2.dex */
public final class zzcdp implements zzazj {

    @VisibleForTesting
    final zzcdm zza;
    private final com.google.android.gms.ads.internal.util.zzg zze;
    private final Object zzd = new Object();

    @VisibleForTesting
    final HashSet zzb = new HashSet();

    @VisibleForTesting
    final HashSet zzc = new HashSet();
    private boolean zzg = false;
    private final zzcdn zzf = new zzcdn();

    public zzcdp(String str, com.google.android.gms.ads.internal.util.zzg zzgVar) {
        this.zza = new zzcdm(str, zzgVar);
        this.zze = zzgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzazj
    public final void zza(boolean z) {
        long currentTimeMillis = com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis();
        if (z) {
            if (currentTimeMillis - this.zze.zzd() > ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzaT)).longValue()) {
                this.zza.zzd = -1;
            } else {
                this.zza.zzd = this.zze.zzc();
            }
            this.zzg = true;
            return;
        }
        this.zze.zzt(currentTimeMillis);
        this.zze.zzK(this.zza.zzd);
    }

    public final int zzb() {
        int zza;
        synchronized (this.zzd) {
            zza = this.zza.zza();
        }
        return zza;
    }

    public final zzcde zzc(Clock clock, String str) {
        return new zzcde(clock, this, this.zzf.zza(), str);
    }

    public final String zzd() {
        return this.zzf.zzb();
    }

    public final void zze(zzcde zzcdeVar) {
        synchronized (this.zzd) {
            this.zzb.add(zzcdeVar);
        }
    }

    public final void zzf() {
        synchronized (this.zzd) {
            this.zza.zzc();
        }
    }

    public final void zzg() {
        synchronized (this.zzd) {
            this.zza.zzd();
        }
    }

    public final void zzh() {
        synchronized (this.zzd) {
            this.zza.zze();
        }
    }

    public final void zzi() {
        synchronized (this.zzd) {
            this.zza.zzf();
        }
    }

    public final void zzj(com.google.android.gms.ads.internal.client.zzl zzlVar, long j) {
        synchronized (this.zzd) {
            this.zza.zzg(zzlVar, j);
        }
    }

    public final void zzk() {
        synchronized (this.zzd) {
            this.zza.zzh();
        }
    }

    public final void zzl(HashSet hashSet) {
        synchronized (this.zzd) {
            this.zzb.addAll(hashSet);
        }
    }

    public final boolean zzm() {
        return this.zzg;
    }

    public final Bundle zzn(Context context, zzfip zzfipVar) {
        HashSet hashSet = new HashSet();
        synchronized (this.zzd) {
            hashSet.addAll(this.zzb);
            this.zzb.clear();
        }
        Bundle bundle = new Bundle();
        bundle.putBundle(new ObfuscatedString(new long[]{-6443680280592313310L, -1972419298993416810L}).toString(), this.zza.zzb(context, this.zzf.zzb()));
        Bundle bundle2 = new Bundle();
        Iterator it = this.zzc.iterator();
        if (!it.hasNext()) {
            bundle.putBundle(new ObfuscatedString(new long[]{-6467008141341033879L, 6778159417644027312L}).toString(), bundle2);
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            Iterator it2 = hashSet.iterator();
            while (it2.hasNext()) {
                arrayList.add(((zzcde) it2.next()).zza());
            }
            bundle.putParcelableArrayList(new ObfuscatedString(new long[]{2339355121911530433L, 7005268237119269638L}).toString(), arrayList);
            zzfipVar.zzc(hashSet);
            return bundle;
        }
        throw null;
    }
}
