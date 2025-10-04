package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzbp {
    public final String zzc;

    @Nullable
    public final zzbi zzd;

    @Nullable
    @Deprecated
    public final zzbi zze;
    public final zzbf zzf;
    public final zzbv zzg;
    public final zzav zzh;

    @Deprecated
    public final zzax zzi;
    public final zzbl zzj;
    public static final zzbp zza = new zzar().zzc();
    private static final String zzk = Integer.toString(0, 36);
    private static final String zzl = Integer.toString(1, 36);
    private static final String zzm = Integer.toString(2, 36);
    private static final String zzn = Integer.toString(3, 36);
    private static final String zzo = Integer.toString(4, 36);
    private static final String zzp = Integer.toString(5, 36);

    @Deprecated
    public static final zzn zzb = new zzn() { // from class: com.google.android.gms.internal.ads.zzao
    };

    public /* synthetic */ zzbp(String str, zzax zzaxVar, zzbi zzbiVar, zzbf zzbfVar, zzbv zzbvVar, zzbl zzblVar, zzbo zzboVar) {
        this.zzc = str;
        this.zzd = zzbiVar;
        this.zze = zzbiVar;
        this.zzf = zzbfVar;
        this.zzg = zzbvVar;
        this.zzh = zzaxVar;
        this.zzi = zzaxVar;
        this.zzj = zzblVar;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzbp)) {
            return false;
        }
        zzbp zzbpVar = (zzbp) obj;
        if (zzfy.zzF(this.zzc, zzbpVar.zzc) && this.zzh.equals(zzbpVar.zzh) && zzfy.zzF(this.zzd, zzbpVar.zzd) && zzfy.zzF(this.zzf, zzbpVar.zzf) && zzfy.zzF(this.zzg, zzbpVar.zzg) && zzfy.zzF(this.zzj, zzbpVar.zzj)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int hashCode = this.zzc.hashCode() * 31;
        zzbi zzbiVar = this.zzd;
        if (zzbiVar != null) {
            i = zzbiVar.hashCode();
        } else {
            i = 0;
        }
        return (this.zzg.hashCode() + ((this.zzh.hashCode() + ((this.zzf.hashCode() + ((hashCode + i) * 31)) * 31)) * 31)) * 31;
    }
}
