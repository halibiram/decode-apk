package com.google.android.gms.internal.ads;

import android.content.Context;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzfuf extends zzfuc {
    private static zzfuf zzc;

    private zzfuf(Context context) {
        super(context, new ObfuscatedString(new long[]{-8016520939549643325L, -8254923773152903490L, -2756296388754817992L}).toString(), new ObfuscatedString(new long[]{2552097614788582667L, 2028618122928822736L, 7557513124067315434L, -9079823923332639949L}).toString(), new ObfuscatedString(new long[]{1757003971835911280L, 8109226398800047200L, -1427133081697171219L, -4805860310123752807L}).toString());
    }

    public static final zzfuf zzi(Context context) {
        zzfuf zzfufVar;
        synchronized (zzfuf.class) {
            try {
                if (zzc == null) {
                    zzc = new zzfuf(context);
                }
                zzfufVar = zzc;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzfufVar;
    }

    public final zzfub zzh(long j, boolean z) {
        synchronized (zzfuf.class) {
            try {
                if (!zzo()) {
                    return new zzfub();
                }
                return zzb(null, null, j, z);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzj() {
        synchronized (zzfuf.class) {
            try {
                if (zzg(false)) {
                    zzf(false);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzk() {
        this.zzb.zze(new ObfuscatedString(new long[]{-5163288371430492572L, -1045290990649606326L, -4641312407789582130L, 7749259944875943611L}).toString());
    }

    public final void zzl() {
        this.zzb.zze(new ObfuscatedString(new long[]{-8960183845821856574L, 5093424188539698575L, 3656511988969435781L, -90272442802901874L}).toString());
    }

    public final void zzm(boolean z) {
        this.zzb.zzd(new ObfuscatedString(new long[]{2837139612512787364L, -8123748047229161022L, -4904674370999790186L, 3483075356512488663L}).toString(), Boolean.valueOf(z));
    }

    public final void zzn(boolean z) {
        this.zzb.zzd(new ObfuscatedString(new long[]{-7109405686704973640L, 4052914287282191613L, -8620946857134272115L, 1416583616269981486L}).toString(), Boolean.valueOf(z));
        if (!z) {
            zzj();
        }
    }

    public final boolean zzo() {
        return this.zzb.zzf(new ObfuscatedString(new long[]{2273814048090728525L, 5610510112290834660L, -483449036139149347L, -3039301183369104437L}).toString(), true);
    }

    public final boolean zzp() {
        return this.zzb.zzf(new ObfuscatedString(new long[]{4069514224122829580L, -8768407090198626032L, 2116694423000263826L, -4904933494513413391L}).toString(), true);
    }
}
