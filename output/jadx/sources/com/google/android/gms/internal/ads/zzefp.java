package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes2.dex */
public final class zzefp implements zzfln {
    private final Map zza = new HashMap();
    private final Map zzb = new HashMap();
    private final zzflv zzc;

    public zzefp(Set set, zzflv zzflvVar) {
        zzflg zzflgVar;
        String str;
        zzflg zzflgVar2;
        String str2;
        this.zzc = zzflvVar;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            zzefo zzefoVar = (zzefo) it.next();
            Map map = this.zza;
            zzflgVar = zzefoVar.zzb;
            str = zzefoVar.zza;
            map.put(zzflgVar, str);
            Map map2 = this.zzb;
            zzflgVar2 = zzefoVar.zzc;
            str2 = zzefoVar.zza;
            map2.put(zzflgVar2, str2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfln
    public final void zzbL(zzflg zzflgVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzfln
    public final void zzbM(zzflg zzflgVar, String str, Throwable th) {
        this.zzc.zze(new ObfuscatedString(new long[]{-8696457114701597336L, 7755549054456505373L}).toString().concat(String.valueOf(str)), new ObfuscatedString(new long[]{6875352220386785990L, -4381999599490368598L}).toString());
        if (this.zzb.containsKey(zzflgVar)) {
            this.zzc.zze(new ObfuscatedString(new long[]{5769473594579696236L, -2832119297442848717L}).toString().concat(String.valueOf((String) this.zzb.get(zzflgVar))), new ObfuscatedString(new long[]{1943172317058855427L, 5006170794177708875L}).toString());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfln
    public final void zzbN(zzflg zzflgVar, String str) {
        this.zzc.zzd(new ObfuscatedString(new long[]{-1394522544784716251L, -3465018315750124014L}).toString().concat(String.valueOf(str)));
        if (this.zza.containsKey(zzflgVar)) {
            this.zzc.zzd(new ObfuscatedString(new long[]{-2199753039968567215L, -2518325097749348596L}).toString().concat(String.valueOf((String) this.zza.get(zzflgVar))));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfln
    public final void zzd(zzflg zzflgVar, String str) {
        this.zzc.zze(new ObfuscatedString(new long[]{7856704010211987876L, -4353640066461984274L}).toString().concat(String.valueOf(str)), new ObfuscatedString(new long[]{2281753608436970397L, -3846673801136766532L}).toString());
        if (this.zzb.containsKey(zzflgVar)) {
            this.zzc.zze(new ObfuscatedString(new long[]{-8262555052073089147L, -6972584166555680360L}).toString().concat(String.valueOf((String) this.zzb.get(zzflgVar))), new ObfuscatedString(new long[]{-2777156204299171792L, -4434006690068097026L}).toString());
        }
    }
}
