package com.google.android.gms.ads.nonagon.signalgeneration;

import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzcep;
import com.google.android.gms.internal.ads.zzdwa;
import com.google.android.gms.internal.ads.zzdwk;
import com.panda912.muddy.ObfuscatedString;
import j$.util.DesugarCollections;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayDeque;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzc {
    private final zzdwk zzh;
    private Map zzi;
    private final ArrayDeque zzf = new ArrayDeque();
    private final ArrayDeque zzg = new ArrayDeque();
    private final int zza = ((Integer) zzba.zzc().zza(zzbgc.zzgY)).intValue();
    private final long zzb = ((Long) zzba.zzc().zza(zzbgc.zzgZ)).longValue();
    private final boolean zzc = ((Boolean) zzba.zzc().zza(zzbgc.zzhe)).booleanValue();
    private final boolean zzd = ((Boolean) zzba.zzc().zza(zzbgc.zzhc)).booleanValue();
    private final Map zze = DesugarCollections.synchronizedMap(new zzb(this));

    public zzc(zzdwk zzdwkVar) {
        this.zzh = zzdwkVar;
    }

    private final synchronized void zzg(final zzdwa zzdwaVar) {
        if (!this.zzc) {
            return;
        }
        ArrayDeque arrayDeque = this.zzg;
        final ArrayDeque clone = arrayDeque.clone();
        arrayDeque.clear();
        ArrayDeque arrayDeque2 = this.zzf;
        final ArrayDeque clone2 = arrayDeque2.clone();
        arrayDeque2.clear();
        zzcep.zza.execute(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zza
            @Override // java.lang.Runnable
            public final void run() {
                zzc.this.zze(zzdwaVar, clone, clone2);
            }
        });
    }

    private final void zzh(zzdwa zzdwaVar, ArrayDeque arrayDeque, String str) {
        Pair pair;
        while (!arrayDeque.isEmpty()) {
            Pair pair2 = (Pair) arrayDeque.poll();
            ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(zzdwaVar.zza());
            this.zzi = concurrentHashMap;
            concurrentHashMap.put(new ObfuscatedString(new long[]{1783745937326399786L, 8132725331023094454L}).toString(), new ObfuscatedString(new long[]{-4171519494318717009L, 6010316845643032481L}).toString());
            this.zzi.put(new ObfuscatedString(new long[]{-6826612692118082957L, 4887648508325732349L}).toString(), str);
            this.zzi.put(new ObfuscatedString(new long[]{4562083324803110884L, 6531555430153575572L}).toString(), (String) pair2.first);
            if (this.zzd) {
                try {
                    JSONObject jSONObject = new JSONObject((String) pair2.second);
                    pair = new Pair(zzf.zza(jSONObject.getJSONObject(new ObfuscatedString(new long[]{-6762086472569825137L, 8975629812931825944L}).toString()).getString(new ObfuscatedString(new long[]{6060407695145660136L, -2634880563068811421L, -5565487718079293884L}).toString())), jSONObject.getString(new ObfuscatedString(new long[]{-4908442375213111957L, 2029755389333266951L, -1628148897178654001L}).toString()));
                } catch (JSONException unused) {
                    pair = new Pair(new ObfuscatedString(new long[]{-4748943860950551634L}).toString(), new ObfuscatedString(new long[]{7878257145646187657L}).toString());
                }
                zzj(this.zzi, new ObfuscatedString(new long[]{-1574020044181455771L, 5871015593617303194L}).toString(), (String) pair.first);
                zzj(this.zzi, new ObfuscatedString(new long[]{2750363926226392137L, 5648796663454122733L}).toString(), (String) pair.second);
            }
            this.zzh.zzf(this.zzi);
        }
    }

    private final synchronized void zzi() {
        long currentTimeMillis = com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis();
        try {
            Iterator it = this.zze.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                if (currentTimeMillis - ((Long) ((Pair) entry.getValue()).first).longValue() <= this.zzb) {
                    break;
                }
                this.zzg.add(new Pair((String) entry.getKey(), (String) ((Pair) entry.getValue()).second));
                it.remove();
            }
        } catch (ConcurrentModificationException e) {
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{8725053231394146528L, 5367656790477854467L, -2240895872046215141L, -3808487051910460272L, -3584023296875342037L, 1358181198215152963L}).toString());
        }
    }

    private static final void zzj(Map map, String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            map.put(str, str2);
        }
    }

    @Nullable
    public final synchronized String zzb(String str, zzdwa zzdwaVar) {
        Pair pair = (Pair) this.zze.get(str);
        zzdwaVar.zza().put(new ObfuscatedString(new long[]{3641954929110857082L, 7242810969681824350L}).toString(), str);
        if (pair != null) {
            String str2 = (String) pair.second;
            this.zze.remove(str);
            zzdwaVar.zza().put(new ObfuscatedString(new long[]{-2436098269606810477L, -2635040727111604367L}).toString(), new ObfuscatedString(new long[]{-5081965673078067868L, -3382239687578513853L}).toString());
            return str2;
        }
        zzdwaVar.zza().put(new ObfuscatedString(new long[]{-9073753904289423161L, 851286955233477847L}).toString(), new ObfuscatedString(new long[]{4392637484576749212L, 6948009529038508210L}).toString());
        return null;
    }

    public final synchronized void zzd(String str, String str2, zzdwa zzdwaVar) {
        this.zze.put(str, new Pair(Long.valueOf(com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis()), str2));
        zzi();
        zzg(zzdwaVar);
    }

    public final /* synthetic */ void zze(zzdwa zzdwaVar, ArrayDeque arrayDeque, ArrayDeque arrayDeque2) {
        zzh(zzdwaVar, arrayDeque, new ObfuscatedString(new long[]{7457877787203812532L, -3869215300786465669L}).toString());
        zzh(zzdwaVar, arrayDeque2, new ObfuscatedString(new long[]{9148831543344858781L, -91346167871738865L}).toString());
    }

    public final synchronized void zzf(String str) {
        this.zze.remove(str);
    }
}
