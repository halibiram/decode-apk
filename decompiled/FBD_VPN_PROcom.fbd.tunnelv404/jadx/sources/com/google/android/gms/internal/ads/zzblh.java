package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC1320xaf50c7e8;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzblh extends zzayg implements zzblj {
    public zzblh(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{2837969480729097089L, -9166857599077864988L, 7247996872011306905L, -4586250443269696718L, 1708738886258584000L, -4551660561578966668L, 3861008319141825554L, -7335795925355943342L, 2071513126264644198L, -4971373706597125083L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final void zzA() {
        zzbm(28, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final void zzB(Bundle bundle) {
        Parcel zza = zza();
        zzayi.zzd(zza, bundle);
        zzbm(17, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final void zzC() {
        zzbm(27, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final void zzD(com.google.android.gms.ads.internal.client.zzcs zzcsVar) {
        Parcel zza = zza();
        zzayi.zzf(zza, zzcsVar);
        zzbm(26, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final void zzE(com.google.android.gms.ads.internal.client.zzdg zzdgVar) {
        Parcel zza = zza();
        zzayi.zzf(zza, zzdgVar);
        zzbm(32, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final void zzF(zzblg zzblgVar) {
        Parcel zza = zza();
        zzayi.zzf(zza, zzblgVar);
        zzbm(21, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final boolean zzG() {
        Parcel zzbl = zzbl(30, zza());
        boolean zzg = zzayi.zzg(zzbl);
        zzbl.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final boolean zzH() {
        Parcel zzbl = zzbl(24, zza());
        boolean zzg = zzayi.zzg(zzbl);
        zzbl.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final boolean zzI(Bundle bundle) {
        Parcel zza = zza();
        zzayi.zzd(zza, bundle);
        Parcel zzbl = zzbl(16, zza);
        boolean zzg = zzayi.zzg(zzbl);
        zzbl.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final double zze() {
        Parcel zzbl = zzbl(8, zza());
        double readDouble = zzbl.readDouble();
        zzbl.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final Bundle zzf() {
        Parcel zzbl = zzbl(20, zza());
        Bundle bundle = (Bundle) zzayi.zza(zzbl, Bundle.CREATOR);
        zzbl.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final com.google.android.gms.ads.internal.client.zzdn zzg() {
        Parcel zzbl = zzbl(31, zza());
        com.google.android.gms.ads.internal.client.zzdn zzb = com.google.android.gms.ads.internal.client.zzdm.zzb(zzbl.readStrongBinder());
        zzbl.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final com.google.android.gms.ads.internal.client.zzdq zzh() {
        Parcel zzbl = zzbl(11, zza());
        com.google.android.gms.ads.internal.client.zzdq zzb = com.google.android.gms.ads.internal.client.zzdp.zzb(zzbl.readStrongBinder());
        zzbl.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final zzbjf zzi() {
        zzbjf zzbjdVar;
        Parcel zzbl = zzbl(14, zza());
        IBinder readStrongBinder = zzbl.readStrongBinder();
        if (readStrongBinder == null) {
            zzbjdVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(new ObfuscatedString(new long[]{8666334938625257283L, -1201678013285354528L, 6390953320625791289L, 8025727103666317071L, 2406704193811046813L, 668640024548944539L, 2075621203266878995L, 2490039140771594458L, 7372366614422093907L, -2371061777433856559L}).toString());
            if (queryLocalInterface instanceof zzbjf) {
                zzbjdVar = (zzbjf) queryLocalInterface;
            } else {
                zzbjdVar = new zzbjd(readStrongBinder);
            }
        }
        zzbl.recycle();
        return zzbjdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final zzbjj zzj() {
        zzbjj zzbjhVar;
        Parcel zzbl = zzbl(29, zza());
        IBinder readStrongBinder = zzbl.readStrongBinder();
        if (readStrongBinder == null) {
            zzbjhVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(new ObfuscatedString(new long[]{-8589324516720020732L, 8465998950703581373L, 3128788157856006205L, -7002507747643289081L, 6398804460084194200L, -6274610133752975199L, 3424335674045142880L, 7430193607933128341L, 2420989858109073338L}).toString());
            if (queryLocalInterface instanceof zzbjj) {
                zzbjhVar = (zzbjj) queryLocalInterface;
            } else {
                zzbjhVar = new zzbjh(readStrongBinder);
            }
        }
        zzbl.recycle();
        return zzbjhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final zzbjm zzk() {
        zzbjm zzbjkVar;
        Parcel zzbl = zzbl(5, zza());
        IBinder readStrongBinder = zzbl.readStrongBinder();
        if (readStrongBinder == null) {
            zzbjkVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(new ObfuscatedString(new long[]{-6573702596994490120L, -6292186059625765177L, 7572677281505407330L, 5632272361527757061L, 3016377693806402719L, -3748452122272839220L, -2403614413810937800L, -6138749060941629088L, -509338148817472662L, -8687546488692175887L}).toString());
            if (queryLocalInterface instanceof zzbjm) {
                zzbjkVar = (zzbjm) queryLocalInterface;
            } else {
                zzbjkVar = new zzbjk(readStrongBinder);
            }
        }
        zzbl.recycle();
        return zzbjkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final IObjectWrapper zzl() {
        return AbstractC1320xaf50c7e8.m4357x75d576dc(zzbl(19, zza()));
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final IObjectWrapper zzm() {
        return AbstractC1320xaf50c7e8.m4357x75d576dc(zzbl(18, zza()));
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final String zzn() {
        Parcel zzbl = zzbl(7, zza());
        String readString = zzbl.readString();
        zzbl.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final String zzo() {
        Parcel zzbl = zzbl(4, zza());
        String readString = zzbl.readString();
        zzbl.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final String zzp() {
        Parcel zzbl = zzbl(6, zza());
        String readString = zzbl.readString();
        zzbl.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final String zzq() {
        Parcel zzbl = zzbl(2, zza());
        String readString = zzbl.readString();
        zzbl.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final String zzr() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final String zzs() {
        Parcel zzbl = zzbl(10, zza());
        String readString = zzbl.readString();
        zzbl.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final String zzt() {
        Parcel zzbl = zzbl(9, zza());
        String readString = zzbl.readString();
        zzbl.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final List zzu() {
        Parcel zzbl = zzbl(3, zza());
        ArrayList zzb = zzayi.zzb(zzbl);
        zzbl.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final List zzv() {
        Parcel zzbl = zzbl(23, zza());
        ArrayList zzb = zzayi.zzb(zzbl);
        zzbl.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final void zzw() {
        zzbm(22, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final void zzx() {
        zzbm(13, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final void zzy(com.google.android.gms.ads.internal.client.zzcw zzcwVar) {
        Parcel zza = zza();
        zzayi.zzf(zza, zzcwVar);
        zzbm(25, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzblj
    public final void zzz(Bundle bundle) {
        Parcel zza = zza();
        zzayi.zzd(zza, bundle);
        zzbm(15, zza);
    }
}
