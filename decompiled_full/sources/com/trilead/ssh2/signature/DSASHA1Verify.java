package com.trilead.ssh2.signature;

import com.panda912.muddy.ObfuscatedString;
import com.trilead.ssh2.IOWarningException;
import com.trilead.ssh2.crypto.digest.SHA1;
import com.trilead.ssh2.log.Logger;
import com.trilead.ssh2.packets.TypesReader;
import com.trilead.ssh2.packets.TypesWriter;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import java.io.IOException;
import java.math.BigInteger;
import java.security.SecureRandom;

@Deprecated
/* loaded from: classes3.dex */
public class DSASHA1Verify {
    private static final Logger log = Logger.getLogger(DSASHA1Verify.class);

    @Deprecated
    public static DSAPublicKey decodeSSHDSAPublicKey(byte[] bArr) {
        TypesReader typesReader = new TypesReader(bArr);
        String readString = typesReader.readString();
        if (readString.equals(new ObfuscatedString(new long[]{6817641700594285462L, -4688784722914219630L}).toString())) {
            BigInteger readMPINT = typesReader.readMPINT();
            BigInteger readMPINT2 = typesReader.readMPINT();
            BigInteger readMPINT3 = typesReader.readMPINT();
            BigInteger readMPINT4 = typesReader.readMPINT();
            if (typesReader.remain() == 0) {
                return new DSAPublicKey(readMPINT, readMPINT2, readMPINT3, readMPINT4);
            }
            throw new IOException(new ObfuscatedString(new long[]{-3772330370652104615L, 439986017848581709L, 5841628437563758130L, -1948588924975418171L, 2403085784113580299L}).toString());
        }
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{4787042449786676349L, -3275290274545743669L, -5428982913775322763L, 5106370128014710783L, -4648554933723657000L}).toString());
        sb.append(readString);
        throw new IOWarningException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-1926641980667159532L, 4516713831338017193L, -3259262722441153820L, -6809138091554963764L, 5318645048599882365L}), sb));
    }

    @Deprecated
    public static DSASignature decodeSSHDSASignature(byte[] bArr) {
        if (bArr.length != 40) {
            TypesReader typesReader = new TypesReader(bArr);
            if (typesReader.readString().equals(new ObfuscatedString(new long[]{-6674468684892069851L, -2619031051179086745L}).toString())) {
                bArr = typesReader.readByteString();
                if (bArr.length == 40) {
                    if (typesReader.remain() != 0) {
                        throw new IOException(new ObfuscatedString(new long[]{4192607358410930374L, -4016872059870636632L, 2059848060063749984L, -3198104740508840128L, -6273431301679372974L}).toString());
                    }
                } else {
                    throw new IOException(new ObfuscatedString(new long[]{-3304354988642733736L, -506843993418202061L, 4049096406466134519L, -4127000136444930025L, 6429471460276083585L}).toString());
                }
            } else {
                throw new IOException(new ObfuscatedString(new long[]{347846951932675445L, -6173689829235562503L, 5266899355122133931L, 4949090945974489550L, 6122722568324856856L}).toString());
            }
        }
        byte[] bArr2 = new byte[20];
        System.arraycopy(bArr, 0, bArr2, 0, 20);
        BigInteger bigInteger = new BigInteger(1, bArr2);
        System.arraycopy(bArr, 20, bArr2, 0, 20);
        BigInteger bigInteger2 = new BigInteger(1, bArr2);
        Logger logger = log;
        if (logger.isEnabled()) {
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{-45277724201659217L, -526086424259432938L, 709243420186032889L, 1810289951295633615L, -5779668190588370080L, -6539486288661736299L, 5423789263135111046L}).toString());
            sb.append(bArr[0] & 255);
            sb.append(new ObfuscatedString(new long[]{-1612963493574692781L, 1180057907368242120L}).toString());
            sb.append(bArr[20] & 255);
            AbstractC0362x4440ab85.m2949xe1f61061(new ObfuscatedString(new long[]{7873191057326403013L, -7285963138613579726L}), sb, logger, 30);
        }
        return new DSASignature(bigInteger, bigInteger2);
    }

    @Deprecated
    public static byte[] encodeSSHDSAPublicKey(DSAPublicKey dSAPublicKey) {
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeString(new ObfuscatedString(new long[]{-5758201722641750331L, 9007777485649508201L}).toString());
        typesWriter.writeMPInt(dSAPublicKey.getP());
        typesWriter.writeMPInt(dSAPublicKey.getQ());
        typesWriter.writeMPInt(dSAPublicKey.getG());
        typesWriter.writeMPInt(dSAPublicKey.getY());
        return typesWriter.getBytes();
    }

    @Deprecated
    public static byte[] encodeSSHDSASignature(DSASignature dSASignature) {
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeString(new ObfuscatedString(new long[]{-4133766694690603064L, 9043968270082416992L}).toString());
        byte[] byteArray = dSASignature.getR().toByteArray();
        byte[] byteArray2 = dSASignature.getS().toByteArray();
        byte[] bArr = new byte[40];
        int min = Math.min(byteArray.length, 20);
        int min2 = Math.min(byteArray2.length, 20);
        System.arraycopy(byteArray, byteArray.length - min, bArr, 20 - min, min);
        System.arraycopy(byteArray2, byteArray2.length - min2, bArr, 40 - min2, min2);
        typesWriter.writeString(bArr, 0, 40);
        return typesWriter.getBytes();
    }

    @Deprecated
    public static DSASignature generateSignature(byte[] bArr, DSAPrivateKey dSAPrivateKey, SecureRandom secureRandom) {
        BigInteger bigInteger;
        SHA1 sha1 = new SHA1();
        sha1.update(bArr);
        byte[] bArr2 = new byte[sha1.getDigestLength()];
        sha1.digest(bArr2);
        BigInteger bigInteger2 = new BigInteger(1, bArr2);
        int bitLength = dSAPrivateKey.getQ().bitLength();
        do {
            bigInteger = new BigInteger(bitLength, secureRandom);
        } while (bigInteger.compareTo(dSAPrivateKey.getQ()) >= 0);
        BigInteger mod = dSAPrivateKey.getG().modPow(bigInteger, dSAPrivateKey.getP()).mod(dSAPrivateKey.getQ());
        return new DSASignature(mod, bigInteger.modInverse(dSAPrivateKey.getQ()).multiply(bigInteger2.add(dSAPrivateKey.getX().multiply(mod))).mod(dSAPrivateKey.getQ()));
    }

    @Deprecated
    public static boolean verifySignature(byte[] bArr, DSASignature dSASignature, DSAPublicKey dSAPublicKey) {
        SHA1 sha1 = new SHA1();
        sha1.update(bArr);
        byte[] bArr2 = new byte[sha1.getDigestLength()];
        sha1.digest(bArr2);
        BigInteger bigInteger = new BigInteger(1, bArr2);
        BigInteger r = dSASignature.getR();
        BigInteger s = dSASignature.getS();
        BigInteger g = dSAPublicKey.getG();
        BigInteger p = dSAPublicKey.getP();
        BigInteger q = dSAPublicKey.getQ();
        BigInteger y = dSAPublicKey.getY();
        BigInteger bigInteger2 = BigInteger.ZERO;
        Logger logger = log;
        if (logger.isEnabled()) {
            logger.log(60, new ObfuscatedString(new long[]{-8664316963262537059L, -3840262165757141734L, -363361684744479195L, -689037625407525053L}).toString() + bigInteger.toString(16));
            logger.log(60, new ObfuscatedString(new long[]{-4326316433484072985L, 8088890228666541453L, 1513382657275758908L, -6427485778252413156L}).toString() + r.toString(16));
            logger.log(60, new ObfuscatedString(new long[]{-8363927068716509893L, 7229010763674989827L, -8976405260695645670L, -5812764479228214996L}).toString() + s.toString(16));
            logger.log(60, new ObfuscatedString(new long[]{7715813522357724269L, -7584341265548232454L, 6114413629165758543L, -8242351793828668586L}).toString() + g.toString(16));
            logger.log(60, new ObfuscatedString(new long[]{-6209332474269259133L, -5611583307464445710L, 214988154797029575L, -4967858112282286273L}).toString() + p.toString(16));
            logger.log(60, new ObfuscatedString(new long[]{3329570585536198152L, -611536404793371271L, 7461823486477444311L, 4690586849428294789L}).toString() + q.toString(16));
            logger.log(60, new ObfuscatedString(new long[]{2784173349660426672L, 1514726415287753850L, -8822418393633144681L, -3719992051255348720L}).toString() + y.toString(16));
        }
        if (bigInteger2.compareTo(r) < 0 && q.compareTo(r) > 0) {
            if (bigInteger2.compareTo(s) < 0 && q.compareTo(s) > 0) {
                BigInteger modInverse = s.modInverse(q);
                return g.modPow(bigInteger.multiply(modInverse).mod(q), p).multiply(y.modPow(r.multiply(modInverse).mod(q), p)).mod(p).mod(q).equals(r);
            }
            logger.log(20, new ObfuscatedString(new long[]{2420081128118054674L, -5023046339256033736L, 9072401090456048525L, 1661171252948492409L, 7822467918209625152L, -8649486860898860277L, -1332435133998107742L, 6267001308762739987L, 7108993428220492049L}).toString());
            return false;
        }
        logger.log(20, new ObfuscatedString(new long[]{2655674615401958505L, 1406829064925094458L, -7996265917816397334L, 4304007965189902217L, 1751007551472395420L, 4268164370921430283L, 8580504850310997112L, -2242352858688025455L, 4703155101545913498L}).toString());
        return false;
    }
}
