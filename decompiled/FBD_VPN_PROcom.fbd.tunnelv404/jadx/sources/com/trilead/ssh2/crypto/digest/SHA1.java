package com.trilead.ssh2.crypto.digest;

import com.google.common.base.Ascii;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;

@Deprecated
/* loaded from: classes3.dex */
public final class SHA1 implements Digest {
    private int H0;
    private int H1;
    private int H2;
    private int H3;
    private int H4;
    private long currentLen;
    private int currentPos;
    private final int[] w = new int[80];

    public SHA1() {
        reset();
    }

    private void perform() {
        for (int i = 16; i < 80; i++) {
            int[] iArr = this.w;
            int i2 = ((iArr[i - 3] ^ iArr[i - 8]) ^ iArr[i - 14]) ^ iArr[i - 16];
            iArr[i] = (i2 >>> 31) | (i2 << 1);
        }
        int i3 = this.H0;
        int i4 = this.H1;
        int i5 = this.H2;
        int i6 = this.H3;
        int i7 = this.H4;
        int i8 = ((i3 << 5) | (i3 >>> 27)) + ((i4 & i5) | ((~i4) & i6));
        int[] iArr2 = this.w;
        int m2926x3271d0aa = AbstractC0362x4440ab85.m2926x3271d0aa(i8, iArr2[0], 1518500249, i7);
        int i9 = (i4 << 30) | (i4 >>> 2);
        int m2926x3271d0aa2 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa << 5) | (m2926x3271d0aa >>> 27)) + ((i3 & i9) | ((~i3) & i5)), iArr2[1], 1518500249, i6);
        int i10 = (i3 << 30) | (i3 >>> 2);
        int m2926x3271d0aa3 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa2 << 5) | (m2926x3271d0aa2 >>> 27)) + (((~m2926x3271d0aa) & i9) | (m2926x3271d0aa & i10)), iArr2[2], 1518500249, i5);
        int i11 = (m2926x3271d0aa >>> 2) | (m2926x3271d0aa << 30);
        int m2926x3271d0aa4 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa3 << 5) | (m2926x3271d0aa3 >>> 27)) + ((m2926x3271d0aa2 & i11) | ((~m2926x3271d0aa2) & i10)), iArr2[3], 1518500249, i9);
        int i12 = (m2926x3271d0aa2 << 30) | (m2926x3271d0aa2 >>> 2);
        int m2926x3271d0aa5 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa4 << 5) | (m2926x3271d0aa4 >>> 27)) + (((~m2926x3271d0aa3) & i11) | (m2926x3271d0aa3 & i12)), iArr2[4], 1518500249, i10);
        int i13 = (m2926x3271d0aa3 << 30) | (m2926x3271d0aa3 >>> 2);
        int m2926x3271d0aa6 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa5 << 5) | (m2926x3271d0aa5 >>> 27)) + ((m2926x3271d0aa4 & i13) | ((~m2926x3271d0aa4) & i12)), iArr2[5], 1518500249, i11);
        int i14 = (m2926x3271d0aa4 >>> 2) | (m2926x3271d0aa4 << 30);
        int m2926x3271d0aa7 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa6 << 5) | (m2926x3271d0aa6 >>> 27)) + ((m2926x3271d0aa5 & i14) | ((~m2926x3271d0aa5) & i13)), iArr2[6], 1518500249, i12);
        int i15 = (m2926x3271d0aa5 >>> 2) | (m2926x3271d0aa5 << 30);
        int m2926x3271d0aa8 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa7 << 5) | (m2926x3271d0aa7 >>> 27)) + ((m2926x3271d0aa6 & i15) | ((~m2926x3271d0aa6) & i14)), iArr2[7], 1518500249, i13);
        int i16 = (m2926x3271d0aa6 >>> 2) | (m2926x3271d0aa6 << 30);
        int m2926x3271d0aa9 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa8 << 5) | (m2926x3271d0aa8 >>> 27)) + ((m2926x3271d0aa7 & i16) | ((~m2926x3271d0aa7) & i15)), iArr2[8], 1518500249, i14);
        int i17 = (m2926x3271d0aa7 >>> 2) | (m2926x3271d0aa7 << 30);
        int m2926x3271d0aa10 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa9 << 5) | (m2926x3271d0aa9 >>> 27)) + ((m2926x3271d0aa8 & i17) | ((~m2926x3271d0aa8) & i16)), iArr2[9], 1518500249, i15);
        int i18 = (m2926x3271d0aa8 >>> 2) | (m2926x3271d0aa8 << 30);
        int m2926x3271d0aa11 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa10 << 5) | (m2926x3271d0aa10 >>> 27)) + ((m2926x3271d0aa9 & i18) | ((~m2926x3271d0aa9) & i17)), iArr2[10], 1518500249, i16);
        int i19 = (m2926x3271d0aa9 >>> 2) | (m2926x3271d0aa9 << 30);
        int m2926x3271d0aa12 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa11 << 5) | (m2926x3271d0aa11 >>> 27)) + ((m2926x3271d0aa10 & i19) | ((~m2926x3271d0aa10) & i18)), iArr2[11], 1518500249, i17);
        int i20 = (m2926x3271d0aa10 >>> 2) | (m2926x3271d0aa10 << 30);
        int m2926x3271d0aa13 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa12 << 5) | (m2926x3271d0aa12 >>> 27)) + ((m2926x3271d0aa11 & i20) | ((~m2926x3271d0aa11) & i19)), iArr2[12], 1518500249, i18);
        int i21 = (m2926x3271d0aa11 >>> 2) | (m2926x3271d0aa11 << 30);
        int m2926x3271d0aa14 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa13 << 5) | (m2926x3271d0aa13 >>> 27)) + ((m2926x3271d0aa12 & i21) | ((~m2926x3271d0aa12) & i20)), iArr2[13], 1518500249, i19);
        int i22 = (m2926x3271d0aa12 >>> 2) | (m2926x3271d0aa12 << 30);
        int m2926x3271d0aa15 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa14 << 5) | (m2926x3271d0aa14 >>> 27)) + ((m2926x3271d0aa13 & i22) | ((~m2926x3271d0aa13) & i21)), iArr2[14], 1518500249, i20);
        int i23 = (m2926x3271d0aa13 >>> 2) | (m2926x3271d0aa13 << 30);
        int m2926x3271d0aa16 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa15 << 5) | (m2926x3271d0aa15 >>> 27)) + ((m2926x3271d0aa14 & i23) | ((~m2926x3271d0aa14) & i22)), iArr2[15], 1518500249, i21);
        int i24 = (m2926x3271d0aa14 >>> 2) | (m2926x3271d0aa14 << 30);
        int m2926x3271d0aa17 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa16 << 5) | (m2926x3271d0aa16 >>> 27)) + ((m2926x3271d0aa15 & i24) | ((~m2926x3271d0aa15) & i23)), iArr2[16], 1518500249, i22);
        int i25 = (m2926x3271d0aa15 >>> 2) | (m2926x3271d0aa15 << 30);
        int m2926x3271d0aa18 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa17 << 5) | (m2926x3271d0aa17 >>> 27)) + ((m2926x3271d0aa16 & i25) | ((~m2926x3271d0aa16) & i24)), iArr2[17], 1518500249, i23);
        int i26 = (m2926x3271d0aa16 >>> 2) | (m2926x3271d0aa16 << 30);
        int m2926x3271d0aa19 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa18 << 5) | (m2926x3271d0aa18 >>> 27)) + ((m2926x3271d0aa17 & i26) | ((~m2926x3271d0aa17) & i25)), iArr2[18], 1518500249, i24);
        int i27 = (m2926x3271d0aa17 >>> 2) | (m2926x3271d0aa17 << 30);
        int m2926x3271d0aa20 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa19 << 5) | (m2926x3271d0aa19 >>> 27)) + ((m2926x3271d0aa18 & i27) | ((~m2926x3271d0aa18) & i26)), iArr2[19], 1518500249, i25);
        int i28 = (m2926x3271d0aa18 << 30) | (m2926x3271d0aa18 >>> 2);
        int m2926x3271d0aa21 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa20 << 5) | (m2926x3271d0aa20 >>> 27)) + ((m2926x3271d0aa19 ^ i28) ^ i27), iArr2[20], 1859775393, i26);
        int i29 = (m2926x3271d0aa19 >>> 2) | (m2926x3271d0aa19 << 30);
        int m2926x3271d0aa22 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa21 << 5) | (m2926x3271d0aa21 >>> 27)) + ((m2926x3271d0aa20 ^ i29) ^ i28), iArr2[21], 1859775393, i27);
        int i30 = (m2926x3271d0aa20 >>> 2) | (m2926x3271d0aa20 << 30);
        int m2926x3271d0aa23 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa22 << 5) | (m2926x3271d0aa22 >>> 27)) + ((m2926x3271d0aa21 ^ i30) ^ i29), iArr2[22], 1859775393, i28);
        int i31 = (m2926x3271d0aa21 >>> 2) | (m2926x3271d0aa21 << 30);
        int m2926x3271d0aa24 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa23 << 5) | (m2926x3271d0aa23 >>> 27)) + ((m2926x3271d0aa22 ^ i31) ^ i30), iArr2[23], 1859775393, i29);
        int i32 = (m2926x3271d0aa22 >>> 2) | (m2926x3271d0aa22 << 30);
        int m2926x3271d0aa25 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa24 << 5) | (m2926x3271d0aa24 >>> 27)) + ((m2926x3271d0aa23 ^ i32) ^ i31), iArr2[24], 1859775393, i30);
        int i33 = (m2926x3271d0aa23 >>> 2) | (m2926x3271d0aa23 << 30);
        int m2926x3271d0aa26 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa25 << 5) | (m2926x3271d0aa25 >>> 27)) + ((m2926x3271d0aa24 ^ i33) ^ i32), iArr2[25], 1859775393, i31);
        int i34 = (m2926x3271d0aa24 >>> 2) | (m2926x3271d0aa24 << 30);
        int m2926x3271d0aa27 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa26 << 5) | (m2926x3271d0aa26 >>> 27)) + ((m2926x3271d0aa25 ^ i34) ^ i33), iArr2[26], 1859775393, i32);
        int i35 = (m2926x3271d0aa25 >>> 2) | (m2926x3271d0aa25 << 30);
        int m2926x3271d0aa28 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa27 << 5) | (m2926x3271d0aa27 >>> 27)) + ((m2926x3271d0aa26 ^ i35) ^ i34), iArr2[27], 1859775393, i33);
        int i36 = (m2926x3271d0aa26 >>> 2) | (m2926x3271d0aa26 << 30);
        int m2926x3271d0aa29 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa28 << 5) | (m2926x3271d0aa28 >>> 27)) + ((m2926x3271d0aa27 ^ i36) ^ i35), iArr2[28], 1859775393, i34);
        int i37 = (m2926x3271d0aa27 >>> 2) | (m2926x3271d0aa27 << 30);
        int m2926x3271d0aa30 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa29 << 5) | (m2926x3271d0aa29 >>> 27)) + ((m2926x3271d0aa28 ^ i37) ^ i36), iArr2[29], 1859775393, i35);
        int i38 = (m2926x3271d0aa28 >>> 2) | (m2926x3271d0aa28 << 30);
        int m2926x3271d0aa31 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa30 << 5) | (m2926x3271d0aa30 >>> 27)) + ((m2926x3271d0aa29 ^ i38) ^ i37), iArr2[30], 1859775393, i36);
        int i39 = (m2926x3271d0aa29 >>> 2) | (m2926x3271d0aa29 << 30);
        int m2926x3271d0aa32 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa31 << 5) | (m2926x3271d0aa31 >>> 27)) + ((m2926x3271d0aa30 ^ i39) ^ i38), iArr2[31], 1859775393, i37);
        int i40 = (m2926x3271d0aa30 >>> 2) | (m2926x3271d0aa30 << 30);
        int m2926x3271d0aa33 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa32 << 5) | (m2926x3271d0aa32 >>> 27)) + ((m2926x3271d0aa31 ^ i40) ^ i39), iArr2[32], 1859775393, i38);
        int i41 = (m2926x3271d0aa31 >>> 2) | (m2926x3271d0aa31 << 30);
        int m2926x3271d0aa34 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa33 << 5) | (m2926x3271d0aa33 >>> 27)) + ((m2926x3271d0aa32 ^ i41) ^ i40), iArr2[33], 1859775393, i39);
        int i42 = (m2926x3271d0aa32 >>> 2) | (m2926x3271d0aa32 << 30);
        int m2926x3271d0aa35 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa34 << 5) | (m2926x3271d0aa34 >>> 27)) + ((m2926x3271d0aa33 ^ i42) ^ i41), iArr2[34], 1859775393, i40);
        int i43 = (m2926x3271d0aa33 >>> 2) | (m2926x3271d0aa33 << 30);
        int m2926x3271d0aa36 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa35 << 5) | (m2926x3271d0aa35 >>> 27)) + ((m2926x3271d0aa34 ^ i43) ^ i42), iArr2[35], 1859775393, i41);
        int i44 = (m2926x3271d0aa34 >>> 2) | (m2926x3271d0aa34 << 30);
        int m2926x3271d0aa37 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa36 << 5) | (m2926x3271d0aa36 >>> 27)) + ((m2926x3271d0aa35 ^ i44) ^ i43), iArr2[36], 1859775393, i42);
        int i45 = (m2926x3271d0aa35 >>> 2) | (m2926x3271d0aa35 << 30);
        int m2926x3271d0aa38 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa37 << 5) | (m2926x3271d0aa37 >>> 27)) + ((m2926x3271d0aa36 ^ i45) ^ i44), iArr2[37], 1859775393, i43);
        int i46 = (m2926x3271d0aa36 >>> 2) | (m2926x3271d0aa36 << 30);
        int m2926x3271d0aa39 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa38 << 5) | (m2926x3271d0aa38 >>> 27)) + ((m2926x3271d0aa37 ^ i46) ^ i45), iArr2[38], 1859775393, i44);
        int i47 = (m2926x3271d0aa37 >>> 2) | (m2926x3271d0aa37 << 30);
        int m2926x3271d0aa40 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa39 << 5) | (m2926x3271d0aa39 >>> 27)) + ((m2926x3271d0aa38 ^ i47) ^ i46), iArr2[39], 1859775393, i45);
        int i48 = (m2926x3271d0aa38 >>> 2) | (m2926x3271d0aa38 << 30);
        int m2926x3271d0aa41 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa40 << 5) | (m2926x3271d0aa40 >>> 27)) + (((i48 | i47) & m2926x3271d0aa39) | (i48 & i47)), iArr2[40], -1894007588, i46);
        int i49 = (m2926x3271d0aa39 >>> 2) | (m2926x3271d0aa39 << 30);
        int m2926x3271d0aa42 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa41 << 5) | (m2926x3271d0aa41 >>> 27)) + (((i49 | i48) & m2926x3271d0aa40) | (i49 & i48)), iArr2[41], -1894007588, i47);
        int i50 = (m2926x3271d0aa40 >>> 2) | (m2926x3271d0aa40 << 30);
        int m2926x3271d0aa43 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa42 << 5) | (m2926x3271d0aa42 >>> 27)) + (((i50 | i49) & m2926x3271d0aa41) | (i50 & i49)), iArr2[42], -1894007588, i48);
        int i51 = (m2926x3271d0aa41 >>> 2) | (m2926x3271d0aa41 << 30);
        int m2926x3271d0aa44 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa43 << 5) | (m2926x3271d0aa43 >>> 27)) + (((i51 | i50) & m2926x3271d0aa42) | (i51 & i50)), iArr2[43], -1894007588, i49);
        int i52 = (m2926x3271d0aa42 >>> 2) | (m2926x3271d0aa42 << 30);
        int m2926x3271d0aa45 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa44 << 5) | (m2926x3271d0aa44 >>> 27)) + (((i52 | i51) & m2926x3271d0aa43) | (i52 & i51)), iArr2[44], -1894007588, i50);
        int i53 = (m2926x3271d0aa43 >>> 2) | (m2926x3271d0aa43 << 30);
        int m2926x3271d0aa46 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa45 << 5) | (m2926x3271d0aa45 >>> 27)) + (((i53 | i52) & m2926x3271d0aa44) | (i53 & i52)), iArr2[45], -1894007588, i51);
        int i54 = (m2926x3271d0aa44 >>> 2) | (m2926x3271d0aa44 << 30);
        int m2926x3271d0aa47 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa46 << 5) | (m2926x3271d0aa46 >>> 27)) + (((i54 | i53) & m2926x3271d0aa45) | (i54 & i53)), iArr2[46], -1894007588, i52);
        int i55 = (m2926x3271d0aa45 >>> 2) | (m2926x3271d0aa45 << 30);
        int m2926x3271d0aa48 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa47 << 5) | (m2926x3271d0aa47 >>> 27)) + (((i55 | i54) & m2926x3271d0aa46) | (i55 & i54)), iArr2[47], -1894007588, i53);
        int i56 = (m2926x3271d0aa46 >>> 2) | (m2926x3271d0aa46 << 30);
        int m2926x3271d0aa49 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa48 << 5) | (m2926x3271d0aa48 >>> 27)) + (((i56 | i55) & m2926x3271d0aa47) | (i56 & i55)), iArr2[48], -1894007588, i54);
        int i57 = (m2926x3271d0aa47 >>> 2) | (m2926x3271d0aa47 << 30);
        int m2926x3271d0aa50 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa49 << 5) | (m2926x3271d0aa49 >>> 27)) + (((i57 | i56) & m2926x3271d0aa48) | (i57 & i56)), iArr2[49], -1894007588, i55);
        int i58 = (m2926x3271d0aa48 >>> 2) | (m2926x3271d0aa48 << 30);
        int m2926x3271d0aa51 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa50 << 5) | (m2926x3271d0aa50 >>> 27)) + (((i58 | i57) & m2926x3271d0aa49) | (i58 & i57)), iArr2[50], -1894007588, i56);
        int i59 = (m2926x3271d0aa49 >>> 2) | (m2926x3271d0aa49 << 30);
        int m2926x3271d0aa52 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa51 << 5) | (m2926x3271d0aa51 >>> 27)) + (((i59 | i58) & m2926x3271d0aa50) | (i59 & i58)), iArr2[51], -1894007588, i57);
        int i60 = (m2926x3271d0aa50 >>> 2) | (m2926x3271d0aa50 << 30);
        int m2926x3271d0aa53 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa52 << 5) | (m2926x3271d0aa52 >>> 27)) + (((i60 | i59) & m2926x3271d0aa51) | (i60 & i59)), iArr2[52], -1894007588, i58);
        int i61 = (m2926x3271d0aa51 >>> 2) | (m2926x3271d0aa51 << 30);
        int m2926x3271d0aa54 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa53 << 5) | (m2926x3271d0aa53 >>> 27)) + (((i61 | i60) & m2926x3271d0aa52) | (i61 & i60)), iArr2[53], -1894007588, i59);
        int i62 = (m2926x3271d0aa52 >>> 2) | (m2926x3271d0aa52 << 30);
        int m2926x3271d0aa55 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa54 << 5) | (m2926x3271d0aa54 >>> 27)) + (((i62 | i61) & m2926x3271d0aa53) | (i62 & i61)), iArr2[54], -1894007588, i60);
        int i63 = (m2926x3271d0aa53 >>> 2) | (m2926x3271d0aa53 << 30);
        int i64 = (((i61 + ((m2926x3271d0aa55 << 5) | (m2926x3271d0aa55 >>> 27))) + (((i63 | i62) & m2926x3271d0aa54) | (i63 & i62))) + iArr2[55]) - 1894007588;
        int i65 = (m2926x3271d0aa54 >>> 2) | (m2926x3271d0aa54 << 30);
        int m2926x3271d0aa56 = AbstractC0362x4440ab85.m2926x3271d0aa(((i64 << 5) | (i64 >>> 27)) + (((i65 | i63) & m2926x3271d0aa55) | (i65 & i63)), iArr2[56], -1894007588, i62);
        int i66 = (m2926x3271d0aa55 >>> 2) | (m2926x3271d0aa55 << 30);
        int m2926x3271d0aa57 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa56 << 5) | (m2926x3271d0aa56 >>> 27)) + (((i66 | i65) & i64) | (i66 & i65)), iArr2[57], -1894007588, i63);
        int i67 = (i64 >>> 2) | (i64 << 30);
        int m2926x3271d0aa58 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa57 << 5) | (m2926x3271d0aa57 >>> 27)) + (((i67 | i66) & m2926x3271d0aa56) | (i67 & i66)), iArr2[58], -1894007588, i65);
        int i68 = (m2926x3271d0aa56 >>> 2) | (m2926x3271d0aa56 << 30);
        int m2926x3271d0aa59 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa58 << 5) | (m2926x3271d0aa58 >>> 27)) + (((i68 | i67) & m2926x3271d0aa57) | (i68 & i67)), iArr2[59], -1894007588, i66);
        int i69 = (m2926x3271d0aa57 >>> 2) | (m2926x3271d0aa57 << 30);
        int m2926x3271d0aa60 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa59 << 5) | (m2926x3271d0aa59 >>> 27)) + ((m2926x3271d0aa58 ^ i69) ^ i68), iArr2[60], -899497514, i67);
        int i70 = (m2926x3271d0aa58 >>> 2) | (m2926x3271d0aa58 << 30);
        int m2926x3271d0aa61 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa60 << 5) | (m2926x3271d0aa60 >>> 27)) + ((m2926x3271d0aa59 ^ i70) ^ i69), iArr2[61], -899497514, i68);
        int i71 = (m2926x3271d0aa59 >>> 2) | (m2926x3271d0aa59 << 30);
        int m2926x3271d0aa62 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa61 << 5) | (m2926x3271d0aa61 >>> 27)) + ((m2926x3271d0aa60 ^ i71) ^ i70), iArr2[62], -899497514, i69);
        int i72 = (m2926x3271d0aa60 >>> 2) | (m2926x3271d0aa60 << 30);
        int m2926x3271d0aa63 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa62 << 5) | (m2926x3271d0aa62 >>> 27)) + ((m2926x3271d0aa61 ^ i72) ^ i71), iArr2[63], -899497514, i70);
        int i73 = (m2926x3271d0aa61 >>> 2) | (m2926x3271d0aa61 << 30);
        int m2926x3271d0aa64 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa63 << 5) | (m2926x3271d0aa63 >>> 27)) + ((m2926x3271d0aa62 ^ i73) ^ i72), iArr2[64], -899497514, i71);
        int i74 = (m2926x3271d0aa62 >>> 2) | (m2926x3271d0aa62 << 30);
        int m2926x3271d0aa65 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa64 << 5) | (m2926x3271d0aa64 >>> 27)) + ((m2926x3271d0aa63 ^ i74) ^ i73), iArr2[65], -899497514, i72);
        int i75 = (m2926x3271d0aa63 >>> 2) | (m2926x3271d0aa63 << 30);
        int m2926x3271d0aa66 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa65 << 5) | (m2926x3271d0aa65 >>> 27)) + ((m2926x3271d0aa64 ^ i75) ^ i74), iArr2[66], -899497514, i73);
        int i76 = (m2926x3271d0aa64 >>> 2) | (m2926x3271d0aa64 << 30);
        int m2926x3271d0aa67 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa66 << 5) | (m2926x3271d0aa66 >>> 27)) + ((m2926x3271d0aa65 ^ i76) ^ i75), iArr2[67], -899497514, i74);
        int i77 = (m2926x3271d0aa65 >>> 2) | (m2926x3271d0aa65 << 30);
        int m2926x3271d0aa68 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa67 << 5) | (m2926x3271d0aa67 >>> 27)) + ((m2926x3271d0aa66 ^ i77) ^ i76), iArr2[68], -899497514, i75);
        int i78 = (m2926x3271d0aa66 >>> 2) | (m2926x3271d0aa66 << 30);
        int m2926x3271d0aa69 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa68 << 5) | (m2926x3271d0aa68 >>> 27)) + ((m2926x3271d0aa67 ^ i78) ^ i77), iArr2[69], -899497514, i76);
        int i79 = (m2926x3271d0aa67 >>> 2) | (m2926x3271d0aa67 << 30);
        int m2926x3271d0aa70 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa69 << 5) | (m2926x3271d0aa69 >>> 27)) + ((m2926x3271d0aa68 ^ i79) ^ i78), iArr2[70], -899497514, i77);
        int i80 = (m2926x3271d0aa68 >>> 2) | (m2926x3271d0aa68 << 30);
        int m2926x3271d0aa71 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa70 << 5) | (m2926x3271d0aa70 >>> 27)) + ((m2926x3271d0aa69 ^ i80) ^ i79), iArr2[71], -899497514, i78);
        int i81 = (m2926x3271d0aa69 >>> 2) | (m2926x3271d0aa69 << 30);
        int m2926x3271d0aa72 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa71 << 5) | (m2926x3271d0aa71 >>> 27)) + ((m2926x3271d0aa70 ^ i81) ^ i80), iArr2[72], -899497514, i79);
        int i82 = (m2926x3271d0aa70 >>> 2) | (m2926x3271d0aa70 << 30);
        int m2926x3271d0aa73 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa72 << 5) | (m2926x3271d0aa72 >>> 27)) + ((m2926x3271d0aa71 ^ i82) ^ i81), iArr2[73], -899497514, i80);
        int i83 = (m2926x3271d0aa71 >>> 2) | (m2926x3271d0aa71 << 30);
        int m2926x3271d0aa74 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa73 << 5) | (m2926x3271d0aa73 >>> 27)) + ((m2926x3271d0aa72 ^ i83) ^ i82), iArr2[74], -899497514, i81);
        int i84 = (m2926x3271d0aa72 >>> 2) | (m2926x3271d0aa72 << 30);
        int m2926x3271d0aa75 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa74 << 5) | (m2926x3271d0aa74 >>> 27)) + ((m2926x3271d0aa73 ^ i84) ^ i83), iArr2[75], -899497514, i82);
        int i85 = (m2926x3271d0aa73 >>> 2) | (m2926x3271d0aa73 << 30);
        int m2926x3271d0aa76 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa75 << 5) | (m2926x3271d0aa75 >>> 27)) + ((m2926x3271d0aa74 ^ i85) ^ i84), iArr2[76], -899497514, i83);
        int i86 = (m2926x3271d0aa74 >>> 2) | (m2926x3271d0aa74 << 30);
        int m2926x3271d0aa77 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa76 << 5) | (m2926x3271d0aa76 >>> 27)) + ((m2926x3271d0aa75 ^ i86) ^ i85), iArr2[77], -899497514, i84);
        int i87 = (m2926x3271d0aa75 >>> 2) | (m2926x3271d0aa75 << 30);
        int m2926x3271d0aa78 = AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa77 << 5) | (m2926x3271d0aa77 >>> 27)) + ((m2926x3271d0aa76 ^ i87) ^ i86), iArr2[78], -899497514, i85);
        int i88 = (m2926x3271d0aa76 >>> 2) | (m2926x3271d0aa76 << 30);
        this.H0 = i3 + AbstractC0362x4440ab85.m2926x3271d0aa(((m2926x3271d0aa78 << 5) | (m2926x3271d0aa78 >>> 27)) + ((m2926x3271d0aa77 ^ i88) ^ i87), iArr2[79], -899497514, i86);
        this.H1 = i4 + m2926x3271d0aa78;
        this.H2 = i5 + ((m2926x3271d0aa77 << 30) | (m2926x3271d0aa77 >>> 2));
        this.H3 = i6 + i88;
        this.H4 = i7 + i87;
    }

    private void putInt(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) (i2 >> 24);
        bArr[i + 1] = (byte) (i2 >> 16);
        bArr[i + 2] = (byte) (i2 >> 8);
        bArr[i + 3] = (byte) i2;
    }

    private static String toHexString(byte[] bArr) {
        new ObfuscatedString(new long[]{229467317002222545L, -4316729137622928845L, 8408914267692303585L}).toString();
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            sb.append(new ObfuscatedString(new long[]{-4298297995509724284L, 6451644168015807928L, -777283847823912501L}).toString().charAt((b >> 4) & 15));
            sb.append(new ObfuscatedString(new long[]{-343461823608733203L, 1083395813573679393L, -3054740115888950577L}).toString().charAt(b & Ascii.SI));
        }
        return sb.toString();
    }

    @Override // com.trilead.ssh2.crypto.digest.Digest
    public final void digest(byte[] bArr) {
        digest(bArr, 0);
    }

    @Override // com.trilead.ssh2.crypto.digest.Digest
    public final int getDigestLength() {
        return 20;
    }

    @Override // com.trilead.ssh2.crypto.digest.Digest
    public final void reset() {
        this.H0 = 1732584193;
        this.H1 = -271733879;
        this.H2 = -1732584194;
        this.H3 = 271733878;
        this.H4 = -1009589776;
        this.currentPos = 0;
        this.currentLen = 0L;
    }

    @Override // com.trilead.ssh2.crypto.digest.Digest
    public final void update(byte[] bArr) {
        update(bArr, 0, bArr.length);
    }

    @Override // com.trilead.ssh2.crypto.digest.Digest
    public final void digest(byte[] bArr, int i) {
        int i2 = this.currentPos;
        int i3 = i2 >> 2;
        int[] iArr = this.w;
        iArr[i3] = ((iArr[i3] << 8) | 128) << ((3 - (i2 & 3)) << 3);
        int i4 = (i2 & (-4)) + 4;
        this.currentPos = i4;
        if (i4 == 64) {
            this.currentPos = 0;
            perform();
        } else if (i4 == 60) {
            this.currentPos = 0;
            iArr[15] = 0;
            perform();
        }
        for (int i5 = this.currentPos >> 2; i5 < 14; i5++) {
            this.w[i5] = 0;
        }
        int[] iArr2 = this.w;
        long j = this.currentLen;
        iArr2[14] = (int) (j >> 32);
        iArr2[15] = (int) j;
        perform();
        putInt(bArr, i, this.H0);
        putInt(bArr, i + 4, this.H1);
        putInt(bArr, i + 8, this.H2);
        putInt(bArr, i + 12, this.H3);
        putInt(bArr, i + 16, this.H4);
        reset();
    }

    @Override // com.trilead.ssh2.crypto.digest.Digest
    public final void update(byte[] bArr, int i, int i2) {
        int i3;
        int i4 = i2;
        if (i4 >= 4) {
            int i5 = this.currentPos;
            int i6 = i5 >> 2;
            int i7 = i5 & 3;
            if (i7 == 0) {
                int i8 = i + 4;
                this.w[i6] = ((bArr[i + 1] & 255) << 16) | ((bArr[i] & 255) << 24) | ((bArr[i + 2] & 255) << 8) | (bArr[i + 3] & 255);
                i4 -= 4;
                int i9 = i5 + 4;
                this.currentPos = i9;
                this.currentLen += 32;
                if (i9 == 64) {
                    perform();
                    this.currentPos = 0;
                }
                i3 = i8;
            } else if (i7 == 1) {
                int[] iArr = this.w;
                i3 = i + 3;
                iArr[i6] = (bArr[i + 2] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i] & 255) << 16) | (iArr[i6] << 24);
                i4 -= 3;
                int i10 = i5 + 3;
                this.currentPos = i10;
                this.currentLen += 24;
                if (i10 == 64) {
                    perform();
                    this.currentPos = 0;
                }
            } else if (i7 == 2) {
                int[] iArr2 = this.w;
                int i11 = i + 2;
                iArr2[i6] = (iArr2[i6] << 16) | (bArr[i + 1] & 255) | ((bArr[i] & 255) << 8);
                i4 -= 2;
                int i12 = i5 + 2;
                this.currentPos = i12;
                this.currentLen += 16;
                if (i12 == 64) {
                    perform();
                    this.currentPos = 0;
                }
                i3 = i11;
            } else if (i7 != 3) {
                i3 = i;
            } else {
                int[] iArr3 = this.w;
                i3 = i + 1;
                iArr3[i6] = (bArr[i] & 255) | (iArr3[i6] << 8);
                i4--;
                int i13 = i5 + 1;
                this.currentPos = i13;
                this.currentLen += 8;
                if (i13 == 64) {
                    perform();
                    this.currentPos = 0;
                }
            }
            while (i4 >= 8) {
                int[] iArr4 = this.w;
                int i14 = this.currentPos;
                int i15 = i3 + 4;
                iArr4[i14 >> 2] = ((bArr[i3 + 1] & 255) << 16) | ((bArr[i3] & 255) << 24) | ((bArr[i3 + 2] & 255) << 8) | (bArr[i3 + 3] & 255);
                int i16 = i14 + 4;
                this.currentPos = i16;
                if (i16 == 64) {
                    perform();
                    this.currentPos = 0;
                }
                int[] iArr5 = this.w;
                int i17 = this.currentPos;
                int i18 = i3 + 7;
                int i19 = ((bArr[i3 + 5] & 255) << 16) | ((bArr[i15] & 255) << 24) | ((bArr[i3 + 6] & 255) << 8);
                i3 += 8;
                iArr5[i17 >> 2] = i19 | (bArr[i18] & 255);
                int i20 = i17 + 4;
                this.currentPos = i20;
                if (i20 == 64) {
                    perform();
                    this.currentPos = 0;
                }
                this.currentLen += 64;
                i4 -= 8;
            }
            while (i4 < 0) {
                int[] iArr6 = this.w;
                int i21 = this.currentPos;
                int i22 = i3 + 3;
                int i23 = ((bArr[i3 + 1] & 255) << 16) | ((bArr[i3] & 255) << 24) | ((bArr[i3 + 2] & 255) << 8);
                i3 += 4;
                iArr6[i21 >> 2] = i23 | (bArr[i22] & 255);
                i4 -= 4;
                int i24 = i21 + 4;
                this.currentPos = i24;
                this.currentLen += 32;
                if (i24 == 64) {
                    perform();
                    this.currentPos = 0;
                }
            }
        } else {
            i3 = i;
        }
        while (i4 > 0) {
            int i25 = this.currentPos;
            int i26 = i25 >> 2;
            int[] iArr7 = this.w;
            int i27 = i3 + 1;
            iArr7[i26] = (iArr7[i26] << 8) | (bArr[i3] & 255);
            this.currentLen += 8;
            int i28 = i25 + 1;
            this.currentPos = i28;
            if (i28 == 64) {
                perform();
                this.currentPos = 0;
            }
            i4--;
            i3 = i27;
        }
    }

    @Override // com.trilead.ssh2.crypto.digest.Digest
    public final void update(byte b) {
        int i = this.currentPos;
        int i2 = i >> 2;
        int[] iArr = this.w;
        iArr[i2] = (b & 255) | (iArr[i2] << 8);
        this.currentLen += 8;
        int i3 = i + 1;
        this.currentPos = i3;
        if (i3 == 64) {
            perform();
            this.currentPos = 0;
        }
    }
}
