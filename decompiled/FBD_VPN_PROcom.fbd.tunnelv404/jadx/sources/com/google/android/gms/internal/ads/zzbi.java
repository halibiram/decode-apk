package com.google.android.gms.internal.ads;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzbi {
    public final Uri zzb;

    @Nullable
    public final String zzc;

    @Nullable
    public final zzbb zzd;

    @Nullable
    public final zzaq zze;
    public final List zzf;

    @Nullable
    public final String zzg;
    public final zzgaa zzh;

    @Deprecated
    public final List zzi;

    @Nullable
    public final Object zzj;
    public final long zzk;
    private static final String zzl = Integer.toString(0, 36);
    private static final String zzm = Integer.toString(1, 36);
    private static final String zzn = Integer.toString(2, 36);
    private static final String zzo = Integer.toString(3, 36);
    private static final String zzp = Integer.toString(4, 36);
    private static final String zzq = Integer.toString(5, 36);
    private static final String zzr = Integer.toString(6, 36);
    private static final String zzs = Integer.toString(7, 36);

    @Deprecated
    public static final zzn zza = new zzn() { // from class: com.google.android.gms.internal.ads.zzbg
    };

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ zzbi(Uri uri, String str, zzbb zzbbVar, zzaq zzaqVar, List list, String str2, zzgaa zzgaaVar, Object obj, long j, zzbh zzbhVar) {
        this.zzb = uri;
        int i = zzcb.zza;
        this.zzc = null;
        this.zzd = null;
        this.zze = null;
        this.zzf = list;
        this.zzg = null;
        this.zzh = zzgaaVar;
        zzfzx zzfzxVar = new zzfzx();
        if (zzgaaVar.size() <= 0) {
            this.zzi = zzfzxVar.zzi();
            this.zzj = null;
            this.zzk = -9223372036854775807L;
            return;
        }
        throw null;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzbi)) {
            return false;
        }
        zzbi zzbiVar = (zzbi) obj;
        if (this.zzb.equals(zzbiVar.zzb) && zzfy.zzF(null, null) && zzfy.zzF(null, null) && zzfy.zzF(null, null) && this.zzf.equals(zzbiVar.zzf) && zzfy.zzF(null, null) && this.zzh.equals(zzbiVar.zzh) && zzfy.zzF(null, null) && zzfy.zzF(-9223372036854775807L, -9223372036854775807L)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return (int) ((((this.zzh.hashCode() + ((this.zzf.hashCode() + (this.zzb.hashCode() * 923521)) * 961)) * 31) * 31) - Long.MAX_VALUE);
    }
}
