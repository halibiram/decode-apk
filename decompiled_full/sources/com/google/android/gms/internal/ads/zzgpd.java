package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzgpd {
    private final Map zza;
    private final Map zzb;
    private final Map zzc;
    private final Map zzd;

    public zzgpd() {
        this.zza = new HashMap();
        this.zzb = new HashMap();
        this.zzc = new HashMap();
        this.zzd = new HashMap();
    }

    public final zzgpd zza(zzgnh zzgnhVar) {
        zzgpf zzgpfVar = new zzgpf(zzgnhVar.zzd(), zzgnhVar.zzc(), null);
        if (this.zzb.containsKey(zzgpfVar)) {
            zzgnh zzgnhVar2 = (zzgnh) this.zzb.get(zzgpfVar);
            if (!zzgnhVar2.equals(zzgnhVar) || !zzgnhVar.equals(zzgnhVar2)) {
                throw new GeneralSecurityException(new ObfuscatedString(new long[]{27273272755019087L, -5725496260777647212L, 3248074947216895334L, 7011012580379922962L, -7170900505363649885L, 6435064929774195129L, -2121596932075861815L, -7426505699655721221L, -7248696481651010039L, 8754105198914894653L, 533246287283428648L}).toString().concat(zzgpfVar.toString()));
            }
        } else {
            this.zzb.put(zzgpfVar, zzgnhVar);
        }
        return this;
    }

    public final zzgpd zzb(zzgnl zzgnlVar) {
        zzgph zzgphVar = new zzgph(zzgnlVar.zzc(), zzgnlVar.zzd(), null);
        if (this.zza.containsKey(zzgphVar)) {
            zzgnl zzgnlVar2 = (zzgnl) this.zza.get(zzgphVar);
            if (!zzgnlVar2.equals(zzgnlVar) || !zzgnlVar.equals(zzgnlVar2)) {
                throw new GeneralSecurityException(new ObfuscatedString(new long[]{-5493404804775972887L, 661810654738126473L, 541050439311382324L, -5454059683658219634L, 5466949560429308145L, 9092658431766431182L, 4190749137805876115L, 8494091376998468592L, -3091281672211112799L, -2042419097684294400L, 1053366182059444102L}).toString().concat(zzgphVar.toString()));
            }
        } else {
            this.zza.put(zzgphVar, zzgnlVar);
        }
        return this;
    }

    public final zzgpd zzc(zzgoi zzgoiVar) {
        zzgpf zzgpfVar = new zzgpf(zzgoiVar.zzd(), zzgoiVar.zzc(), null);
        if (this.zzd.containsKey(zzgpfVar)) {
            zzgoi zzgoiVar2 = (zzgoi) this.zzd.get(zzgpfVar);
            if (!zzgoiVar2.equals(zzgoiVar) || !zzgoiVar.equals(zzgoiVar2)) {
                throw new GeneralSecurityException(new ObfuscatedString(new long[]{5544305996010276753L, 2003411963810242348L, 8409876557994304053L, 3638478234850639546L, -5277932985025654031L, 6719370903532046041L, -6384499746700162860L, 5996529619948630483L, -9183323022537321268L, 5452370505009177872L, 5547744052726878711L}).toString().concat(zzgpfVar.toString()));
            }
        } else {
            this.zzd.put(zzgpfVar, zzgoiVar);
        }
        return this;
    }

    public final zzgpd zzd(zzgom zzgomVar) {
        zzgph zzgphVar = new zzgph(zzgomVar.zzc(), zzgomVar.zzd(), null);
        if (this.zzc.containsKey(zzgphVar)) {
            zzgom zzgomVar2 = (zzgom) this.zzc.get(zzgphVar);
            if (!zzgomVar2.equals(zzgomVar) || !zzgomVar.equals(zzgomVar2)) {
                throw new GeneralSecurityException(new ObfuscatedString(new long[]{2742508030920922375L, -6649991677332828820L, -3402972048717365662L, -6742380429107064130L, -1902957122652504659L, -7499263117657521627L, 5520745611426025677L, 4578074708826463369L, -4025646000946875240L, 6436653211265948083L, 4211438338130721225L}).toString().concat(zzgphVar.toString()));
            }
        } else {
            this.zzc.put(zzgphVar, zzgomVar);
        }
        return this;
    }

    public zzgpd(zzgpj zzgpjVar) {
        this.zza = new HashMap(zzgpj.zzf(zzgpjVar));
        this.zzb = new HashMap(zzgpj.zze(zzgpjVar));
        this.zzc = new HashMap(zzgpj.zzh(zzgpjVar));
        this.zzd = new HashMap(zzgpj.zzg(zzgpjVar));
    }
}
