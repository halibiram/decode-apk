package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import j$.util.DesugarCollections;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes2.dex */
public final class zzgkp implements zzgfs {
    private static final byte[] zza = new byte[0];
    private static final Set zzb;
    private final zzguy zzc;
    private final zzgfs zzd;

    static {
        HashSet hashSet = new HashSet();
        hashSet.add(new ObfuscatedString(new long[]{6300590632161362676L, -5737520591673011861L, 5276373956072078882L, -6365941747570878958L, -5745437577326430840L, -740433210204509528L, 1782097483340368958L}).toString());
        hashSet.add(new ObfuscatedString(new long[]{-6318162820060497181L, 5965938176635456751L, -4646833649750832030L, 6231018550160223945L, -2156843962315421521L, -7331665211150775870L, 3503011580735314329L, -7600388659501587388L, 8853764545688309990L}).toString());
        hashSet.add(new ObfuscatedString(new long[]{-2328883874625648310L, -5554598454551449432L, 8794496397381754007L, -2027580155639919379L, -336555395379447558L, -3437029289274241173L, -173277106226994589L, 772388128244864813L, -7495596289696372925L}).toString());
        hashSet.add(new ObfuscatedString(new long[]{8714245766872416476L, 6867505262222072065L, 3788162066163233803L, -7004523919044341366L, 5910610031727737221L, 6736914682705166789L, -2588800098086540054L, -4335557814743883673L}).toString());
        hashSet.add(new ObfuscatedString(new long[]{2289731466888761771L, -731433669928346601L, -8225089719097651840L, 4929596096467210700L, 7534629492066118012L, -8248821676164284530L, -9151284191978356889L, -4117557149215691278L}).toString());
        hashSet.add(new ObfuscatedString(new long[]{-2823549344018662651L, 4285579233324968722L, -591954021954304671L, 721739498608984226L, 5745219168264348076L, 8634247123950118285L, 2273163049057394343L}).toString());
        zzb = DesugarCollections.unmodifiableSet(hashSet);
    }

    @Deprecated
    public zzgkp(zzguy zzguyVar, zzgfs zzgfsVar) {
        if (zzb.contains(zzguyVar.zzh())) {
            this.zzc = zzguyVar;
            this.zzd = zzgfsVar;
        } else {
            String zzh = zzguyVar.zzh();
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{7580956628122457536L, -6364230622155392471L, -4895336165606044422L, -6203254749044952799L, 3570176546650760786L}).toString());
            sb.append(zzh);
            throw new IllegalArgumentException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{3864749195059053290L, 8484795149436947408L, -5638369252299586508L, 4925811596535781618L, 5786472333557048963L, 2777462279833709975L, 1467684652469195869L}), sb));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgfs
    public final byte[] zza(byte[] bArr, byte[] bArr2) {
        try {
            ByteBuffer wrap = ByteBuffer.wrap(bArr);
            int i = wrap.getInt();
            if (i > 0 && i <= bArr.length - 4) {
                byte[] bArr3 = new byte[i];
                wrap.get(bArr3, 0, i);
                byte[] bArr4 = new byte[wrap.remaining()];
                wrap.get(bArr4, 0, wrap.remaining());
                byte[] zza2 = this.zzd.zza(bArr3, zza);
                String zzh = this.zzc.zzh();
                int i2 = zzghb.zza;
                zzgyl zzgylVar = zzgyl.zzb;
                return ((zzgfs) zzghb.zzd(zzh, zzgyl.zzv(zza2, 0, zza2.length), zzgfs.class)).zza(bArr4, bArr2);
            }
            throw new GeneralSecurityException(new ObfuscatedString(new long[]{-4186608861014865254L, -4101011482301861936L, 3191828232809172384L, 3179405715614472840L}).toString());
        } catch (IndexOutOfBoundsException e) {
            e = e;
            throw new GeneralSecurityException(new ObfuscatedString(new long[]{1802352523088194923L, 1355803873814555493L, -1405953340892063521L, 4184959557736345797L}).toString(), e);
        } catch (NegativeArraySizeException e2) {
            e = e2;
            throw new GeneralSecurityException(new ObfuscatedString(new long[]{1802352523088194923L, 1355803873814555493L, -1405953340892063521L, 4184959557736345797L}).toString(), e);
        } catch (BufferUnderflowException e3) {
            e = e3;
            throw new GeneralSecurityException(new ObfuscatedString(new long[]{1802352523088194923L, 1355803873814555493L, -1405953340892063521L, 4184959557736345797L}).toString(), e);
        }
    }
}
