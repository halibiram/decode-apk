package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Map;

@Deprecated
/* loaded from: classes2.dex */
public final class zzdwa {
    private final ConcurrentHashMap zza;
    private final zzcdp zzb;
    private final zzfhh zzc;
    private final String zzd;
    private final String zze;

    public zzdwa(zzdwk zzdwkVar, zzcdp zzcdpVar, zzfhh zzfhhVar, String str, String str2) {
        ConcurrentHashMap zzc = zzdwkVar.zzc();
        this.zza = zzc;
        this.zzb = zzcdpVar;
        this.zzc = zzfhhVar;
        this.zzd = str;
        this.zze = str2;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzha)).booleanValue()) {
            return;
        }
        int zze = com.google.android.gms.ads.nonagon.signalgeneration.zzf.zze(zzfhhVar);
        int i = zze - 1;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        zzc.put(new ObfuscatedString(new long[]{3404802531906402850L, 7520746065826621520L}).toString(), new ObfuscatedString(new long[]{-115061955432173831L, 526891625121523928L}).toString());
                    } else {
                        zzc.put(new ObfuscatedString(new long[]{-3781899175109344693L, -1539539392731272226L}).toString(), new ObfuscatedString(new long[]{1649512864699055415L, -6841289374645359350L, -4716809584811660051L}).toString());
                    }
                } else {
                    zzc.put(new ObfuscatedString(new long[]{6038892600886599750L, -783298798838989037L}).toString(), new ObfuscatedString(new long[]{-6449356293171098004L, 7075785755677731907L}).toString());
                }
            } else {
                zzc.put(new ObfuscatedString(new long[]{1121610943678556929L, -6881540635316209698L}).toString(), new ObfuscatedString(new long[]{8111421372221651293L, -2551071885477215718L}).toString());
            }
            zzc.put(new ObfuscatedString(new long[]{2232292076858706691L, 7163323899935889989L}).toString(), new ObfuscatedString(new long[]{4289490247894968678L, 6785103110013128841L}).toString());
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzhz)).booleanValue()) {
                zzc.put(new ObfuscatedString(new long[]{-2320476570412204069L, -3059696803829170468L, -911791206385837469L}).toString(), str2);
            }
            if (zze == 2) {
                zzc.put(new ObfuscatedString(new long[]{-2826109013500115812L, 2583633769848140170L}).toString(), str);
            }
            zzd(new ObfuscatedString(new long[]{-6935290183592048162L, -4787313483937938979L}).toString(), zzfhhVar.zzd.zzp);
            zzd(new ObfuscatedString(new long[]{-2915274770545324954L, 6155779329645504737L}).toString(), com.google.android.gms.ads.nonagon.signalgeneration.zzf.zza(com.google.android.gms.ads.nonagon.signalgeneration.zzf.zzb(zzfhhVar.zzd)));
            return;
        }
        zzc.put(new ObfuscatedString(new long[]{-805677702740368464L, -6409029395888408343L}).toString(), new ObfuscatedString(new long[]{4699869070705443076L, 4063401907319721240L}).toString());
    }

    private final void zzd(String str, @Nullable String str2) {
        if (!TextUtils.isEmpty(str2)) {
            this.zza.put(str, str2);
        }
    }

    public final Map zza() {
        return this.zza;
    }

    public final void zzb(zzfgy zzfgyVar) {
        String obfuscatedString;
        if (!zzfgyVar.zzb.zza.isEmpty()) {
            switch (((zzfgm) zzfgyVar.zzb.zza.get(0)).zzb) {
                case 1:
                    this.zza.put(new ObfuscatedString(new long[]{7615360296174469151L, -8573601353976621808L, 5770304930666464570L}).toString(), new ObfuscatedString(new long[]{-4131598531845053458L, 7942308501963654844L}).toString());
                    break;
                case 2:
                    this.zza.put(new ObfuscatedString(new long[]{-771875638264402656L, -1958647729420631466L, 605834905006732915L}).toString(), new ObfuscatedString(new long[]{8989831071168426458L, -8759240450522466519L, -2564149894970017574L}).toString());
                    break;
                case 3:
                    this.zza.put(new ObfuscatedString(new long[]{-6653822566294184902L, -3590772552518771560L, -2617914099318952739L}).toString(), new ObfuscatedString(new long[]{1189419975554894450L, -4867902027624392943L, -8636744814898176793L}).toString());
                    break;
                case 4:
                    this.zza.put(new ObfuscatedString(new long[]{-3916039349254918113L, -9062650340309991572L, -3651417881390371376L}).toString(), new ObfuscatedString(new long[]{-3291411544775088490L, 7460285289035946851L, 3725924855976466553L}).toString());
                    break;
                case 5:
                    this.zza.put(new ObfuscatedString(new long[]{-171963341265293040L, 8918163228985508562L, -7520527600586760564L}).toString(), new ObfuscatedString(new long[]{2305216214050075009L, 3975365011751341780L}).toString());
                    break;
                case 6:
                    this.zza.put(new ObfuscatedString(new long[]{-4525646938273650368L, 8666529701935338520L, 6312066703020003609L}).toString(), new ObfuscatedString(new long[]{1756020809882177308L, -5080711046954434902L, 1903680828506430771L}).toString());
                    ConcurrentHashMap concurrentHashMap = this.zza;
                    if (true != this.zzb.zzm()) {
                        obfuscatedString = new ObfuscatedString(new long[]{-5970036184826645997L, 1015732990114179676L}).toString();
                    } else {
                        obfuscatedString = new ObfuscatedString(new long[]{-1662280328794465563L, -8423510180403931443L}).toString();
                    }
                    concurrentHashMap.put(new ObfuscatedString(new long[]{-1170494674583489897L, 5139833591579733779L}).toString(), obfuscatedString);
                    break;
                default:
                    this.zza.put(new ObfuscatedString(new long[]{4760493496837631274L, 7177075290854714162L, 8914689392740731033L}).toString(), new ObfuscatedString(new long[]{8640557043032957657L, -3153461146603454838L}).toString());
                    break;
            }
        }
        zzd(new ObfuscatedString(new long[]{3793299447702250632L, -3356914228522570495L}).toString(), zzfgyVar.zzb.zzb.zzb);
    }

    public final void zzc(Bundle bundle) {
        if (bundle.containsKey(new ObfuscatedString(new long[]{-9063017071625890444L, 1263576658351371023L}).toString())) {
            this.zza.put(new ObfuscatedString(new long[]{1085874201779932459L, 6075900690814760094L, -2225673392003846309L}).toString(), Integer.toString(bundle.getInt(new ObfuscatedString(new long[]{3747460720364791885L, 4647645513055258346L}).toString())));
        }
        if (bundle.containsKey(new ObfuscatedString(new long[]{-7613325696616661186L, 4291345970619198082L}).toString())) {
            this.zza.put(new ObfuscatedString(new long[]{-8815116622669666832L, -6189631521651627794L, -2154361763747950219L}).toString(), Integer.toString(bundle.getInt(new ObfuscatedString(new long[]{1320553512749398971L, 6338777161836088993L}).toString())));
        }
    }
}
