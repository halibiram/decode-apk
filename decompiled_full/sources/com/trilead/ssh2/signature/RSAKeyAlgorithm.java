package com.trilead.ssh2.signature;

import com.panda912.muddy.ObfuscatedString;
import com.trilead.ssh2.IOWarningException;
import com.trilead.ssh2.crypto.CertificateDecoder;
import com.trilead.ssh2.crypto.PEMStructure;
import com.trilead.ssh2.crypto.SimpleDERReader;
import com.trilead.ssh2.packets.TypesReader;
import com.trilead.ssh2.packets.TypesWriter;
import defpackage.AbstractC0749x8313616e;
import java.io.IOException;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.spec.KeySpec;
import java.security.spec.RSAPrivateCrtKeySpec;
import java.security.spec.RSAPrivateKeySpec;
import java.security.spec.RSAPublicKeySpec;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes3.dex */
public class RSAKeyAlgorithm extends KeyAlgorithm<java.security.interfaces.RSAPublicKey, java.security.interfaces.RSAPrivateKey> {

    /* loaded from: classes3.dex */
    public static class RSACertificateDecoder extends CertificateDecoder {
        public /* synthetic */ RSACertificateDecoder(int i) {
            this();
        }

        @Override // com.trilead.ssh2.crypto.CertificateDecoder
        public KeyPair createKeyPair(PEMStructure pEMStructure) {
            SimpleDERReader simpleDERReader = new SimpleDERReader(pEMStructure.getData());
            byte[] readSequenceAsByteArray = simpleDERReader.readSequenceAsByteArray();
            if (simpleDERReader.available() == 0) {
                simpleDERReader.resetInput(readSequenceAsByteArray);
                BigInteger readInt = simpleDERReader.readInt();
                if (readInt.compareTo(BigInteger.ZERO) != 0 && readInt.compareTo(BigInteger.ONE) != 0) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(new ObfuscatedString(new long[]{7783043200876080390L, -4283436042340219709L, 3010093110657906372L}).toString());
                    sb.append(readInt);
                    throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-3090578770210467081L, 5691841212173006051L, 964839957163137414L, 3376585789609464382L, 8229248048452655008L}), sb));
                }
                BigInteger readInt2 = simpleDERReader.readInt();
                BigInteger readInt3 = simpleDERReader.readInt();
                try {
                    RSAPrivateCrtKeySpec rSAPrivateCrtKeySpec = new RSAPrivateCrtKeySpec(readInt2, readInt3, simpleDERReader.readInt(), simpleDERReader.readInt(), simpleDERReader.readInt(), simpleDERReader.readInt(), simpleDERReader.readInt(), simpleDERReader.readInt());
                    RSAPublicKeySpec rSAPublicKeySpec = new RSAPublicKeySpec(readInt2, readInt3);
                    KeyFactory keyFactory = KeyFactory.getInstance(new ObfuscatedString(new long[]{-3224184102124482074L, -1935604523976084452L}).toString());
                    return new KeyPair(keyFactory.generatePublic(rSAPublicKeySpec), keyFactory.generatePrivate(rSAPrivateCrtKeySpec));
                } catch (GeneralSecurityException unused) {
                    throw new IOException(new ObfuscatedString(new long[]{8877889025297883144L, 4113837697454614608L, -216750068390799979L, 7450224028404991926L, 6186096780228645114L}).toString());
                }
            }
            throw new IOException(new ObfuscatedString(new long[]{803642643809023007L, -7353890271840951317L, 5497329726350864204L, 4730270078967496183L, 6672759304243717226L, 1463629860317764061L}).toString());
        }

        @Override // com.trilead.ssh2.crypto.CertificateDecoder
        public String getEndLine() {
            return new ObfuscatedString(new long[]{7935242273649681228L, -1210613290699261459L, 3613321041014744689L, -1254664832989039150L, -4472491043987346036L}).toString();
        }

        @Override // com.trilead.ssh2.crypto.CertificateDecoder
        public String getStartLine() {
            return new ObfuscatedString(new long[]{554045544297527276L, -1739461998578502960L, 6624550699619590424L, -29200543096372316L, 1851582722101638743L}).toString();
        }

        private RSACertificateDecoder() {
        }
    }

    public RSAKeyAlgorithm() {
        super(new ObfuscatedString(new long[]{-8783658237577406779L, 9010414197866056764L, -1574655150560880761L}).toString(), new ObfuscatedString(new long[]{4697196793233836671L, -8819313425745172425L}).toString(), java.security.interfaces.RSAPrivateKey.class);
    }

    @Override // com.trilead.ssh2.signature.KeyAlgorithm
    public byte[] decodeSignature(byte[] bArr) {
        TypesReader typesReader = new TypesReader(bArr);
        if (typesReader.readString().equals(getKeyFormat())) {
            byte[] readByteString = typesReader.readByteString();
            if (readByteString.length != 0) {
                if (typesReader.remain() == 0) {
                    return readByteString;
                }
                throw new IOException(new ObfuscatedString(new long[]{758388173166727754L, -7236379288039541763L, 2501739976135167638L, 3581325211164194809L, 4678468786315133760L}).toString());
            }
            throw new IOException(new ObfuscatedString(new long[]{-7206305805155427606L, -131659190333189701L, 3358711405537114795L, 6277645191627564330L, 6075021526780209649L, -1345698522655550166L}).toString());
        }
        throw new IOException(new ObfuscatedString(new long[]{6952698031442108503L, 7125313161831097315L, -2761264915074631797L, 1512390337799994219L, 2514630666190824287L}).toString());
    }

    @Override // com.trilead.ssh2.signature.KeyAlgorithm
    public byte[] encodeSignature(byte[] bArr) {
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeString(getKeyFormat());
        if (bArr.length > 1 && bArr[0] == 0) {
            typesWriter.writeString(bArr, 1, bArr.length - 1);
        } else {
            typesWriter.writeString(bArr, 0, bArr.length);
        }
        return typesWriter.getBytes();
    }

    @Override // com.trilead.ssh2.signature.KeyAlgorithm
    public List<CertificateDecoder> getCertificateDecoders() {
        return Arrays.asList(new RSACertificateDecoder(0), new OpenSshCertificateDecoder(new ObfuscatedString(new long[]{7507489305250335579L, 5569044674249166116L}).toString()) { // from class: com.trilead.ssh2.signature.RSAKeyAlgorithm.1
            @Override // com.trilead.ssh2.signature.OpenSshCertificateDecoder
            public KeyPair generateKeyPair(TypesReader typesReader) {
                KeySpec rSAPrivateKeySpec;
                BigInteger readMPINT = typesReader.readMPINT();
                BigInteger readMPINT2 = typesReader.readMPINT();
                BigInteger readMPINT3 = typesReader.readMPINT();
                BigInteger readMPINT4 = typesReader.readMPINT();
                BigInteger readMPINT5 = typesReader.readMPINT();
                RSAPublicKeySpec rSAPublicKeySpec = new RSAPublicKeySpec(readMPINT, readMPINT2);
                if (readMPINT5 != null && readMPINT4 != null) {
                    BigInteger modInverse = readMPINT4.modInverse(readMPINT5);
                    BigInteger bigInteger = BigInteger.ONE;
                    rSAPrivateKeySpec = new RSAPrivateCrtKeySpec(readMPINT, readMPINT2, readMPINT3, readMPINT5, modInverse, readMPINT3.mod(readMPINT5.subtract(bigInteger)), readMPINT3.mod(modInverse.subtract(bigInteger)), readMPINT4);
                } else {
                    rSAPrivateKeySpec = new RSAPrivateKeySpec(readMPINT, readMPINT3);
                }
                KeyFactory keyFactory = KeyFactory.getInstance(new ObfuscatedString(new long[]{6790011374033500990L, 2615333287260932985L}).toString());
                return new KeyPair(keyFactory.generatePublic(rSAPublicKeySpec), keyFactory.generatePrivate(rSAPrivateKeySpec));
            }
        });
    }

    @Override // com.trilead.ssh2.signature.KeyAlgorithm
    public java.security.interfaces.RSAPublicKey decodePublicKey(byte[] bArr) {
        TypesReader typesReader = new TypesReader(bArr);
        String readString = typesReader.readString();
        if (readString.equals(getKeyFormat())) {
            BigInteger readMPINT = typesReader.readMPINT();
            BigInteger readMPINT2 = typesReader.readMPINT();
            if (typesReader.remain() == 0) {
                try {
                    return (java.security.interfaces.RSAPublicKey) KeyFactory.getInstance(new ObfuscatedString(new long[]{5096637758830448L, -4830964904872048417L}).toString()).generatePublic(new RSAPublicKeySpec(readMPINT2, readMPINT));
                } catch (GeneralSecurityException e) {
                    throw new IOException(new ObfuscatedString(new long[]{5426983594835032076L, 7584253386041799976L, -2325407745331082968L, -6680679358969956863L, -4149411124852904580L}).toString(), e);
                }
            }
            throw new IOException(new ObfuscatedString(new long[]{-3388671108331715547L, 3214305618931833717L, 2946337698232913055L, 554315926134031581L, 59585222926444073L}).toString());
        }
        throw new IOWarningException(new ObfuscatedString(new long[]{-5414669717206284565L, 7471184517713098419L, 3009421461545142274L, 5992286883616109341L, 326895986103317321L}).toString() + readString + new ObfuscatedString(new long[]{-2569401455691216654L, 1251904321742335501L, 6579927673005360393L, -239371570864393054L}).toString() + getKeyFormat());
    }

    @Override // com.trilead.ssh2.signature.KeyAlgorithm
    public byte[] encodePublicKey(java.security.interfaces.RSAPublicKey rSAPublicKey) {
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeString(getKeyFormat());
        typesWriter.writeMPInt(rSAPublicKey.getPublicExponent());
        typesWriter.writeMPInt(rSAPublicKey.getModulus());
        return typesWriter.getBytes();
    }
}
