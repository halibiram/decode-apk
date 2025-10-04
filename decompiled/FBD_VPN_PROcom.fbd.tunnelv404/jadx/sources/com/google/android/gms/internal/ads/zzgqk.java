package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzgqk {

    @Nullable
    private zzgqx zza = null;

    @Nullable
    private zzgxr zzb = null;

    @Nullable
    private Integer zzc = null;

    public /* synthetic */ zzgqk(zzgqj zzgqjVar) {
    }

    public final zzgqk zza(@Nullable Integer num) {
        this.zzc = num;
        return this;
    }

    public final zzgqk zzb(zzgxr zzgxrVar) {
        this.zzb = zzgxrVar;
        return this;
    }

    public final zzgqk zzc(zzgqx zzgqxVar) {
        this.zza = zzgqxVar;
        return this;
    }

    public final zzgqm zzd() {
        zzgxr zzgxrVar;
        zzgxq zzb;
        zzgqx zzgqxVar = this.zza;
        if (zzgqxVar != null && (zzgxrVar = this.zzb) != null) {
            if (zzgqxVar.zzc() == zzgxrVar.zza()) {
                if (zzgqxVar.zza() && this.zzc == null) {
                    throw new GeneralSecurityException(new ObfuscatedString(new long[]{6876310162438833801L, -5464785566788629492L, 769457771339485777L, -3546058104962392067L, -1343169944876121724L, -7815220470344229951L, 8628647069473453769L, 7481309717519116505L, -6022406236974803750L, -8265457030933656364L, 4561340023510609751L}).toString());
                }
                if (!this.zza.zza() && this.zzc != null) {
                    throw new GeneralSecurityException(new ObfuscatedString(new long[]{3202671490299183335L, 572034513191529739L, 6217802605559847759L, 8053948513772653597L, -2610239513665236666L, 3012322989473340320L, -3858752193642851697L, 895174720323065542L, 1768245556501425397L, -2454637407493715790L, 3634409585868452594L}).toString());
                }
                if (this.zza.zzg() == zzgqv.zzd) {
                    zzb = zzgxq.zzb(new byte[0]);
                } else if (this.zza.zzg() != zzgqv.zzc && this.zza.zzg() != zzgqv.zzb) {
                    if (this.zza.zzg() == zzgqv.zza) {
                        zzb = zzgxq.zzb(ByteBuffer.allocate(5).put((byte) 1).putInt(this.zzc.intValue()).array());
                    } else {
                        throw new IllegalStateException(new ObfuscatedString(new long[]{1457019121147619219L, -1849003996668987999L, -5230837822757380402L, 8998110085646210582L, 2822499067605371407L}).toString().concat(String.valueOf(this.zza.zzg())));
                    }
                } else {
                    zzb = zzgxq.zzb(ByteBuffer.allocate(5).put((byte) 0).putInt(this.zzc.intValue()).array());
                }
                return new zzgqm(this.zza, this.zzb, zzb, this.zzc, null);
            }
            throw new GeneralSecurityException(new ObfuscatedString(new long[]{-714140495357357306L, -4004166533084173426L, 7527132971932119819L, 5454401860833589867L}).toString());
        }
        throw new GeneralSecurityException(new ObfuscatedString(new long[]{3707995370528325235L, -4897017484786667786L, -6065670231166973783L, 8674898365022008393L, 5810896285505601972L, 2579409964183551420L, -7445669302853007417L, 4178950780436552520L}).toString());
    }

    private zzgqk() {
    }
}
