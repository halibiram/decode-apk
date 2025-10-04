package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.security.Provider;
import java.security.Security;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzgwz {
    public static final zzgwz zza = new zzgwz(new zzgxa());
    public static final zzgwz zzb = new zzgwz(new zzgxe());
    public static final zzgwz zzc = new zzgwz(new zzgxg());
    public static final zzgwz zzd = new zzgwz(new zzgxf());
    public static final zzgwz zze = new zzgwz(new zzgxb());
    public static final zzgwz zzf = new zzgwz(new zzgxd());
    public static final zzgwz zzg = new zzgwz(new zzgxc());
    private final zzgwy zzh;

    public zzgwz(zzgxh zzgxhVar) {
        zzgwy zzgwxVar;
        if (!zzgmw.zzb()) {
            if (new ObfuscatedString(new long[]{-213691136343028762L, -6006943899070108921L, -5217251559479053478L, 6708217718653726381L}).toString().equals(System.getProperty(new ObfuscatedString(new long[]{-242535168037787148L, -4257662332351591229L, -1416490933683767851L}).toString()))) {
                zzgwxVar = new zzgwt(zzgxhVar, null);
            } else {
                zzgwxVar = new zzgwv(zzgxhVar, null);
            }
        } else {
            zzgwxVar = new zzgwx(zzgxhVar, null);
        }
        this.zzh = zzgwxVar;
    }

    public static List zzb(String... strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            Provider provider = Security.getProvider(str);
            if (provider != null) {
                arrayList.add(provider);
            }
        }
        return arrayList;
    }

    public final Object zza(String str) {
        return this.zzh.zza(str);
    }
}
