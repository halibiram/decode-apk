package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzgow {
    private final Map zza;
    private final Map zzb;

    public /* synthetic */ zzgow(zzgos zzgosVar, zzgov zzgovVar) {
        Map map;
        Map map2;
        map = zzgosVar.zza;
        this.zza = new HashMap(map);
        map2 = zzgosVar.zzb;
        this.zzb = new HashMap(map2);
    }

    public final Class zza(Class cls) {
        if (this.zzb.containsKey(cls)) {
            return ((zzggy) this.zzb.get(cls)).zza();
        }
        String obj = cls.toString();
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-1251323222130090221L, 8311107634167827586L, 2727286199137293140L, 2275481700161016229L, -7899054089887128713L}).toString());
        sb.append(obj);
        throw new GeneralSecurityException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-3924569153728374240L, -115480878069404457L, 9207156982761488905L}), sb));
    }

    public final Object zzb(zzggc zzggcVar, Class cls) {
        zzgou zzgouVar = new zzgou(zzggcVar.getClass(), cls, null);
        if (this.zza.containsKey(zzgouVar)) {
            return ((zzgoq) this.zza.get(zzgouVar)).zza(zzggcVar);
        }
        String zzgouVar2 = zzgouVar.toString();
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-4248921702422491334L, 3172881798823529262L, 2563038331924215010L, -3026912637360058097L, 3234123069574495426L}).toString());
        sb.append(zzgouVar2);
        throw new GeneralSecurityException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{2492884381314961366L, -4878871541987738863L, 2230822822279719404L}), sb));
    }

    public final Object zzc(zzggx zzggxVar, Class cls) {
        if (this.zzb.containsKey(cls)) {
            zzggy zzggyVar = (zzggy) this.zzb.get(cls);
            if (zzggxVar.zzc().equals(zzggyVar.zza()) && zzggyVar.zza().equals(zzggxVar.zzc())) {
                return zzggyVar.zzc(zzggxVar);
            }
            throw new GeneralSecurityException(new ObfuscatedString(new long[]{-3259207839790243205L, -9090880242112814589L, 3397862733264869678L, -4680034445831949886L, 5627199832964845061L, -3252917599153852772L, 8603676365072282853L, -7633371411622602386L, 6916080283597593089L, 5161002650372801678L, 7963502607250565081L, 5414750093878631751L, -4996028278909410882L, -3437420939835741734L}).toString());
        }
        throw new GeneralSecurityException(new ObfuscatedString(new long[]{3937524264160188076L, -3195062767272974118L, -1382991479635623957L, -7264996791718941687L}).toString().concat(cls.toString()));
    }
}
