package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import j$.util.DesugarCollections;
import j$.util.concurrent.ConcurrentHashMap;
import java.security.GeneralSecurityException;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.logging.Logger;
import javax.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzghb {
    public static final /* synthetic */ int zza = 0;
    private static final Logger zzb = Logger.getLogger(zzghb.class.getName());
    private static final ConcurrentMap zzc = new ConcurrentHashMap();
    private static final Set zzd;

    static {
        HashSet hashSet = new HashSet();
        hashSet.add(zzgfs.class);
        hashSet.add(zzgfy.class);
        hashSet.add(zzghd.class);
        hashSet.add(zzgga.class);
        hashSet.add(zzgfz.class);
        hashSet.add(zzggp.class);
        hashSet.add(zzgse.class);
        hashSet.add(zzggz.class);
        hashSet.add(zzgha.class);
        zzd = DesugarCollections.unmodifiableSet(hashSet);
    }

    private zzghb() {
    }

    public static synchronized zzgut zza(zzguy zzguyVar) {
        zzgut zza2;
        synchronized (zzghb.class) {
            zzggd zzb2 = zzgnd.zzc().zzb(zzguyVar.zzh());
            if (zzgnd.zzc().zze(zzguyVar.zzh())) {
                zza2 = zzb2.zza(zzguyVar.zzg());
            } else {
                throw new GeneralSecurityException(new ObfuscatedString(new long[]{-764284476005975205L, -8030544150090922695L, -5106585397047487605L, 2290090756401970666L, -8366649446078507245L, -1125505814307378657L, -6940303972262454336L}).toString().concat(String.valueOf(zzguyVar.zzh())));
            }
        }
        return zza2;
    }

    @Nullable
    public static Class zzb(Class cls) {
        try {
            return zzgob.zza().zzb(cls);
        } catch (GeneralSecurityException unused) {
            return null;
        }
    }

    public static Object zzc(zzgut zzgutVar, Class cls) {
        return zzd(zzgutVar.zzg(), zzgutVar.zzf(), cls);
    }

    public static Object zzd(String str, zzgyl zzgylVar, Class cls) {
        return zzgnd.zzc().zza(str, cls).zzc(zzgylVar);
    }

    public static synchronized void zze(zzggd zzggdVar, boolean z) {
        synchronized (zzghb.class) {
            if (zzggdVar != null) {
                if (zzd.contains(zzggdVar.zzb())) {
                    if (zzgmv.zza(1)) {
                        zzgnd.zzc().zzd(zzggdVar, true);
                    } else {
                        throw new GeneralSecurityException(new ObfuscatedString(new long[]{-5718348680335040728L, -7705985909423022374L, -9215608328932135482L, 1656167314755010778L, 2694820424143033663L, -8669979171274147052L, -594775882099587508L, -931464225194319322L}).toString());
                    }
                } else {
                    throw new GeneralSecurityException(new ObfuscatedString(new long[]{-8179003601724838462L, 7560548489342760181L, -911838331180398341L, -298157986805176014L, 277837313464853742L, 1188343993019854369L}).toString() + zzggdVar.zzb().toString() + new ObfuscatedString(new long[]{-3230289058603033507L, 4091843314653005187L, 3815686629055267708L, 4827839439816782279L, 4778967136469552511L, -6664706024039947126L, -3277110997382017521L, -2870771738592154252L, 1530971952216273239L, -3584168042883391994L, 8525556670864904626L, -972075475698527679L}).toString());
                }
            } else {
                throw new IllegalArgumentException(new ObfuscatedString(new long[]{271517120599856960L, 7548173598687611733L, 9126305540267668329L, -4850124916408581547L, 596318479395336245L}).toString());
            }
        }
    }

    public static synchronized void zzf(zzggy zzggyVar) {
        synchronized (zzghb.class) {
            zzgob.zza().zzf(zzggyVar);
        }
    }
}
