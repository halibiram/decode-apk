package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzflv {
    private final HashMap zza;
    private final zzfmb zzb;

    private zzflv() {
        HashMap hashMap = new HashMap();
        this.zza = hashMap;
        this.zzb = new zzfmb(com.google.android.gms.ads.internal.zzt.zzB());
        hashMap.put(new ObfuscatedString(new long[]{-2654289829534086153L, -9177420124435320105L}).toString(), new ObfuscatedString(new long[]{-1046515423081276986L, 7714943130135791364L}).toString());
    }

    public static zzflv zzb(String str) {
        zzflv zzflvVar = new zzflv();
        zzflvVar.zza.put(new ObfuscatedString(new long[]{1401336026489124232L, -6800820033086345691L}).toString(), str);
        return zzflvVar;
    }

    public static zzflv zzc(String str) {
        zzflv zzflvVar = new zzflv();
        zzflvVar.zza.put(new ObfuscatedString(new long[]{-5446399526941002309L, 957643079422282293L, 677523245951480779L}).toString(), str);
        return zzflvVar;
    }

    public final zzflv zza(@NonNull String str, @NonNull String str2) {
        this.zza.put(str, str2);
        return this;
    }

    public final zzflv zzd(@NonNull String str) {
        this.zzb.zzb(str);
        return this;
    }

    public final zzflv zze(@NonNull String str, @NonNull String str2) {
        this.zzb.zzc(str, str2);
        return this;
    }

    public final zzflv zzf(zzfgm zzfgmVar) {
        this.zza.put(new ObfuscatedString(new long[]{4778353658016578427L, 2852179130547108914L}).toString(), zzfgmVar.zzx);
        return this;
    }

    public final zzflv zzg(zzfgp zzfgpVar) {
        if (!TextUtils.isEmpty(zzfgpVar.zzb)) {
            this.zza.put(new ObfuscatedString(new long[]{7568938358875500134L, -6371947575517650767L}).toString(), zzfgpVar.zzb);
        }
        return this;
    }

    public final zzflv zzh(zzfgy zzfgyVar, @Nullable zzcdp zzcdpVar) {
        String obfuscatedString;
        zzfgx zzfgxVar = zzfgyVar.zzb;
        zzg(zzfgxVar.zzb);
        if (!zzfgxVar.zza.isEmpty()) {
            switch (((zzfgm) zzfgxVar.zza.get(0)).zzb) {
                case 1:
                    this.zza.put(new ObfuscatedString(new long[]{-2011906781040082485L, -7271319629828829924L, -8877281385610875678L}).toString(), new ObfuscatedString(new long[]{4935084639399193137L, 8534471624836702603L}).toString());
                    break;
                case 2:
                    this.zza.put(new ObfuscatedString(new long[]{926409703367528372L, 4665385744621724261L, 3217610552350389781L}).toString(), new ObfuscatedString(new long[]{-6141519194765485959L, 2938626190793286085L, 1393510576373548640L}).toString());
                    break;
                case 3:
                    this.zza.put(new ObfuscatedString(new long[]{4047945741886087402L, 2713728267939651248L, 4005972039504233553L}).toString(), new ObfuscatedString(new long[]{2909735411566113210L, -4669592450540244999L, -348280810383527372L}).toString());
                    break;
                case 4:
                    this.zza.put(new ObfuscatedString(new long[]{4533940417095310900L, 677809835569468191L, -7421057673816458023L}).toString(), new ObfuscatedString(new long[]{5035889332657153049L, -5023905339713908846L, 821846335048353515L}).toString());
                    break;
                case 5:
                    this.zza.put(new ObfuscatedString(new long[]{982919217831747560L, 3832685696310191098L, 5580302445158009733L}).toString(), new ObfuscatedString(new long[]{-7633755897926132202L, -5857406850046567636L}).toString());
                    break;
                case 6:
                    this.zza.put(new ObfuscatedString(new long[]{647821715613977638L, 4766956194765926425L, -5046073511912136499L}).toString(), new ObfuscatedString(new long[]{-7830176446280796213L, -362002927806431358L, -5635755717513706293L}).toString());
                    if (zzcdpVar != null) {
                        HashMap hashMap = this.zza;
                        if (true != zzcdpVar.zzm()) {
                            obfuscatedString = new ObfuscatedString(new long[]{4373694278683755084L, -6237896384439720778L}).toString();
                        } else {
                            obfuscatedString = new ObfuscatedString(new long[]{-7453106663208854227L, 4162112780754975441L}).toString();
                        }
                        hashMap.put(new ObfuscatedString(new long[]{7470815545095918531L, -3072821602935759941L}).toString(), obfuscatedString);
                        break;
                    }
                    break;
                default:
                    this.zza.put(new ObfuscatedString(new long[]{6353986994392396787L, 2658693802292951342L, 2917270992609397800L}).toString(), new ObfuscatedString(new long[]{6195971506343579559L, -3684541407133729331L}).toString());
                    break;
            }
        }
        return this;
    }

    public final zzflv zzi(Bundle bundle) {
        if (bundle.containsKey(new ObfuscatedString(new long[]{1597142294987076957L, -3082119948138563282L}).toString())) {
            this.zza.put(new ObfuscatedString(new long[]{-5613532149656741890L, 4551742026527471719L, -7736730220552785799L}).toString(), Integer.toString(bundle.getInt(new ObfuscatedString(new long[]{1058379667366175960L, -7798937210719837298L}).toString())));
        }
        if (bundle.containsKey(new ObfuscatedString(new long[]{-4440526886001486226L, -618575794898108106L}).toString())) {
            this.zza.put(new ObfuscatedString(new long[]{-1928376595066176480L, 3106543969295743519L, -8864646660517005142L}).toString(), Integer.toString(bundle.getInt(new ObfuscatedString(new long[]{-5192639274442293770L, 5765835901182381439L}).toString())));
        }
        return this;
    }

    public final Map zzj() {
        HashMap hashMap = new HashMap(this.zza);
        for (zzfma zzfmaVar : this.zzb.zza()) {
            hashMap.put(zzfmaVar.zza, zzfmaVar.zzb);
        }
        return hashMap;
    }
}
