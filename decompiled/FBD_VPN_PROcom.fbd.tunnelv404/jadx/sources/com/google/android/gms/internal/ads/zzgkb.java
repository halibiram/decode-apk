package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzgkb extends zzghh {
    private final zzgkg zza;
    private final zzgxr zzb;
    private final zzgxq zzc;

    @Nullable
    private final Integer zzd;

    private zzgkb(zzgkg zzgkgVar, zzgxr zzgxrVar, zzgxq zzgxqVar, @Nullable Integer num) {
        this.zza = zzgkgVar;
        this.zzb = zzgxrVar;
        this.zzc = zzgxqVar;
        this.zzd = num;
    }

    public static zzgkb zza(zzgkf zzgkfVar, zzgxr zzgxrVar, @Nullable Integer num) {
        zzgxq zzb;
        zzgkf zzgkfVar2 = zzgkf.zzc;
        if (zzgkfVar != zzgkfVar2 && num == null) {
            String zzgkfVar3 = zzgkfVar.toString();
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{-1983286971990141574L, 8230533014132824180L, 8441339054624445502L, -3364023438756250003L}).toString());
            sb.append(zzgkfVar3);
            throw new GeneralSecurityException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{2755454830410515845L, 4670338697203293711L, 5663342464600858131L, -1270335954083525319L, -8584320580741121339L, 9112005554013855847L, -8743937003512812372L}), sb));
        }
        if (zzgkfVar == zzgkfVar2 && num != null) {
            throw new GeneralSecurityException(new ObfuscatedString(new long[]{8681075370148217364L, -4833468971872303386L, -2038038075254510747L, 3795150043032474538L, -1771276660041919260L, 5748956406882926241L, -940838136600238093L, 5851088079171297987L, -6194917175021651821L, 9123118014132161093L}).toString());
        }
        if (zzgxrVar.zza() == 32) {
            zzgkg zzc = zzgkg.zzc(zzgkfVar);
            if (zzc.zzb() == zzgkfVar2) {
                zzb = zzgxq.zzb(new byte[0]);
            } else if (zzc.zzb() == zzgkf.zzb) {
                zzb = zzgxq.zzb(ByteBuffer.allocate(5).put((byte) 0).putInt(num.intValue()).array());
            } else if (zzc.zzb() == zzgkf.zza) {
                zzb = zzgxq.zzb(ByteBuffer.allocate(5).put((byte) 1).putInt(num.intValue()).array());
            } else {
                throw new IllegalStateException(new ObfuscatedString(new long[]{-8453998387849468769L, -2100428637245995628L, -4406381407194978841L, -407749223057894531L}).toString().concat(zzc.zzb().toString()));
            }
            return new zzgkb(zzc, zzgxrVar, zzb, num);
        }
        int zza = zzgxrVar.zza();
        throw new GeneralSecurityException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-7030596474128574618L, -3779885047761011776L, -2276799526790062786L, 9101403445698719552L, -8938489530899989927L, -5480653269902678494L, 1947636192931860412L, -6873886206907987892L, -6691083218465623123L, -7394030356651834224L, -1057576082959651137L}), new StringBuilder(), zza));
    }

    public final zzgkg zzb() {
        return this.zza;
    }

    public final zzgxq zzc() {
        return this.zzc;
    }

    public final zzgxr zzd() {
        return this.zzb;
    }

    @Nullable
    public final Integer zze() {
        return this.zzd;
    }
}
