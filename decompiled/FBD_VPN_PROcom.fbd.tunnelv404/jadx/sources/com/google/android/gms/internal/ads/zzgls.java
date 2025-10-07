package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzgls extends zzghh {
    private final zzgly zza;
    private final zzgxr zzb;
    private final zzgxq zzc;

    @Nullable
    private final Integer zzd;

    private zzgls(zzgly zzglyVar, zzgxr zzgxrVar, zzgxq zzgxqVar, @Nullable Integer num) {
        this.zza = zzglyVar;
        this.zzb = zzgxrVar;
        this.zzc = zzgxqVar;
        this.zzd = num;
    }

    public static zzgls zza(zzglx zzglxVar, zzgxr zzgxrVar, @Nullable Integer num) {
        zzgxq zzb;
        zzglx zzglxVar2 = zzglx.zzc;
        if (zzglxVar != zzglxVar2 && num == null) {
            String zzglxVar3 = zzglxVar.toString();
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{961135646682423438L, -3701901226576679771L, -992934615322990975L, 1253747783508197102L}).toString());
            sb.append(zzglxVar3);
            throw new GeneralSecurityException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-6248757682618379180L, 3751502204455735717L, 2550931221853573657L, 5810347266652634632L, 6315333159245374961L, 6677919428474058357L, -3338983871976858519L}), sb));
        }
        if (zzglxVar == zzglxVar2 && num != null) {
            throw new GeneralSecurityException(new ObfuscatedString(new long[]{-1801073710731931679L, 2149379612445812531L, 2167434019106303368L, 6809495377390100946L, 5021684982629774403L, 4684022485542290796L, -9044424217336808256L, 2575575019300741953L, 1434201881092996207L, 6074628669219890318L}).toString());
        }
        if (zzgxrVar.zza() == 32) {
            zzgly zzc = zzgly.zzc(zzglxVar);
            if (zzc.zzb() == zzglxVar2) {
                zzb = zzgxq.zzb(new byte[0]);
            } else if (zzc.zzb() == zzglx.zzb) {
                zzb = zzgxq.zzb(ByteBuffer.allocate(5).put((byte) 0).putInt(num.intValue()).array());
            } else if (zzc.zzb() == zzglx.zza) {
                zzb = zzgxq.zzb(ByteBuffer.allocate(5).put((byte) 1).putInt(num.intValue()).array());
            } else {
                throw new IllegalStateException(new ObfuscatedString(new long[]{3105615271149332660L, 790312440206379599L, -4907012573028142500L, 1821914234651794561L}).toString().concat(zzc.zzb().toString()));
            }
            return new zzgls(zzc, zzgxrVar, zzb, num);
        }
        int zza = zzgxrVar.zza();
        throw new GeneralSecurityException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{2084299491875615600L, 7100324421003889122L, 3090415873203993952L, 570987355914322525L, 4519026197973012039L, 2123983648759674006L, 7732369078992889179L, 5430512112172930002L, 3524637537068309715L, -5004339861663423051L, -8917878972913037602L}), new StringBuilder(), zza));
    }

    public final zzgly zzb() {
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
