package com.trilead.ssh2.signature;

import com.panda912.muddy.ObfuscatedString;
import com.trilead.ssh2.crypto.CertificateDecoder;
import com.trilead.ssh2.crypto.PEMStructure;
import com.trilead.ssh2.crypto.SimpleDERReader;
import com.trilead.ssh2.packets.TypesReader;
import com.trilead.ssh2.packets.TypesWriter;
import defpackage.AbstractC0749x8313616e;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.PrivateKey;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECFieldFp;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPrivateKeySpec;
import java.security.spec.ECPublicKeySpec;
import java.security.spec.EllipticCurve;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class ECDSAKeyAlgorithm extends KeyAlgorithm<ECPublicKey, ECPrivateKey> {
    private static final byte ANS1_INTEGER = 2;
    private static final byte ANS1_ZERO = 0;
    private static final String ECDSA_SHA2_PREFIX = new ObfuscatedString(new long[]{7693709427684119947L, -406546353484172678L, 4644060273408190504L}).toString();
    private final String curveName;
    private final ECParameterSpec ecParameterSpec;

    /* loaded from: classes3.dex */
    public static class ECDSASha2Nistp256 extends ECDSAKeyAlgorithm {
        public ECDSASha2Nistp256() {
            super(new ObfuscatedString(new long[]{3092554193765355795L, -1050337802633023724L, 1491625079794398815L}).toString(), new ObfuscatedString(new long[]{3045034828665097894L, 641158942370381348L}).toString(), new ECParameterSpec(new EllipticCurve(new ECFieldFp(new BigInteger(new ObfuscatedString(new long[]{2245163876933840817L, -4392775054120111821L, -731007990267646884L, -7814545492679865991L, 3765336317044074194L, 2673975460791963143L, -7817142186577379832L, -1577000191817091205L, -4539555965816157188L}).toString(), 16)), new BigInteger(new ObfuscatedString(new long[]{4691979130572189867L, -4747258963010560396L, -1736601831021754865L, -3740650883581716653L, -6611762992158304438L, 8879570668666414176L, 7356364310024012267L, -4470587480623167123L, 2921982186678055736L}).toString(), 16), new BigInteger(new ObfuscatedString(new long[]{-2167938855059516440L, 6811956155185494691L, -28238717774483773L, -7143460548119631704L, -3037847380499918431L, -3784687360807817704L, -3164066213714535303L, 3791933270586125682L, -8763582426708660223L}).toString(), 16)), new ECPoint(new BigInteger(new ObfuscatedString(new long[]{-2155121281233762044L, 4950757399893815278L, -5469552955423763840L, 627062234354016620L, -144466083804537977L, -1818100201013842046L, -3670283787459267008L, 6669041159979986512L, 1986347003803314277L}).toString(), 16), new BigInteger(new ObfuscatedString(new long[]{4302090487317421362L, 7356501720180548928L, 134230938888430771L, -8866564932619995456L, 7287186636767331745L, 3183172300615057625L, -2941520166053228187L, 1956326499436978198L, 1660303943651308616L}).toString(), 16)), new BigInteger(new ObfuscatedString(new long[]{-4321430261415467899L, -4166538349361876003L, 6349466612834432222L, 4112217058038464834L, -5305011886681525883L, 6652448009452676897L, 6552322968906180460L, 7181427475639620055L, -335950810158886345L}).toString(), 16), 1), 0);
        }

        @Override // com.trilead.ssh2.signature.ECDSAKeyAlgorithm, com.trilead.ssh2.signature.KeyAlgorithm
        public /* bridge */ /* synthetic */ ECPublicKey decodePublicKey(byte[] bArr) {
            return super.decodePublicKey(bArr);
        }

        @Override // com.trilead.ssh2.signature.ECDSAKeyAlgorithm, com.trilead.ssh2.signature.KeyAlgorithm
        public /* bridge */ /* synthetic */ byte[] encodePublicKey(ECPublicKey eCPublicKey) {
            return super.encodePublicKey(eCPublicKey);
        }

        @Override // com.trilead.ssh2.signature.KeyAlgorithm
        public List<CertificateDecoder> getCertificateDecoders() {
            return Arrays.asList(new EcdsaCertificateDecoder(new ObfuscatedString(new long[]{576894663241970004L, 7176658729998389868L, 1149749956858286741L, 6548791681685703406L}).toString(), getEcParameterSpec(), 0), new OpenSshEcdsaCertificateDecoder(getKeyFormat(), getCurveName(), getEcParameterSpec()));
        }
    }

    /* loaded from: classes3.dex */
    public static class ECDSASha2Nistp384 extends ECDSAKeyAlgorithm {
        public ECDSASha2Nistp384() {
            super(new ObfuscatedString(new long[]{2260600243034175490L, -4313950239817971107L, 8993932624858490384L}).toString(), new ObfuscatedString(new long[]{2747384870391896951L, 7491224802245198348L}).toString(), new ECParameterSpec(new EllipticCurve(new ECFieldFp(new BigInteger(new ObfuscatedString(new long[]{2106716981974023519L, -656195403279008403L, -3076839028208512144L, 612149858797331286L, 642673776534263695L, -5168256460869128248L, -9119409153257965233L, 1012069195988422261L, 5016357083028969357L, -5050209908147719020L, -4746653485523161715L, -4948703426319697650L, 8154745719752099469L}).toString(), 16)), new BigInteger(new ObfuscatedString(new long[]{2174426843219131290L, -8394026210045826478L, -1769260028082508531L, -7040715105211230288L, -2142694400973991730L, -2284882815730219309L, -187597940040290483L, -3747586178069052368L, -3504307299489007907L, 7044980320347962795L, -3997080411297831780L, -1443543302000262498L, -2037001749503427489L}).toString(), 16), new BigInteger(new ObfuscatedString(new long[]{197885932786336036L, 742662637407750690L, -1163355540536937484L, 4122907054085813216L, 2175467756793303224L, 4611757399152847434L, 5798484570739064209L, -5874711215664009792L, 5590524760475456802L, 1225665246011834515L, -6682724886446165490L, -4696294279506437528L, -5658227958622963867L}).toString(), 16)), new ECPoint(new BigInteger(new ObfuscatedString(new long[]{8537550220931179529L, 4713821627679437475L, 218683435197149691L, 6335626896782536877L, 3457388497592416911L, -2651970737110165529L, -3564077464778826442L, -661807636184989556L, -2822043128698877260L, 5222214523675236484L, 1345057513556487856L, 3873917130949832822L, -1771872540773000682L}).toString(), 16), new BigInteger(new ObfuscatedString(new long[]{7864986330426466076L, 6859523229748813232L, 6620319977742895048L, 501884476171449436L, 2758486383721414782L, 2796348255932502195L, -7914899930017206881L, 3352551372231192954L, 6151393725153180936L, -7195759890593837944L, 1715535389037669027L, 8141273067115358828L, 6727079855067769007L}).toString(), 16)), new BigInteger(new ObfuscatedString(new long[]{-3485475965748740089L, 8596424036875587088L, 9162140022997072180L, 8628825152942273204L, -8631323860327525467L, 1578842561593581196L, 6051674505080291276L, -1727732575704571674L, -1051955669224599368L, 2895290735880248247L, -6128820316820102564L, -2725692686383203174L, 3173922545044955434L}).toString(), 16), 1), 0);
        }

        @Override // com.trilead.ssh2.signature.ECDSAKeyAlgorithm, com.trilead.ssh2.signature.KeyAlgorithm
        public /* bridge */ /* synthetic */ ECPublicKey decodePublicKey(byte[] bArr) {
            return super.decodePublicKey(bArr);
        }

        @Override // com.trilead.ssh2.signature.ECDSAKeyAlgorithm, com.trilead.ssh2.signature.KeyAlgorithm
        public /* bridge */ /* synthetic */ byte[] encodePublicKey(ECPublicKey eCPublicKey) {
            return super.encodePublicKey(eCPublicKey);
        }

        @Override // com.trilead.ssh2.signature.KeyAlgorithm
        public List<CertificateDecoder> getCertificateDecoders() {
            return Arrays.asList(new EcdsaCertificateDecoder(new ObfuscatedString(new long[]{-8668938584980127838L, -1003779249705404893L, 5079561274917909462L}).toString(), getEcParameterSpec(), 0), new OpenSshEcdsaCertificateDecoder(getKeyFormat(), getCurveName(), getEcParameterSpec()));
        }
    }

    /* loaded from: classes3.dex */
    public static class ECDSASha2Nistp521 extends ECDSAKeyAlgorithm {
        public ECDSASha2Nistp521() {
            super(new ObfuscatedString(new long[]{-1360332699347176628L, 3365915964758209991L, 8705991119509246246L}).toString(), new ObfuscatedString(new long[]{2698440480548833220L, 1061460128672933299L}).toString(), new ECParameterSpec(new EllipticCurve(new ECFieldFp(new BigInteger(new ObfuscatedString(new long[]{2411408213390665648L, -5354359202252527408L, -8543153326665996440L, 981997626421157846L, 8205651945893605947L, 499015534958152352L, -6953503480847755243L, 6519969165411517148L, 2833315891860782860L, 302240859690228047L, -825309553239892439L, 7237452153312751968L, 7563873160711771935L, -1971156014035089164L, 1968664233873495355L, -8427946971724553747L, 2980595986797241991L, 3145490505828943687L}).toString(), 16)), new BigInteger(new ObfuscatedString(new long[]{818361569451043854L, 8656937763400147659L, 5163241276284476939L, -3678113791358946686L, 4834032488813722321L, -8740801184480846453L, -255861624086161280L, -7192862918706953414L, -6663997964338639093L, -604281175806670058L, -876807365208980936L, 3926220884980398206L, -2107504022681676111L, 2354528436082823780L, -2412562759837363430L, 5963439026571396247L, 3458636167529067776L, -5473951315419966539L}).toString(), 16), new BigInteger(new ObfuscatedString(new long[]{-4989035637461263577L, -5555818249114712161L, 5639316244367746476L, -794983880605911411L, -3150657996275709249L, 6464574787665333326L, 4971135826199370813L, -2793265348793957002L, -3056553508613259886L, 202919966102555720L, -2937364882796020460L, -2043566856026696463L, 4525577115361321679L, -1238034001682158704L, 6554570495698192416L, 6831238253465955047L, 845602883771953698L, 3676795347979863686L}).toString(), 16)), new ECPoint(new BigInteger(new ObfuscatedString(new long[]{1395686149152688803L, 983538788144681049L, 8365155984741246865L, 8645714560356695808L, -4244386921701264808L, -572152295235379276L, -5677813189082718869L, 6423996472509690027L, 2865764309526477054L, -4673046231805931274L, -1385234551195157953L, -795980641326121535L, 445521222563432569L, 8081904025834355235L, -2261948171312332202L, 7196090250682201776L, -8180005768323976567L, -7417466014591823138L}).toString(), 16), new BigInteger(new ObfuscatedString(new long[]{-856949034509722071L, 1350074796470295985L, 2094629499880470383L, 4852444159530410335L, -4176200150249327215L, -7386515440513269137L, -8048975340762492792L, 9011305446263760227L, -2036690808111798527L, -8580915636691900658L, 5876132196474085712L, 3610611920916131086L, -5869863655175429850L, -5622727354596229643L, -4487257089533756037L, 981870734594234759L, 8265988595437564467L, 489109072300194664L}).toString(), 16)), new BigInteger(new ObfuscatedString(new long[]{-276705699910158753L, -5093395019445326691L, -7442884535311747771L, 7986863814935971356L, 3270092361682762503L, 5106133396356896637L, 2749739323356062676L, 1479534156620188407L, -82066308986407841L, -8441081772814657509L, -5343328598796567571L, -3627414613170054435L, -5004492613916193230L, -4862447248079443789L, 121226003627313027L, -1351543118434852427L, 5484068341748942256L, 2137700564009537389L}).toString(), 16), 1), 0);
        }

        @Override // com.trilead.ssh2.signature.ECDSAKeyAlgorithm, com.trilead.ssh2.signature.KeyAlgorithm
        public /* bridge */ /* synthetic */ ECPublicKey decodePublicKey(byte[] bArr) {
            return super.decodePublicKey(bArr);
        }

        @Override // com.trilead.ssh2.signature.ECDSAKeyAlgorithm, com.trilead.ssh2.signature.KeyAlgorithm
        public /* bridge */ /* synthetic */ byte[] encodePublicKey(ECPublicKey eCPublicKey) {
            return super.encodePublicKey(eCPublicKey);
        }

        @Override // com.trilead.ssh2.signature.KeyAlgorithm
        public List<CertificateDecoder> getCertificateDecoders() {
            return Arrays.asList(new EcdsaCertificateDecoder(new ObfuscatedString(new long[]{-1129228681577423163L, -9095188540854669494L, 915322311413115172L}).toString(), getEcParameterSpec(), 0), new OpenSshEcdsaCertificateDecoder(getKeyFormat(), getCurveName(), getEcParameterSpec()));
        }
    }

    /* loaded from: classes3.dex */
    public static class EcdsaCertificateDecoder extends CertificateDecoder {
        private final ECParameterSpec ecParameterSpec;
        private final String oid;

        public /* synthetic */ EcdsaCertificateDecoder(String str, ECParameterSpec eCParameterSpec, int i) {
            this(str, eCParameterSpec);
        }

        @Override // com.trilead.ssh2.crypto.CertificateDecoder
        public KeyPair createKeyPair(PEMStructure pEMStructure) {
            SimpleDERReader simpleDERReader = new SimpleDERReader(pEMStructure.getData());
            byte[] readSequenceAsByteArray = simpleDERReader.readSequenceAsByteArray();
            if (simpleDERReader.available() == 0) {
                SimpleDERReader simpleDERReader2 = new SimpleDERReader(readSequenceAsByteArray);
                BigInteger readInt = simpleDERReader2.readInt();
                if (readInt.compareTo(BigInteger.ONE) == 0) {
                    byte[] readOctetString = simpleDERReader2.readOctetString();
                    String str = null;
                    byte[] bArr = null;
                    while (simpleDERReader2.available() > 0) {
                        int readConstructedType = simpleDERReader2.readConstructedType();
                        SimpleDERReader readConstructed = simpleDERReader2.readConstructed();
                        if (readConstructedType != 0) {
                            if (readConstructedType == 1) {
                                bArr = readConstructed.readOctetString();
                            }
                        } else {
                            str = readConstructed.readOid();
                        }
                    }
                    if (this.oid.equals(str)) {
                        BigInteger bigInteger = new BigInteger(1, readOctetString);
                        int length = bArr.length - 1;
                        byte[] bArr2 = new byte[length];
                        System.arraycopy(bArr, 1, bArr2, 0, length);
                        ECPoint decodePoint = ECDSAKeyAlgorithm.decodePoint(bArr2, this.ecParameterSpec.getCurve());
                        ECPrivateKeySpec eCPrivateKeySpec = new ECPrivateKeySpec(bigInteger, this.ecParameterSpec);
                        ECPublicKeySpec eCPublicKeySpec = new ECPublicKeySpec(decodePoint, this.ecParameterSpec);
                        try {
                            KeyFactory keyFactory = KeyFactory.getInstance(new ObfuscatedString(new long[]{3572688306281150861L, -5634246129809667037L}).toString());
                            return new KeyPair(keyFactory.generatePublic(eCPublicKeySpec), keyFactory.generatePrivate(eCPrivateKeySpec));
                        } catch (GeneralSecurityException unused) {
                            throw new IOException(new ObfuscatedString(new long[]{-352702678825315096L, -5081545605273666677L, 3429598404995365164L, -1075588407378315636L, -2193068421002823687L}).toString());
                        }
                    }
                    throw new IOException(new ObfuscatedString(new long[]{-7577031337197549716L, 7465294155636242730L, 638274009022160224L, -7661617268564328883L, 3706065921664115386L}).toString());
                }
                throw new IOException(new ObfuscatedString(new long[]{142467556323020856L, -5381971200605590840L, -7026300596768538606L, -3427849832178662870L, 1491316431020766017L, -2624295661438745016L, -6119130118257802305L}).toString() + readInt);
            }
            throw new IOException(new ObfuscatedString(new long[]{7271436582438457388L, -6082058618802077020L, 2786903754356601932L, 2347265915832095822L, -959958245353887405L, -2213020176842107251L}).toString());
        }

        @Override // com.trilead.ssh2.crypto.CertificateDecoder
        public String getEndLine() {
            return new ObfuscatedString(new long[]{-6783687016982183914L, -2021269857900391481L, 1892209475082573988L, -8135463791602358141L, 3919973513121702102L}).toString();
        }

        @Override // com.trilead.ssh2.crypto.CertificateDecoder
        public String getStartLine() {
            return new ObfuscatedString(new long[]{4039842198748556428L, 7754641614320550564L, -510848293042995456L, 1867852388037942318L, 5194168293658022464L}).toString();
        }

        private EcdsaCertificateDecoder(String str, ECParameterSpec eCParameterSpec) {
            this.oid = str;
            this.ecParameterSpec = eCParameterSpec;
        }
    }

    /* loaded from: classes3.dex */
    public static class OpenSshEcdsaCertificateDecoder extends OpenSshCertificateDecoder {
        private final String curveName;
        private final ECParameterSpec ecParameterSpec;

        public OpenSshEcdsaCertificateDecoder(String str, String str2, ECParameterSpec eCParameterSpec) {
            super(str);
            this.curveName = str2;
            this.ecParameterSpec = eCParameterSpec;
        }

        @Override // com.trilead.ssh2.signature.OpenSshCertificateDecoder
        public KeyPair generateKeyPair(TypesReader typesReader) {
            String readString = typesReader.readString();
            if (readString.equals(this.curveName)) {
                byte[] readByteString = typesReader.readByteString();
                BigInteger readMPINT = typesReader.readMPINT();
                ECPoint decodePoint = ECDSAKeyAlgorithm.decodePoint(readByteString, this.ecParameterSpec.getCurve());
                if (decodePoint != null) {
                    ECPublicKeySpec eCPublicKeySpec = new ECPublicKeySpec(decodePoint, this.ecParameterSpec);
                    ECPrivateKeySpec eCPrivateKeySpec = new ECPrivateKeySpec(readMPINT, this.ecParameterSpec);
                    KeyFactory keyFactory = KeyFactory.getInstance(new ObfuscatedString(new long[]{-3436381164041334019L, -5729976950791891335L}).toString());
                    return new KeyPair(keyFactory.generatePublic(eCPublicKeySpec), keyFactory.generatePrivate(eCPrivateKeySpec));
                }
                throw new IOException(new ObfuscatedString(new long[]{-5697844201460183350L, 4427898711655800894L, -7699066969651020846L, -1716380089028717263L}).toString());
            }
            throw new IOException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-2157740132522056291L, -6723130537857298739L, -4416992344800685878L, -3858903922858200103L}), new StringBuilder(), readString));
        }
    }

    public /* synthetic */ ECDSAKeyAlgorithm(String str, String str2, ECParameterSpec eCParameterSpec, int i) {
        this(str, str2, eCParameterSpec);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ECPoint decodePoint(byte[] bArr, EllipticCurve ellipticCurve) {
        int fieldSize = (ellipticCurve.getField().getFieldSize() + 7) / 8;
        if (bArr.length == (fieldSize * 2) + 1 && bArr[0] == 4 && bArr.length != 0) {
            byte[] bArr2 = new byte[fieldSize];
            System.arraycopy(bArr, 1, bArr2, 0, fieldSize);
            byte[] bArr3 = new byte[fieldSize];
            System.arraycopy(bArr, fieldSize + 1, bArr3, 0, fieldSize);
            return new ECPoint(new BigInteger(1, bArr2), new BigInteger(1, bArr3));
        }
        return null;
    }

    private static byte[] encodePoint(ECPoint eCPoint, EllipticCurve ellipticCurve) {
        int fieldSize = (ellipticCurve.getField().getFieldSize() + 7) / 8;
        byte[] bArr = new byte[(fieldSize * 2) + 1];
        bArr[0] = 4;
        byte[] removeLeadingZeroes = removeLeadingZeroes(eCPoint.getAffineX().toByteArray());
        int i = fieldSize + 1;
        System.arraycopy(removeLeadingZeroes, 0, bArr, i - removeLeadingZeroes.length, removeLeadingZeroes.length);
        byte[] removeLeadingZeroes2 = removeLeadingZeroes(eCPoint.getAffineY().toByteArray());
        System.arraycopy(removeLeadingZeroes2, 0, bArr, (i + fieldSize) - removeLeadingZeroes2.length, removeLeadingZeroes2.length);
        return bArr;
    }

    private static byte[] removeLeadingZeroes(byte[] bArr) {
        if (bArr[0] != 0) {
            return bArr;
        }
        int i = 1;
        while (i < bArr.length - 1 && bArr[i] == 0) {
            i++;
        }
        int length = bArr.length - i;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, i, bArr2, 0, length);
        return bArr2;
    }

    private static void writeLength(int i, OutputStream outputStream) {
        if (i <= 127) {
            outputStream.write(i);
            return;
        }
        int i2 = 0;
        int i3 = i;
        while (i3 != 0) {
            i3 >>>= 8;
            i2++;
        }
        outputStream.write(i2 | 128);
        for (int i4 = (i2 - 1) * 8; i4 >= 0; i4 -= 8) {
            outputStream.write((byte) (i >> i4));
        }
    }

    @Override // com.trilead.ssh2.signature.KeyAlgorithm
    public byte[] decodeSignature(byte[] bArr) {
        TypesReader typesReader = new TypesReader(bArr);
        String readString = typesReader.readString();
        if (readString.equals(getKeyFormat())) {
            byte[] readByteString = typesReader.readByteString();
            if (typesReader.remain() == 0) {
                TypesReader typesReader2 = new TypesReader(readByteString);
                byte[] byteArray = typesReader2.readMPINT().toByteArray();
                byte[] byteArray2 = typesReader2.readMPINT().toByteArray();
                int length = byteArray.length;
                int length2 = byteArray2.length;
                if ((byteArray[0] & 128) != 0) {
                    length++;
                }
                if ((byteArray2[0] & 128) != 0) {
                    length2++;
                }
                int i = 6 + length + length2;
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(i);
                byteArrayOutputStream.write(48);
                writeLength(i - 2, byteArrayOutputStream);
                byteArrayOutputStream.write(2);
                writeLength(length, byteArrayOutputStream);
                if (length != byteArray.length) {
                    byteArrayOutputStream.write(0);
                }
                byteArrayOutputStream.write(byteArray);
                byteArrayOutputStream.write(2);
                writeLength(length2, byteArrayOutputStream);
                if (length2 != byteArray2.length) {
                    byteArrayOutputStream.write(0);
                }
                byteArrayOutputStream.write(byteArray2);
                return byteArrayOutputStream.toByteArray();
            }
            throw new IOException(new ObfuscatedString(new long[]{-4361820995706931035L, -2943878380894378680L, 6486503747386512090L, 1886008449655026707L, -3723758715764050279L, -5585689628469348122L}).toString());
        }
        throw new IOException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-4710760204248957433L, -4907002106086456578L, 5270535727657148299L, 5173056209229065851L, 5036592850358809005L}), new StringBuilder(), readString));
    }

    @Override // com.trilead.ssh2.signature.KeyAlgorithm
    public byte[] encodeSignature(byte[] bArr) {
        SimpleDERReader simpleDERReader = new SimpleDERReader(new SimpleDERReader(bArr).readSequenceAsByteArray());
        BigInteger readInt = simpleDERReader.readInt();
        BigInteger readInt2 = simpleDERReader.readInt();
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeMPInt(readInt);
        typesWriter.writeMPInt(readInt2);
        byte[] bytes = typesWriter.getBytes();
        TypesWriter typesWriter2 = new TypesWriter();
        typesWriter2.writeString(getKeyFormat());
        typesWriter2.writeString(bytes, 0, bytes.length);
        return typesWriter2.getBytes();
    }

    public String getCurveName() {
        return this.curveName;
    }

    public ECParameterSpec getEcParameterSpec() {
        return this.ecParameterSpec;
    }

    @Override // com.trilead.ssh2.signature.KeyAlgorithm
    public boolean supportsKey(PrivateKey privateKey) {
        if (!(privateKey instanceof ECPrivateKey)) {
            return false;
        }
        ECPrivateKey eCPrivateKey = (ECPrivateKey) privateKey;
        if (!super.supportsKey(eCPrivateKey) || eCPrivateKey.getParams().getCurve().getField().getFieldSize() != getEcParameterSpec().getCurve().getField().getFieldSize()) {
            return false;
        }
        return true;
    }

    private ECDSAKeyAlgorithm(String str, String str2, ECParameterSpec eCParameterSpec) {
        super(str, AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-1798962614636760545L, 2576913835797817334L, 5081586336037864562L}), new StringBuilder(), str2), ECPrivateKey.class);
        this.curveName = str2;
        this.ecParameterSpec = eCParameterSpec;
    }

    @Override // com.trilead.ssh2.signature.KeyAlgorithm
    public ECPublicKey decodePublicKey(byte[] bArr) {
        TypesReader typesReader = new TypesReader(bArr);
        if (typesReader.readString().equals(getKeyFormat())) {
            typesReader.readString();
            byte[] readByteString = typesReader.readByteString();
            if (typesReader.remain() == 0) {
                ECParameterSpec ecParameterSpec = getEcParameterSpec();
                ECPoint decodePoint = decodePoint(readByteString, ecParameterSpec.getCurve());
                if (decodePoint != null) {
                    try {
                        return (ECPublicKey) KeyFactory.getInstance(new ObfuscatedString(new long[]{4359421576017310193L, -4914578602431992042L}).toString()).generatePublic(new ECPublicKeySpec(decodePoint, ecParameterSpec));
                    } catch (GeneralSecurityException e) {
                        throw new IOException(new ObfuscatedString(new long[]{3038401741829564551L, -1286781868634295695L, -8493591267797158237L, 1580723497860737284L, 2903041902186262134L}).toString(), e);
                    }
                }
                throw new IOException(new ObfuscatedString(new long[]{-3902468940401163420L, 6865710029701091486L, 3850096119684532828L, 4389007034724514785L}).toString());
            }
            throw new IOException(new ObfuscatedString(new long[]{-1492511728779813268L, 1162540787989098073L, 7232530322542968707L, 2690087020382564028L, -4477694023557075617L, -3794045713373928796L}).toString());
        }
        throw new IOException(new ObfuscatedString(new long[]{147013161132678270L, -13179576876834267L, -3023258803870778816L, 440783135613504689L}).toString());
    }

    @Override // com.trilead.ssh2.signature.KeyAlgorithm
    public byte[] encodePublicKey(ECPublicKey eCPublicKey) {
        byte[] encodePoint = encodePoint(eCPublicKey.getW(), eCPublicKey.getParams().getCurve());
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeString(getKeyFormat());
        typesWriter.writeString(getCurveName());
        typesWriter.writeString(encodePoint, 0, encodePoint.length);
        return typesWriter.getBytes();
    }
}
