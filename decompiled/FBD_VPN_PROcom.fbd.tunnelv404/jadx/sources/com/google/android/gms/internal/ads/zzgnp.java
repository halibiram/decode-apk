package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import j$.util.Objects;

/* loaded from: classes2.dex */
public final class zzgnp extends zzggq {
    private final zzgoy zza;

    public zzgnp(zzgoy zzgoyVar) {
        this.zza = zzgoyVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgnp)) {
            return false;
        }
        zzgoy zzgoyVar = ((zzgnp) obj).zza;
        if (!this.zza.zzc().zzf().equals(zzgoyVar.zzc().zzf()) || !this.zza.zzc().zzh().equals(zzgoyVar.zzc().zzh()) || !this.zza.zzc().zzg().equals(zzgoyVar.zzc().zzg())) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        zzgoy zzgoyVar = this.zza;
        return Objects.hash(zzgoyVar.zzc(), zzgoyVar.zzd());
    }

    public final String toString() {
        ObfuscatedString obfuscatedString;
        String obfuscatedString2;
        String zzh = this.zza.zzc().zzh();
        zzgvz zzf = this.zza.zzc().zzf();
        zzgvz zzgvzVar = zzgvz.zza;
        int ordinal = zzf.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (ordinal != 4) {
                        obfuscatedString2 = new ObfuscatedString(new long[]{1055297180276258825L, -3820666308764442179L}).toString();
                        return String.format(new ObfuscatedString(new long[]{-1029861782262447782L, 6344171153165729367L, 8227768847064331749L, 6443455488442293175L, -68102959193465279L, -5084197730505959418L}).toString(), zzh, obfuscatedString2);
                    }
                    obfuscatedString = new ObfuscatedString(new long[]{-617485810802703942L, -2827133124669614455L});
                } else {
                    obfuscatedString = new ObfuscatedString(new long[]{1171910500325435739L, 3369719849595676454L});
                }
            } else {
                obfuscatedString = new ObfuscatedString(new long[]{-3056325838475844666L, -8478706089359279089L});
            }
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{1305415627157969198L, 8361834282641975944L});
        }
        obfuscatedString2 = obfuscatedString.toString();
        return String.format(new ObfuscatedString(new long[]{-1029861782262447782L, 6344171153165729367L, 8227768847064331749L, 6443455488442293175L, -68102959193465279L, -5084197730505959418L}).toString(), zzh, obfuscatedString2);
    }

    @Override // com.google.android.gms.internal.ads.zzggq
    public final boolean zza() {
        throw null;
    }

    public final zzgoy zzb() {
        return this.zza;
    }
}
