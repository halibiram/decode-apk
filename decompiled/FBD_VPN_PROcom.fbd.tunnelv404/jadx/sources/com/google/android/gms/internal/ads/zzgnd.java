package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import j$.util.concurrent.ConcurrentHashMap;
import java.security.GeneralSecurityException;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public final class zzgnd {
    private static final Logger zza = Logger.getLogger(zzgnd.class.getName());
    private static final zzgnd zzb = new zzgnd();
    private final ConcurrentMap zzc = new ConcurrentHashMap();
    private final ConcurrentMap zzd = new ConcurrentHashMap();

    public static zzgnd zzc() {
        return zzb;
    }

    private final synchronized zzgnc zzg(String str) {
        if (this.zzc.containsKey(str)) {
        } else {
            throw new GeneralSecurityException(new ObfuscatedString(new long[]{6032077295089183130L, -6479002682240176529L, -1170373559652156367L, -4828949842192822727L, 8496801652580574043L, -695088295588995796L}).toString().concat(String.valueOf(str)));
        }
        return (zzgnc) this.zzc.get(str);
    }

    private final synchronized void zzh(zzgnc zzgncVar, boolean z, boolean z2) {
        try {
            String str = ((zzgnm) zzgncVar.zza).zza;
            if (this.zzd.containsKey(str) && !((Boolean) this.zzd.get(str)).booleanValue()) {
                throw new GeneralSecurityException(new ObfuscatedString(new long[]{-1361861345893326669L, -2592106573313977792L, 5097335338755598351L, 6547761246740193740L, 749898686107078114L, 2715661786327199617L, -7989546270449575270L}).toString().concat(str));
            }
            zzgnc zzgncVar2 = (zzgnc) this.zzc.get(str);
            if (zzgncVar2 != null && !zzgncVar2.zza().equals(zzgncVar.zza())) {
                zza.logp(Level.WARNING, new ObfuscatedString(new long[]{-3900241604288536721L, -9058363677665580536L, -2132014665057566590L, 6529425445473473917L, 1838743566234064496L, 5994329546283599034L, 317063879976020920L, 7003296847464323135L}).toString(), new ObfuscatedString(new long[]{-4219797873776524774L, 277066918760546316L, -4458929152430936147L, -7402508800052982687L, 3606553350940835945L}).toString(), new ObfuscatedString(new long[]{4851778070771640045L, -5173988186644994695L, -2428022901231766017L, -2854385871318347204L, -1667607816918803355L, -6854017737206687845L, 7839590747598628599L, -8527724714190378211L, 8390956243780227697L}).toString().concat(str));
                throw new GeneralSecurityException(String.format(new ObfuscatedString(new long[]{-4456090547740743132L, 8053973201007039036L, 5686527453322431547L, -3326550452725299886L, 8922645868301838943L, -1589860203455976719L, 9195485741882672974L, 7957887624192114827L, 2613305350150808542L, -4717483990123760644L, 963407852084453039L}).toString(), str, zzgncVar2.zza().getName(), zzgncVar.zza().getName()));
            }
            this.zzc.putIfAbsent(str, zzgncVar);
            this.zzd.put(str, Boolean.TRUE);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final zzggd zza(String str, Class cls) {
        zzgnc zzg = zzg(str);
        if (zzg.zzb().contains(cls)) {
            if (((zzgnm) zzg.zza).zzb.equals(cls)) {
                return zzg.zza;
            }
            throw new InternalError(new ObfuscatedString(new long[]{-1806457010836541416L, 2081586721206000241L, 3953477507680215904L, -606310309638832899L, -8231245797182958245L, 7629283432748706074L, 5050955995880009519L, -5881360855091287690L, 3408745863346257093L, -7486252495708796242L, -6733379797817491593L}).toString());
        }
        String name = cls.getName();
        String valueOf = String.valueOf(zzg.zza());
        Set<Class> zzb2 = zzg.zzb();
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (Class cls2 : zzb2) {
            if (!z) {
                sb.append(new ObfuscatedString(new long[]{6696007830908898664L, 5225334781855570459L}).toString());
            }
            sb.append(cls2.getCanonicalName());
            z = false;
        }
        String sb2 = sb.toString();
        StringBuilder sb3 = new StringBuilder();
        sb3.append(new ObfuscatedString(new long[]{450262337382304809L, 3964603110456656089L, -8315746407239490417L}).toString());
        sb3.append(name);
        sb3.append(new ObfuscatedString(new long[]{8022243084640025004L, 8575867318546774965L, 5412899629983159301L, -5741170056382112475L, 5776613291446194528L, -316960643354334923L}).toString());
        sb3.append(valueOf);
        throw new GeneralSecurityException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-7831768719898067114L, 8350219796824746883L, -1391336130359115968L, -2332012619091987471L}), sb3, sb2));
    }

    public final zzggd zzb(String str) {
        return zzg(str).zza;
    }

    public final synchronized void zzd(zzggd zzggdVar, boolean z) {
        zzf(zzggdVar, 1, true);
    }

    public final boolean zze(String str) {
        return ((Boolean) this.zzd.get(str)).booleanValue();
    }

    public final synchronized void zzf(zzggd zzggdVar, int i, boolean z) {
        if (zzgmv.zza(i)) {
            zzh(new zzgnc(zzggdVar), false, true);
        } else {
            throw new GeneralSecurityException(new ObfuscatedString(new long[]{-2849421223923650229L, 2152750131204983554L, -6019214351215225938L, -4038320098364634221L, 8962746192201778221L, 6930575319779865434L, 5203103812331967829L, -3633867182558632290L, 4705841474163901410L}).toString());
        }
    }
}
