package com.tknetwork.tunnel.securepreferences.crypto;

import com.panda912.muddy.ObfuscatedString;
import com.tknetwork.tunnel.securepreferences.model.EncryptionAlgorithm;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes3.dex */
public final class CipherServiceImpl implements CipherService {
    private final int ivSize;
    private final Cipher mCipher;
    private final String mEncryptionAlgorithm;
    private final Logger mLogger;

    /* renamed from: com.tknetwork.tunnel.securepreferences.crypto.CipherServiceImpl$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$tknetwork$tunnel$securepreferences$model$EncryptionAlgorithm;

        static {
            int[] iArr = new int[EncryptionAlgorithm.values().length];
            $SwitchMap$com$tknetwork$tunnel$securepreferences$model$EncryptionAlgorithm = iArr;
            try {
                iArr[EncryptionAlgorithm.AES.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$tknetwork$tunnel$securepreferences$model$EncryptionAlgorithm[EncryptionAlgorithm.TripleDES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private CipherServiceImpl(String str, String str2, String str3, int i) {
        this.mEncryptionAlgorithm = str;
        this.ivSize = i;
        Logger logger = Logger.getLogger(CipherService.class.getName());
        this.mLogger = logger;
        try {
            String format = String.format(new ObfuscatedString(new long[]{2921955274545181722L, -5643359750347274347L}).toString(), str, str2, str3);
            logger.info(new ObfuscatedString(new long[]{7792769153164725073L, -3839249003673629781L, -7920751764498848695L, -8523183689651519597L}).toString() + format);
            this.mCipher = Cipher.getInstance(format);
        } catch (NoSuchAlgorithmException | NoSuchPaddingException e) {
            this.mLogger.log(Level.SEVERE, new ObfuscatedString(new long[]{-2354988249697445423L, -7084244151484467242L, 5688905100529512611L, -7030165020847086332L}).toString(), e);
            throw new IllegalStateException(new ObfuscatedString(new long[]{8655058308620183079L, 6540125982549860983L, -2810880496176464502L, 877917138826070800L, 6080078310049780040L, -3430636011939598252L, 3006192593919877794L, 6917591108526005836L}).toString());
        }
    }

    private IvParameterSpec generateIvParameterSpec(byte[] bArr) {
        return new IvParameterSpec(bArr);
    }

    private SecretKey generateSecretKeySpec(byte[] bArr) {
        return new SecretKeySpec(bArr, this.mEncryptionAlgorithm);
    }

    public static CipherService getInstance(EncryptionAlgorithm encryptionAlgorithm) {
        int i = AnonymousClass1.$SwitchMap$com$tknetwork$tunnel$securepreferences$model$EncryptionAlgorithm[encryptionAlgorithm.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return new CipherServiceImpl(new ObfuscatedString(new long[]{-3321002660518884374L, -6766846246166079965L}).toString(), new ObfuscatedString(new long[]{-4875569986702624718L, 1102909775142680171L}).toString(), new ObfuscatedString(new long[]{2553150670189815673L, 4193895305560202227L, 5695847966457478897L}).toString(), 8);
            }
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{3511106234304218855L, -9199844549664087771L, 4232616537189839619L, -6154484148341414618L}).toString());
        }
        return new CipherServiceImpl(new ObfuscatedString(new long[]{-5664706403441581056L, 4556819790553565911L}).toString(), new ObfuscatedString(new long[]{5787808172829276388L, -7081747287504035276L}).toString(), new ObfuscatedString(new long[]{482288388179643553L, -3131067366090765297L, 8380459472904895444L}).toString(), 12);
    }

    @Override // com.tknetwork.tunnel.securepreferences.crypto.CipherService
    public byte[] decrypt(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte[] doFinal;
        synchronized (this.mCipher) {
            try {
                try {
                    this.mCipher.init(2, generateSecretKeySpec(bArr), generateIvParameterSpec(bArr2));
                    doFinal = this.mCipher.doFinal(bArr3);
                } finally {
                }
            } catch (InvalidAlgorithmParameterException e) {
                e = e;
                this.mLogger.log(Level.SEVERE, new ObfuscatedString(new long[]{-6139964743787932468L, 1143222097541279365L, -2201888336791873621L, -2026003173377404936L}).toString(), e);
                throw new IllegalStateException(String.format(new ObfuscatedString(new long[]{3534485153750140849L, 2234538709718492356L}).toString(), e.getClass().getName(), e.getMessage()));
            } catch (InvalidKeyException e2) {
                e = e2;
                this.mLogger.log(Level.SEVERE, new ObfuscatedString(new long[]{-6139964743787932468L, 1143222097541279365L, -2201888336791873621L, -2026003173377404936L}).toString(), e);
                throw new IllegalStateException(String.format(new ObfuscatedString(new long[]{3534485153750140849L, 2234538709718492356L}).toString(), e.getClass().getName(), e.getMessage()));
            } catch (BadPaddingException e3) {
                e = e3;
                this.mLogger.log(Level.SEVERE, new ObfuscatedString(new long[]{-6139964743787932468L, 1143222097541279365L, -2201888336791873621L, -2026003173377404936L}).toString(), e);
                throw new IllegalStateException(String.format(new ObfuscatedString(new long[]{3534485153750140849L, 2234538709718492356L}).toString(), e.getClass().getName(), e.getMessage()));
            } catch (IllegalBlockSizeException e4) {
                e = e4;
                this.mLogger.log(Level.SEVERE, new ObfuscatedString(new long[]{-6139964743787932468L, 1143222097541279365L, -2201888336791873621L, -2026003173377404936L}).toString(), e);
                throw new IllegalStateException(String.format(new ObfuscatedString(new long[]{3534485153750140849L, 2234538709718492356L}).toString(), e.getClass().getName(), e.getMessage()));
            }
        }
        return doFinal;
    }

    @Override // com.tknetwork.tunnel.securepreferences.crypto.CipherService
    public byte[] encrypt(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte[] doFinal;
        synchronized (this.mCipher) {
            try {
                try {
                    this.mCipher.init(1, generateSecretKeySpec(bArr), generateIvParameterSpec(bArr2));
                    doFinal = this.mCipher.doFinal(bArr3);
                } finally {
                }
            } catch (InvalidAlgorithmParameterException e) {
                e = e;
                this.mLogger.log(Level.SEVERE, new ObfuscatedString(new long[]{-4026026431998241765L, -7499414332636226735L, 69230111855790146L, -1518765141744886102L}).toString(), e);
                throw new IllegalStateException(String.format(new ObfuscatedString(new long[]{-7638769882786638156L, -8896635911494778673L}).toString(), e.getClass().getName(), e.getMessage()));
            } catch (InvalidKeyException e2) {
                e = e2;
                this.mLogger.log(Level.SEVERE, new ObfuscatedString(new long[]{-4026026431998241765L, -7499414332636226735L, 69230111855790146L, -1518765141744886102L}).toString(), e);
                throw new IllegalStateException(String.format(new ObfuscatedString(new long[]{-7638769882786638156L, -8896635911494778673L}).toString(), e.getClass().getName(), e.getMessage()));
            } catch (BadPaddingException e3) {
                e = e3;
                this.mLogger.log(Level.SEVERE, new ObfuscatedString(new long[]{-4026026431998241765L, -7499414332636226735L, 69230111855790146L, -1518765141744886102L}).toString(), e);
                throw new IllegalStateException(String.format(new ObfuscatedString(new long[]{-7638769882786638156L, -8896635911494778673L}).toString(), e.getClass().getName(), e.getMessage()));
            } catch (IllegalBlockSizeException e4) {
                e = e4;
                this.mLogger.log(Level.SEVERE, new ObfuscatedString(new long[]{-4026026431998241765L, -7499414332636226735L, 69230111855790146L, -1518765141744886102L}).toString(), e);
                throw new IllegalStateException(String.format(new ObfuscatedString(new long[]{-7638769882786638156L, -8896635911494778673L}).toString(), e.getClass().getName(), e.getMessage()));
            }
        }
        return doFinal;
    }

    @Override // com.tknetwork.tunnel.securepreferences.crypto.CipherService
    public int getIVSize() {
        return this.ivSize;
    }
}
