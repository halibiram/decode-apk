package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import javax.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzgqt {

    @Nullable
    private Integer zza;

    @Nullable
    private Integer zzb;
    private zzgqu zzc;
    private zzgqv zzd;

    public /* synthetic */ zzgqt(zzgqs zzgqsVar) {
        this.zza = null;
        this.zzb = null;
        this.zzc = null;
        this.zzd = zzgqv.zzd;
    }

    public final zzgqt zza(zzgqu zzgquVar) {
        this.zzc = zzgquVar;
        return this;
    }

    public final zzgqt zzb(int i) {
        this.zza = Integer.valueOf(i);
        return this;
    }

    public final zzgqt zzc(int i) {
        this.zzb = Integer.valueOf(i);
        return this;
    }

    public final zzgqt zzd(zzgqv zzgqvVar) {
        this.zzd = zzgqvVar;
        return this;
    }

    public final zzgqx zze() {
        Integer num = this.zza;
        if (num != null) {
            if (this.zzb != null) {
                if (this.zzc != null) {
                    if (this.zzd != null) {
                        if (num.intValue() >= 16) {
                            Integer num2 = this.zzb;
                            int intValue = num2.intValue();
                            zzgqu zzgquVar = this.zzc;
                            if (intValue >= 10) {
                                if (zzgquVar == zzgqu.zza) {
                                    if (intValue > 20) {
                                        throw new GeneralSecurityException(String.format(new ObfuscatedString(new long[]{-3741440948547633271L, 2636413053934594529L, -8087568913918804203L, -7888313142226104374L, -3845984879216458151L, -7553071457556451194L, 6065169528704475685L, -2425983404957173220L, -6100521061798045116L}).toString(), num2));
                                    }
                                } else if (zzgquVar == zzgqu.zzb) {
                                    if (intValue > 28) {
                                        throw new GeneralSecurityException(String.format(new ObfuscatedString(new long[]{-7707008396515432124L, 1411780188609434670L, -7040224870461707812L, -890736451398608917L, -6639243506149789635L, 2273709539962191897L, 6104855623585248128L, 6830505878614245696L, -1483522824785582997L}).toString(), num2));
                                    }
                                } else if (zzgquVar == zzgqu.zzc) {
                                    if (intValue > 32) {
                                        throw new GeneralSecurityException(String.format(new ObfuscatedString(new long[]{2905279588503441269L, 692590506168658716L, -8512303648819085961L, -4123512828048386222L, 1560898026001033545L, 1642565706671810148L, 3979859856228050823L, -4421724640003436830L, -6358039476941743317L}).toString(), num2));
                                    }
                                } else if (zzgquVar == zzgqu.zzd) {
                                    if (intValue > 48) {
                                        throw new GeneralSecurityException(String.format(new ObfuscatedString(new long[]{-4532205870403671477L, 8304866578760717916L, 1315546465461528434L, 8240352499763478539L, -4620796047044822533L, 2879177538939588313L, -6336995834712478193L, -7890831470405260948L, -3680524538461784387L}).toString(), num2));
                                    }
                                } else if (zzgquVar == zzgqu.zze) {
                                    if (intValue > 64) {
                                        throw new GeneralSecurityException(String.format(new ObfuscatedString(new long[]{1698013415436986620L, -4430896129156969119L, 1119815922969993422L, -3694168901993358434L, -1145626529762547207L, 2910279095386593583L, 2893889276201149953L, 6976960025292103016L, 3628198541906478824L}).toString(), num2));
                                    }
                                } else {
                                    throw new GeneralSecurityException(new ObfuscatedString(new long[]{-6669273396517950824L, -8204760506856255323L, -1396639599024637675L, 2571002251424383505L, -4680529811204385776L, -782958279285359314L, 1351377814868506893L, 4575401779451073036L}).toString());
                                }
                                return new zzgqx(this.zza.intValue(), this.zzb.intValue(), this.zzd, this.zzc, null);
                            }
                            throw new GeneralSecurityException(String.format(new ObfuscatedString(new long[]{-2416221194285918514L, -6336690750515284280L, 6204839832714227482L, -2823374307852852930L, 5100554216895701665L, -4211921429651692143L, 5601927359195553278L, -8673907125408087992L}).toString(), num2));
                        }
                        throw new InvalidAlgorithmParameterException(String.format(new ObfuscatedString(new long[]{-6210819023696781971L, -764149937212098045L, 3181400396583329414L, -5216692602363335464L, 8412769881154165304L, 7160195790031583679L, -2354620798491102266L, -6971075504661756541L}).toString(), this.zza));
                    }
                    throw new GeneralSecurityException(new ObfuscatedString(new long[]{-3999866544748633722L, -2682828825339762117L, -5812723985501530009L, 1596447465490948735L}).toString());
                }
                throw new GeneralSecurityException(new ObfuscatedString(new long[]{674849153553053966L, -6324552259754332142L, -1892671882667470843L, 1044258230277769829L}).toString());
            }
            throw new GeneralSecurityException(new ObfuscatedString(new long[]{-3747065500628091349L, 421791626281069970L, 3702321812288979852L, -7099544753988772364L}).toString());
        }
        throw new GeneralSecurityException(new ObfuscatedString(new long[]{-3136169087208495944L, 3267440454925492384L, -8748194667156387486L, -8122920929767839398L}).toString());
    }

    private zzgqt() {
        this.zza = null;
        this.zzb = null;
        this.zzc = null;
        throw null;
    }
}
