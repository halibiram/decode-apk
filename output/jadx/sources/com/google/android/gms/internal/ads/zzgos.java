package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzgos {
    private final Map zza;
    private final Map zzb;

    private zzgos() {
        this.zza = new HashMap();
        this.zzb = new HashMap();
    }

    public final zzgos zza(zzgoq zzgoqVar) {
        if (zzgoqVar != null) {
            zzgou zzgouVar = new zzgou(zzgoqVar.zzc(), zzgoqVar.zzd(), null);
            if (this.zza.containsKey(zzgouVar)) {
                zzgoq zzgoqVar2 = (zzgoq) this.zza.get(zzgouVar);
                if (!zzgoqVar2.equals(zzgoqVar) || !zzgoqVar.equals(zzgoqVar2)) {
                    throw new GeneralSecurityException(new ObfuscatedString(new long[]{-8538238207660916161L, 316590064898777615L, 3828475638974058250L, -5120878974847362747L, -1268469879658147620L, 5602562055646597871L, 1357312533650434614L, 2661206940466007311L, 6419370105893772791L, -4282038760950962622L, -425321110056736976L, -8841414602118851859L, -4501322638990939272L}).toString().concat(zzgouVar.toString()));
                }
            } else {
                this.zza.put(zzgouVar, zzgoqVar);
            }
            return this;
        }
        throw new NullPointerException(new ObfuscatedString(new long[]{5382987909166654512L, -778117487866879533L, -400958268249701245L, 4017124261295808178L, 425341997077113195L, -3795207335850879078L}).toString());
    }

    public final zzgos zzb(zzggy zzggyVar) {
        Map map = this.zzb;
        Class zzb = zzggyVar.zzb();
        if (map.containsKey(zzb)) {
            zzggy zzggyVar2 = (zzggy) this.zzb.get(zzb);
            if (!zzggyVar2.equals(zzggyVar) || !zzggyVar.equals(zzggyVar2)) {
                throw new GeneralSecurityException(new ObfuscatedString(new long[]{917658340220611455L, 8345412699338874751L, 5746873922291872250L, -36291027191746362L, 5553347648353211570L, 7478135501247613727L, -3558303226825800688L, 998447750702750120L, 7603287948316475969L, 2917589895990239840L, -2867158402781282395L, 4524335536174325276L, 1866276823502046957L, -2191788631881411477L, 47118848489330663L}).toString().concat(zzb.toString()));
            }
        } else {
            this.zzb.put(zzb, zzggyVar);
        }
        return this;
    }

    public /* synthetic */ zzgos(zzgor zzgorVar) {
        this.zza = new HashMap();
        this.zzb = new HashMap();
    }

    public /* synthetic */ zzgos(zzgow zzgowVar, zzgor zzgorVar) {
        this.zza = new HashMap(zzgow.zzd(zzgowVar));
        this.zzb = new HashMap(zzgow.zze(zzgowVar));
    }
}
