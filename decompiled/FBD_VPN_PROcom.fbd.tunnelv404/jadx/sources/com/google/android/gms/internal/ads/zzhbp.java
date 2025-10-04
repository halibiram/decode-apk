package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzhbp implements zzhbb {
    private final zzhbe zza;
    private final String zzb;
    private final Object[] zzc;
    private final int zzd;

    public zzhbp(zzhbe zzhbeVar, String str, Object[] objArr) {
        this.zza = zzhbeVar;
        this.zzb = str;
        this.zzc = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.zzd = charAt;
            return;
        }
        int i = charAt & 8191;
        int i2 = 1;
        int i3 = 13;
        while (true) {
            int i4 = i2 + 1;
            char charAt2 = str.charAt(i2);
            if (charAt2 >= 55296) {
                i |= (charAt2 & 8191) << i3;
                i3 += 13;
                i2 = i4;
            } else {
                this.zzd = i | (charAt2 << i3);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhbb
    public final zzhbe zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzhbb
    public final boolean zzb() {
        return (this.zzd & 2) == 2;
    }

    @Override // com.google.android.gms.internal.ads.zzhbb
    public final int zzc() {
        int i = this.zzd;
        if ((i & 1) != 0) {
            return 1;
        }
        return (i & 4) == 4 ? 3 : 2;
    }

    public final String zzd() {
        return this.zzb;
    }

    public final Object[] zze() {
        return this.zzc;
    }
}
