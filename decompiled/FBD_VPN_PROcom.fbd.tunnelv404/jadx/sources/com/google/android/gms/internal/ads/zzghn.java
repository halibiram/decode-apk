package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzghn {

    @Nullable
    private zzghz zza = null;

    @Nullable
    private zzgxr zzb = null;

    @Nullable
    private zzgxr zzc = null;

    @Nullable
    private Integer zzd = null;

    public /* synthetic */ zzghn(zzghm zzghmVar) {
    }

    public final zzghn zza(zzgxr zzgxrVar) {
        this.zzb = zzgxrVar;
        return this;
    }

    public final zzghn zzb(zzgxr zzgxrVar) {
        this.zzc = zzgxrVar;
        return this;
    }

    public final zzghn zzc(@Nullable Integer num) {
        this.zzd = num;
        return this;
    }

    public final zzghn zzd(zzghz zzghzVar) {
        this.zza = zzghzVar;
        return this;
    }

    public final zzghp zze() {
        zzgxq zzb;
        zzghz zzghzVar = this.zza;
        if (zzghzVar != null) {
            zzgxr zzgxrVar = this.zzb;
            if (zzgxrVar != null && this.zzc != null) {
                if (zzghzVar.zzb() == zzgxrVar.zza()) {
                    if (zzghzVar.zzc() == this.zzc.zza()) {
                        if (this.zza.zza() && this.zzd == null) {
                            throw new GeneralSecurityException(new ObfuscatedString(new long[]{7137110594963169188L, 5994688481503675516L, 2459423220819297452L, -7297889966137504510L, -4922177527151948193L, -5594168145292078253L, -5314325839679689263L, 7931955710054837152L, 8474071214475019791L, 5990261126790790050L, 3349177046343769963L}).toString());
                        }
                        if (!this.zza.zza() && this.zzd != null) {
                            throw new GeneralSecurityException(new ObfuscatedString(new long[]{3688433148163983564L, 3301721793606290038L, 5433381905084375499L, -8194149773291459970L, -7764247540373937461L, -6402291168157140881L, -5620589640639506622L, 8861564395514596148L, -7288338156959081794L, -8712277578816528680L, -1651149721085240180L}).toString());
                        }
                        if (this.zza.zzg() == zzghx.zzc) {
                            zzb = zzgxq.zzb(new byte[0]);
                        } else if (this.zza.zzg() == zzghx.zzb) {
                            zzb = zzgxq.zzb(ByteBuffer.allocate(5).put((byte) 0).putInt(this.zzd.intValue()).array());
                        } else if (this.zza.zzg() == zzghx.zza) {
                            zzb = zzgxq.zzb(ByteBuffer.allocate(5).put((byte) 1).putInt(this.zzd.intValue()).array());
                        } else {
                            throw new IllegalStateException(new ObfuscatedString(new long[]{-6965663416728573099L, 2854244950645966023L, -8684381491073067525L, -2347795462364147398L, -9154615453686728551L, 3752037507569159170L, -4056079350609466494L}).toString().concat(String.valueOf(this.zza.zzg())));
                        }
                        return new zzghp(this.zza, this.zzb, this.zzc, zzb, this.zzd, null);
                    }
                    throw new GeneralSecurityException(new ObfuscatedString(new long[]{6196828021094289572L, -4583674240680547499L, 4581504588919455092L, 5816148852967851758L}).toString());
                }
                throw new GeneralSecurityException(new ObfuscatedString(new long[]{-1332358105363199331L, -6698310669684498902L, -6263296009540753059L, 7433335931662976563L}).toString());
            }
            throw new GeneralSecurityException(new ObfuscatedString(new long[]{-7102472399060229433L, 2952356890030291392L, -7249669481474053174L, 2603532745855847170L, 3080695636896528494L, 5734918385742715649L}).toString());
        }
        throw new GeneralSecurityException(new ObfuscatedString(new long[]{8749130352289799827L, 3109742685372971554L, -4953121670079463864L, 8935619169711124973L, 8440502918825756205L}).toString());
    }

    private zzghn() {
    }
}
