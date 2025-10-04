package com.trilead.ssh2.signature;

import com.panda912.muddy.ObfuscatedString;
import com.trilead.ssh2.crypto.CertificateDecoder;
import com.trilead.ssh2.crypto.PEMStructure;
import com.trilead.ssh2.crypto.cipher.BlockCipher;
import com.trilead.ssh2.crypto.cipher.BlockCipherFactory;
import com.trilead.ssh2.crypto.cipher.CBCMode;
import com.trilead.ssh2.crypto.cipher.DES;
import com.trilead.ssh2.packets.TypesReader;
import defpackage.AbstractC0749x8313616e;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import java.security.KeyPair;

/* loaded from: classes3.dex */
abstract class OpenSshCertificateDecoder extends CertificateDecoder {
    private final String keyAlgorithm;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static abstract class SshCipher {
        private final int blockSize;
        private final int keyLength;
        private final String[] sshCipherNames;
        public static final SshCipher DESEDE_CBC = new AnonymousClass1(new ObfuscatedString(new long[]{-1720115961807460756L, -3298766795465186308L, 4485126550824629127L}).toString(), new ObfuscatedString(new long[]{-3341637614714098984L, -1580236045830760829L, 5826051893386825048L}).toString(), new String[0]);
        public static final SshCipher DES_CBC = new AnonymousClass2(new ObfuscatedString(new long[]{2335634739459415785L, 2683821504468517440L}).toString(), new ObfuscatedString(new long[]{6079593796817735153L, 3449978181853705413L}).toString(), new String[0]);
        public static final SshCipher AES128_CBC = new AnonymousClass3(new ObfuscatedString(new long[]{3722807431850324053L, 8011655242492905781L, -6109155735897519470L}).toString(), new ObfuscatedString(new long[]{4181046712438189178L, -1270723564213182351L, -976611996054925874L}).toString(), new String[]{new ObfuscatedString(new long[]{886325954151687562L, 7249359156874716558L, -3296362298421971259L}).toString()});
        public static final SshCipher AES192_CBC = new AnonymousClass4(new ObfuscatedString(new long[]{1457402655878057112L, 1249281872031950612L, -8589169997679469452L}).toString(), new ObfuscatedString(new long[]{6872104031803120648L, 2279221101956207658L, -8674161773647751316L}).toString(), new String[]{new ObfuscatedString(new long[]{7143664498600875381L, -8449969173018503555L, -8214147983158181248L}).toString()});
        public static final SshCipher AES256_CBC = new AnonymousClass5(new ObfuscatedString(new long[]{8382704622356108872L, 2000549345089942137L, 8303226944149590810L}).toString(), new ObfuscatedString(new long[]{-7694582734656546126L, 8182442245855895808L, -3319803129707375798L}).toString(), new String[]{new ObfuscatedString(new long[]{-6961397094854481347L, 2885821770326425762L, -6195066706835246879L}).toString()});
        public static final SshCipher AES256_CTR = new AnonymousClass6(new ObfuscatedString(new long[]{-6662638396439018440L, 8731989629571693215L, 3886294836829579351L}).toString(), new ObfuscatedString(new long[]{8480767318945475512L, -7578864879657521879L, 1166004858510486459L}).toString(), new String[]{new ObfuscatedString(new long[]{6780221540819099991L, 8620144957921083243L, 5156834134966189101L}).toString()});
        private static final /* synthetic */ SshCipher[] $VALUES = $values();

        /* renamed from: com.trilead.ssh2.signature.OpenSshCertificateDecoder$SshCipher$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        public enum AnonymousClass1 extends SshCipher {
            public /* synthetic */ AnonymousClass1(String str, String str2, String[] strArr) {
                this(str, 0, 24, 8, str2, strArr);
            }

            @Override // com.trilead.ssh2.signature.OpenSshCertificateDecoder.SshCipher
            public BlockCipher createBlockCipher(byte[] bArr, byte[] bArr2, boolean z) {
                return BlockCipherFactory.createCipher(new ObfuscatedString(new long[]{-7303258781149791550L, 5739532936649991418L}).toString(), z, bArr, bArr2);
            }

            private AnonymousClass1(String str, int i, int i2, int i3, String str2, String... strArr) {
                super(str, i, i2, i3, str2, strArr, 0);
            }
        }

        /* renamed from: com.trilead.ssh2.signature.OpenSshCertificateDecoder$SshCipher$2, reason: invalid class name */
        /* loaded from: classes3.dex */
        public enum AnonymousClass2 extends SshCipher {
            public /* synthetic */ AnonymousClass2(String str, String str2, String[] strArr) {
                this(str, 1, 8, 8, str2, strArr);
            }

            @Override // com.trilead.ssh2.signature.OpenSshCertificateDecoder.SshCipher
            public BlockCipher createBlockCipher(byte[] bArr, byte[] bArr2, boolean z) {
                DES des = new DES();
                des.init(z, bArr);
                return new CBCMode(des, bArr2, z);
            }

            private AnonymousClass2(String str, int i, int i2, int i3, String str2, String... strArr) {
                super(str, i, i2, i3, str2, strArr, 0);
            }
        }

        /* renamed from: com.trilead.ssh2.signature.OpenSshCertificateDecoder$SshCipher$3, reason: invalid class name */
        /* loaded from: classes3.dex */
        public enum AnonymousClass3 extends SshCipher {
            public /* synthetic */ AnonymousClass3(String str, String str2, String[] strArr) {
                this(str, 2, 16, 16, str2, strArr);
            }

            @Override // com.trilead.ssh2.signature.OpenSshCertificateDecoder.SshCipher
            public BlockCipher createBlockCipher(byte[] bArr, byte[] bArr2, boolean z) {
                return BlockCipherFactory.createCipher(new ObfuscatedString(new long[]{4854900699607885766L, -6953670626151940110L, 6019211113176380461L}).toString(), z, bArr, bArr2);
            }

            private AnonymousClass3(String str, int i, int i2, int i3, String str2, String... strArr) {
                super(str, i, i2, i3, str2, strArr, 0);
            }
        }

        /* renamed from: com.trilead.ssh2.signature.OpenSshCertificateDecoder$SshCipher$4, reason: invalid class name */
        /* loaded from: classes3.dex */
        public enum AnonymousClass4 extends SshCipher {
            public /* synthetic */ AnonymousClass4(String str, String str2, String[] strArr) {
                this(str, 3, 24, 16, str2, strArr);
            }

            @Override // com.trilead.ssh2.signature.OpenSshCertificateDecoder.SshCipher
            public BlockCipher createBlockCipher(byte[] bArr, byte[] bArr2, boolean z) {
                return BlockCipherFactory.createCipher(new ObfuscatedString(new long[]{-805777467765354563L, 8707750836832692593L, 2714554998177201987L}).toString(), z, bArr, bArr2);
            }

            private AnonymousClass4(String str, int i, int i2, int i3, String str2, String... strArr) {
                super(str, i, i2, i3, str2, strArr, 0);
            }
        }

        /* renamed from: com.trilead.ssh2.signature.OpenSshCertificateDecoder$SshCipher$5, reason: invalid class name */
        /* loaded from: classes3.dex */
        public enum AnonymousClass5 extends SshCipher {
            public /* synthetic */ AnonymousClass5(String str, String str2, String[] strArr) {
                this(str, 4, 32, 16, str2, strArr);
            }

            @Override // com.trilead.ssh2.signature.OpenSshCertificateDecoder.SshCipher
            public BlockCipher createBlockCipher(byte[] bArr, byte[] bArr2, boolean z) {
                return BlockCipherFactory.createCipher(new ObfuscatedString(new long[]{-1122065312362692071L, -559395600315145915L, 534434473885649321L}).toString(), z, bArr, bArr2);
            }

            private AnonymousClass5(String str, int i, int i2, int i3, String str2, String... strArr) {
                super(str, i, i2, i3, str2, strArr, 0);
            }
        }

        /* renamed from: com.trilead.ssh2.signature.OpenSshCertificateDecoder$SshCipher$6, reason: invalid class name */
        /* loaded from: classes3.dex */
        public enum AnonymousClass6 extends SshCipher {
            public /* synthetic */ AnonymousClass6(String str, String str2, String[] strArr) {
                this(str, 5, 32, 16, str2, strArr);
            }

            @Override // com.trilead.ssh2.signature.OpenSshCertificateDecoder.SshCipher
            public BlockCipher createBlockCipher(byte[] bArr, byte[] bArr2, boolean z) {
                return BlockCipherFactory.createCipher(new ObfuscatedString(new long[]{2401919296799407898L, 8189237365282355112L, -71991875152388784L}).toString(), z, bArr, bArr2);
            }

            private AnonymousClass6(String str, int i, int i2, int i3, String str2, String... strArr) {
                super(str, i, i2, i3, str2, strArr, 0);
            }
        }

        private static /* synthetic */ SshCipher[] $values() {
            return new SshCipher[]{DESEDE_CBC, DES_CBC, AES128_CBC, AES192_CBC, AES256_CBC, AES256_CTR};
        }

        public /* synthetic */ SshCipher(String str, int i, int i2, int i3, String str2, String[] strArr, int i4) {
            this(str, i, i2, i3, str2, strArr);
        }

        public static SshCipher getInstance(String str) {
            for (SshCipher sshCipher : values()) {
                for (String str2 : sshCipher.sshCipherNames) {
                    if (str2.equalsIgnoreCase(str)) {
                        return sshCipher;
                    }
                }
            }
            throw new IllegalArgumentException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{9023699202584347426L, 229168384985904156L, 2313151430971727787L}), new StringBuilder(), str));
        }

        public static SshCipher valueOf(String str) {
            return (SshCipher) Enum.valueOf(SshCipher.class, str);
        }

        public static SshCipher[] values() {
            return (SshCipher[]) $VALUES.clone();
        }

        public abstract BlockCipher createBlockCipher(byte[] bArr, byte[] bArr2, boolean z);

        public int getBlockSize() {
            return this.blockSize;
        }

        public int getKeyLength() {
            return this.keyLength;
        }

        private SshCipher(String str, int i, int i2, int i3, String str2, String... strArr) {
            this.keyLength = i2;
            this.blockSize = i3;
            String[] strArr2 = new String[(strArr == null ? 0 : strArr.length) + 1];
            strArr2[0] = str2;
            if (strArr != null) {
                System.arraycopy(strArr, 0, strArr2, 1, strArr.length);
            }
            this.sshCipherNames = strArr2;
        }
    }

    public OpenSshCertificateDecoder(String str) {
        this.keyAlgorithm = str;
    }

    private static byte[] decryptData(byte[] bArr, byte[] bArr2, SshCipher sshCipher) {
        int keyLength = sshCipher.getKeyLength();
        byte[] bArr3 = new byte[keyLength];
        int blockSize = sshCipher.getBlockSize();
        byte[] bArr4 = new byte[blockSize];
        System.arraycopy(bArr2, 0, bArr3, 0, keyLength);
        System.arraycopy(bArr2, keyLength, bArr4, 0, blockSize);
        BlockCipher createBlockCipher = sshCipher.createBlockCipher(bArr3, bArr4, false);
        byte[] bArr5 = new byte[bArr.length];
        for (int i = 0; i < bArr.length / createBlockCipher.getBlockSize(); i++) {
            createBlockCipher.transformBlock(bArr, createBlockCipher.getBlockSize() * i, bArr5, createBlockCipher.getBlockSize() * i);
        }
        return bArr5;
    }

    private static byte[] generateKayAndIvPbkdf2(byte[] bArr, byte[] bArr2, int i, int i2, int i3) {
        byte[] bArr3 = new byte[i2 + i3];
        new org.jbcrypt.BCrypt().pbkdf(bArr, bArr2, i, bArr3);
        return bArr3;
    }

    @Override // com.trilead.ssh2.crypto.CertificateDecoder
    public KeyPair createKeyPair(PEMStructure pEMStructure) {
        return null;
    }

    public abstract KeyPair generateKeyPair(TypesReader typesReader);

    @Override // com.trilead.ssh2.crypto.CertificateDecoder
    public String getEndLine() {
        return new ObfuscatedString(new long[]{-2519344551496745697L, -3980712118588888551L, -2863024544134676726L, -2649458417504543172L, -8525444673899004376L, 2739276946088473026L}).toString();
    }

    @Override // com.trilead.ssh2.crypto.CertificateDecoder
    public String getStartLine() {
        return new ObfuscatedString(new long[]{4124907881357931995L, 6271843784111158242L, -5691040738528265970L, 1168657920059724234L, -5069284551814747059L, -841255595925454900L}).toString();
    }

    @Override // com.trilead.ssh2.crypto.CertificateDecoder
    public KeyPair createKeyPair(PEMStructure pEMStructure, String str) {
        TypesReader typesReader = new TypesReader(pEMStructure.getData());
        byte[] readBytes = typesReader.readBytes(15);
        String obfuscatedString = new ObfuscatedString(new long[]{-3113553460110897330L, -1928421353513660037L, 3444574422396395474L}).toString();
        Charset charset = StandardCharsets.UTF_8;
        if (obfuscatedString.equals(new String(readBytes, charset).trim())) {
            String readString = typesReader.readString();
            String readString2 = typesReader.readString();
            byte[] readByteString = typesReader.readByteString();
            if (typesReader.readUINT32() == 1) {
                typesReader.readByteString();
                byte[] readByteString2 = typesReader.readByteString();
                if (new ObfuscatedString(new long[]{4204521785293803370L, 3563159271524870237L}).toString().equals(readString2)) {
                    if (str != null) {
                        TypesReader typesReader2 = new TypesReader(readByteString);
                        byte[] readByteString3 = typesReader2.readByteString();
                        int readUINT32 = typesReader2.readUINT32();
                        SshCipher sshCipher = SshCipher.getInstance(readString);
                        readByteString2 = decryptData(readByteString2, generateKayAndIvPbkdf2(str.getBytes(charset), readByteString3, readUINT32, sshCipher.getKeyLength(), sshCipher.getBlockSize()), sshCipher);
                    } else {
                        throw new IOException(new ObfuscatedString(new long[]{3229517292785247575L, 2856734748405258748L, -6649610781243665964L, -4825989125145831784L, 3369531835418173638L, 6339697285850558820L, 3986177320690335728L, -6545660358040312621L}).toString());
                    }
                } else if (!new ObfuscatedString(new long[]{-3870966606910661769L, -4327570963958035893L}).toString().equals(readString) || !new ObfuscatedString(new long[]{-1306750043519176203L, -542029845354694944L}).toString().equals(readString2)) {
                    throw new IOException(new ObfuscatedString(new long[]{-4990325135574922752L, 7456266507392071753L, 4868414166645996991L, -6825412953573861417L, -3901313918868215229L, 3328767485525559226L}).toString());
                }
                TypesReader typesReader3 = new TypesReader(readByteString2);
                if (typesReader3.readUINT32() == typesReader3.readUINT32()) {
                    String readString3 = typesReader3.readString();
                    if (readString3.equals(this.keyAlgorithm)) {
                        try {
                            KeyPair generateKeyPair = generateKeyPair(typesReader3);
                            typesReader3.readByteString();
                            int i = 0;
                            while (i < typesReader.remain()) {
                                i++;
                                if (i != typesReader.readByte()) {
                                    throw new IOException(new ObfuscatedString(new long[]{8854627210968826306L, -2386357338889258526L, -9175351072266148912L, 224197395821098114L, -4219091564002796611L, -7958920688863944542L}).toString());
                                }
                            }
                            return generateKeyPair;
                        } catch (GeneralSecurityException e) {
                            throw new IOException(new ObfuscatedString(new long[]{-3902658583654561586L, -5246745395561925431L, -8351692874605067941L, -2155118992342306977L, -6365283146623741003L}).toString(), e);
                        }
                    }
                    throw new IOException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-5506799768045429526L, -1985672870080460364L, 6597441637830089049L, -7745712431557133626L}), new StringBuilder(), readString3));
                }
                throw new IOException(new ObfuscatedString(new long[]{-5404984741618267798L, 6072947846762798385L, 941718684574950230L, 2273113257471926212L, -4270434209152668984L}).toString());
            }
            throw new IOException(new ObfuscatedString(new long[]{-9156081992645274417L, 3508773512965476193L, 549709047905830965L, 6384113169391158067L, -8091076422527660287L, 6907065826679842505L}).toString());
        }
        throw new IOException(new ObfuscatedString(new long[]{-1015177547701629005L, 1230235179291933556L, -4964262097049872630L, 4367086376403032276L, -870175625426847368L, 1134343815934124304L}).toString());
    }
}
