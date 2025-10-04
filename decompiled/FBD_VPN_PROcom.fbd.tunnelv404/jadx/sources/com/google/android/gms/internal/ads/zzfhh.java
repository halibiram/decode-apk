package com.google.android.gms.internal.ads;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzfhh {

    @Nullable
    public final com.google.android.gms.ads.internal.client.zzfk zza;

    @Nullable
    public final zzbpp zzb;

    @Nullable
    public final zzeqe zzc;
    public final com.google.android.gms.ads.internal.client.zzl zzd;
    public final com.google.android.gms.ads.internal.client.zzq zze;
    public final String zzf;
    public final ArrayList zzg;
    public final ArrayList zzh;
    public final zzbjb zzi;
    public final com.google.android.gms.ads.internal.client.zzw zzj;
    public final int zzk;
    public final AdManagerAdViewOptions zzl;
    public final PublisherAdViewOptions zzm;
    public final com.google.android.gms.ads.internal.client.zzcb zzn;
    public final zzfgu zzo;
    public final boolean zzp;
    public final boolean zzq;

    @Nullable
    public final com.google.android.gms.ads.internal.client.zzcf zzr;

    public /* synthetic */ zzfhh(zzfhf zzfhfVar, zzfhg zzfhgVar) {
        com.google.android.gms.ads.internal.client.zzfk zzfkVar;
        zzbjb zzk;
        this.zze = zzfhf.zzf(zzfhfVar);
        this.zzf = zzfhf.zzH(zzfhfVar);
        this.zzr = zzfhf.zzP(zzfhfVar);
        int i = zzfhf.zzd(zzfhfVar).zza;
        long j = zzfhf.zzd(zzfhfVar).zzb;
        Bundle bundle = zzfhf.zzd(zzfhfVar).zzc;
        int i2 = zzfhf.zzd(zzfhfVar).zzd;
        List list = zzfhf.zzd(zzfhfVar).zze;
        boolean z = zzfhf.zzd(zzfhfVar).zzf;
        int i3 = zzfhf.zzd(zzfhfVar).zzg;
        boolean z2 = true;
        if (!zzfhf.zzd(zzfhfVar).zzh && !zzfhf.zzN(zzfhfVar)) {
            z2 = false;
        }
        this.zzd = new com.google.android.gms.ads.internal.client.zzl(i, j, bundle, i2, list, z, i3, z2, zzfhf.zzd(zzfhfVar).zzi, zzfhf.zzd(zzfhfVar).zzj, zzfhf.zzd(zzfhfVar).zzk, zzfhf.zzd(zzfhfVar).zzl, zzfhf.zzd(zzfhfVar).zzm, zzfhf.zzd(zzfhfVar).zzn, zzfhf.zzd(zzfhfVar).zzo, zzfhf.zzd(zzfhfVar).zzp, zzfhf.zzd(zzfhfVar).zzq, zzfhf.zzd(zzfhfVar).zzr, zzfhf.zzd(zzfhfVar).zzs, zzfhf.zzd(zzfhfVar).zzt, zzfhf.zzd(zzfhfVar).zzu, zzfhf.zzd(zzfhfVar).zzv, com.google.android.gms.ads.internal.util.zzt.zza(zzfhf.zzd(zzfhfVar).zzw), zzfhf.zzd(zzfhfVar).zzx, zzfhf.zzd(zzfhfVar).zzy);
        if (zzfhf.zzj(zzfhfVar) != null) {
            zzfkVar = zzfhf.zzj(zzfhfVar);
        } else if (zzfhf.zzk(zzfhfVar) != null) {
            zzfkVar = zzfhf.zzk(zzfhfVar).zzf;
        } else {
            zzfkVar = null;
        }
        this.zza = zzfkVar;
        this.zzg = zzfhf.zzJ(zzfhfVar);
        this.zzh = zzfhf.zzK(zzfhfVar);
        if (zzfhf.zzJ(zzfhfVar) == null) {
            zzk = null;
        } else if (zzfhf.zzk(zzfhfVar) == null) {
            zzk = new zzbjb(new NativeAdOptions.Builder().build());
        } else {
            zzk = zzfhf.zzk(zzfhfVar);
        }
        this.zzi = zzk;
        this.zzj = zzfhf.zzh(zzfhfVar);
        this.zzk = zzfhf.zza(zzfhfVar);
        this.zzl = zzfhf.zzb(zzfhfVar);
        this.zzm = zzfhf.zzc(zzfhfVar);
        this.zzn = zzfhf.zzi(zzfhfVar);
        this.zzb = zzfhf.zzl(zzfhfVar);
        this.zzo = new zzfgu(zzfhf.zzn(zzfhfVar), null);
        this.zzp = zzfhf.zzL(zzfhfVar);
        this.zzc = zzfhf.zzm(zzfhfVar);
        this.zzq = zzfhf.zzM(zzfhfVar);
    }

    @Nullable
    public final zzbld zza() {
        PublisherAdViewOptions publisherAdViewOptions = this.zzm;
        if (publisherAdViewOptions == null && this.zzl == null) {
            return null;
        }
        if (publisherAdViewOptions != null) {
            return publisherAdViewOptions.zzb();
        }
        return this.zzl.zza();
    }

    public final boolean zzb() {
        return this.zzf.matches((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzcW));
    }
}
