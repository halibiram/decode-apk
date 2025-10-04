package com.google.android.gms.internal.ads;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;

/* loaded from: classes2.dex */
public final class zzeis {
    private final String zzc;
    private zzfgp zzd = null;
    private zzfgm zze = null;
    private com.google.android.gms.ads.internal.client.zzu zzf = null;
    private final Map zzb = DesugarCollections.synchronizedMap(new HashMap());
    private final List zza = DesugarCollections.synchronizedList(new ArrayList());

    public zzeis(String str) {
        this.zzc = str;
    }

    private static String zzj(zzfgm zzfgmVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzds)).booleanValue()) {
            return zzfgmVar.zzaq;
        }
        return zzfgmVar.zzx;
    }

    private final synchronized void zzk(zzfgm zzfgmVar, int i) {
        String obfuscatedString;
        String str;
        String str2;
        String str3;
        Map map = this.zzb;
        String zzj = zzj(zzfgmVar);
        if (map.containsKey(zzj)) {
            return;
        }
        Bundle bundle = new Bundle();
        Iterator<String> keys = zzfgmVar.zzw.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            try {
                bundle.putString(next, zzfgmVar.zzw.getString(next));
            } catch (JSONException unused) {
            }
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzgO)).booleanValue()) {
            String str4 = zzfgmVar.zzG;
            str = str4;
            str2 = zzfgmVar.zzH;
            str3 = zzfgmVar.zzI;
            obfuscatedString = zzfgmVar.zzJ;
        } else {
            String obfuscatedString2 = new ObfuscatedString(new long[]{-3369447999060111400L}).toString();
            String obfuscatedString3 = new ObfuscatedString(new long[]{5633188268895052345L}).toString();
            String obfuscatedString4 = new ObfuscatedString(new long[]{-4904726011713553002L}).toString();
            obfuscatedString = new ObfuscatedString(new long[]{6254891358049671927L}).toString();
            str = obfuscatedString2;
            str2 = obfuscatedString3;
            str3 = obfuscatedString4;
        }
        com.google.android.gms.ads.internal.client.zzu zzuVar = new com.google.android.gms.ads.internal.client.zzu(zzfgmVar.zzF, 0L, null, bundle, str, str2, str3, obfuscatedString);
        try {
            this.zza.add(i, zzuVar);
        } catch (IndexOutOfBoundsException e) {
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{-1592973459351078432L, 8029982362705383459L, 9027693359797238465L, 7554314005109058930L, 448759555483182119L, -3866412727886988846L, -6842609160611293782L, -442330469671190868L, -3342451923692967655L, -9146703159648618986L}).toString());
        }
        this.zzb.put(zzj, zzuVar);
    }

    private final void zzl(zzfgm zzfgmVar, long j, @Nullable com.google.android.gms.ads.internal.client.zze zzeVar, boolean z) {
        Map map = this.zzb;
        String zzj = zzj(zzfgmVar);
        if (map.containsKey(zzj)) {
            if (this.zze == null) {
                this.zze = zzfgmVar;
            }
            com.google.android.gms.ads.internal.client.zzu zzuVar = (com.google.android.gms.ads.internal.client.zzu) this.zzb.get(zzj);
            zzuVar.zzb = j;
            zzuVar.zzc = zzeVar;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzgP)).booleanValue() && z) {
                this.zzf = zzuVar;
            }
        }
    }

    @Nullable
    public final com.google.android.gms.ads.internal.client.zzu zza() {
        return this.zzf;
    }

    public final zzdaq zzb() {
        return new zzdaq(this.zze, new ObfuscatedString(new long[]{8262514309773204969L}).toString(), this, this.zzd, this.zzc);
    }

    public final List zzc() {
        return this.zza;
    }

    public final void zzd(zzfgm zzfgmVar) {
        zzk(zzfgmVar, this.zza.size());
    }

    public final void zze(zzfgm zzfgmVar) {
        int indexOf = this.zza.indexOf(this.zzb.get(zzj(zzfgmVar)));
        if (indexOf < 0 || indexOf >= this.zzb.size()) {
            indexOf = this.zza.indexOf(this.zzf);
        }
        if (indexOf >= 0 && indexOf < this.zzb.size()) {
            this.zzf = (com.google.android.gms.ads.internal.client.zzu) this.zza.get(indexOf);
            while (true) {
                indexOf++;
                if (indexOf < this.zza.size()) {
                    com.google.android.gms.ads.internal.client.zzu zzuVar = (com.google.android.gms.ads.internal.client.zzu) this.zza.get(indexOf);
                    zzuVar.zzb = 0L;
                    zzuVar.zzc = null;
                } else {
                    return;
                }
            }
        }
    }

    public final void zzf(zzfgm zzfgmVar, long j, @Nullable com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzl(zzfgmVar, j, zzeVar, false);
    }

    public final void zzg(zzfgm zzfgmVar, long j, @Nullable com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzl(zzfgmVar, j, null, true);
    }

    public final synchronized void zzh(String str, List list) {
        if (this.zzb.containsKey(str)) {
            int indexOf = this.zza.indexOf((com.google.android.gms.ads.internal.client.zzu) this.zzb.get(str));
            try {
                this.zza.remove(indexOf);
            } catch (IndexOutOfBoundsException e) {
                com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{-6772466632131362535L, 4726989732364719666L, 6784023132199923099L, 2864170509977888340L, -6547770694559188773L, 3669243276901147415L, -5369024717162659793L, 8758821092680345997L, 5458930407706435187L}).toString());
            }
            this.zzb.remove(str);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                zzk((zzfgm) it.next(), indexOf);
                indexOf++;
            }
        }
    }

    public final void zzi(zzfgp zzfgpVar) {
        this.zzd = zzfgpVar;
    }
}
