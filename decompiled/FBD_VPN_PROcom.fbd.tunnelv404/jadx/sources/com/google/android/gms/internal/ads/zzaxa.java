package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzaxa extends zzaxx {
    private final long zzi;

    public zzaxa(zzawj zzawjVar, String str, String str2, zzasg zzasgVar, long j, int i, int i2) {
        super(zzawjVar, new ObfuscatedString(new long[]{-3277914675105140180L, -6735776568141745294L, 4303287552534996456L, 6961432762224229956L, 8083063624575457756L, -9001841623261552178L, -2487627256833522253L, 2335066546528213058L, -4065214241870416241L}).toString(), new ObfuscatedString(new long[]{-8164713409643238324L, -9001741712609386488L, 2442452432474089119L, -3448306910345909265L, -2906921283715049514L, 1619902704168814529L, -6203365595393779327L}).toString(), zzasgVar, i, 25);
        this.zzi = j;
    }

    @Override // com.google.android.gms.internal.ads.zzaxx
    public final void zza() {
        long longValue = ((Long) this.zzf.invoke(null, null)).longValue();
        synchronized (this.zze) {
            try {
                this.zze.zzt(longValue);
                long j = this.zzi;
                if (j != 0) {
                    this.zze.zzT(longValue - j);
                    this.zze.zzU(this.zzi);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
