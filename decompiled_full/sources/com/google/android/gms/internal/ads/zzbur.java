package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbur extends zzayh implements zzbus {
    public zzbur() {
        super(new ObfuscatedString(new long[]{1719677717342535688L, 734499792578767490L, 4201777158988768894L, -2864575120936746232L, -8820623998032005283L, -3503601588216075732L, -5632096185604962766L, -44934517720138935L, -4544806138557625187L, 1624155219723898996L}).toString());
    }

    public static zzbus zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-8774712313092329376L, -4004486213569308632L, 7676432546553163151L, -1052631563844745384L, 8196930890344537763L, -2583294095668420557L, 7507584091048549890L, -985091988324980323L, 5188594501806351387L, -6022005742202282466L}).toString());
        if (queryLocalInterface instanceof zzbus) {
            return (zzbus) queryLocalInterface;
        }
        return new zzbuq(iBinder);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x001b. Please report as an issue. */
    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzbuv zzbutVar;
        zzbuv zzbuvVar;
        zzbug zzbueVar;
        zzbug zzbugVar;
        zzbuj zzbuhVar;
        zzbuj zzbujVar;
        zzbup zzbunVar;
        zzbup zzbupVar;
        zzbum zzbukVar;
        zzbum zzbumVar;
        zzbup zzbunVar2;
        zzbup zzbupVar2;
        zzbug zzbueVar2;
        zzbug zzbugVar2;
        zzbum zzbukVar2;
        zzbum zzbumVar2;
        zzbud zzbubVar;
        zzbud zzbudVar;
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 5) {
                        if (i != 10) {
                            if (i != 11) {
                                switch (i) {
                                    case 13:
                                        String readString = parcel.readString();
                                        String readString2 = parcel.readString();
                                        com.google.android.gms.ads.internal.client.zzl zzlVar = (com.google.android.gms.ads.internal.client.zzl) zzayi.zza(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                                        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                                        IBinder readStrongBinder = parcel.readStrongBinder();
                                        if (readStrongBinder == null) {
                                            zzbugVar = null;
                                        } else {
                                            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(new ObfuscatedString(new long[]{8813048242169639008L, -8903183866636119698L, 4836555650513631927L, 7532674089294239782L, 1390044300169680670L, 8510345953379538937L, 1345133586761807090L, -7947453824493919901L, 4760299823282198415L, 6897265497415222364L}).toString());
                                            if (queryLocalInterface instanceof zzbug) {
                                                zzbueVar = (zzbug) queryLocalInterface;
                                            } else {
                                                zzbueVar = new zzbue(readStrongBinder);
                                            }
                                            zzbugVar = zzbueVar;
                                        }
                                        zzbtb zzb = zzbta.zzb(parcel.readStrongBinder());
                                        com.google.android.gms.ads.internal.client.zzq zzqVar = (com.google.android.gms.ads.internal.client.zzq) zzayi.zza(parcel, com.google.android.gms.ads.internal.client.zzq.CREATOR);
                                        zzayi.zzc(parcel);
                                        zzj(readString, readString2, zzlVar, asInterface, zzbugVar, zzb, zzqVar);
                                        parcel2.writeNoException();
                                        break;
                                    case 14:
                                        String readString3 = parcel.readString();
                                        String readString4 = parcel.readString();
                                        com.google.android.gms.ads.internal.client.zzl zzlVar2 = (com.google.android.gms.ads.internal.client.zzl) zzayi.zza(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                                        IObjectWrapper asInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                                        IBinder readStrongBinder2 = parcel.readStrongBinder();
                                        if (readStrongBinder2 == null) {
                                            zzbujVar = null;
                                        } else {
                                            IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface(new ObfuscatedString(new long[]{-3068856867782255547L, -824551706945511125L, 7389350377846911044L, 6768607707875721384L, -7945162634689463749L, -4807350993168836835L, 3839010801610679568L, 8739301742420502112L, 2521031516452307133L, 2705684747857636515L, 7262198671046897601L}).toString());
                                            if (queryLocalInterface2 instanceof zzbuj) {
                                                zzbuhVar = (zzbuj) queryLocalInterface2;
                                            } else {
                                                zzbuhVar = new zzbuh(readStrongBinder2);
                                            }
                                            zzbujVar = zzbuhVar;
                                        }
                                        zzbtb zzb2 = zzbta.zzb(parcel.readStrongBinder());
                                        zzayi.zzc(parcel);
                                        zzl(readString3, readString4, zzlVar2, asInterface2, zzbujVar, zzb2);
                                        parcel2.writeNoException();
                                        break;
                                    case 15:
                                        IObjectWrapper asInterface3 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                                        zzayi.zzc(parcel);
                                        boolean zzs = zzs(asInterface3);
                                        parcel2.writeNoException();
                                        parcel2.writeInt(zzs ? 1 : 0);
                                        break;
                                    case 16:
                                        String readString5 = parcel.readString();
                                        String readString6 = parcel.readString();
                                        com.google.android.gms.ads.internal.client.zzl zzlVar3 = (com.google.android.gms.ads.internal.client.zzl) zzayi.zza(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                                        IObjectWrapper asInterface4 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                                        IBinder readStrongBinder3 = parcel.readStrongBinder();
                                        if (readStrongBinder3 == null) {
                                            zzbupVar = null;
                                        } else {
                                            IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface(new ObfuscatedString(new long[]{167228166975537138L, 1434156076041455020L, 4088821705357078077L, -7369169471943213992L, -3677305791610403161L, -2626839532167193524L, 3368136944679406956L, -6234792381016846330L, -1140159218576707343L, 177690801711501567L, 1371149030621741473L}).toString());
                                            if (queryLocalInterface3 instanceof zzbup) {
                                                zzbunVar = (zzbup) queryLocalInterface3;
                                            } else {
                                                zzbunVar = new zzbun(readStrongBinder3);
                                            }
                                            zzbupVar = zzbunVar;
                                        }
                                        zzbtb zzb3 = zzbta.zzb(parcel.readStrongBinder());
                                        zzayi.zzc(parcel);
                                        zzp(readString5, readString6, zzlVar3, asInterface4, zzbupVar, zzb3);
                                        parcel2.writeNoException();
                                        break;
                                    case 17:
                                        IObjectWrapper asInterface5 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                                        zzayi.zzc(parcel);
                                        boolean zzt = zzt(asInterface5);
                                        parcel2.writeNoException();
                                        parcel2.writeInt(zzt ? 1 : 0);
                                        break;
                                    case 18:
                                        String readString7 = parcel.readString();
                                        String readString8 = parcel.readString();
                                        com.google.android.gms.ads.internal.client.zzl zzlVar4 = (com.google.android.gms.ads.internal.client.zzl) zzayi.zza(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                                        IObjectWrapper asInterface6 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                                        IBinder readStrongBinder4 = parcel.readStrongBinder();
                                        if (readStrongBinder4 == null) {
                                            zzbumVar = null;
                                        } else {
                                            IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface(new ObfuscatedString(new long[]{56069041196150478L, -2718683324163423639L, -2079133823811770202L, 2363209237455124925L, 3720986770534627260L, 9063221539933667187L, 4927302935311872964L, 2066383961191478137L, 4950335120447288615L, -5737914476757687183L}).toString());
                                            if (queryLocalInterface4 instanceof zzbum) {
                                                zzbukVar = (zzbum) queryLocalInterface4;
                                            } else {
                                                zzbukVar = new zzbuk(readStrongBinder4);
                                            }
                                            zzbumVar = zzbukVar;
                                        }
                                        zzbtb zzb4 = zzbta.zzb(parcel.readStrongBinder());
                                        zzayi.zzc(parcel);
                                        zzm(readString7, readString8, zzlVar4, asInterface6, zzbumVar, zzb4);
                                        parcel2.writeNoException();
                                        break;
                                    case 19:
                                        String readString9 = parcel.readString();
                                        zzayi.zzc(parcel);
                                        zzq(readString9);
                                        parcel2.writeNoException();
                                        break;
                                    case 20:
                                        String readString10 = parcel.readString();
                                        String readString11 = parcel.readString();
                                        com.google.android.gms.ads.internal.client.zzl zzlVar5 = (com.google.android.gms.ads.internal.client.zzl) zzayi.zza(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                                        IObjectWrapper asInterface7 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                                        IBinder readStrongBinder5 = parcel.readStrongBinder();
                                        if (readStrongBinder5 == null) {
                                            zzbupVar2 = null;
                                        } else {
                                            IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface(new ObfuscatedString(new long[]{1241009844607976982L, -3145008908032113670L, -8193756885250305916L, 6472843828605027785L, 4582759077325842906L, -6597475447111785779L, 3657035168651998525L, -8746371681999631465L, 7536856264435773380L, -3539395482076324710L, 823013041035967331L}).toString());
                                            if (queryLocalInterface5 instanceof zzbup) {
                                                zzbunVar2 = (zzbup) queryLocalInterface5;
                                            } else {
                                                zzbunVar2 = new zzbun(readStrongBinder5);
                                            }
                                            zzbupVar2 = zzbunVar2;
                                        }
                                        zzbtb zzb5 = zzbta.zzb(parcel.readStrongBinder());
                                        zzayi.zzc(parcel);
                                        zzo(readString10, readString11, zzlVar5, asInterface7, zzbupVar2, zzb5);
                                        parcel2.writeNoException();
                                        break;
                                    case 21:
                                        String readString12 = parcel.readString();
                                        String readString13 = parcel.readString();
                                        com.google.android.gms.ads.internal.client.zzl zzlVar6 = (com.google.android.gms.ads.internal.client.zzl) zzayi.zza(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                                        IObjectWrapper asInterface8 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                                        IBinder readStrongBinder6 = parcel.readStrongBinder();
                                        if (readStrongBinder6 == null) {
                                            zzbugVar2 = null;
                                        } else {
                                            IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface(new ObfuscatedString(new long[]{-3177060575537112595L, -4164420805644406014L, -8314594911030607568L, 4238023044243633137L, -6324134059671874214L, -3080548949369103856L, -2491186852201133512L, 3421325560813778785L, 7996989629650381092L, 3376926769781009064L}).toString());
                                            if (queryLocalInterface6 instanceof zzbug) {
                                                zzbueVar2 = (zzbug) queryLocalInterface6;
                                            } else {
                                                zzbueVar2 = new zzbue(readStrongBinder6);
                                            }
                                            zzbugVar2 = zzbueVar2;
                                        }
                                        zzbtb zzb6 = zzbta.zzb(parcel.readStrongBinder());
                                        com.google.android.gms.ads.internal.client.zzq zzqVar2 = (com.google.android.gms.ads.internal.client.zzq) zzayi.zza(parcel, com.google.android.gms.ads.internal.client.zzq.CREATOR);
                                        zzayi.zzc(parcel);
                                        zzk(readString12, readString13, zzlVar6, asInterface8, zzbugVar2, zzb6, zzqVar2);
                                        parcel2.writeNoException();
                                        break;
                                    case 22:
                                        String readString14 = parcel.readString();
                                        String readString15 = parcel.readString();
                                        com.google.android.gms.ads.internal.client.zzl zzlVar7 = (com.google.android.gms.ads.internal.client.zzl) zzayi.zza(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                                        IObjectWrapper asInterface9 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                                        IBinder readStrongBinder7 = parcel.readStrongBinder();
                                        if (readStrongBinder7 == null) {
                                            zzbumVar2 = null;
                                        } else {
                                            IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface(new ObfuscatedString(new long[]{-6090128056005954297L, 1319001427088366080L, -467804530189287879L, -8002998589545121325L, 3078795082533997365L, -41474551887102513L, 7236173773755349566L, 1138101397934846809L, -5499150453691346490L, -1463238543091412748L}).toString());
                                            if (queryLocalInterface7 instanceof zzbum) {
                                                zzbukVar2 = (zzbum) queryLocalInterface7;
                                            } else {
                                                zzbukVar2 = new zzbuk(readStrongBinder7);
                                            }
                                            zzbumVar2 = zzbukVar2;
                                        }
                                        zzbtb zzb7 = zzbta.zzb(parcel.readStrongBinder());
                                        zzbjb zzbjbVar = (zzbjb) zzayi.zza(parcel, zzbjb.CREATOR);
                                        zzayi.zzc(parcel);
                                        zzn(readString14, readString15, zzlVar7, asInterface9, zzbumVar2, zzb7, zzbjbVar);
                                        parcel2.writeNoException();
                                        break;
                                    case 23:
                                        String readString16 = parcel.readString();
                                        String readString17 = parcel.readString();
                                        com.google.android.gms.ads.internal.client.zzl zzlVar8 = (com.google.android.gms.ads.internal.client.zzl) zzayi.zza(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                                        IObjectWrapper asInterface10 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                                        IBinder readStrongBinder8 = parcel.readStrongBinder();
                                        if (readStrongBinder8 == null) {
                                            zzbudVar = null;
                                        } else {
                                            IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface(new ObfuscatedString(new long[]{3511676120589032737L, 4546588225910599550L, -455525504635489560L, -5627202837600850045L, -8854742829728515295L, -7630188501517679131L, 8243700823139508823L, -4386586572921416459L, -7921398887914575689L, 9049034919577992779L, 6736686960381644463L}).toString());
                                            if (queryLocalInterface8 instanceof zzbud) {
                                                zzbubVar = (zzbud) queryLocalInterface8;
                                            } else {
                                                zzbubVar = new zzbub(readStrongBinder8);
                                            }
                                            zzbudVar = zzbubVar;
                                        }
                                        zzbtb zzb8 = zzbta.zzb(parcel.readStrongBinder());
                                        zzayi.zzc(parcel);
                                        zzi(readString16, readString17, zzlVar8, asInterface10, zzbudVar, zzb8);
                                        parcel2.writeNoException();
                                        break;
                                    case 24:
                                        IObjectWrapper asInterface11 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                                        zzayi.zzc(parcel);
                                        boolean zzr = zzr(asInterface11);
                                        parcel2.writeNoException();
                                        parcel2.writeInt(zzr ? 1 : 0);
                                        break;
                                    default:
                                        return false;
                                }
                            } else {
                                parcel.createStringArray();
                                zzayi.zzc(parcel);
                                parcel2.writeNoException();
                            }
                        } else {
                            IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                            zzayi.zzc(parcel);
                            parcel2.writeNoException();
                        }
                    } else {
                        com.google.android.gms.ads.internal.client.zzdq zze = zze();
                        parcel2.writeNoException();
                        zzayi.zzf(parcel2, zze);
                    }
                } else {
                    zzbvg zzg = zzg();
                    parcel2.writeNoException();
                    zzayi.zze(parcel2, zzg);
                }
            } else {
                zzbvg zzf = zzf();
                parcel2.writeNoException();
                zzayi.zze(parcel2, zzf);
            }
        } else {
            IObjectWrapper asInterface12 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
            String readString18 = parcel.readString();
            Parcelable.Creator creator = Bundle.CREATOR;
            Bundle bundle = (Bundle) zzayi.zza(parcel, creator);
            Bundle bundle2 = (Bundle) zzayi.zza(parcel, creator);
            com.google.android.gms.ads.internal.client.zzq zzqVar3 = (com.google.android.gms.ads.internal.client.zzq) zzayi.zza(parcel, com.google.android.gms.ads.internal.client.zzq.CREATOR);
            IBinder readStrongBinder9 = parcel.readStrongBinder();
            if (readStrongBinder9 == null) {
                zzbuvVar = null;
            } else {
                IInterface queryLocalInterface9 = readStrongBinder9.queryLocalInterface(new ObfuscatedString(new long[]{3288004640323701229L, 5743430744204454733L, -3031305741896147448L, -3157842670919137952L, -4511523046212463547L, -7088982349794829137L, 5542473199306162089L, 7676187347919356455L, -1060134024152113510L, 4518699971030614551L, -949676915422643289L}).toString());
                if (queryLocalInterface9 instanceof zzbuv) {
                    zzbutVar = (zzbuv) queryLocalInterface9;
                } else {
                    zzbutVar = new zzbut(readStrongBinder9);
                }
                zzbuvVar = zzbutVar;
            }
            zzayi.zzc(parcel);
            zzh(asInterface12, readString18, bundle, bundle2, zzqVar3, zzbuvVar);
            parcel2.writeNoException();
        }
        return true;
    }
}
