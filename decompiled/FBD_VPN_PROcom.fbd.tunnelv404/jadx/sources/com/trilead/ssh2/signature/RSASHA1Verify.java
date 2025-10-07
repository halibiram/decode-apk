package com.trilead.ssh2.signature;

import com.google.common.base.Ascii;
import com.panda912.muddy.ObfuscatedString;
import com.trilead.ssh2.IOWarningException;
import com.trilead.ssh2.crypto.SimpleDERReader;
import com.trilead.ssh2.crypto.digest.SHA1;
import com.trilead.ssh2.log.Logger;
import com.trilead.ssh2.packets.TypesReader;
import com.trilead.ssh2.packets.TypesWriter;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import java.io.IOException;
import java.math.BigInteger;

@Deprecated
/* loaded from: classes3.dex */
public class RSASHA1Verify {
    private static final Logger log = Logger.getLogger(RSASHA1Verify.class);

    @Deprecated
    public static RSAPublicKey decodeSSHRSAPublicKey(byte[] bArr) {
        TypesReader typesReader = new TypesReader(bArr);
        String readString = typesReader.readString();
        if (readString.equals(new ObfuscatedString(new long[]{-4785548231460090526L, -3049424695357425307L}).toString())) {
            BigInteger readMPINT = typesReader.readMPINT();
            BigInteger readMPINT2 = typesReader.readMPINT();
            if (typesReader.remain() == 0) {
                return new RSAPublicKey(readMPINT, readMPINT2);
            }
            throw new IOException(new ObfuscatedString(new long[]{-4199052601556021671L, -7722561558905582802L, 3171497982833484265L, 1739049805867673310L, 1445133714968277411L}).toString());
        }
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{8073746424702212390L, 7997596476801411334L, -4913939117572930574L, 5033392213999634126L, -8358821883431460666L}).toString());
        sb.append(readString);
        throw new IOWarningException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{2736848633263729952L, 2100150367705376140L, -3824746019228344496L, -7462447081761857708L, -436206026303145527L}), sb));
    }

    @Deprecated
    public static RSASignature decodeSSHRSASignature(byte[] bArr) {
        TypesReader typesReader = new TypesReader(bArr);
        if (typesReader.readString().equals(new ObfuscatedString(new long[]{4475507914339757218L, -5069678695943204988L}).toString())) {
            byte[] readByteString = typesReader.readByteString();
            if (readByteString.length != 0) {
                Logger logger = log;
                if (logger.isEnabled()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(new ObfuscatedString(new long[]{-7959599035005610688L, -5407026318945092300L, -6081160516479963809L, -1876051148852184353L, 6895358105889065659L, 910106204320053317L, -4122255023615870337L}).toString());
                    sb.append(readByteString.length);
                    AbstractC0362x4440ab85.m2949xe1f61061(new ObfuscatedString(new long[]{950371463797167473L, -2594160079364971073L}), sb, logger, 80);
                }
                if (typesReader.remain() == 0) {
                    return new RSASignature(new BigInteger(1, readByteString));
                }
                throw new IOException(new ObfuscatedString(new long[]{-6245421157670213069L, -1423565022518036281L, -9076955185914203386L, -3979105668674371015L, 2616233888820069985L}).toString());
            }
            throw new IOException(new ObfuscatedString(new long[]{-961159057159329326L, 4713054609639179245L, 6305592747878821356L, -2641724309008705220L, -2307365842338743855L, -4594792335773263665L}).toString());
        }
        throw new IOException(new ObfuscatedString(new long[]{-8015711501808144250L, -1967727873521070070L, 1477308750213985114L, 843187312357608584L, 5904849780868818590L}).toString());
    }

    @Deprecated
    public static byte[] encodeSSHRSAPublicKey(RSAPublicKey rSAPublicKey) {
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeString(new ObfuscatedString(new long[]{-7500635981607107388L, -8994552389768250628L}).toString());
        typesWriter.writeMPInt(rSAPublicKey.getE());
        typesWriter.writeMPInt(rSAPublicKey.getN());
        return typesWriter.getBytes();
    }

    @Deprecated
    public static byte[] encodeSSHRSASignature(RSASignature rSASignature) {
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeString(new ObfuscatedString(new long[]{1340185738579673216L, 501485855938963592L}).toString());
        byte[] byteArray = rSASignature.getS().toByteArray();
        if (byteArray.length > 1 && byteArray[0] == 0) {
            typesWriter.writeString(byteArray, 1, byteArray.length - 1);
        } else {
            typesWriter.writeString(byteArray, 0, byteArray.length);
        }
        return typesWriter.getBytes();
    }

    @Deprecated
    public static RSASignature generateSignature(byte[] bArr, RSAPrivateKey rSAPrivateKey) {
        SHA1 sha1 = new SHA1();
        sha1.update(bArr);
        int digestLength = sha1.getDigestLength();
        byte[] bArr2 = new byte[digestLength];
        sha1.digest(bArr2);
        byte[] bArr3 = {48, 33, 48, 9, 6, 5, 43, Ascii.SO, 3, 2, Ascii.SUB, 5, 0, 4, Ascii.DC4};
        int bitLength = ((rSAPrivateKey.getN().bitLength() + 7) / 8) - (17 + digestLength);
        int i = bitLength - 1;
        if (i >= 8) {
            byte[] bArr4 = new byte[17 + digestLength + i];
            bArr4[0] = 1;
            int i2 = 0;
            while (i2 < i) {
                i2++;
                bArr4[i2] = -1;
            }
            bArr4[bitLength] = 0;
            System.arraycopy(bArr3, 0, bArr4, bitLength + 1, 15);
            System.arraycopy(bArr2, 0, bArr4, bitLength + 16, digestLength);
            return new RSASignature(new BigInteger(1, bArr4).modPow(rSAPrivateKey.getD(), rSAPrivateKey.getN()));
        }
        throw new IOException(new ObfuscatedString(new long[]{-549959088536596867L, 6904438503790129637L, 3297999423426055073L, -8947347876739878607L, -5657595160932506978L, -9191983314851965195L}).toString());
    }

    @Deprecated
    public static boolean verifySignature(byte[] bArr, RSASignature rSASignature, RSAPublicKey rSAPublicKey) {
        int i;
        SHA1 sha1 = new SHA1();
        sha1.update(bArr);
        int digestLength = sha1.getDigestLength();
        byte[] bArr2 = new byte[digestLength];
        sha1.digest(bArr2);
        BigInteger n = rSAPublicKey.getN();
        BigInteger e = rSAPublicKey.getE();
        BigInteger s = rSASignature.getS();
        if (n.compareTo(s) <= 0) {
            log.log(20, new ObfuscatedString(new long[]{-3040774777547796517L, 2698734919916500972L, -3166987202117157422L, -6641022874126885506L, -966125564839549139L, -5132046051842501390L}).toString());
            return false;
        }
        int bitLength = (n.bitLength() + 7) / 8;
        if (bitLength < 1) {
            log.log(20, new ObfuscatedString(new long[]{-7053206446662952235L, -751987025809663366L, 6501950858571902598L, -3822439519190602946L, -5376907584691915687L, 3884017529961149151L}).toString());
            return false;
        }
        byte[] byteArray = s.modPow(e, n).toByteArray();
        if (byteArray.length > 0 && byteArray[0] == 0) {
            i = 1;
        } else {
            i = 0;
        }
        if (byteArray.length - i != bitLength - 1) {
            log.log(20, new ObfuscatedString(new long[]{6494764392975610831L, -1895860636125609492L, -7180579431201556228L, 1800331336334236677L, 2234355178367003563L, -1486390190499216906L, -8251264874926542596L, -4131687231573037287L, 607584097672794389L}).toString());
            return false;
        }
        if (byteArray[i] != 1) {
            log.log(20, new ObfuscatedString(new long[]{5689986506452078294L, -1526063086910596944L, 1950370543544138443L, -5388280842770158669L, -3493971766605891292L, 6918155096815677187L}).toString());
            return false;
        }
        int i2 = i + 1;
        for (int i3 = i2; i3 < byteArray.length; i3++) {
            byte b = byteArray[i3];
            if (b == 0) {
                if (i3 - i2 < 8) {
                    log.log(20, new ObfuscatedString(new long[]{1226762706716705717L, -4432701496437300603L, 5360571926631838906L, 3501549590417590118L, 62904561827103230L}).toString());
                    return false;
                }
                int i4 = i3 + 1;
                if (i4 >= byteArray.length) {
                    log.log(20, new ObfuscatedString(new long[]{1788122807314011268L, -8317838734548488433L, -5104882961152076498L, 6338386181983701896L, 2649471686736028383L, -1863237144284109981L}).toString());
                    return false;
                }
                SimpleDERReader simpleDERReader = new SimpleDERReader(byteArray, i4, byteArray.length - i4);
                byte[] readSequenceAsByteArray = simpleDERReader.readSequenceAsByteArray();
                if (simpleDERReader.available() != 0) {
                    log.log(20, new ObfuscatedString(new long[]{8412379039191890605L, -8871851067284909479L, -3997411444418214356L, 1110865532384037899L, 7747628418697721374L, -1290562483036120111L}).toString());
                    return false;
                }
                simpleDERReader.resetInput(readSequenceAsByteArray);
                byte[] readSequenceAsByteArray2 = simpleDERReader.readSequenceAsByteArray();
                if (readSequenceAsByteArray2.length >= 8 && readSequenceAsByteArray2.length <= 9) {
                    byte[] bArr3 = {6, 5, 43, Ascii.SO, 3, 2, Ascii.SUB, 5, 0};
                    for (int i5 = 0; i5 < readSequenceAsByteArray2.length; i5++) {
                        if (readSequenceAsByteArray2[i5] != bArr3[i5]) {
                            log.log(20, new ObfuscatedString(new long[]{4221646391260261368L, 1526271390303619026L, 4940677324441788175L, -2520529943317296995L, 981158015591894301L, 25519984832336340L, 7217439258119823486L, 6183159808455697353L, -9111309383941712225L}).toString());
                            return false;
                        }
                    }
                    byte[] readOctetString = simpleDERReader.readOctetString();
                    if (simpleDERReader.available() != 0) {
                        log.log(20, new ObfuscatedString(new long[]{59296893636393614L, 3032299333480198731L, -4292093404779474267L, 6397972551063268500L, -863072900874714545L, -3310897627356321338L, -3035681932467060131L}).toString());
                        return false;
                    }
                    if (readOctetString.length != digestLength) {
                        log.log(20, new ObfuscatedString(new long[]{4229012957083145276L, -9121739004555585656L, -1958938986946575996L, 410894307164872999L, 4624022031995328926L, -2644283712202374137L, -7030465100924088261L, 8236762323243193357L}).toString());
                        return false;
                    }
                    for (int i6 = 0; i6 < digestLength; i6++) {
                        if (bArr2[i6] != readOctetString[i6]) {
                            log.log(20, new ObfuscatedString(new long[]{-1367128960455704722L, 2766435654914223582L, 1934618163944323689L, -6787881795334605478L, 4500577063546140528L, 1889513942166172577L, -576084758188675140L}).toString());
                            return false;
                        }
                    }
                    return true;
                }
                log.log(20, new ObfuscatedString(new long[]{-3942944805720758260L, -6717293419644070902L, -4799268609667826818L, 1268332824549281619L, -5733245505914811322L, -1126907660251163195L, 1055096905658824358L, 8349661089078610791L, -1755856212042962936L, 7597745076521039389L, 3772190254785949808L}).toString());
                return false;
            }
            if (b != -1) {
                log.log(20, new ObfuscatedString(new long[]{8908108933591664558L, 3855365255321509948L, 5096898689753323481L, 1878326866258783298L, -8414769217973645049L, 4197806064514039326L}).toString());
                return false;
            }
        }
        log.log(20, new ObfuscatedString(new long[]{-6336874253985576492L, -3386019196138112181L, 7033638190971769994L, 1609892456311858283L, 1057151823070848976L, 7652421122102490722L}).toString());
        return false;
    }
}
