package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.Collections;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class zzaqa implements Comparable {
    private final zzaql zza;
    private final int zzb;
    private final String zzc;
    private final int zzd;
    private final Object zze;

    @Nullable
    @GuardedBy("mLock")
    private final zzaqe zzf;
    private Integer zzg;
    private zzaqd zzh;

    @GuardedBy("mLock")
    private boolean zzi;

    @Nullable
    private zzapj zzj;

    @GuardedBy("mLock")
    private zzapz zzk;
    private final zzapo zzl;

    public zzaqa(int i, String str, @Nullable zzaqe zzaqeVar) {
        zzaql zzaqlVar;
        Uri parse;
        String host;
        if (zzaql.zza) {
            zzaqlVar = new zzaql();
        } else {
            zzaqlVar = null;
        }
        this.zza = zzaqlVar;
        this.zze = new Object();
        int i2 = 0;
        this.zzi = false;
        this.zzj = null;
        this.zzb = i;
        this.zzc = str;
        this.zzf = zzaqeVar;
        this.zzl = new zzapo();
        if (!TextUtils.isEmpty(str) && (parse = Uri.parse(str)) != null && (host = parse.getHost()) != null) {
            i2 = host.hashCode();
        }
        this.zzd = i2;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return this.zzg.intValue() - ((zzaqa) obj).zzg.intValue();
    }

    public final String toString() {
        String valueOf = String.valueOf(Integer.toHexString(this.zzd));
        zzw();
        return new ObfuscatedString(new long[]{-1884036987060721781L, -7495997679446856883L}).toString() + this.zzc + new ObfuscatedString(new long[]{-4217693724605576726L, -1003298231928424465L}).toString() + new ObfuscatedString(new long[]{1369542754072712488L, -1474502733747781443L}).toString().concat(valueOf) + new ObfuscatedString(new long[]{-4939864508641639043L, -6939421672286319912L}).toString() + this.zzg;
    }

    public final int zza() {
        return this.zzb;
    }

    public final int zzb() {
        return this.zzl.zzb();
    }

    public final int zzc() {
        return this.zzd;
    }

    @Nullable
    public final zzapj zzd() {
        return this.zzj;
    }

    public final zzaqa zze(zzapj zzapjVar) {
        this.zzj = zzapjVar;
        return this;
    }

    public final zzaqa zzf(zzaqd zzaqdVar) {
        this.zzh = zzaqdVar;
        return this;
    }

    public final zzaqa zzg(int i) {
        this.zzg = Integer.valueOf(i);
        return this;
    }

    public abstract zzaqg zzh(zzapw zzapwVar);

    public final String zzj() {
        int i = this.zzb;
        String str = this.zzc;
        if (i != 0) {
            return AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{6164660745615766449L, -9123288166004846680L}), AbstractC0749x8313616e.m3341xc20437a5(Integer.toString(1)), str);
        }
        return str;
    }

    public final String zzk() {
        return this.zzc;
    }

    public Map zzl() {
        return Collections.emptyMap();
    }

    public final void zzm(String str) {
        if (zzaql.zza) {
            this.zza.zza(str, Thread.currentThread().getId());
        }
    }

    public final void zzn(zzaqj zzaqjVar) {
        zzaqe zzaqeVar;
        synchronized (this.zze) {
            zzaqeVar = this.zzf;
        }
        zzaqeVar.zza(zzaqjVar);
    }

    public abstract void zzo(Object obj);

    public final void zzp(String str) {
        zzaqd zzaqdVar = this.zzh;
        if (zzaqdVar != null) {
            zzaqdVar.zzb(this);
        }
        if (zzaql.zza) {
            long id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new zzapy(this, str, id));
            } else {
                this.zza.zza(str, id);
                this.zza.zzb(toString());
            }
        }
    }

    public final void zzq() {
        synchronized (this.zze) {
            this.zzi = true;
        }
    }

    public final void zzr() {
        zzapz zzapzVar;
        synchronized (this.zze) {
            zzapzVar = this.zzk;
        }
        if (zzapzVar != null) {
            zzapzVar.zza(this);
        }
    }

    public final void zzs(zzaqg zzaqgVar) {
        zzapz zzapzVar;
        synchronized (this.zze) {
            zzapzVar = this.zzk;
        }
        if (zzapzVar != null) {
            zzapzVar.zzb(this, zzaqgVar);
        }
    }

    public final void zzt(int i) {
        zzaqd zzaqdVar = this.zzh;
        if (zzaqdVar != null) {
            zzaqdVar.zzc(this, i);
        }
    }

    public final void zzu(zzapz zzapzVar) {
        synchronized (this.zze) {
            this.zzk = zzapzVar;
        }
    }

    public final boolean zzv() {
        boolean z;
        synchronized (this.zze) {
            z = this.zzi;
        }
        return z;
    }

    public final boolean zzw() {
        synchronized (this.zze) {
        }
        return false;
    }

    public byte[] zzx() {
        return null;
    }

    public final zzapo zzy() {
        return this.zzl;
    }
}
