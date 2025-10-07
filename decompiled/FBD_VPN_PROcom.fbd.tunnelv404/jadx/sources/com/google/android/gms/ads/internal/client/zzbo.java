package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.internal.ads.zzayg;
import com.google.android.gms.internal.ads.zzayi;
import com.google.android.gms.internal.ads.zzbjb;
import com.google.android.gms.internal.ads.zzbkk;
import com.google.android.gms.internal.ads.zzbkn;
import com.google.android.gms.internal.ads.zzbkq;
import com.google.android.gms.internal.ads.zzbkt;
import com.google.android.gms.internal.ads.zzbkx;
import com.google.android.gms.internal.ads.zzbla;
import com.google.android.gms.internal.ads.zzbpp;
import com.google.android.gms.internal.ads.zzbpy;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbo extends zzayg implements zzbq {
    public zzbo(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{-6898015103784687724L, 4655734488749827255L, -4356942393488530L, 5531603830215453927L, 4802820993355005204L, -7816199690231522621L, 780414401532334482L, 1125552265971946511L, 9224242820567468L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final zzbn zze() {
        zzbn zzblVar;
        Parcel zzbl = zzbl(1, zza());
        IBinder readStrongBinder = zzbl.readStrongBinder();
        if (readStrongBinder == null) {
            zzblVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(new ObfuscatedString(new long[]{2997980696649609042L, 6315680964829959804L, -5088838728341131581L, -5268702768236876332L, 7245694294105715644L, -3507617046795970543L, 4662121342514982241L, 5870161585877491898L}).toString());
            if (queryLocalInterface instanceof zzbn) {
                zzblVar = (zzbn) queryLocalInterface;
            } else {
                zzblVar = new zzbl(readStrongBinder);
            }
        }
        zzbl.recycle();
        return zzblVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void zzf(zzbkk zzbkkVar) {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void zzg(zzbkn zzbknVar) {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void zzh(String str, zzbkt zzbktVar, zzbkq zzbkqVar) {
        Parcel zza = zza();
        zza.writeString(str);
        zzayi.zzf(zza, zzbktVar);
        zzayi.zzf(zza, zzbkqVar);
        zzbm(5, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void zzi(zzbpy zzbpyVar) {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void zzj(zzbkx zzbkxVar, zzq zzqVar) {
        Parcel zza = zza();
        zzayi.zzf(zza, zzbkxVar);
        zzayi.zzd(zza, zzqVar);
        zzbm(8, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void zzk(zzbla zzblaVar) {
        Parcel zza = zza();
        zzayi.zzf(zza, zzblaVar);
        zzbm(10, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void zzl(zzbh zzbhVar) {
        Parcel zza = zza();
        zzayi.zzf(zza, zzbhVar);
        zzbm(2, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void zzm(AdManagerAdViewOptions adManagerAdViewOptions) {
        Parcel zza = zza();
        zzayi.zzd(zza, adManagerAdViewOptions);
        zzbm(15, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void zzn(zzbpp zzbppVar) {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void zzo(zzbjb zzbjbVar) {
        Parcel zza = zza();
        zzayi.zzd(zza, zzbjbVar);
        zzbm(6, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void zzp(PublisherAdViewOptions publisherAdViewOptions) {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void zzq(zzcf zzcfVar) {
        throw null;
    }
}
