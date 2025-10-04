package com.trilead.ssh2.crypto.dh;

import com.panda912.muddy.ObfuscatedString;
import com.trilead.ssh2.DHGexParameters;
import com.trilead.ssh2.crypto.digest.HashForSSH2Types;
import java.math.BigInteger;
import java.security.SecureRandom;

/* loaded from: classes3.dex */
public class DhGroupExchange {
    private BigInteger e;
    private BigInteger f;
    private BigInteger g;
    private final String hashAlgorithm;
    private BigInteger k;
    private BigInteger p;
    private BigInteger x;

    @Deprecated
    public DhGroupExchange(BigInteger bigInteger, BigInteger bigInteger2) {
        this(new ObfuscatedString(new long[]{-3207778921792704367L, 4205221156858561855L}).toString(), bigInteger, bigInteger2);
    }

    public byte[] calculateH(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, DHGexParameters dHGexParameters) {
        HashForSSH2Types hashForSSH2Types = new HashForSSH2Types(getHashAlgorithm());
        hashForSSH2Types.updateByteString(bArr);
        hashForSSH2Types.updateByteString(bArr2);
        hashForSSH2Types.updateByteString(bArr3);
        hashForSSH2Types.updateByteString(bArr4);
        hashForSSH2Types.updateByteString(bArr5);
        if (dHGexParameters.getMin_group_len() > 0) {
            hashForSSH2Types.updateUINT32(dHGexParameters.getMin_group_len());
        }
        hashForSSH2Types.updateUINT32(dHGexParameters.getPref_group_len());
        if (dHGexParameters.getMax_group_len() > 0) {
            hashForSSH2Types.updateUINT32(dHGexParameters.getMax_group_len());
        }
        hashForSSH2Types.updateBigInt(this.p);
        hashForSSH2Types.updateBigInt(this.g);
        hashForSSH2Types.updateBigInt(this.e);
        hashForSSH2Types.updateBigInt(this.f);
        hashForSSH2Types.updateBigInt(this.k);
        return hashForSSH2Types.getDigest();
    }

    public BigInteger getE() {
        BigInteger bigInteger = this.e;
        if (bigInteger != null) {
            return bigInteger;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{3642084906235831962L, 4650766155100481395L, 124146097059992050L}).toString());
    }

    public String getHashAlgorithm() {
        return this.hashAlgorithm;
    }

    public BigInteger getK() {
        BigInteger bigInteger = this.k;
        if (bigInteger != null) {
            return bigInteger;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{-3112452045267328028L, -5235045190233086518L, -2989583374705968253L, -5225894008948220612L, -6024070185552960909L, 1019717961881724836L, 7730919804490334062L}).toString());
    }

    public void init(SecureRandom secureRandom) {
        this.k = null;
        BigInteger bigInteger = new BigInteger(this.p.bitLength() - 1, secureRandom);
        this.x = bigInteger;
        this.e = this.g.modPow(bigInteger, this.p);
    }

    public void setF(BigInteger bigInteger) {
        if (this.e != null) {
            if (BigInteger.valueOf(0L).compareTo(bigInteger) < 0 && this.p.compareTo(bigInteger) > 0) {
                this.f = bigInteger;
                this.k = bigInteger.modPow(this.x, this.p);
                return;
            }
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{8986326013514460120L, 6212835233291688514L, 2632905539689884799L, -3759524183506036657L}).toString());
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{5177100034494472029L, -3824522955157635971L, -3900544995830192204L}).toString());
    }

    public DhGroupExchange(String str, BigInteger bigInteger, BigInteger bigInteger2) {
        this.p = bigInteger;
        this.g = bigInteger2;
        this.hashAlgorithm = str;
    }
}
