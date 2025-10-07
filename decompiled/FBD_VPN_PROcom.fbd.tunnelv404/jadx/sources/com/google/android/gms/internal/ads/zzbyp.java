package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbyp extends zzayh implements zzbyq {
    public zzbyp() {
        super(new ObfuscatedString(new long[]{-6400951931808757102L, -1065449782130319247L, 8761581356637623326L, -5964546657624591116L, -279664630472406210L, 5156868885171770576L, 2608880520966722834L, 6322026103657580835L, -5796056730454304099L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzbza zzbzaVar = null;
        if (i != 1) {
            if (i != 2) {
                if (i != 4) {
                    if (i != 5) {
                        if (i != 6) {
                            if (i != 7) {
                                return false;
                            }
                            String readString = parcel.readString();
                            IBinder readStrongBinder = parcel.readStrongBinder();
                            if (readStrongBinder != null) {
                                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(new ObfuscatedString(new long[]{6838190154867032877L, -1351273015392940283L, 677830390895346894L, -4339175457648326916L, -594394040755381130L, -9132132023897935335L, -497783828859446109L, 759125150195672605L, 3638559705803122836L, -778416794145651994L, -4432562217784320683L}).toString());
                                if (queryLocalInterface instanceof zzbza) {
                                    zzbzaVar = (zzbza) queryLocalInterface;
                                } else {
                                    zzbzaVar = new zzbyy(readStrongBinder);
                                }
                            }
                            zzayi.zzc(parcel);
                            zzh(readString, zzbzaVar);
                            parcel2.writeNoException();
                        } else {
                            zzbze zzbzeVar = (zzbze) zzayi.zza(parcel, zzbze.CREATOR);
                            IBinder readStrongBinder2 = parcel.readStrongBinder();
                            if (readStrongBinder2 != null) {
                                IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface(new ObfuscatedString(new long[]{-3069777485219262381L, 4461871236740435744L, -6217081853907304360L, 1424753581025467979L, -3985794294561118789L, 2985689011583428041L, -4346494597398927809L, 1139006708774202687L, 6083935150446300339L, 491385545032412045L, -6952902050975796114L}).toString());
                                if (queryLocalInterface2 instanceof zzbza) {
                                    zzbzaVar = (zzbza) queryLocalInterface2;
                                } else {
                                    zzbzaVar = new zzbyy(readStrongBinder2);
                                }
                            }
                            zzayi.zzc(parcel);
                            zze(zzbzeVar, zzbzaVar);
                            parcel2.writeNoException();
                        }
                    } else {
                        zzbze zzbzeVar2 = (zzbze) zzayi.zza(parcel, zzbze.CREATOR);
                        IBinder readStrongBinder3 = parcel.readStrongBinder();
                        if (readStrongBinder3 != null) {
                            IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface(new ObfuscatedString(new long[]{1556781919977826139L, 7039922559549233265L, -8896440276113426481L, -3241057551104157376L, 4553264914444097889L, 5163711675977372441L, -254692340678480473L, 7276603191825332666L, -1212693733411917530L, -9133177931177679769L, -3060592315388185750L}).toString());
                            if (queryLocalInterface3 instanceof zzbza) {
                                zzbzaVar = (zzbza) queryLocalInterface3;
                            } else {
                                zzbzaVar = new zzbyy(readStrongBinder3);
                            }
                        }
                        zzayi.zzc(parcel);
                        zzf(zzbzeVar2, zzbzaVar);
                        parcel2.writeNoException();
                    }
                } else {
                    zzbze zzbzeVar3 = (zzbze) zzayi.zza(parcel, zzbze.CREATOR);
                    IBinder readStrongBinder4 = parcel.readStrongBinder();
                    if (readStrongBinder4 != null) {
                        IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface(new ObfuscatedString(new long[]{2874019160422237314L, -1973507557051833585L, -8515932418221636380L, -5206850014112408260L, -6541292811285680097L, -1427967985024096581L, 460963182549990143L, -4153990311086916345L, 8243407296948206315L, 4702142984756405879L, -2682046418819179411L}).toString());
                        if (queryLocalInterface4 instanceof zzbza) {
                            zzbzaVar = (zzbza) queryLocalInterface4;
                        } else {
                            zzbzaVar = new zzbyy(readStrongBinder4);
                        }
                    }
                    zzayi.zzc(parcel);
                    zzg(zzbzeVar3, zzbzaVar);
                    parcel2.writeNoException();
                }
            } else {
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface(new ObfuscatedString(new long[]{-4455001369665903128L, -9082543961531520767L, 7397369112568571910L, -4580501471870229726L, -6949908947000313389L, 4956087582106710413L, 1611844901906590502L, -9005079310053391891L, -7926496084533350247L}).toString());
                    if (queryLocalInterface5 instanceof zzbyr) {
                    }
                }
                zzayi.zzc(parcel);
                parcel2.writeNoException();
            }
        } else {
            zzayi.zzc(parcel);
            parcel2.writeNoException();
            zzayi.zze(parcel2, null);
        }
        return true;
    }
}
