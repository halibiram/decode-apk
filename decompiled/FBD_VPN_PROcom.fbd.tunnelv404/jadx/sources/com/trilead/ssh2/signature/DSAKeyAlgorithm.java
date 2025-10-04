package com.trilead.ssh2.signature;

import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import com.google.common.base.Ascii;
import com.panda912.muddy.ObfuscatedString;
import com.trilead.ssh2.IOWarningException;
import com.trilead.ssh2.crypto.CertificateDecoder;
import com.trilead.ssh2.crypto.PEMStructure;
import com.trilead.ssh2.crypto.SimpleDERReader;
import com.trilead.ssh2.packets.TypesReader;
import com.trilead.ssh2.packets.TypesWriter;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import java.io.IOException;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.interfaces.DSAParams;
import java.security.spec.DSAPrivateKeySpec;
import java.security.spec.DSAPublicKeySpec;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes3.dex */
public class DSAKeyAlgorithm extends KeyAlgorithm<java.security.interfaces.DSAPublicKey, java.security.interfaces.DSAPrivateKey> {

    /* loaded from: classes3.dex */
    public static class DsaCertificateDecoder extends CertificateDecoder {
        public /* synthetic */ DsaCertificateDecoder(int i) {
            this();
        }

        @Override // com.trilead.ssh2.crypto.CertificateDecoder
        public KeyPair createKeyPair(PEMStructure pEMStructure) {
            SimpleDERReader simpleDERReader = new SimpleDERReader(pEMStructure.getData());
            byte[] readSequenceAsByteArray = simpleDERReader.readSequenceAsByteArray();
            if (simpleDERReader.available() == 0) {
                simpleDERReader.resetInput(readSequenceAsByteArray);
                BigInteger readInt = simpleDERReader.readInt();
                if (readInt.compareTo(BigInteger.ZERO) == 0) {
                    BigInteger readInt2 = simpleDERReader.readInt();
                    BigInteger readInt3 = simpleDERReader.readInt();
                    BigInteger readInt4 = simpleDERReader.readInt();
                    BigInteger readInt5 = simpleDERReader.readInt();
                    BigInteger readInt6 = simpleDERReader.readInt();
                    if (simpleDERReader.available() == 0) {
                        try {
                            DSAPrivateKeySpec dSAPrivateKeySpec = new DSAPrivateKeySpec(readInt6, readInt2, readInt3, readInt4);
                            DSAPublicKeySpec dSAPublicKeySpec = new DSAPublicKeySpec(readInt5, readInt2, readInt3, readInt4);
                            KeyFactory keyFactory = KeyFactory.getInstance(new ObfuscatedString(new long[]{2142796390160833854L, -1031982206538855025L}).toString());
                            return new KeyPair(keyFactory.generatePublic(dSAPublicKeySpec), keyFactory.generatePrivate(dSAPrivateKeySpec));
                        } catch (GeneralSecurityException unused) {
                            throw new IOException(new ObfuscatedString(new long[]{7550173057761299775L, -3216678605095057748L, -5783901733057055775L, -8126448627445072643L, 2622476814194681740L}).toString());
                        }
                    }
                    throw new IOException(new ObfuscatedString(new long[]{-1062193258066594356L, -2014734466680812156L, 238406154414629114L, -773356240309865525L, 2772058121008129789L, -8736136376597664338L}).toString());
                }
                StringBuilder sb = new StringBuilder();
                sb.append(new ObfuscatedString(new long[]{5404522447247602264L, -6177528717765000882L, -2924245665411444603L}).toString());
                sb.append(readInt);
                throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-2290514233295128706L, -8286595429328966395L, 3891426430618993231L, 6347516737541409256L, -7679642614996901222L}), sb));
            }
            throw new IOException(new ObfuscatedString(new long[]{960276922815403148L, 18478588477475013L, -617834561615324846L, -4313730478300579557L, -533916008380106685L, 3678189119656410960L}).toString());
        }

        @Override // com.trilead.ssh2.crypto.CertificateDecoder
        public String getEndLine() {
            return new ObfuscatedString(new long[]{-6781421814587860723L, 5889868934356761065L, 8556228132322966824L, -784684194165111354L, -8415979167124751385L}).toString();
        }

        @Override // com.trilead.ssh2.crypto.CertificateDecoder
        public String getStartLine() {
            return new ObfuscatedString(new long[]{4022733035601168158L, -8046642363813825863L, -1897572421030370367L, 8831405009179708449L, -7076201465498126119L}).toString();
        }

        private DsaCertificateDecoder() {
        }
    }

    public DSAKeyAlgorithm() {
        super(new ObfuscatedString(new long[]{808853387850301993L, 2411199727274427076L, -5520779026192794540L}).toString(), new ObfuscatedString(new long[]{-8421265010868670463L, 969946841804990722L}).toString(), java.security.interfaces.DSAPrivateKey.class);
    }

    @Override // com.trilead.ssh2.signature.KeyAlgorithm
    public byte[] decodeSignature(byte[] bArr) {
        int i;
        byte b;
        byte b2;
        byte b3;
        if (bArr.length != 40) {
            TypesReader typesReader = new TypesReader(bArr);
            if (typesReader.readString().equals(getKeyFormat())) {
                bArr = typesReader.readByteString();
                if (bArr.length == 40) {
                    if (typesReader.remain() != 0) {
                        throw new IOException(new ObfuscatedString(new long[]{-1055352522476670819L, -4121853189069843282L, -6862858287482695736L, 4835690102431379787L, -7031320207071205055L}).toString());
                    }
                } else {
                    throw new IOException(new ObfuscatedString(new long[]{3705499286836957340L, -6897763110555521149L, -791796216507721463L, -1762106567487884229L, 2012121886197320225L}).toString());
                }
            } else {
                throw new IOException(new ObfuscatedString(new long[]{4175184503334469650L, 7780907287818376795L, 7975974386111290631L, 6767201577583295569L, 3918074063820387395L}).toString());
            }
        }
        byte b4 = bArr[0];
        if (b4 == 0 && (b2 = bArr[1]) == 0 && (b3 = bArr[2]) == 0) {
            int i2 = ((b4 << Ascii.CAN) & ViewCompat.MEASURED_STATE_MASK) | ((b2 << Ascii.DLE) & 16711680) | ((b3 << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | (bArr[3] & 255);
            int i3 = ((bArr[4 + i2] << 24) & ViewCompat.MEASURED_STATE_MASK) | (16711680 & (bArr[i2 + 5] << 16)) | (65280 & (bArr[i2 + 6] << 8)) | (bArr[i2 + 7] & 255);
            byte[] bArr2 = new byte[i3];
            System.arraycopy(bArr, i2 + 8, bArr2, 0, i3);
            bArr = bArr2;
        }
        if ((bArr[0] & 128) != 0) {
            i = 1;
        } else {
            i = 0;
        }
        if ((bArr[20] & 128) != 0) {
            b = 1;
        } else {
            b = 0;
        }
        byte[] bArr3 = new byte[AbstractC0362x4440ab85.m2926x3271d0aa(bArr.length, 6, i, b)];
        bArr3[0] = 48;
        if (bArr.length == 40) {
            bArr3[1] = 44;
            byte b5 = (byte) (44 + i);
            bArr3[1] = b5;
            bArr3[1] = (byte) (b5 + b);
            bArr3[2] = 2;
            bArr3[3] = Ascii.DC4;
            bArr3[3] = (byte) (20 + i);
            System.arraycopy(bArr, 0, bArr3, i + 4, 20);
            bArr3[bArr3[3] + 4] = 2;
            bArr3[bArr3[3] + 5] = Ascii.DC4;
            int i4 = bArr3[3] + 5;
            bArr3[i4] = (byte) (bArr3[i4] + b);
            System.arraycopy(bArr, 20, bArr3, bArr3[3] + 6 + b, 20);
            return bArr3;
        }
        throw new IOException(new ObfuscatedString(new long[]{3958270353520130755L, 7547127501953726274L, -1484071972260937943L, -9068564292584352635L, -7956111230644938933L}).toString());
    }

    @Override // com.trilead.ssh2.signature.KeyAlgorithm
    public byte[] encodeSignature(byte[] bArr) {
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeString(getKeyFormat());
        int i = bArr[3] & 255;
        byte[] bArr2 = new byte[i];
        System.arraycopy(bArr, 4, bArr2, 0, i);
        int i2 = bArr[i + 5] & 255;
        byte[] bArr3 = new byte[i2];
        System.arraycopy(bArr, i + 6, bArr3, 0, i2);
        byte[] bArr4 = new byte[40];
        int min = Math.min(i, 20);
        int min2 = Math.min(i2, 20);
        System.arraycopy(bArr2, i - min, bArr4, 20 - min, min);
        System.arraycopy(bArr3, i2 - min2, bArr4, 40 - min2, min2);
        typesWriter.writeString(bArr4, 0, 40);
        return typesWriter.getBytes();
    }

    @Override // com.trilead.ssh2.signature.KeyAlgorithm
    public List<CertificateDecoder> getCertificateDecoders() {
        return Arrays.asList(new DsaCertificateDecoder(0), new OpenSshCertificateDecoder(getKeyFormat()) { // from class: com.trilead.ssh2.signature.DSAKeyAlgorithm.1
            @Override // com.trilead.ssh2.signature.OpenSshCertificateDecoder
            public KeyPair generateKeyPair(TypesReader typesReader) {
                BigInteger readMPINT = typesReader.readMPINT();
                BigInteger readMPINT2 = typesReader.readMPINT();
                BigInteger readMPINT3 = typesReader.readMPINT();
                BigInteger readMPINT4 = typesReader.readMPINT();
                DSAPrivateKeySpec dSAPrivateKeySpec = new DSAPrivateKeySpec(typesReader.readMPINT(), readMPINT, readMPINT2, readMPINT3);
                DSAPublicKeySpec dSAPublicKeySpec = new DSAPublicKeySpec(readMPINT4, readMPINT, readMPINT2, readMPINT3);
                KeyFactory keyFactory = KeyFactory.getInstance(new ObfuscatedString(new long[]{1720890648139802843L, 1328272327509673423L}).toString());
                return new KeyPair(keyFactory.generatePublic(dSAPublicKeySpec), keyFactory.generatePrivate(dSAPrivateKeySpec));
            }
        });
    }

    @Override // com.trilead.ssh2.signature.KeyAlgorithm
    public java.security.interfaces.DSAPublicKey decodePublicKey(byte[] bArr) {
        TypesReader typesReader = new TypesReader(bArr);
        String readString = typesReader.readString();
        if (readString.equals(getKeyFormat())) {
            BigInteger readMPINT = typesReader.readMPINT();
            BigInteger readMPINT2 = typesReader.readMPINT();
            BigInteger readMPINT3 = typesReader.readMPINT();
            BigInteger readMPINT4 = typesReader.readMPINT();
            if (typesReader.remain() == 0) {
                try {
                    return (java.security.interfaces.DSAPublicKey) KeyFactory.getInstance(new ObfuscatedString(new long[]{9080060477831199353L, -8262246453353966591L}).toString()).generatePublic(new DSAPublicKeySpec(readMPINT4, readMPINT, readMPINT2, readMPINT3));
                } catch (GeneralSecurityException e) {
                    throw new IOException(new ObfuscatedString(new long[]{5021126400693524368L, -7087260820524688183L, 5510896714498383853L, 7333734838366252770L, -3796197599659662741L}).toString(), e);
                }
            }
            throw new IOException(new ObfuscatedString(new long[]{-794996513883472548L, 1116333513736651984L, -8797487015898257874L, 3653749886190928057L, -8313420125089709367L}).toString());
        }
        throw new IOWarningException(new ObfuscatedString(new long[]{-6810169384712058544L, -2688662728724083028L, 8143268638249077987L, 8622341877874346789L, 4365559518791795107L}).toString() + readString + new ObfuscatedString(new long[]{-1505663631735296424L, -7986827293483280613L, 1651027937317686599L, -1492114061778042946L}).toString() + getKeyFormat());
    }

    @Override // com.trilead.ssh2.signature.KeyAlgorithm
    public byte[] encodePublicKey(java.security.interfaces.DSAPublicKey dSAPublicKey) {
        DSAParams params = dSAPublicKey.getParams();
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeString(getKeyFormat());
        typesWriter.writeMPInt(params.getP());
        typesWriter.writeMPInt(params.getQ());
        typesWriter.writeMPInt(params.getG());
        typesWriter.writeMPInt(dSAPublicKey.getY());
        return typesWriter.getBytes();
    }
}
