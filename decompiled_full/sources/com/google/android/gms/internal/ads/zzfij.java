package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzfij {
    public static com.google.android.gms.ads.internal.client.zze zza(Throwable th) {
        if (th instanceof zzeir) {
            zzeir zzeirVar = (zzeir) th;
            return zzc(zzeirVar.zza(), zzeirVar.zzb());
        }
        if (th instanceof zzead) {
            if (th.getMessage() == null) {
                return zzd(((zzead) th).zza(), null, null);
            }
            return zzd(((zzead) th).zza(), th.getMessage(), null);
        }
        if (th instanceof com.google.android.gms.ads.internal.util.zzba) {
            com.google.android.gms.ads.internal.util.zzba zzbaVar = (com.google.android.gms.ads.internal.util.zzba) th;
            return new com.google.android.gms.ads.internal.client.zze(zzbaVar.zza(), zzfxt.zzc(zzbaVar.getMessage()), new ObfuscatedString(new long[]{4656840047156106579L, -6230876008916456827L, 4569556810935252421L, 7420112277664635237L, 592735603010420432L}).toString(), null, null);
        }
        return zzd(1, null, null);
    }

    public static com.google.android.gms.ads.internal.client.zze zzb(Throwable th, @Nullable zzeis zzeisVar) {
        com.google.android.gms.ads.internal.client.zze zzeVar;
        com.google.android.gms.ads.internal.client.zze zza = zza(th);
        int i = zza.zza;
        if ((i == 3 || i == 0) && (zzeVar = zza.zzd) != null && !zzeVar.zzc.equals(new ObfuscatedString(new long[]{4659428627758908275L, -7836767846225121491L, -3751741449047603515L, 4722550243479936163L, -8147079813711217129L}).toString())) {
            zza.zzd = null;
        }
        if (zzeisVar != null) {
            zza.zze = zzeisVar.zzb();
        }
        return zza;
    }

    public static com.google.android.gms.ads.internal.client.zze zzc(int i, com.google.android.gms.ads.internal.client.zze zzeVar) {
        if (i != 0) {
            if (i == 8) {
                if (((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzif)).intValue() <= 0) {
                    i = 8;
                } else {
                    return zzeVar;
                }
            }
            return zzd(i, null, zzeVar);
        }
        throw null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x0114. Please report as an issue. */
    public static com.google.android.gms.ads.internal.client.zze zzd(int i, @Nullable String str, @Nullable com.google.android.gms.ads.internal.client.zze zzeVar) {
        String str2;
        int i2;
        ObfuscatedString obfuscatedString;
        String obfuscatedString2;
        ObfuscatedString obfuscatedString3;
        ObfuscatedString obfuscatedString4;
        String obfuscatedString5;
        ObfuscatedString obfuscatedString6;
        int i3 = i - 1;
        if (str == null) {
            if (i != 0) {
                switch (i3) {
                    case 1:
                        obfuscatedString3 = new ObfuscatedString(new long[]{-9213170821433926304L, -9061732261735346074L, 4991874787110323923L});
                        obfuscatedString5 = obfuscatedString3.toString();
                        break;
                    case 2:
                        obfuscatedString3 = new ObfuscatedString(new long[]{-8663080306442100951L, -6877736776028754476L});
                        obfuscatedString5 = obfuscatedString3.toString();
                        break;
                    case 3:
                        obfuscatedString3 = new ObfuscatedString(new long[]{557446070118374581L, -2918777314713170556L, -3363893417493793600L});
                        obfuscatedString5 = obfuscatedString3.toString();
                        break;
                    case 4:
                        obfuscatedString3 = new ObfuscatedString(new long[]{-2719313764278456227L, 8072818773154628551L, 3276282976140083393L});
                        obfuscatedString5 = obfuscatedString3.toString();
                        break;
                    case 5:
                        obfuscatedString3 = new ObfuscatedString(new long[]{4136682277988723401L, -2126395948176979559L, -8770940069709479505L, 6248570177516140582L, -1086229991323906575L, 7912125297808053585L});
                        obfuscatedString5 = obfuscatedString3.toString();
                        break;
                    case 6:
                        obfuscatedString3 = new ObfuscatedString(new long[]{-8766163229481285288L, 7093369870999287455L, -5808691816159640528L, -4364131897653584492L, -1170782216607314259L, 3554745917628033594L});
                        obfuscatedString5 = obfuscatedString3.toString();
                        break;
                    case 7:
                        obfuscatedString4 = new ObfuscatedString(new long[]{-7575293687614022459L, -7203846870825715196L, 2227231646279465411L, -6254068872368250459L, 6264731826929247744L, 8867958158422520981L, 1583845761550268247L});
                        obfuscatedString5 = obfuscatedString4.toString();
                        break;
                    case 8:
                        obfuscatedString3 = new ObfuscatedString(new long[]{6247287248460806998L, 529070492980421319L, -3396031547586876186L, -4177353404104732105L});
                        obfuscatedString5 = obfuscatedString3.toString();
                        break;
                    case 9:
                        obfuscatedString3 = new ObfuscatedString(new long[]{-3703840069811328823L, 7059472784391007385L, -981978886406940612L, -6054064216768043290L, -2316160974115094586L});
                        obfuscatedString5 = obfuscatedString3.toString();
                        break;
                    case 10:
                        obfuscatedString3 = new ObfuscatedString(new long[]{900496497422627960L, -2989693139714925171L, -4229516635520025505L, -5157618654476959964L, 8858691147929916431L, -7194194479606096322L, 4374435187973689951L, -5397246892545562813L});
                        obfuscatedString5 = obfuscatedString3.toString();
                        break;
                    case 11:
                    default:
                        obfuscatedString5 = new ObfuscatedString(new long[]{-7968938237395973450L, -7250113461717600852L, 705901381582943881L}).toString();
                        break;
                    case 12:
                        if (((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzii)).intValue() <= 0) {
                            obfuscatedString4 = new ObfuscatedString(new long[]{1747678555093484377L, 7825381880254126991L, -9123181331939074283L, 8948462031934991382L, 4137841699813691889L, -2438143916463695202L, -5566080473242671197L});
                            obfuscatedString5 = obfuscatedString4.toString();
                            break;
                        } else {
                            obfuscatedString3 = new ObfuscatedString(new long[]{-5006504942694280689L, 2895451578084176313L});
                            obfuscatedString5 = obfuscatedString3.toString();
                            break;
                        }
                    case 13:
                        obfuscatedString6 = new ObfuscatedString(new long[]{-7013596914675642198L, 5571054198248767068L, -7450985751500480581L, 2402411766936946517L});
                        obfuscatedString5 = obfuscatedString6.toString();
                        break;
                    case 14:
                        obfuscatedString6 = new ObfuscatedString(new long[]{7233266967165518143L, -628403232664203949L, -488088352296397152L, -375495436468170178L});
                        obfuscatedString5 = obfuscatedString6.toString();
                        break;
                    case 15:
                        obfuscatedString6 = new ObfuscatedString(new long[]{6486006873484600241L, 576914510174904154L, -8694048095149071761L, -5648798974578707760L, -6244384083561529397L, 5689016806483194963L});
                        obfuscatedString5 = obfuscatedString6.toString();
                        break;
                    case 16:
                        obfuscatedString6 = new ObfuscatedString(new long[]{-4029755607125074719L, 3236024980845492591L, -844317360656083414L, 1017166789164058529L, 6285528969939705101L});
                        obfuscatedString5 = obfuscatedString6.toString();
                        break;
                    case 17:
                        obfuscatedString6 = new ObfuscatedString(new long[]{-316699523546567719L, 1904791239479473099L, 3566567844776812800L, -8919034640921758782L, 3555134936554088335L, 7695287549592849363L, 7658457887327775906L, -4328647012050046809L, -8571271259238075459L, -6596041524371887777L, -1541119025074140068L, 1124283436020237958L, 3962195093835670011L, -3854979378258930279L, -2645311392787255870L, 7651709778077895590L, 654112129834457297L, -7311275180388845367L, 4460150994874242374L, 5521035747962823427L, 653869400985542774L, 1255477268809490833L});
                        obfuscatedString5 = obfuscatedString6.toString();
                        break;
                    case 18:
                        obfuscatedString6 = new ObfuscatedString(new long[]{1829144520530030580L, 8119907865247797924L, 1142967028384809955L, -1968270151364519058L, 7186160834062723958L, -4448170933563938162L, 992927540683711320L, -1892654426083425166L, 574723191522175004L});
                        obfuscatedString5 = obfuscatedString6.toString();
                        break;
                }
                str2 = obfuscatedString5;
            } else {
                throw null;
            }
        } else {
            str2 = str;
        }
        if (i != 0) {
            switch (i3) {
                case 0:
                case 11:
                case 15:
                    i2 = 0;
                    return new com.google.android.gms.ads.internal.client.zze(i2, str2, new ObfuscatedString(new long[]{-7441271946994336114L, -4050957843817928262L, 5321142185786357252L, 5023356442062822442L, 6165722540818064204L}).toString(), zzeVar, null);
                case 1:
                case 5:
                case 6:
                case 9:
                case 16:
                    i2 = 1;
                    return new com.google.android.gms.ads.internal.client.zze(i2, str2, new ObfuscatedString(new long[]{-7441271946994336114L, -4050957843817928262L, 5321142185786357252L, 5023356442062822442L, 6165722540818064204L}).toString(), zzeVar, null);
                case 2:
                case 10:
                case 18:
                    i2 = 3;
                    return new com.google.android.gms.ads.internal.client.zze(i2, str2, new ObfuscatedString(new long[]{-7441271946994336114L, -4050957843817928262L, 5321142185786357252L, 5023356442062822442L, 6165722540818064204L}).toString(), zzeVar, null);
                case 3:
                    i2 = 8;
                    return new com.google.android.gms.ads.internal.client.zze(i2, str2, new ObfuscatedString(new long[]{-7441271946994336114L, -4050957843817928262L, 5321142185786357252L, 5023356442062822442L, 6165722540818064204L}).toString(), zzeVar, null);
                case 4:
                case 8:
                case 17:
                    i2 = 2;
                    return new com.google.android.gms.ads.internal.client.zze(i2, str2, new ObfuscatedString(new long[]{-7441271946994336114L, -4050957843817928262L, 5321142185786357252L, 5023356442062822442L, 6165722540818064204L}).toString(), zzeVar, null);
                case 7:
                    i2 = 4;
                    return new com.google.android.gms.ads.internal.client.zze(i2, str2, new ObfuscatedString(new long[]{-7441271946994336114L, -4050957843817928262L, 5321142185786357252L, 5023356442062822442L, 6165722540818064204L}).toString(), zzeVar, null);
                case 12:
                    if (((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzii)).intValue() <= 0) {
                        i2 = 9;
                        return new com.google.android.gms.ads.internal.client.zze(i2, str2, new ObfuscatedString(new long[]{-7441271946994336114L, -4050957843817928262L, 5321142185786357252L, 5023356442062822442L, 6165722540818064204L}).toString(), zzeVar, null);
                    }
                    i2 = 3;
                    return new com.google.android.gms.ads.internal.client.zze(i2, str2, new ObfuscatedString(new long[]{-7441271946994336114L, -4050957843817928262L, 5321142185786357252L, 5023356442062822442L, 6165722540818064204L}).toString(), zzeVar, null);
                case 13:
                    i2 = 10;
                    return new com.google.android.gms.ads.internal.client.zze(i2, str2, new ObfuscatedString(new long[]{-7441271946994336114L, -4050957843817928262L, 5321142185786357252L, 5023356442062822442L, 6165722540818064204L}).toString(), zzeVar, null);
                case 14:
                    i2 = 11;
                    return new com.google.android.gms.ads.internal.client.zze(i2, str2, new ObfuscatedString(new long[]{-7441271946994336114L, -4050957843817928262L, 5321142185786357252L, 5023356442062822442L, 6165722540818064204L}).toString(), zzeVar, null);
                default:
                    switch (i) {
                        case 1:
                            obfuscatedString = new ObfuscatedString(new long[]{-5011508316477279748L, -3425292736939010244L, 7851853284593364498L});
                            obfuscatedString2 = obfuscatedString.toString();
                            break;
                        case 2:
                            obfuscatedString = new ObfuscatedString(new long[]{-7700480528198315883L, 9071121496920271694L, -3323183680354015691L});
                            obfuscatedString2 = obfuscatedString.toString();
                            break;
                        case 3:
                            obfuscatedString = new ObfuscatedString(new long[]{-1960444747733144438L, -3784412362051879250L});
                            obfuscatedString2 = obfuscatedString.toString();
                            break;
                        case 4:
                            obfuscatedString = new ObfuscatedString(new long[]{5471216340303563275L, -2832488010165053442L, -340739567058181904L});
                            obfuscatedString2 = obfuscatedString.toString();
                            break;
                        case 5:
                            obfuscatedString = new ObfuscatedString(new long[]{-8309642673996921153L, -8213931567554747101L, -7917597092050944092L});
                            obfuscatedString2 = obfuscatedString.toString();
                            break;
                        case 6:
                            obfuscatedString = new ObfuscatedString(new long[]{5884411885503144L, -910273562530546764L, -4838493192232672032L, 1403341648767157631L});
                            obfuscatedString2 = obfuscatedString.toString();
                            break;
                        case 7:
                            obfuscatedString = new ObfuscatedString(new long[]{-1794162285954558169L, 9159532048425147914L, 3842773595276276633L});
                            obfuscatedString2 = obfuscatedString.toString();
                            break;
                        case 8:
                            obfuscatedString = new ObfuscatedString(new long[]{5832449158064763557L, -5562745685739226642L, -5546834264017790193L, -534230913931559123L});
                            obfuscatedString2 = obfuscatedString.toString();
                            break;
                        case 9:
                            obfuscatedString = new ObfuscatedString(new long[]{8925231536336353478L, 4496609735690697102L, 1046861604049881375L});
                            obfuscatedString2 = obfuscatedString.toString();
                            break;
                        case 10:
                            obfuscatedString = new ObfuscatedString(new long[]{-4708812202122969724L, 7056260651944235486L, 1085293650978417197L});
                            obfuscatedString2 = obfuscatedString.toString();
                            break;
                        case 11:
                            obfuscatedString = new ObfuscatedString(new long[]{754009107916229778L, -4998567032346673955L, -4186310204484813545L, 657850747108678230L});
                            obfuscatedString2 = obfuscatedString.toString();
                            break;
                        case 12:
                            obfuscatedString = new ObfuscatedString(new long[]{8412230488055119594L, -3021804162732621032L, 6586989994924853810L, 3084368798930309401L});
                            obfuscatedString2 = obfuscatedString.toString();
                            break;
                        case 13:
                            obfuscatedString = new ObfuscatedString(new long[]{-783638634719118501L, 3409435074371323164L, 2683197700986210251L, -7295130958427277016L});
                            obfuscatedString2 = obfuscatedString.toString();
                            break;
                        case 14:
                            obfuscatedString = new ObfuscatedString(new long[]{4166052045472276313L, 3528886732330224212L, 5058638073752091692L, -8095518773623171071L});
                            obfuscatedString2 = obfuscatedString.toString();
                            break;
                        case 15:
                            obfuscatedString = new ObfuscatedString(new long[]{3842835419824931683L, 2219862177148654005L, 3125657505324186958L, -4508651934986183091L});
                            obfuscatedString2 = obfuscatedString.toString();
                            break;
                        case 16:
                            obfuscatedString = new ObfuscatedString(new long[]{2457386226101478600L, 380038756309145329L, 3693810579122777836L, -7780597555588880651L, 5343309651676309558L});
                            obfuscatedString2 = obfuscatedString.toString();
                            break;
                        case 17:
                            obfuscatedString = new ObfuscatedString(new long[]{-3785994652284572480L, -1627712216548755786L, -8549089323643025832L, -145722465139124016L, -8250209607749111383L});
                            obfuscatedString2 = obfuscatedString.toString();
                            break;
                        case 18:
                            obfuscatedString = new ObfuscatedString(new long[]{5720455180191068430L, 8644913912099288952L, 5255316918505090163L, 5403993593503812652L, 4130652984856890356L});
                            obfuscatedString2 = obfuscatedString.toString();
                            break;
                        default:
                            obfuscatedString2 = new ObfuscatedString(new long[]{-7812391706475506098L, -7796535392520265335L, -878809860006880394L, -2252710512987637624L, -4896256045118533956L}).toString();
                            break;
                    }
                    throw new AssertionError(new ObfuscatedString(new long[]{7170292495658485676L, 2952791738180886183L, -84658057806219661L, -327337305561800566L}).toString().concat(obfuscatedString2));
            }
        }
        throw null;
    }
}
