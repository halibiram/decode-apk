package com.google.android.gms.ads.nonagon.signalgeneration;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzbht;
import com.google.android.gms.internal.ads.zzccq;
import com.google.android.gms.internal.ads.zzccx;
import com.google.android.gms.internal.ads.zzcec;
import com.google.android.gms.internal.ads.zzcei;
import com.google.android.gms.internal.ads.zzdwa;
import com.google.android.gms.internal.ads.zzdwk;
import com.google.android.gms.internal.ads.zzfmo;
import com.google.android.gms.internal.ads.zzfmz;
import com.google.android.gms.internal.ads.zzgej;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
final class zzw implements zzgej {
    final /* synthetic */ ListenableFuture zza;
    final /* synthetic */ zzccx zzb;
    final /* synthetic */ zzccq zzc;
    final /* synthetic */ zzfmo zzd;
    final /* synthetic */ long zze;
    final /* synthetic */ zzaa zzf;

    public zzw(zzaa zzaaVar, ListenableFuture listenableFuture, zzccx zzccxVar, zzccq zzccqVar, zzfmo zzfmoVar, long j) {
        this.zza = listenableFuture;
        this.zzb = zzccxVar;
        this.zzc = zzccqVar;
        this.zzd = zzfmoVar;
        this.zze = j;
        this.zzf = zzaaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    public final void zza(Throwable th) {
        zzdwk zzdwkVar;
        zzdwa zzdwaVar;
        long currentTimeMillis = com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis() - this.zze;
        String obfuscatedString = new ObfuscatedString(new long[]{-2293889217923264336L, -3680978273045750599L, -3118934257323196345L, 5093931604823103344L, 591935888237314637L, 854911224743691058L}).toString();
        String message = th.getMessage();
        com.google.android.gms.ads.internal.zzt.zzo().zzw(th, obfuscatedString);
        zzaa zzaaVar = this.zzf;
        zzdwkVar = zzaaVar.zzs;
        zzdwaVar = zzaaVar.zzk;
        zzf.zzc(zzdwkVar, zzdwaVar, new ObfuscatedString(new long[]{6996571927299221071L, -152683023548642651L}).toString(), new Pair(new ObfuscatedString(new long[]{3353313016557710805L, -187378126764164632L, -1201808466270494101L}).toString(), message), new Pair(new ObfuscatedString(new long[]{-5920464112991496398L, 3724993902973817083L}).toString(), String.valueOf(currentTimeMillis)));
        zzfmz zzs = zzaa.zzs(this.zza, this.zzb);
        if (((Boolean) zzbht.zze.zze()).booleanValue() && zzs != null) {
            zzfmo zzfmoVar = this.zzd;
            zzfmoVar.zzg(th);
            zzfmoVar.zzf(false);
            zzs.zza(zzfmoVar);
            zzs.zzg();
        }
        try {
            if (!new ObfuscatedString(new long[]{5803585957703868772L, -8793342996360105188L, -421256239944199038L, 4228501312567553218L, 2890321024620030786L, 9148563561284938080L}).toString().equals(message)) {
                message = new ObfuscatedString(new long[]{-1461546553084097092L, 6579385491004573050L, 5186842007519122619L}).toString() + message;
            }
            this.zzc.zzb(message);
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{2664259617357226917L}).toString(), e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    public final /* bridge */ /* synthetic */ void zzb(@Nullable Object obj) {
        AtomicBoolean atomicBoolean;
        RemoteException remoteException;
        zzdwk zzdwkVar;
        zzdwa zzdwaVar;
        zzdwa zzdwaVar2;
        boolean z;
        boolean z2;
        zzdwk zzdwkVar2;
        zzdwa zzdwaVar3;
        ObfuscatedString obfuscatedString;
        String str;
        String str2;
        String str3;
        String str4;
        Context context;
        zzcei zzceiVar;
        String str5;
        String str6;
        AtomicInteger atomicInteger;
        zzdwk zzdwkVar3;
        zzdwa zzdwaVar4;
        zzdwk zzdwkVar4;
        zzdwa zzdwaVar5;
        zzam zzamVar = (zzam) obj;
        zzfmz zzs = zzaa.zzs(this.zza, this.zzb);
        atomicBoolean = this.zzf.zzJ;
        atomicBoolean.set(true);
        if (!((Boolean) zzba.zzc().zza(zzbgc.zzhD)).booleanValue()) {
            try {
                this.zzc.zzb(new ObfuscatedString(new long[]{-3727079299687048932L, 6343209616014232583L, -4925969948518533098L, -8441923902592434811L, 7092141742156831957L, 8565803103069863771L}).toString());
            } catch (RemoteException e) {
                zzcec.zzg(new ObfuscatedString(new long[]{5468209626162748702L, 1831240673462227239L, -6249555618557943494L, -7390362979105157314L, 8549301785694132447L, 7236172396055152264L}).toString().concat(e.toString()));
            }
            if (((Boolean) zzbht.zze.zze()).booleanValue() && zzs != null) {
                zzfmo zzfmoVar = this.zzd;
                zzfmoVar.zzc(new ObfuscatedString(new long[]{6071205239606778070L, -3754086978410949552L, -1442214048503056885L, 84035218597973594L, -4822826453127257932L, -5316730761802109308L}).toString());
                zzfmoVar.zzf(false);
                zzs.zza(zzfmoVar);
                zzs.zzg();
                return;
            }
            return;
        }
        long currentTimeMillis = com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis() - this.zze;
        try {
            try {
                if (zzamVar == null) {
                    this.zzc.zzc(null, null, null);
                    zzaa zzaaVar = this.zzf;
                    zzdwkVar4 = zzaaVar.zzs;
                    zzdwaVar5 = zzaaVar.zzk;
                    zzf.zzc(zzdwkVar4, zzdwaVar5, new ObfuscatedString(new long[]{5874746948514591421L, -3707755747257493310L}).toString(), new Pair(new ObfuscatedString(new long[]{4329469989343037180L, 2999785481258695234L}).toString(), new ObfuscatedString(new long[]{8709792370283406315L, 2578585359064145816L}).toString()));
                    this.zzd.zzf(true);
                    if (((Boolean) zzbht.zze.zze()).booleanValue() && zzs != null) {
                        zzs.zza(this.zzd);
                        zzs.zzg();
                        return;
                    }
                    return;
                }
                try {
                    JSONObject jSONObject = new JSONObject(zzamVar.zzb);
                    String optString = jSONObject.optString(new ObfuscatedString(new long[]{-1990374593052007566L, -7677258972016688413L, -317316055712758427L}).toString(), new ObfuscatedString(new long[]{-7259993613335371630L}).toString());
                    if (TextUtils.isEmpty(optString)) {
                        zzcec.zzj(new ObfuscatedString(new long[]{4904395638241796458L, -4660652150800525239L, -1314716376381689408L, -722787752644737186L, 846080834920729273L, 5529441327489678115L}).toString());
                        this.zzc.zzb(new ObfuscatedString(new long[]{-8962794036679179073L, -3353730834186808652L, 964246890151814706L, -6891880116307196754L, 5724476789636704860L, -2770494500666432689L, -4645007322035808394L, 2686559075117319602L}).toString());
                        zzaa zzaaVar2 = this.zzf;
                        zzdwkVar3 = zzaaVar2.zzs;
                        zzdwaVar4 = zzaaVar2.zzk;
                        zzf.zzc(zzdwkVar3, zzdwaVar4, new ObfuscatedString(new long[]{4880734083992648400L, 7258718268402311481L}).toString(), new Pair(new ObfuscatedString(new long[]{7005797190142793242L, 363796508123772590L, 967669603523550563L}).toString(), new ObfuscatedString(new long[]{-4336694078053040060L, 8078450727671849240L, 4333855770582962954L}).toString()));
                        zzfmo zzfmoVar2 = this.zzd;
                        zzfmoVar2.zzc(new ObfuscatedString(new long[]{-6992085036607241658L, 6604654587649355013L, -6867861397009074205L}).toString());
                        zzfmoVar2.zzf(false);
                        if (((Boolean) zzbht.zze.zze()).booleanValue() && zzs != null) {
                            zzs.zza(this.zzd);
                            zzs.zzg();
                            return;
                        }
                        return;
                    }
                    zzaa zzaaVar3 = this.zzf;
                    String str7 = zzamVar.zzb;
                    zzdwaVar2 = zzaaVar3.zzk;
                    zzaa.zzK(zzaaVar3, optString, str7, zzdwaVar2);
                    Bundle bundle = zzamVar.zzc;
                    zzaa zzaaVar4 = this.zzf;
                    z = zzaaVar4.zzx;
                    if (z && bundle != null) {
                        str5 = zzaaVar4.zzz;
                        if (bundle.getInt(str5, -1) == -1) {
                            zzaa zzaaVar5 = this.zzf;
                            str6 = zzaaVar5.zzz;
                            atomicInteger = zzaaVar5.zzA;
                            bundle.putInt(str6, atomicInteger.get());
                        }
                    }
                    zzaa zzaaVar6 = this.zzf;
                    z2 = zzaaVar6.zzw;
                    if (z2 && bundle != null) {
                        str = zzaaVar6.zzy;
                        if (TextUtils.isEmpty(bundle.getString(str))) {
                            str2 = this.zzf.zzC;
                            if (TextUtils.isEmpty(str2)) {
                                zzaa zzaaVar7 = this.zzf;
                                com.google.android.gms.ads.internal.util.zzt zzp = com.google.android.gms.ads.internal.zzt.zzp();
                                zzaa zzaaVar8 = this.zzf;
                                context = zzaaVar8.zzg;
                                zzceiVar = zzaaVar8.zzB;
                                zzaaVar7.zzC = zzp.zzc(context, zzceiVar.zza);
                            }
                            zzaa zzaaVar9 = this.zzf;
                            str3 = zzaaVar9.zzy;
                            str4 = zzaaVar9.zzC;
                            bundle.putString(str3, str4);
                        }
                    }
                    this.zzc.zzc(zzamVar.zza, zzamVar.zzb, bundle);
                    zzaa zzaaVar10 = this.zzf;
                    zzdwkVar2 = zzaaVar10.zzs;
                    zzdwaVar3 = zzaaVar10.zzk;
                    String obfuscatedString2 = new ObfuscatedString(new long[]{-2155805032164476724L, 4590550662062945302L}).toString();
                    Pair pair = new Pair(new ObfuscatedString(new long[]{8324943156650476850L, -4864240503839459080L}).toString(), String.valueOf(currentTimeMillis));
                    String obfuscatedString3 = new ObfuscatedString(new long[]{4084453800530996862L, 3743946975062150621L}).toString();
                    String obfuscatedString4 = new ObfuscatedString(new long[]{1112784491116341953L, -1792466875520903429L}).toString();
                    if (((Boolean) zzba.zzc().zza(zzbgc.zzju)).booleanValue()) {
                        try {
                            if (jSONObject.getJSONObject(new ObfuscatedString(new long[]{8008562187683117445L, 5997189581081525675L}).toString()).getBoolean(new ObfuscatedString(new long[]{-3838252114820271599L, 5798370061628640068L, -2122151226604351406L}).toString())) {
                                obfuscatedString = new ObfuscatedString(new long[]{-6141103193286452606L, -6325302018186902687L});
                            } else {
                                obfuscatedString = new ObfuscatedString(new long[]{7495097756337769209L, 6872132393430158543L});
                            }
                            obfuscatedString4 = obfuscatedString.toString();
                        } catch (JSONException e2) {
                            zzcec.zzh(new ObfuscatedString(new long[]{-5196959251427526234L, -5804806557024485127L, -3505234612416384910L, 5170946385070006818L, -2127860081097392423L, 1084268607259877203L, 7505069019649492048L, 8819859846395268186L}).toString(), e2);
                        }
                    }
                    Pair pair2 = new Pair(obfuscatedString3, obfuscatedString4);
                    Pair[] pairArr = new Pair[2];
                    try {
                        pairArr[0] = pair;
                        pairArr[1] = pair2;
                        zzf.zzc(zzdwkVar2, zzdwaVar3, obfuscatedString2, pairArr);
                        this.zzd.zzf(true);
                        if (((Boolean) zzbht.zze.zze()).booleanValue() && zzs != null) {
                            zzs.zza(this.zzd);
                            zzs.zzg();
                        }
                    } catch (RemoteException e3) {
                        remoteException = e3;
                        zzfmo zzfmoVar3 = this.zzd;
                        zzfmoVar3.zzg(remoteException);
                        zzfmoVar3.zzf(false);
                        zzcec.zzh(new ObfuscatedString(new long[]{9134644026061534348L}).toString(), remoteException);
                        com.google.android.gms.ads.internal.zzt.zzo().zzw(remoteException, new ObfuscatedString(new long[]{-2382463660415936657L, 1109937443824337480L, 8876294545221672287L, -1756190872311488152L, 1585208346550911586L, 3270763420745356478L, 8830542866159613844L}).toString());
                        if (((Boolean) zzbht.zze.zze()).booleanValue() && zzs != null) {
                            zzs.zza(this.zzd);
                            zzs.zzg();
                        }
                    }
                } catch (JSONException e4) {
                    zzcec.zzj(new ObfuscatedString(new long[]{-8918395474545294246L, -4349471718388520022L, -2150873901240420520L, -3185761200833762620L, -1069206043549731114L, -6239397958697559901L, -4775140405004666823L, 6918155117741554468L}).toString());
                    this.zzc.zzb(new ObfuscatedString(new long[]{6701173894753809828L, -7767323525961139341L, -3557503818940807424L, -4361625364806151188L, -6057839078475292248L, -1055119731181968827L}).toString() + e4.toString());
                    zzaa zzaaVar11 = this.zzf;
                    zzdwkVar = zzaaVar11.zzs;
                    zzdwaVar = zzaaVar11.zzk;
                    zzf.zzc(zzdwkVar, zzdwaVar, new ObfuscatedString(new long[]{8508918045131455719L, 6034494996278289571L}).toString(), new Pair(new ObfuscatedString(new long[]{-1050264453514482815L, -3685311871211141430L, 2370867875634716747L}).toString(), new ObfuscatedString(new long[]{3268159178521159927L, 2072495687775322985L, 9082552059074847753L}).toString()));
                    zzfmo zzfmoVar4 = this.zzd;
                    zzfmoVar4.zzg(e4);
                    zzfmoVar4.zzf(false);
                    com.google.android.gms.ads.internal.zzt.zzo().zzw(e4, new ObfuscatedString(new long[]{3078013262091486029L, 8007357611210375582L, -4591740341547477021L, -930149194994105352L, -2551648679684908813L, 6600287020120821735L, -7679972712660071336L}).toString());
                    if (((Boolean) zzbht.zze.zze()).booleanValue() && zzs != null) {
                        zzs.zza(this.zzd);
                        zzs.zzg();
                    }
                }
            } catch (RemoteException e5) {
                remoteException = e5;
            }
        } finally {
        }
    }
}
