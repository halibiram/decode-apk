package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.common.util.Clock;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;

/* loaded from: classes2.dex */
public final class zzcde {
    private final Clock zza;
    private final zzcdp zzb;
    private final String zze;
    private final String zzf;
    private final Object zzd = new Object();
    private long zzg = -1;
    private long zzh = -1;
    private long zzi = 0;
    private long zzj = -1;
    private long zzk = -1;
    private final LinkedList zzc = new LinkedList();

    public zzcde(Clock clock, zzcdp zzcdpVar, String str, String str2) {
        this.zza = clock;
        this.zzb = zzcdpVar;
        this.zze = str;
        this.zzf = str2;
    }

    public final Bundle zza() {
        Bundle bundle;
        synchronized (this.zzd) {
            try {
                bundle = new Bundle();
                bundle.putString(new ObfuscatedString(new long[]{874318715092692595L, 7922245510173068158L}).toString(), this.zze);
                bundle.putString(new ObfuscatedString(new long[]{-6191052505595832240L, 3047311488202971504L}).toString(), this.zzf);
                bundle.putBoolean(new ObfuscatedString(new long[]{-5960361142809407815L, 6442551411627416758L, -2638948533813968666L}).toString(), false);
                bundle.putLong(new ObfuscatedString(new long[]{-5169805834606873553L, -4607443509598375098L}).toString(), this.zzj);
                bundle.putLong(new ObfuscatedString(new long[]{-9121496989034310623L, -5159155895586194021L, 3428377883324033319L}).toString(), this.zzk);
                bundle.putLong(new ObfuscatedString(new long[]{-2639511921126495419L, -1346978203347603247L}).toString(), this.zzg);
                bundle.putLong(new ObfuscatedString(new long[]{-455513417850160421L, -8119233802337812091L}).toString(), this.zzh);
                bundle.putLong(new ObfuscatedString(new long[]{-2813491777847536816L, -4684517757676280942L}).toString(), this.zzi);
                bundle.putLong(new ObfuscatedString(new long[]{3314387798336348964L, -405213885565424211L}).toString(), -1L);
                ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
                Iterator it = this.zzc.iterator();
                while (it.hasNext()) {
                    arrayList.add(((zzcdd) it.next()).zzb());
                }
                bundle.putParcelableArrayList(new ObfuscatedString(new long[]{6217419321364671861L, 2406162259019670844L}).toString(), arrayList);
            } catch (Throwable th) {
                throw th;
            }
        }
        return bundle;
    }

    public final String zzc() {
        return this.zze;
    }

    public final void zzd() {
        synchronized (this.zzd) {
            try {
                if (this.zzk != -1) {
                    zzcdd zzcddVar = new zzcdd(this);
                    zzcddVar.zzd();
                    this.zzc.add(zzcddVar);
                    this.zzi++;
                    this.zzb.zzf();
                    this.zzb.zze(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zze() {
        synchronized (this.zzd) {
            try {
                if (this.zzk != -1 && !this.zzc.isEmpty()) {
                    zzcdd zzcddVar = (zzcdd) this.zzc.getLast();
                    if (zzcddVar.zza() == -1) {
                        zzcddVar.zzc();
                        this.zzb.zze(this);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzf() {
        synchronized (this.zzd) {
            try {
                if (this.zzk != -1 && this.zzg == -1) {
                    this.zzg = this.zza.elapsedRealtime();
                    this.zzb.zze(this);
                }
                this.zzb.zzg();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzg() {
        synchronized (this.zzd) {
            this.zzb.zzh();
        }
    }

    public final void zzh(boolean z) {
        synchronized (this.zzd) {
            try {
                if (this.zzk != -1) {
                    this.zzh = this.zza.elapsedRealtime();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzi() {
        synchronized (this.zzd) {
            this.zzb.zzi();
        }
    }

    public final void zzj(com.google.android.gms.ads.internal.client.zzl zzlVar) {
        synchronized (this.zzd) {
            long elapsedRealtime = this.zza.elapsedRealtime();
            this.zzj = elapsedRealtime;
            this.zzb.zzj(zzlVar, elapsedRealtime);
        }
    }

    public final void zzk(long j) {
        synchronized (this.zzd) {
            try {
                this.zzk = j;
                if (j != -1) {
                    this.zzb.zze(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
