package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzgpj {
    private final Map zza;
    private final Map zzb;
    private final Map zzc;
    private final Map zzd;

    public /* synthetic */ zzgpj(zzgpd zzgpdVar, zzgpi zzgpiVar) {
        Map map;
        Map map2;
        Map map3;
        Map map4;
        map = zzgpdVar.zza;
        this.zza = new HashMap(map);
        map2 = zzgpdVar.zzb;
        this.zzb = new HashMap(map2);
        map3 = zzgpdVar.zzc;
        this.zzc = new HashMap(map3);
        map4 = zzgpdVar.zzd;
        this.zzd = new HashMap(map4);
    }

    public final zzggc zza(zzgpc zzgpcVar, @Nullable zzghc zzghcVar) {
        zzgpf zzgpfVar = new zzgpf(zzgpcVar.getClass(), zzgpcVar.zzd(), null);
        if (this.zzb.containsKey(zzgpfVar)) {
            return ((zzgnh) this.zzb.get(zzgpfVar)).zza(zzgpcVar, zzghcVar);
        }
        String zzgpfVar2 = zzgpfVar.toString();
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{6340795500193662925L, -4204926087089489422L, 1416144009276686276L, 8496454827665495458L, 5619030309823234106L, 2935635659501698106L}).toString());
        sb.append(zzgpfVar2);
        throw new GeneralSecurityException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{3090714257548683343L, -6955614720602703685L, -3950862853935205556L}), sb));
    }

    public final zzggq zzb(zzgpc zzgpcVar) {
        zzgpf zzgpfVar = new zzgpf(zzgpcVar.getClass(), zzgpcVar.zzd(), null);
        if (this.zzd.containsKey(zzgpfVar)) {
            return ((zzgoi) this.zzd.get(zzgpfVar)).zza(zzgpcVar);
        }
        String zzgpfVar2 = zzgpfVar.toString();
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{7841333466298594534L, -5129483740292652541L, 8976516566568741037L, 9018030587680967378L, -4553955442215668319L, -6699153080492039824L, 5386954583416452877L}).toString());
        sb.append(zzgpfVar2);
        throw new GeneralSecurityException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{640153202982933059L, -551902504668042291L, 1865061200983307725L}), sb));
    }

    public final zzgpc zzc(zzggc zzggcVar, Class cls, @Nullable zzghc zzghcVar) {
        zzgph zzgphVar = new zzgph(zzggcVar.getClass(), cls, null);
        if (this.zza.containsKey(zzgphVar)) {
            return ((zzgnl) this.zza.get(zzgphVar)).zza(zzggcVar, zzghcVar);
        }
        String zzgphVar2 = zzgphVar.toString();
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{5808169502355708597L, 8490751710816752180L, -1380666781931500455L, -2647858692664817147L}).toString());
        sb.append(zzgphVar2);
        throw new GeneralSecurityException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{7927263522850622810L, -3904617332577964188L, -3327734049192039135L}), sb));
    }

    public final zzgpc zzd(zzggq zzggqVar, Class cls) {
        zzgph zzgphVar = new zzgph(zzggqVar.getClass(), cls, null);
        if (this.zzc.containsKey(zzgphVar)) {
            return ((zzgom) this.zzc.get(zzgphVar)).zza(zzggqVar);
        }
        String zzgphVar2 = zzgphVar.toString();
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-6264918647333214241L, -2517852599836400058L, 6391424207086658854L, -712969554491454250L, 3460952600054306817L}).toString());
        sb.append(zzgphVar2);
        throw new GeneralSecurityException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{8788672879489171318L, 5708238688232443176L, -3206661533537645314L}), sb));
    }

    public final boolean zzi(zzgpc zzgpcVar) {
        return this.zzb.containsKey(new zzgpf(zzgpcVar.getClass(), zzgpcVar.zzd(), null));
    }

    public final boolean zzj(zzgpc zzgpcVar) {
        return this.zzd.containsKey(new zzgpf(zzgpcVar.getClass(), zzgpcVar.zzd(), null));
    }
}
