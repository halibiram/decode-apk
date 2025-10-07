package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import androidx.annotation.VisibleForTesting;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.panda912.muddy.ObfuscatedString;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzdua {
    private final zzfid zza;
    private final zzdtx zzb;

    public zzdua(zzfid zzfidVar, zzdtx zzdtxVar) {
        this.zza = zzfidVar;
        this.zzb = zzdtxVar;
    }

    @VisibleForTesting
    public final zzbsv zza() {
        zzbsv zzb = this.zza.zzb();
        if (zzb != null) {
            return zzb;
        }
        zzcec.zzj(new ObfuscatedString(new long[]{4482953162225726921L, 6974583599150884200L, 861117779311684528L, 7774756258751607474L, -8063602410533053880L, -6099552503974847316L}).toString());
        throw new RemoteException();
    }

    public final zzbus zzb(String str) {
        zzbus zzc = zza().zzc(str);
        this.zzb.zze(str, zzc);
        return zzc;
    }

    public final zzfif zzc(String str, JSONObject jSONObject) {
        zzbsy zzb;
        try {
            if (new ObfuscatedString(new long[]{-1518124736963452954L, 8805390685692397335L, 8465608619615290958L, -8781519275305953167L, -4121803967181370140L, 782054210339192273L, -6188475337162085034L}).toString().equals(str)) {
                zzb = new zzbtv(new AdMobAdapter());
            } else if (new ObfuscatedString(new long[]{287854453530183467L, 2223075817872288877L, 3747716146904479358L, 8246577877171520260L, -4581715416415558060L, 9052272278588009812L, -8483848767106325869L, -7986104712612508813L}).toString().equals(str)) {
                zzb = new zzbtv(new zzbvk());
            } else {
                zzbsv zza = zza();
                if (new ObfuscatedString(new long[]{-9121445869460902423L, 8062179800647697807L, -5226945232671255892L, -3503860635297446812L, -3323157655200735988L, 5275897362830234597L, 2091292431633177481L, -1651994964235011277L, 1393897822367226530L, -4003232147480394557L}).toString().equals(str) || new ObfuscatedString(new long[]{-8637877112233169844L, 216735708099368487L, -5946080560105581679L, 7735099865090620025L, -297862076544713309L, -8083137150743961075L, 5792425750895297701L, 5049195219383714351L}).toString().equals(str)) {
                    try {
                        String string = jSONObject.getString(new ObfuscatedString(new long[]{-7578881083840720569L, 509726949704109670L, 3687531701558594085L}).toString());
                        if (zza.zze(string)) {
                            zzb = zza.zzb(new ObfuscatedString(new long[]{-5469122293112001274L, -4258860916141840923L, 3321397460003538245L, -3784185216327229545L, 8907701574747910022L, 8987222095718927780L, 5635624043345863435L, -6370533675075530241L, 1672852463513534080L, 2817090074100541511L}).toString());
                        } else if (zza.zzd(string)) {
                            zzb = zza.zzb(string);
                        } else {
                            zzb = zza.zzb(new ObfuscatedString(new long[]{-90482409175752200L, -5058741680991681002L, 3120090770554438226L, 8159095261981188250L, -8705190804939156992L, 6436302378796199177L, -8944316184933213515L, 124818178674983183L}).toString());
                        }
                    } catch (JSONException e) {
                        zzcec.zzh(new ObfuscatedString(new long[]{-8677832907689164951L, -6757083769214812190L, 6167638855922920124L, 4256271394263516169L}).toString(), e);
                    }
                }
                zzb = zza.zzb(str);
            }
            zzfif zzfifVar = new zzfif(zzb);
            this.zzb.zzd(str, zzfifVar);
            return zzfifVar;
        } catch (Throwable th) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjk)).booleanValue()) {
                this.zzb.zzd(str, null);
            }
            throw new zzfho(th);
        }
    }

    public final boolean zzd() {
        if (this.zza.zzb() != null) {
            return true;
        }
        return false;
    }
}
