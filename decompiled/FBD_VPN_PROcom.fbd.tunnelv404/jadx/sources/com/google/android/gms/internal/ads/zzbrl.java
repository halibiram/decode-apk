package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.AbstractMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzbrl implements zzbqc, zzbrk {
    private final zzbrk zza;
    private final HashSet zzb = new HashSet();

    public zzbrl(zzbrk zzbrkVar) {
        this.zza = zzbrkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbqc, com.google.android.gms.internal.ads.zzbqn
    public final void zza(String str) {
        this.zza.zza(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbqc, com.google.android.gms.internal.ads.zzbqn
    public final /* synthetic */ void zzb(String str, String str2) {
        zzbqb.zzc(this, str, str2);
    }

    public final void zzc() {
        Iterator it = this.zzb.iterator();
        while (it.hasNext()) {
            AbstractMap.SimpleEntry simpleEntry = (AbstractMap.SimpleEntry) it.next();
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{3014861920448163433L, 4688199258172269139L, 6416067357707454596L, -6750624741642777798L, 719166180563513452L}).toString().concat(String.valueOf(((zzbng) simpleEntry.getValue()).toString())));
            this.zza.zzr((String) simpleEntry.getKey(), (zzbng) simpleEntry.getValue());
        }
        this.zzb.clear();
    }

    @Override // com.google.android.gms.internal.ads.zzbqa
    public final /* synthetic */ void zzd(String str, Map map) {
        zzbqb.zza(this, str, map);
    }

    @Override // com.google.android.gms.internal.ads.zzbqc, com.google.android.gms.internal.ads.zzbqa
    public final /* synthetic */ void zze(String str, JSONObject jSONObject) {
        zzbqb.zzb(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzbqn
    public final /* synthetic */ void zzl(String str, JSONObject jSONObject) {
        zzbqb.zzd(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzbrk
    public final void zzq(String str, zzbng zzbngVar) {
        this.zza.zzq(str, zzbngVar);
        this.zzb.add(new AbstractMap.SimpleEntry(str, zzbngVar));
    }

    @Override // com.google.android.gms.internal.ads.zzbrk
    public final void zzr(String str, zzbng zzbngVar) {
        this.zza.zzr(str, zzbngVar);
        this.zzb.remove(new AbstractMap.SimpleEntry(str, zzbngVar));
    }
}
