package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import j$.util.Objects;

/* loaded from: classes2.dex */
public final class zzglf extends zzghi {
    private final String zza;
    private final zzgld zzb;
    private final zzghi zzc;

    public /* synthetic */ zzglf(String str, zzgld zzgldVar, zzghi zzghiVar, zzgle zzgleVar) {
        this.zza = str;
        this.zzb = zzgldVar;
        this.zzc = zzghiVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzglf)) {
            return false;
        }
        zzglf zzglfVar = (zzglf) obj;
        if (!zzglfVar.zzb.equals(this.zzb) || !zzglfVar.zzc.equals(this.zzc) || !zzglfVar.zza.equals(this.zza)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzglf.class, this.zza, this.zzb, this.zzc);
    }

    public final String toString() {
        zzghi zzghiVar = this.zzc;
        String valueOf = String.valueOf(this.zzb);
        String valueOf2 = String.valueOf(zzghiVar);
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{6246164774621686800L, -122917631459797173L, -8416615508366969325L, 5082016140525977314L, 8459569230204299045L, 3972863526173756481L, -7498673354156421713L}).toString());
        sb.append(this.zza);
        sb.append(new ObfuscatedString(new long[]{4161545729861771545L, 2035523094889266475L, 6988889192203716842L, -3783987040226638144L}).toString());
        sb.append(valueOf);
        sb.append(new ObfuscatedString(new long[]{-608162086076489494L, 6837040786781062493L, -2294784039844998492L, 5271034233872316896L, 7238094602623764735L}).toString());
        sb.append(valueOf2);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{3541590451975712646L, -2434837490874748037L}), sb);
    }

    @Override // com.google.android.gms.internal.ads.zzggq
    public final boolean zza() {
        return false;
    }

    public final zzghi zzb() {
        return this.zzc;
    }

    public final String zzc() {
        return this.zza;
    }
}
