package com.trilead.ssh2.crypto.cipher;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.Vector;

/* loaded from: classes3.dex */
public class BlockCipherFactory {
    static Vector<CipherEntry> ciphers;

    /* loaded from: classes3.dex */
    public static class CipherEntry {
        int blocksize;
        String cipherClass;
        int keysize;
        String type;

        public CipherEntry(String str, int i, int i2, String str2) {
            this.type = str;
            this.blocksize = i;
            this.keysize = i2;
            this.cipherClass = str2;
        }
    }

    static {
        Vector<CipherEntry> vector = new Vector<>();
        ciphers = vector;
        vector.addElement(new CipherEntry(new ObfuscatedString(new long[]{-8681396620931509509L, -6947903205297769617L, -2236267239581944532L}).toString(), 16, 32, new ObfuscatedString(new long[]{4326629889029867237L, -7847289935249280025L, 7487624264253484562L, 1570563381336239806L, -8635582191378019522L, 6468820967625054083L}).toString()));
        ciphers.addElement(new CipherEntry(new ObfuscatedString(new long[]{2003942517674084324L, -6483557363490263360L, -1427686455453160115L}).toString(), 16, 24, new ObfuscatedString(new long[]{-6058747057445138886L, 7030468898590061813L, 1900213010681013027L, 2961380508666974065L, 7141235219736813660L, -4732503908889474401L}).toString()));
        ciphers.addElement(new CipherEntry(new ObfuscatedString(new long[]{-739098795747791591L, 7011014299932702626L, -6379596795239723223L}).toString(), 16, 16, new ObfuscatedString(new long[]{-943236929619960824L, -2217809118674333758L, -1555365632539221439L, -2656138657296251945L, -9109134825340454281L, -8053165359616761184L}).toString()));
        ciphers.addElement(new CipherEntry(new ObfuscatedString(new long[]{6960682077665640460L, 335982438435679343L, 3240908363023765880L}).toString(), 8, 16, new ObfuscatedString(new long[]{-8451765873179824511L, -6513372402387120195L, -7534246377547010819L, -239975420088401780L, -4174338942947638251L, 3347545326697857264L}).toString()));
        ciphers.addElement(new CipherEntry(new ObfuscatedString(new long[]{-5750301848638414540L, 621067179670790931L, 3380038108035655391L}).toString(), 16, 32, new ObfuscatedString(new long[]{-1195820934758017439L, 6319405353926745104L, -5890374203425152512L, 6337222465860238869L, 7589931164946840350L, -5615097561382190105L}).toString()));
        ciphers.addElement(new CipherEntry(new ObfuscatedString(new long[]{5283932415949382186L, 6592271592219393172L, -9140062215018890370L}).toString(), 16, 24, new ObfuscatedString(new long[]{-6885230982955941416L, 8041969444797807295L, 1774911712914927581L, 6956282690155391101L, -9092005984462983816L, -8720885666134554641L}).toString()));
        ciphers.addElement(new CipherEntry(new ObfuscatedString(new long[]{8825929777861366374L, -3638724454490184689L, -2006656663335880961L}).toString(), 16, 16, new ObfuscatedString(new long[]{6280976557102381087L, -2622162927616296658L, -6349086672570885550L, 5475781013479576772L, -467268110300960142L, 8813352281769983049L}).toString()));
        ciphers.addElement(new CipherEntry(new ObfuscatedString(new long[]{-8625681340369652872L, -4600921720210928157L, 4233998756442606303L}).toString(), 8, 16, new ObfuscatedString(new long[]{-7035331705181171479L, -8144944932491059247L, -2055360566224548021L, -3082703274942628220L, 8206320827339823771L, 6818573397434459940L}).toString()));
        ciphers.addElement(new CipherEntry(new ObfuscatedString(new long[]{-2649909604193481252L, -2164440670234676195L}).toString(), 8, 24, new ObfuscatedString(new long[]{45252101926035016L, -8100803194530797362L, -2797587348502642326L, -8121278377777925408L, -6925171817064301799L, 337413357450792282L}).toString()));
        ciphers.addElement(new CipherEntry(new ObfuscatedString(new long[]{8351386542458130411L, -8516131883381359632L}).toString(), 8, 24, new ObfuscatedString(new long[]{-8250528457058519928L, 474855166217165090L, 4238470693105249042L, -1717986050059128609L, 3505352464827989774L, -9179588516974270156L}).toString()));
    }

    public static void checkCipherList(String[] strArr) {
        for (String str : strArr) {
            getEntry(str);
        }
    }

    public static BlockCipher createCipher(String str, boolean z, byte[] bArr, byte[] bArr2) {
        try {
            BlockCipher blockCipher = (BlockCipher) Class.forName(getEntry(str).cipherClass).newInstance();
            if (str.endsWith(new ObfuscatedString(new long[]{-6041674230275425426L, 1575143586159649278L}).toString())) {
                blockCipher.init(z, bArr);
                return new CBCMode(blockCipher, bArr2, z);
            }
            if (str.endsWith(new ObfuscatedString(new long[]{8946229596199501275L, -5954420552986413705L}).toString())) {
                blockCipher.init(true, bArr);
                return new CTRMode(blockCipher, bArr2, z);
            }
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{-1713800053137637158L, -1991470918254548683L, -9124716356001228098L, -6356908098893346477L}).toString() + str);
        } catch (Exception unused) {
            throw new IllegalArgumentException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-4527285933927384543L, -277561576198424529L, 4499907710406728743L, 8373279660351750133L}), new StringBuilder(), str));
        }
    }

    public static int getBlockSize(String str) {
        return getEntry(str).blocksize;
    }

    public static String[] getDefaultCipherList() {
        String[] strArr = new String[ciphers.size()];
        for (int i = 0; i < ciphers.size(); i++) {
            strArr[i] = ciphers.elementAt(i).type;
        }
        return strArr;
    }

    private static CipherEntry getEntry(String str) {
        for (int i = 0; i < ciphers.size(); i++) {
            CipherEntry elementAt = ciphers.elementAt(i);
            if (elementAt.type.equals(str)) {
                return elementAt;
            }
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{4637249825906678520L, -4941219684867806339L, -4586637039224143032L, 5085257823575989161L}), new StringBuilder(), str));
    }

    public static int getKeySize(String str) {
        return getEntry(str).keysize;
    }
}
