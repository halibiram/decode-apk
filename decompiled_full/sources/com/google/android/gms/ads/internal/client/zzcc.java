package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzayg;
import com.google.android.gms.internal.ads.zzayi;
import com.google.android.gms.internal.ads.zzbjp;
import com.google.android.gms.internal.ads.zzbjq;
import com.google.android.gms.internal.ads.zzbjv;
import com.google.android.gms.internal.ads.zzbjw;
import com.google.android.gms.internal.ads.zzboe;
import com.google.android.gms.internal.ads.zzbog;
import com.google.android.gms.internal.ads.zzboh;
import com.google.android.gms.internal.ads.zzbsv;
import com.google.android.gms.internal.ads.zzbwl;
import com.google.android.gms.internal.ads.zzbwm;
import com.google.android.gms.internal.ads.zzbws;
import com.google.android.gms.internal.ads.zzbwt;
import com.google.android.gms.internal.ads.zzbzx;
import com.google.android.gms.internal.ads.zzcam;
import com.google.android.gms.internal.ads.zzcan;
import com.google.android.gms.internal.ads.zzccs;
import com.google.android.gms.internal.ads.zzcct;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzcc extends zzayg implements zzce {
    public zzcc(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{8334460652034256937L, -5902745376159555158L, 2967294191114091617L, 8595527945749344437L, 5429822237086287806L, 5920844489839295308L, 4338705829373749980L, 2961187660850250979L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbq zzb(IObjectWrapper iObjectWrapper, String str, zzbsv zzbsvVar, int i) {
        zzbq zzboVar;
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zza.writeString(str);
        zzayi.zzf(zza, zzbsvVar);
        zza.writeInt(240304000);
        Parcel zzbl = zzbl(3, zza);
        IBinder readStrongBinder = zzbl.readStrongBinder();
        if (readStrongBinder == null) {
            zzboVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(new ObfuscatedString(new long[]{-1615793595973950997L, -2970534678806008362L, 659605028348111851L, -1697914982366620918L, -1856853231810547531L, 8974129986307622299L, -2031799337555740138L, 7832390282247154471L, 6807975954971620298L}).toString());
            if (queryLocalInterface instanceof zzbq) {
                zzboVar = (zzbq) queryLocalInterface;
            } else {
                zzboVar = new zzbo(readStrongBinder);
            }
        }
        zzbl.recycle();
        return zzboVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbu zzc(IObjectWrapper iObjectWrapper, zzq zzqVar, String str, zzbsv zzbsvVar, int i) {
        zzbu zzbsVar;
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzd(zza, zzqVar);
        zza.writeString(str);
        zzayi.zzf(zza, zzbsvVar);
        zza.writeInt(240304000);
        Parcel zzbl = zzbl(13, zza);
        IBinder readStrongBinder = zzbl.readStrongBinder();
        if (readStrongBinder == null) {
            zzbsVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(new ObfuscatedString(new long[]{6149710538619320662L, 3841695112804745343L, -5474347136525351541L, 4526236200750540083L, 7070995014676026541L, 2148992807812968471L, -69782395361527384L, 3034991537676258318L}).toString());
            if (queryLocalInterface instanceof zzbu) {
                zzbsVar = (zzbu) queryLocalInterface;
            } else {
                zzbsVar = new zzbs(readStrongBinder);
            }
        }
        zzbl.recycle();
        return zzbsVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbu zzd(IObjectWrapper iObjectWrapper, zzq zzqVar, String str, zzbsv zzbsvVar, int i) {
        zzbu zzbsVar;
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzd(zza, zzqVar);
        zza.writeString(str);
        zzayi.zzf(zza, zzbsvVar);
        zza.writeInt(240304000);
        Parcel zzbl = zzbl(1, zza);
        IBinder readStrongBinder = zzbl.readStrongBinder();
        if (readStrongBinder == null) {
            zzbsVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(new ObfuscatedString(new long[]{-2806363846342820008L, 2902590646100111773L, 704248834689503677L, -1907649751365626060L, 4848612919615165411L, -8151808507150720297L, -6460230634626217032L, -7901705705895455142L}).toString());
            if (queryLocalInterface instanceof zzbu) {
                zzbsVar = (zzbu) queryLocalInterface;
            } else {
                zzbsVar = new zzbs(readStrongBinder);
            }
        }
        zzbl.recycle();
        return zzbsVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbu zze(IObjectWrapper iObjectWrapper, zzq zzqVar, String str, zzbsv zzbsvVar, int i) {
        zzbu zzbsVar;
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzd(zza, zzqVar);
        zza.writeString(str);
        zzayi.zzf(zza, zzbsvVar);
        zza.writeInt(240304000);
        Parcel zzbl = zzbl(2, zza);
        IBinder readStrongBinder = zzbl.readStrongBinder();
        if (readStrongBinder == null) {
            zzbsVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(new ObfuscatedString(new long[]{1717262106041388981L, 3288743919757545241L, -4565817689507588359L, -2780407220997733968L, 116728152313908940L, 8118350133608283460L, -4648498907836591097L, 1639209433308132885L}).toString());
            if (queryLocalInterface instanceof zzbu) {
                zzbsVar = (zzbu) queryLocalInterface;
            } else {
                zzbsVar = new zzbs(readStrongBinder);
            }
        }
        zzbl.recycle();
        return zzbsVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbu zzf(IObjectWrapper iObjectWrapper, zzq zzqVar, String str, int i) {
        zzbu zzbsVar;
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzd(zza, zzqVar);
        zza.writeString(str);
        zza.writeInt(240304000);
        Parcel zzbl = zzbl(10, zza);
        IBinder readStrongBinder = zzbl.readStrongBinder();
        if (readStrongBinder == null) {
            zzbsVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(new ObfuscatedString(new long[]{-284705233368238050L, 8387030995671301698L, 2751263482287292480L, 5063778357268479001L, -8804272602276013460L, 1432222777341304824L, 2655438613874524820L, 3054856279644374938L}).toString());
            if (queryLocalInterface instanceof zzbu) {
                zzbsVar = (zzbu) queryLocalInterface;
            } else {
                zzbsVar = new zzbs(readStrongBinder);
            }
        }
        zzbl.recycle();
        return zzbsVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzco zzg(IObjectWrapper iObjectWrapper, int i) {
        zzco zzcmVar;
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zza.writeInt(240304000);
        Parcel zzbl = zzbl(9, zza);
        IBinder readStrongBinder = zzbl.readStrongBinder();
        if (readStrongBinder == null) {
            zzcmVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(new ObfuscatedString(new long[]{-1252406145033980663L, -7929131201933967966L, 8114303067437337567L, 8899901372166928683L, 4785087699884654975L, -8107320772682934584L, 6090127961791831125L, -5554395443587679758L, 1854428313556825424L, -7655218174498475961L}).toString());
            if (queryLocalInterface instanceof zzco) {
                zzcmVar = (zzco) queryLocalInterface;
            } else {
                zzcmVar = new zzcm(readStrongBinder);
            }
        }
        zzbl.recycle();
        return zzcmVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzdj zzh(IObjectWrapper iObjectWrapper, zzbsv zzbsvVar, int i) {
        zzdj zzdhVar;
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzf(zza, zzbsvVar);
        zza.writeInt(240304000);
        Parcel zzbl = zzbl(17, zza);
        IBinder readStrongBinder = zzbl.readStrongBinder();
        if (readStrongBinder == null) {
            zzdhVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(new ObfuscatedString(new long[]{4000750558372232814L, -3646493733297295400L, 6238691839527801515L, 250029836768584913L, -7344876922760277842L, -4252904120036742536L, 2114215555883511371L, -5730872987830700895L, -5162159762714250829L}).toString());
            if (queryLocalInterface instanceof zzdj) {
                zzdhVar = (zzdj) queryLocalInterface;
            } else {
                zzdhVar = new zzdh(readStrongBinder);
            }
        }
        zzbl.recycle();
        return zzdhVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbjq zzi(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzf(zza, iObjectWrapper2);
        Parcel zzbl = zzbl(5, zza);
        zzbjq zzbJ = zzbjp.zzbJ(zzbl.readStrongBinder());
        zzbl.recycle();
        return zzbJ;
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbjw zzj(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzf(zza, iObjectWrapper2);
        zzayi.zzf(zza, iObjectWrapper3);
        Parcel zzbl = zzbl(11, zza);
        zzbjw zze = zzbjv.zze(zzbl.readStrongBinder());
        zzbl.recycle();
        return zze;
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzboh zzk(IObjectWrapper iObjectWrapper, zzbsv zzbsvVar, int i, zzboe zzboeVar) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzf(zza, zzbsvVar);
        zza.writeInt(240304000);
        zzayi.zzf(zza, zzboeVar);
        Parcel zzbl = zzbl(16, zza);
        zzboh zzb = zzbog.zzb(zzbl.readStrongBinder());
        zzbl.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbwm zzl(IObjectWrapper iObjectWrapper, zzbsv zzbsvVar, int i) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzf(zza, zzbsvVar);
        zza.writeInt(240304000);
        Parcel zzbl = zzbl(15, zza);
        zzbwm zzb = zzbwl.zzb(zzbl.readStrongBinder());
        zzbl.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbwt zzm(IObjectWrapper iObjectWrapper) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        Parcel zzbl = zzbl(8, zza);
        zzbwt zzI = zzbws.zzI(zzbl.readStrongBinder());
        zzbl.recycle();
        return zzI;
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzbzx zzn(IObjectWrapper iObjectWrapper, zzbsv zzbsvVar, int i) {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzcan zzo(IObjectWrapper iObjectWrapper, String str, zzbsv zzbsvVar, int i) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zza.writeString(str);
        zzayi.zzf(zza, zzbsvVar);
        zza.writeInt(240304000);
        Parcel zzbl = zzbl(12, zza);
        zzcan zzq = zzcam.zzq(zzbl.readStrongBinder());
        zzbl.recycle();
        return zzq;
    }

    @Override // com.google.android.gms.ads.internal.client.zzce
    public final zzcct zzp(IObjectWrapper iObjectWrapper, zzbsv zzbsvVar, int i) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzf(zza, zzbsvVar);
        zza.writeInt(240304000);
        Parcel zzbl = zzbl(14, zza);
        zzcct zzb = zzccs.zzb(zzbl.readStrongBinder());
        zzbl.recycle();
        return zzb;
    }
}
