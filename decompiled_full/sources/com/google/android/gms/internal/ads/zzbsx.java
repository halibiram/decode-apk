package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public abstract class zzbsx extends zzayh implements zzbsy {
    public zzbsx() {
        super(new ObfuscatedString(new long[]{7913002912966006328L, -4016685363043885810L, 5948306433591683676L, -5629364380919953755L, -645952939020124041L, 1587032688492438865L, -2743539726643677484L, -7078062253482744284L, 7219047584399874882L, -5029835867281262032L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzbtb zzbtbVar = null;
        switch (i) {
            case 1:
                IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzq zzqVar = (com.google.android.gms.ads.internal.client.zzq) zzayi.zza(parcel, com.google.android.gms.ads.internal.client.zzq.CREATOR);
                com.google.android.gms.ads.internal.client.zzl zzlVar = (com.google.android.gms.ads.internal.client.zzl) zzayi.zza(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                String readString = parcel.readString();
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(new ObfuscatedString(new long[]{-8450585303884283190L, -4107950124535276079L, -6457887672117935132L, 1138261319072742170L, -176120035994494763L, 2788960971711245657L, -3385932523960638724L, 8581058033763476659L, 6732542484334242431L, -2697330761472363436L, 1254797937942603822L}).toString());
                    if (queryLocalInterface instanceof zzbtb) {
                        zzbtbVar = (zzbtb) queryLocalInterface;
                    } else {
                        zzbtbVar = new zzbsz(readStrongBinder);
                    }
                }
                zzbtb zzbtbVar2 = zzbtbVar;
                zzayi.zzc(parcel);
                zzu(asInterface, zzqVar, zzlVar, readString, zzbtbVar2);
                parcel2.writeNoException();
                return true;
            case 2:
                IObjectWrapper zzn = zzn();
                parcel2.writeNoException();
                zzayi.zzf(parcel2, zzn);
                return true;
            case 3:
                IObjectWrapper asInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzl zzlVar2 = (com.google.android.gms.ads.internal.client.zzl) zzayi.zza(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                String readString2 = parcel.readString();
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface(new ObfuscatedString(new long[]{-5947143473248553220L, 8639121625787086791L, -6510869146552129145L, 7717122649722363399L, 7231158987243125136L, -8425146445886108069L, -6562935105205875695L, 7058221707876103711L, -8630586051558758434L, 7518869852982699333L, -2550466259106261782L}).toString());
                    if (queryLocalInterface2 instanceof zzbtb) {
                        zzbtbVar = (zzbtb) queryLocalInterface2;
                    } else {
                        zzbtbVar = new zzbsz(readStrongBinder2);
                    }
                }
                zzayi.zzc(parcel);
                zzx(asInterface2, zzlVar2, readString2, zzbtbVar);
                parcel2.writeNoException();
                return true;
            case 4:
                zzI();
                parcel2.writeNoException();
                return true;
            case 5:
                zzo();
                parcel2.writeNoException();
                return true;
            case 6:
                IObjectWrapper asInterface3 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzq zzqVar2 = (com.google.android.gms.ads.internal.client.zzq) zzayi.zza(parcel, com.google.android.gms.ads.internal.client.zzq.CREATOR);
                com.google.android.gms.ads.internal.client.zzl zzlVar3 = (com.google.android.gms.ads.internal.client.zzl) zzayi.zza(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                String readString3 = parcel.readString();
                String readString4 = parcel.readString();
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface(new ObfuscatedString(new long[]{-8101031368688249341L, -8962849054103593837L, 9093204872650800411L, 7315924524703902038L, 1510064421297152949L, 3295562867737916226L, 2508951811794716178L, -2813439710407556508L, -5798765861120857688L, 7987342433745842289L, -8416000155366760367L}).toString());
                    if (queryLocalInterface3 instanceof zzbtb) {
                        zzbtbVar = (zzbtb) queryLocalInterface3;
                    } else {
                        zzbtbVar = new zzbsz(readStrongBinder3);
                    }
                }
                zzbtb zzbtbVar3 = zzbtbVar;
                zzayi.zzc(parcel);
                zzv(asInterface3, zzqVar2, zzlVar3, readString3, readString4, zzbtbVar3);
                parcel2.writeNoException();
                return true;
            case 7:
                IObjectWrapper asInterface4 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzl zzlVar4 = (com.google.android.gms.ads.internal.client.zzl) zzayi.zza(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                String readString5 = parcel.readString();
                String readString6 = parcel.readString();
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface(new ObfuscatedString(new long[]{-6390172077254660910L, 115168416531473746L, 2783558244462846903L, 2423820522896028602L, 9136002498354322777L, 389336833289203945L, 4864707598845737332L, 6740786338558034035L, -1877212131863554174L, 8477045956349990741L, -2504847099550172072L}).toString());
                    if (queryLocalInterface4 instanceof zzbtb) {
                        zzbtbVar = (zzbtb) queryLocalInterface4;
                    } else {
                        zzbtbVar = new zzbsz(readStrongBinder4);
                    }
                }
                zzbtb zzbtbVar4 = zzbtbVar;
                zzayi.zzc(parcel);
                zzy(asInterface4, zzlVar4, readString5, readString6, zzbtbVar4);
                parcel2.writeNoException();
                return true;
            case 8:
                zzE();
                parcel2.writeNoException();
                return true;
            case 9:
                zzF();
                parcel2.writeNoException();
                return true;
            case 10:
                IObjectWrapper asInterface5 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzl zzlVar5 = (com.google.android.gms.ads.internal.client.zzl) zzayi.zza(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                String readString7 = parcel.readString();
                zzcaf zzb = zzcae.zzb(parcel.readStrongBinder());
                String readString8 = parcel.readString();
                zzayi.zzc(parcel);
                zzp(asInterface5, zzlVar5, readString7, zzb, readString8);
                parcel2.writeNoException();
                return true;
            case 11:
                com.google.android.gms.ads.internal.client.zzl zzlVar6 = (com.google.android.gms.ads.internal.client.zzl) zzayi.zza(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                String readString9 = parcel.readString();
                zzayi.zzc(parcel);
                zzs(zzlVar6, readString9);
                parcel2.writeNoException();
                return true;
            case 12:
                zzL();
                parcel2.writeNoException();
                return true;
            case 13:
                boolean zzN = zzN();
                parcel2.writeNoException();
                int i3 = zzayi.zza;
                parcel2.writeInt(zzN ? 1 : 0);
                return true;
            case 14:
                IObjectWrapper asInterface6 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzl zzlVar7 = (com.google.android.gms.ads.internal.client.zzl) zzayi.zza(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                String readString10 = parcel.readString();
                String readString11 = parcel.readString();
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface(new ObfuscatedString(new long[]{9012545311444811659L, -7953046715327848741L, -5701534403807489050L, 3439807076149952420L, -8038772909563779039L, 2868394297147296557L, 6007063308230354408L, 101931107428465157L, 458566003464655498L, 3263708968490873802L, -3125371531510294358L}).toString());
                    if (queryLocalInterface5 instanceof zzbtb) {
                        zzbtbVar = (zzbtb) queryLocalInterface5;
                    } else {
                        zzbtbVar = new zzbsz(readStrongBinder5);
                    }
                }
                zzbtb zzbtbVar5 = zzbtbVar;
                zzbjb zzbjbVar = (zzbjb) zzayi.zza(parcel, zzbjb.CREATOR);
                ArrayList<String> createStringArrayList = parcel.createStringArrayList();
                zzayi.zzc(parcel);
                zzz(asInterface6, zzlVar7, readString10, readString11, zzbtbVar5, zzbjbVar, createStringArrayList);
                parcel2.writeNoException();
                return true;
            case 15:
                parcel2.writeNoException();
                zzayi.zzf(parcel2, null);
                return true;
            case 16:
                parcel2.writeNoException();
                zzayi.zzf(parcel2, null);
                return true;
            case 17:
                Bundle zze = zze();
                parcel2.writeNoException();
                zzayi.zze(parcel2, zze);
                return true;
            case 18:
                Bundle zzf = zzf();
                parcel2.writeNoException();
                zzayi.zze(parcel2, zzf);
                return true;
            case 19:
                Bundle zzg = zzg();
                parcel2.writeNoException();
                zzayi.zze(parcel2, zzg);
                return true;
            case 20:
                com.google.android.gms.ads.internal.client.zzl zzlVar8 = (com.google.android.gms.ads.internal.client.zzl) zzayi.zza(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                String readString12 = parcel.readString();
                String readString13 = parcel.readString();
                zzayi.zzc(parcel);
                zzB(zzlVar8, readString12, readString13);
                parcel2.writeNoException();
                return true;
            case 21:
                IObjectWrapper asInterface7 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                zzD(asInterface7);
                parcel2.writeNoException();
                return true;
            case 22:
                parcel2.writeNoException();
                int i4 = zzayi.zza;
                parcel2.writeInt(0);
                return true;
            case 23:
                IObjectWrapper asInterface8 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzcaf zzb2 = zzcae.zzb(parcel.readStrongBinder());
                ArrayList<String> createStringArrayList2 = parcel.createStringArrayList();
                zzayi.zzc(parcel);
                zzr(asInterface8, zzb2, createStringArrayList2);
                parcel2.writeNoException();
                return true;
            case 24:
                zzbkg zzi = zzi();
                parcel2.writeNoException();
                zzayi.zzf(parcel2, zzi);
                return true;
            case 25:
                boolean zzg2 = zzayi.zzg(parcel);
                zzayi.zzc(parcel);
                zzG(zzg2);
                parcel2.writeNoException();
                return true;
            case 26:
                com.google.android.gms.ads.internal.client.zzdq zzh = zzh();
                parcel2.writeNoException();
                zzayi.zzf(parcel2, zzh);
                return true;
            case 27:
                zzbtk zzk = zzk();
                parcel2.writeNoException();
                zzayi.zzf(parcel2, zzk);
                return true;
            case 28:
                IObjectWrapper asInterface9 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzl zzlVar9 = (com.google.android.gms.ads.internal.client.zzl) zzayi.zza(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                String readString14 = parcel.readString();
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 != null) {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface(new ObfuscatedString(new long[]{-114779175449141397L, -8760304809742803045L, -4732699429061061578L, 4558940025141602872L, 8765152051525236031L, -9008424285874600574L, 6899575367074990706L, -8601989013947558510L, -9035478615406565970L, 4317394401149001347L, 67697583747795914L}).toString());
                    if (queryLocalInterface6 instanceof zzbtb) {
                        zzbtbVar = (zzbtb) queryLocalInterface6;
                    } else {
                        zzbtbVar = new zzbsz(readStrongBinder6);
                    }
                }
                zzayi.zzc(parcel);
                zzA(asInterface9, zzlVar9, readString14, zzbtbVar);
                parcel2.writeNoException();
                return true;
            case 29:
            default:
                return false;
            case 30:
                IObjectWrapper asInterface10 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                zzK(asInterface10);
                parcel2.writeNoException();
                return true;
            case 31:
                IObjectWrapper asInterface11 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzbph zzb3 = zzbpg.zzb(parcel.readStrongBinder());
                ArrayList createTypedArrayList = parcel.createTypedArrayList(zzbpn.CREATOR);
                zzayi.zzc(parcel);
                zzq(asInterface11, zzb3, createTypedArrayList);
                parcel2.writeNoException();
                return true;
            case 32:
                IObjectWrapper asInterface12 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzl zzlVar10 = (com.google.android.gms.ads.internal.client.zzl) zzayi.zza(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                String readString15 = parcel.readString();
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 != null) {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface(new ObfuscatedString(new long[]{7710456147999734189L, 8905920247644058928L, 6404646132229107883L, -4738034743910330451L, 7313811630159970431L, 5676345226738656507L, 203391546026486052L, 589124412884645832L, -9166522540614450111L, -3929856328632766556L, 1288718966234289687L}).toString());
                    if (queryLocalInterface7 instanceof zzbtb) {
                        zzbtbVar = (zzbtb) queryLocalInterface7;
                    } else {
                        zzbtbVar = new zzbsz(readStrongBinder7);
                    }
                }
                zzayi.zzc(parcel);
                zzC(asInterface12, zzlVar10, readString15, zzbtbVar);
                parcel2.writeNoException();
                return true;
            case 33:
                zzbvg zzl = zzl();
                parcel2.writeNoException();
                zzayi.zze(parcel2, zzl);
                return true;
            case 34:
                zzbvg zzm = zzm();
                parcel2.writeNoException();
                zzayi.zze(parcel2, zzm);
                return true;
            case 35:
                IObjectWrapper asInterface13 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzq zzqVar3 = (com.google.android.gms.ads.internal.client.zzq) zzayi.zza(parcel, com.google.android.gms.ads.internal.client.zzq.CREATOR);
                com.google.android.gms.ads.internal.client.zzl zzlVar11 = (com.google.android.gms.ads.internal.client.zzl) zzayi.zza(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                String readString16 = parcel.readString();
                String readString17 = parcel.readString();
                IBinder readStrongBinder8 = parcel.readStrongBinder();
                if (readStrongBinder8 != null) {
                    IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface(new ObfuscatedString(new long[]{-2050869311534477792L, 845348204222828642L, -5172017789628430684L, 7546558565339584119L, 5722350508460202748L, 5333952069688685976L, 5790095291198009904L, -177093670545983272L, 3961487993178582132L, -5839376222156637841L, 7309757671473757865L}).toString());
                    if (queryLocalInterface8 instanceof zzbtb) {
                        zzbtbVar = (zzbtb) queryLocalInterface8;
                    } else {
                        zzbtbVar = new zzbsz(readStrongBinder8);
                    }
                }
                zzbtb zzbtbVar6 = zzbtbVar;
                zzayi.zzc(parcel);
                zzw(asInterface13, zzqVar3, zzlVar11, readString16, readString17, zzbtbVar6);
                parcel2.writeNoException();
                return true;
            case 36:
                zzbte zzj = zzj();
                parcel2.writeNoException();
                zzayi.zzf(parcel2, zzj);
                return true;
            case 37:
                IObjectWrapper asInterface14 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                zzJ(asInterface14);
                parcel2.writeNoException();
                return true;
            case 38:
                IObjectWrapper asInterface15 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.client.zzl zzlVar12 = (com.google.android.gms.ads.internal.client.zzl) zzayi.zza(parcel, com.google.android.gms.ads.internal.client.zzl.CREATOR);
                String readString18 = parcel.readString();
                IBinder readStrongBinder9 = parcel.readStrongBinder();
                if (readStrongBinder9 != null) {
                    IInterface queryLocalInterface9 = readStrongBinder9.queryLocalInterface(new ObfuscatedString(new long[]{-1032386959589529437L, 5170333271576346338L, -2222223262017141109L, -3877517303950776381L, -1420936594042559968L, 2656471294865471540L, 8526033227889180673L, -8790637758313745033L, 5745107459879512757L, -6698932272670653734L, 2786301660682609431L}).toString());
                    if (queryLocalInterface9 instanceof zzbtb) {
                        zzbtbVar = (zzbtb) queryLocalInterface9;
                    } else {
                        zzbtbVar = new zzbsz(readStrongBinder9);
                    }
                }
                zzayi.zzc(parcel);
                zzt(asInterface15, zzlVar12, readString18, zzbtbVar);
                parcel2.writeNoException();
                return true;
            case 39:
                IObjectWrapper asInterface16 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzayi.zzc(parcel);
                zzH(asInterface16);
                parcel2.writeNoException();
                return true;
        }
    }
}
