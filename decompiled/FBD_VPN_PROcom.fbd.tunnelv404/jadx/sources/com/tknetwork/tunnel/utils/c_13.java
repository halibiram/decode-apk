package com.tknetwork.tunnel.utils;

import android.util.Base64;
import com.google.common.base.Ascii;
import com.panda912.muddy.ObfuscatedString;
import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes3.dex */
public final class c_13 {
    private static final String TAG = new ObfuscatedString(new long[]{-1230074777676475842L, 5274514686496976487L}).toString();
    private static final String AES_MODE = new ObfuscatedString(new long[]{2713706588130071333L, -2505997483674552861L, -2719358967089088701L, -3767416467809513181L}).toString();
    private static final String CHARSET = new ObfuscatedString(new long[]{-282787645040061913L, -7756028607433626875L}).toString();
    private static final String HASH_ALGORITHM = new ObfuscatedString(new long[]{7665567033842310478L, -7714960248739963013L}).toString();
    private static final byte[] ivBytes = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    public static boolean DEBUG_LOG_ENABLED = false;

    private c_13() {
    }

    private static String bytesToHex(byte[] bArr) {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
        char[] cArr2 = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            byte b = bArr[i];
            int i2 = i * 2;
            cArr2[i2] = cArr[(b & 255) >>> 4];
            cArr2[i2 + 1] = cArr[b & Ascii.SI];
        }
        return new String(cArr2);
    }

    public static String decrypt(String str, String str2) {
        try {
            SecretKeySpec generateKey = generateKey(str);
            log(new ObfuscatedString(new long[]{-8938937623108257475L, 8872953977750213130L, -5821133783231376959L, -7979407274520884384L}).toString(), str2);
            byte[] decode = Base64.decode(str2, 2);
            log(new ObfuscatedString(new long[]{-5500428702610572810L, 445551663701197905L, -1097455575597836316L, 2123673781954830318L}).toString(), decode);
            byte[] decrypt = decrypt(generateKey, ivBytes, decode);
            log(new ObfuscatedString(new long[]{1255111556808163347L, -7799278841806035313L, -2779060915357914999L}).toString(), decrypt);
            String str3 = new String(decrypt, new ObfuscatedString(new long[]{2373752764893627705L, -7276864029204803293L}).toString());
            log(new ObfuscatedString(new long[]{-773797434066138243L, -4835232913505019189L}).toString(), str3);
            return str3;
        } catch (UnsupportedEncodingException e) {
            if (DEBUG_LOG_ENABLED) {
                new ObfuscatedString(new long[]{-6458162947822800273L, -2017191806398186005L}).toString();
                new ObfuscatedString(new long[]{-758610583170880407L, -449475197018150272L, -2644461945046858036L, 1166713791220376636L, -7238350123330230440L}).toString();
            }
            throw new GeneralSecurityException(e);
        }
    }

    public static String encrypt(String str, String str2) {
        try {
            SecretKeySpec generateKey = generateKey(str);
            log(new ObfuscatedString(new long[]{-1733458192215915422L, 4490251255163796571L}).toString(), str2);
            String encodeToString = Base64.encodeToString(encrypt(generateKey, ivBytes, str2.getBytes(new ObfuscatedString(new long[]{-6190406967507656952L, 2929895028816223656L}).toString())), 2);
            log(new ObfuscatedString(new long[]{8348307924708716565L, -2441942638023200963L, 1815464205625490815L}).toString(), encodeToString);
            return encodeToString;
        } catch (UnsupportedEncodingException e) {
            if (DEBUG_LOG_ENABLED) {
                new ObfuscatedString(new long[]{7035812416401084434L, 7207641182670768480L}).toString();
                new ObfuscatedString(new long[]{1275375295262083525L, 7791356565796946292L, 5288775918557541094L, -308633440088967007L, 1931999392022459929L}).toString();
            }
            throw new GeneralSecurityException(e);
        }
    }

    private static SecretKeySpec generateKey(String str) {
        MessageDigest messageDigest = MessageDigest.getInstance(new ObfuscatedString(new long[]{-6436036027845676939L, -6907634714148124541L}).toString());
        byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
        messageDigest.update(bytes, 0, bytes.length);
        byte[] digest = messageDigest.digest();
        log(new ObfuscatedString(new long[]{3857685815369507804L, -8974549306012688797L, -3806952296316442548L}).toString(), digest);
        return new SecretKeySpec(digest, new ObfuscatedString(new long[]{2830087188911761805L, 3387367310359858196L}).toString());
    }

    private static void log(String str, byte[] bArr) {
        if (DEBUG_LOG_ENABLED) {
            new ObfuscatedString(new long[]{-2196828748644740734L, 2187179582704350169L}).toString();
            new ObfuscatedString(new long[]{-1360063865882378935L, -2378747897646687977L}).toString();
            int length = bArr.length;
            new ObfuscatedString(new long[]{8643673133322787001L, -6238247811636450804L}).toString();
            bytesToHex(bArr);
            new ObfuscatedString(new long[]{268127609842460535L, 327409144989931766L}).toString();
        }
    }

    private static void log(String str, String str2) {
        if (DEBUG_LOG_ENABLED) {
            new ObfuscatedString(new long[]{-4498369228936072519L, -2474965509262559950L}).toString();
            new ObfuscatedString(new long[]{-3017853038858002479L, 6760245098995469337L}).toString();
            str2.length();
            new ObfuscatedString(new long[]{7937933415400234176L, -858089971594898946L}).toString();
            new ObfuscatedString(new long[]{-8655530324800926787L, 1336540086268600890L}).toString();
        }
    }

    public static byte[] encrypt(SecretKeySpec secretKeySpec, byte[] bArr, byte[] bArr2) {
        Cipher cipher = Cipher.getInstance(new ObfuscatedString(new long[]{876045786134005980L, -3732197557162215916L, 3563968425780695657L, 8827303412929278946L}).toString());
        cipher.init(1, secretKeySpec, new IvParameterSpec(bArr));
        byte[] doFinal = cipher.doFinal(bArr2);
        log(new ObfuscatedString(new long[]{8798838911382108456L, -7892276265897969174L, 8447384695227785093L}).toString(), doFinal);
        return doFinal;
    }

    public static byte[] decrypt(SecretKeySpec secretKeySpec, byte[] bArr, byte[] bArr2) {
        Cipher cipher = Cipher.getInstance(new ObfuscatedString(new long[]{5755437163734362023L, -4700088326951369774L, -3527497048734295519L, 2511094809590703765L}).toString());
        cipher.init(2, secretKeySpec, new IvParameterSpec(bArr));
        byte[] doFinal = cipher.doFinal(bArr2);
        log(new ObfuscatedString(new long[]{6058253236107886732L, 5206223016473706337L, 264622819440931491L}).toString(), doFinal);
        return doFinal;
    }
}
