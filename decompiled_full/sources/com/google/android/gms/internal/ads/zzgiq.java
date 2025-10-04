package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import j$.util.Objects;

/* loaded from: classes2.dex */
public final class zzgiq extends zzghi {
    private final int zza;
    private final int zzb;
    private final int zzc = 16;
    private final zzgio zzd;

    public /* synthetic */ zzgiq(int i, int i2, int i3, zzgio zzgioVar, zzgip zzgipVar) {
        this.zza = i;
        this.zzb = i2;
        this.zzd = zzgioVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgiq)) {
            return false;
        }
        zzgiq zzgiqVar = (zzgiq) obj;
        if (zzgiqVar.zza != this.zza || zzgiqVar.zzb != this.zzb || zzgiqVar.zzd != this.zzd) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzgiq.class, Integer.valueOf(this.zza), Integer.valueOf(this.zzb), 16, this.zzd);
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzd);
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-8891966000608711016L, -2208709235925363771L, 3004327577229314068L, 6865290400073462461L, -6086330595308769912L}).toString());
        sb.append(valueOf);
        sb.append(new ObfuscatedString(new long[]{-3566958641709291838L, -4583576610288737535L}).toString());
        sb.append(this.zzb);
        sb.append(new ObfuscatedString(new long[]{-2959329716385775432L, -9167642986848845140L, 357306114405207025L}).toString());
        sb.append(16);
        sb.append(new ObfuscatedString(new long[]{6437706554958142001L, -3392552979029499588L, 4285856072899562338L}).toString());
        sb.append(this.zza);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{4500746763492195613L, -9102937325339631638L, -5731166361232214168L}), sb);
    }

    @Override // com.google.android.gms.internal.ads.zzggq
    public final boolean zza() {
        return this.zzd != zzgio.zzc;
    }

    public final int zzb() {
        return this.zzb;
    }

    public final int zzc() {
        return this.zza;
    }

    public final zzgio zzd() {
        return this.zzd;
    }
}
