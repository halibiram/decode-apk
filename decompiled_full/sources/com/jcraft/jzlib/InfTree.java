package com.jcraft.jzlib;

import androidx.core.view.InputDeviceCompat;
import androidx.fragment.app.FragmentTransaction;
import com.panda912.muddy.ObfuscatedString;
import com.tknetwork.tunnel.utils.StatisticsGraphData;
import okhttp3.internal.http.HttpStatusCodesKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class InfTree {
    static final int BMAX = 15;
    private static final int MANY = 1440;
    private static final int Z_BUF_ERROR = -5;
    private static final int Z_DATA_ERROR = -3;
    private static final int Z_ERRNO = -1;
    private static final int Z_MEM_ERROR = -4;
    private static final int Z_NEED_DICT = 2;
    private static final int Z_OK = 0;
    private static final int Z_STREAM_END = 1;
    private static final int Z_STREAM_ERROR = -2;
    private static final int Z_VERSION_ERROR = -6;
    static final int fixed_bd = 5;
    static final int fixed_bl = 9;
    static final int[] fixed_tl = {96, 7, 256, 0, 8, 80, 0, 8, 16, 84, 8, 115, 82, 7, 31, 0, 8, 112, 0, 8, 48, 0, 9, 192, 80, 7, 10, 0, 8, 96, 0, 8, 32, 0, 9, 160, 0, 8, 0, 0, 8, 128, 0, 8, 64, 0, 9, 224, 80, 7, 6, 0, 8, 88, 0, 8, 24, 0, 9, 144, 83, 7, 59, 0, 8, 120, 0, 8, 56, 0, 9, HttpStatusCodesKt.HTTP_ALREADY_REPORTED, 81, 7, 17, 0, 8, 104, 0, 8, 40, 0, 9, 176, 0, 8, 8, 0, 8, 136, 0, 8, 72, 0, 9, 240, 80, 7, 4, 0, 8, 84, 0, 8, 20, 85, 8, 227, 83, 7, 43, 0, 8, 116, 0, 8, 52, 0, 9, 200, 81, 7, 13, 0, 8, 100, 0, 8, 36, 0, 9, 168, 0, 8, 4, 0, 8, 132, 0, 8, 68, 0, 9, 232, 80, 7, 8, 0, 8, 92, 0, 8, 28, 0, 9, 152, 84, 7, 83, 0, 8, 124, 0, 8, 60, 0, 9, 216, 82, 7, 23, 0, 8, 108, 0, 8, 44, 0, 9, 184, 0, 8, 12, 0, 8, 140, 0, 8, 76, 0, 9, 248, 80, 7, 3, 0, 8, 82, 0, 8, 18, 85, 8, 163, 83, 7, 35, 0, 8, 114, 0, 8, 50, 0, 9, 196, 81, 7, 11, 0, 8, 98, 0, 8, 34, 0, 9, 164, 0, 8, 2, 0, 8, 130, 0, 8, 66, 0, 9, 228, 80, 7, 7, 0, 8, 90, 0, 8, 26, 0, 9, 148, 84, 7, 67, 0, 8, 122, 0, 8, 58, 0, 9, 212, 82, 7, 19, 0, 8, 106, 0, 8, 42, 0, 9, 180, 0, 8, 10, 0, 8, 138, 0, 8, 74, 0, 9, 244, 80, 7, 5, 0, 8, 86, 0, 8, 22, 192, 8, 0, 83, 7, 51, 0, 8, 118, 0, 8, 54, 0, 9, HttpStatusCodesKt.HTTP_NO_CONTENT, 81, 7, 15, 0, 8, 102, 0, 8, 38, 0, 9, 172, 0, 8, 6, 0, 8, 134, 0, 8, 70, 0, 9, 236, 80, 7, 9, 0, 8, 94, 0, 8, 30, 0, 9, 156, 84, 7, 99, 0, 8, 126, 0, 8, 62, 0, 9, 220, 82, 7, 27, 0, 8, 110, 0, 8, 46, 0, 9, 188, 0, 8, 14, 0, 8, 142, 0, 8, 78, 0, 9, 252, 96, 7, 256, 0, 8, 81, 0, 8, 17, 85, 8, 131, 82, 7, 31, 0, 8, 113, 0, 8, 49, 0, 9, 194, 80, 7, 10, 0, 8, 97, 0, 8, 33, 0, 9, 162, 0, 8, 1, 0, 8, 129, 0, 8, 65, 0, 9, HttpStatusCodesKt.HTTP_IM_USED, 80, 7, 6, 0, 8, 89, 0, 8, 25, 0, 9, 146, 83, 7, 59, 0, 8, 121, 0, 8, 57, 0, 9, 210, 81, 7, 17, 0, 8, 105, 0, 8, 41, 0, 9, 178, 0, 8, 9, 0, 8, 137, 0, 8, 73, 0, 9, 242, 80, 7, 4, 0, 8, 85, 0, 8, 21, 80, 8, 258, 83, 7, 43, 0, 8, 117, 0, 8, 53, 0, 9, HttpStatusCodesKt.HTTP_ACCEPTED, 81, 7, 13, 0, 8, 101, 0, 8, 37, 0, 9, 170, 0, 8, 5, 0, 8, 133, 0, 8, 69, 0, 9, 234, 80, 7, 8, 0, 8, 93, 0, 8, 29, 0, 9, 154, 84, 7, 83, 0, 8, 125, 0, 8, 61, 0, 9, 218, 82, 7, 23, 0, 8, 109, 0, 8, 45, 0, 9, 186, 0, 8, 13, 0, 8, 141, 0, 8, 77, 0, 9, 250, 80, 7, 3, 0, 8, 83, 0, 8, 19, 85, 8, 195, 83, 7, 35, 0, 8, 115, 0, 8, 51, 0, 9, 198, 81, 7, 11, 0, 8, 99, 0, 8, 35, 0, 9, 166, 0, 8, 3, 0, 8, 131, 0, 8, 67, 0, 9, 230, 80, 7, 7, 0, 8, 91, 0, 8, 27, 0, 9, 150, 84, 7, 67, 0, 8, 123, 0, 8, 59, 0, 9, 214, 82, 7, 19, 0, 8, 107, 0, 8, 43, 0, 9, 182, 0, 8, 11, 0, 8, 139, 0, 8, 75, 0, 9, 246, 80, 7, 5, 0, 8, 87, 0, 8, 23, 192, 8, 0, 83, 7, 51, 0, 8, 119, 0, 8, 55, 0, 9, HttpStatusCodesKt.HTTP_PARTIAL_CONTENT, 81, 7, 15, 0, 8, 103, 0, 8, 39, 0, 9, 174, 0, 8, 7, 0, 8, 135, 0, 8, 71, 0, 9, 238, 80, 7, 9, 0, 8, 95, 0, 8, 31, 0, 9, 158, 84, 7, 99, 0, 8, 127, 0, 8, 63, 0, 9, 222, 82, 7, 27, 0, 8, 111, 0, 8, 47, 0, 9, 190, 0, 8, 15, 0, 8, 143, 0, 8, 79, 0, 9, 254, 96, 7, 256, 0, 8, 80, 0, 8, 16, 84, 8, 115, 82, 7, 31, 0, 8, 112, 0, 8, 48, 0, 9, 193, 80, 7, 10, 0, 8, 96, 0, 8, 32, 0, 9, 161, 0, 8, 0, 0, 8, 128, 0, 8, 64, 0, 9, 225, 80, 7, 6, 0, 8, 88, 0, 8, 24, 0, 9, 145, 83, 7, 59, 0, 8, 120, 0, 8, 56, 0, 9, 209, 81, 7, 17, 0, 8, 104, 0, 8, 40, 0, 9, 177, 0, 8, 8, 0, 8, 136, 0, 8, 72, 0, 9, 241, 80, 7, 4, 0, 8, 84, 0, 8, 20, 85, 8, 227, 83, 7, 43, 0, 8, 116, 0, 8, 52, 0, 9, 201, 81, 7, 13, 0, 8, 100, 0, 8, 36, 0, 9, 169, 0, 8, 4, 0, 8, 132, 0, 8, 68, 0, 9, 233, 80, 7, 8, 0, 8, 92, 0, 8, 28, 0, 9, 153, 84, 7, 83, 0, 8, 124, 0, 8, 60, 0, 9, 217, 82, 7, 23, 0, 8, 108, 0, 8, 44, 0, 9, 185, 0, 8, 12, 0, 8, 140, 0, 8, 76, 0, 9, 249, 80, 7, 3, 0, 8, 82, 0, 8, 18, 85, 8, 163, 83, 7, 35, 0, 8, 114, 0, 8, 50, 0, 9, 197, 81, 7, 11, 0, 8, 98, 0, 8, 34, 0, 9, 165, 0, 8, 2, 0, 
    8, 130, 0, 8, 66, 0, 9, 229, 80, 7, 7, 0, 8, 90, 0, 8, 26, 0, 9, 149, 84, 7, 67, 0, 8, 122, 0, 8, 58, 0, 9, 213, 82, 7, 19, 0, 8, 106, 0, 8, 42, 0, 9, 181, 0, 8, 10, 0, 8, 138, 0, 8, 74, 0, 9, 245, 80, 7, 5, 0, 8, 86, 0, 8, 22, 192, 8, 0, 83, 7, 51, 0, 8, 118, 0, 8, 54, 0, 9, HttpStatusCodesKt.HTTP_RESET_CONTENT, 81, 7, 15, 0, 8, 102, 0, 8, 38, 0, 9, 173, 0, 8, 6, 0, 8, 134, 0, 8, 70, 0, 9, 237, 80, 7, 9, 0, 8, 94, 0, 8, 30, 0, 9, 157, 84, 7, 99, 0, 8, 126, 0, 8, 62, 0, 9, 221, 82, 7, 27, 0, 8, 110, 0, 8, 46, 0, 9, 189, 0, 8, 14, 0, 8, 142, 0, 8, 78, 0, 9, 253, 96, 7, 256, 0, 8, 81, 0, 8, 17, 85, 8, 131, 82, 7, 31, 0, 8, 113, 0, 8, 49, 0, 9, 195, 80, 7, 10, 0, 8, 97, 0, 8, 33, 0, 9, 163, 0, 8, 1, 0, 8, 129, 0, 8, 65, 0, 9, 227, 80, 7, 6, 0, 8, 89, 0, 8, 25, 0, 9, 147, 83, 7, 59, 0, 8, 121, 0, 8, 57, 0, 9, 211, 81, 7, 17, 0, 8, 105, 0, 8, 41, 0, 9, 179, 0, 8, 9, 0, 8, 137, 0, 8, 73, 0, 9, 243, 80, 7, 4, 0, 8, 85, 0, 8, 21, 80, 8, 258, 83, 7, 43, 0, 8, 117, 0, 8, 53, 0, 9, HttpStatusCodesKt.HTTP_NOT_AUTHORITATIVE, 81, 7, 13, 0, 8, 101, 0, 8, 37, 0, 9, 171, 0, 8, 5, 0, 8, 133, 0, 8, 69, 0, 9, 235, 80, 7, 8, 0, 8, 93, 0, 8, 29, 0, 9, 155, 84, 7, 83, 0, 8, 125, 0, 8, 61, 0, 9, 219, 82, 7, 23, 0, 8, 109, 0, 8, 45, 0, 9, 187, 0, 8, 13, 0, 8, 141, 0, 8, 77, 0, 9, 251, 80, 7, 3, 0, 8, 83, 0, 8, 19, 85, 8, 195, 83, 7, 35, 0, 8, 115, 0, 8, 51, 0, 9, 199, 81, 7, 11, 0, 8, 99, 0, 8, 35, 0, 9, 167, 0, 8, 3, 0, 8, 131, 0, 8, 67, 0, 9, 231, 80, 7, 7, 0, 8, 91, 0, 8, 27, 0, 9, 151, 84, 7, 67, 0, 8, 123, 0, 8, 59, 0, 9, 215, 82, 7, 19, 0, 8, 107, 0, 8, 43, 0, 9, 183, 0, 8, 11, 0, 8, 139, 0, 8, 75, 0, 9, 247, 80, 7, 5, 0, 8, 87, 0, 8, 23, 192, 8, 0, 83, 7, 51, 0, 8, 119, 0, 8, 55, 0, 9, HttpStatusCodesKt.HTTP_MULTI_STATUS, 81, 7, 15, 0, 8, 103, 0, 8, 39, 0, 9, 175, 0, 8, 7, 0, 8, 135, 0, 8, 71, 0, 9, 239, 80, 7, 9, 0, 8, 95, 0, 8, 31, 0, 9, 159, 84, 7, 99, 0, 8, 127, 0, 8, 63, 0, 9, 223, 82, 7, 27, 0, 8, 111, 0, 8, 47, 0, 9, 191, 0, 8, 15, 0, 8, 143, 0, 8, 79, 0, 9, 255};
    static final int[] fixed_td = {80, 5, 1, 87, 5, 257, 83, 5, 17, 91, 5, FragmentTransaction.TRANSIT_FRAGMENT_OPEN, 81, 5, 5, 89, 5, InputDeviceCompat.SOURCE_GAMEPAD, 85, 5, 65, 93, 5, 16385, 80, 5, 3, 88, 5, InputDeviceCompat.SOURCE_DPAD, 84, 5, 33, 92, 5, 8193, 82, 5, 9, 90, 5, 2049, 86, 5, 129, 192, 5, 24577, 80, 5, 2, 87, 5, 385, 83, 5, 25, 91, 5, 6145, 81, 5, 7, 89, 5, 1537, 85, 5, 97, 93, 5, 24577, 80, 5, 4, 88, 5, 769, 84, 5, 49, 92, 5, 12289, 82, 5, 13, 90, 5, 3073, 86, 5, 193, 192, 5, 24577};
    static final int[] cplens = {3, 4, 5, 6, 7, 8, 9, 10, 11, 13, 15, 17, 19, 23, 27, 31, 35, 43, 51, 59, 67, 83, 99, 115, 131, 163, 195, 227, 258, 0, 0};
    static final int[] cplext = {0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 0, 112, 112};
    static final int[] cpdist = {1, 2, 3, 4, 5, 7, 9, 13, 17, 25, 33, 49, 65, 97, 129, 193, 257, 385, InputDeviceCompat.SOURCE_DPAD, 769, InputDeviceCompat.SOURCE_GAMEPAD, 1537, 2049, 3073, FragmentTransaction.TRANSIT_FRAGMENT_OPEN, 6145, 8193, 12289, 16385, 24577};
    static final int[] cpdext = {0, 0, 0, 0, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13};
    int[] hn = null;
    int[] v = null;
    int[] c = null;
    int[] r = null;
    int[] u = null;
    int[] x = null;

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01b2, code lost:
    
        if ((r5 & r2) == 0) goto L132;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x01b4, code lost:
    
        r5 = r5 ^ r2;
        r2 = r2 >>> 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01b8, code lost:
    
        r2 = r2 ^ r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x01c1, code lost:
    
        if ((((1 << r1) - 1) & r2) == r22.x[r8]) goto L133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x01c3, code lost:
    
        r8 = r8 - 1;
        r1 = r1 - r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0156, code lost:
    
        r10 = r33[r13];
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0158, code lost:
    
        if (r10 >= r2) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x015c, code lost:
    
        if (r10 >= 256) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x015e, code lost:
    
        r10 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0162, code lost:
    
        r4[0] = (byte) r10;
        r4[2] = r33[r13];
        r13 = r13 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0160, code lost:
    
        r10 = 96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0170, code lost:
    
        r4[0] = (byte) (r28[r10 - r2] + 80);
        r4[2] = r27[r33[r13] - r2];
        r13 = r13 + 1;
        r4 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x01d6, code lost:
    
        r7 = r7 + 1;
        r6 = r6;
        r2 = r26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0140, code lost:
    
        r21 = r9;
        r4 = r22.r;
        r9 = r7 - r1;
        r4[1] = (byte) r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x014c, code lost:
    
        if (r13 < r5) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x014e, code lost:
    
        r4[0] = 192;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0152, code lost:
    
        r4 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0185, code lost:
    
        r9 = r4 << r9;
        r4 = r6 >>> r1;
        r10 = r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x018b, code lost:
    
        if (r4 >= r10) goto L131;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x018d, code lost:
    
        java.lang.System.arraycopy(r22.r, 0, r31, (r15 + r4) * 3, 3);
        r4 = r4 + r9;
        r5 = r5;
        r6 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01a4, code lost:
    
        r23 = r5;
        r2 = 1 << (r7 - 1);
        r5 = r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int huft_build(int[] iArr, int i, int i2, int i3, int[] iArr2, int[] iArr3, int[] iArr4, int[] iArr5, int[] iArr6, int[] iArr7, int[] iArr8) {
        int[] iArr9;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10 = i3;
        int i11 = 0;
        int i12 = i2;
        int i13 = 0;
        while (true) {
            iArr9 = this.c;
            int i14 = iArr[i + i13];
            iArr9[i14] = iArr9[i14] + 1;
            i13++;
            i4 = -1;
            i12--;
            if (i12 == 0) {
                break;
            }
            i10 = i3;
        }
        if (iArr9[0] == i2) {
            iArr4[0] = -1;
            iArr5[0] = 0;
            return 0;
        }
        int i15 = iArr5[0];
        int i16 = 1;
        while (i16 <= 15 && this.c[i16] == 0) {
            i16++;
        }
        if (i15 < i16) {
            i15 = i16;
        }
        int i17 = 15;
        while (i17 != 0 && this.c[i17] == 0) {
            i17--;
        }
        int i18 = i15 > i17 ? i17 : i15;
        iArr5[0] = i18;
        int i19 = 1 << i16;
        int i20 = i16;
        while (i20 < i17) {
            int i21 = i19 - this.c[i20];
            if (i21 < 0) {
                return -3;
            }
            i20++;
            i19 = i21 << 1;
        }
        int[] iArr10 = this.c;
        int i22 = iArr10[i17];
        int i23 = i19 - i22;
        if (i23 < 0) {
            return -3;
        }
        iArr10[i17] = i22 + i23;
        this.x[1] = 0;
        int i24 = i17;
        int i25 = 2;
        int i26 = 0;
        int i27 = 1;
        while (true) {
            i24 += i4;
            if (i24 == 0) {
                break;
            }
            int[] iArr11 = this.x;
            i26 += this.c[i27];
            iArr11[i25] = i26;
            i25++;
            i27++;
            i4 = -1;
        }
        int i28 = 0;
        int i29 = 0;
        while (true) {
            int i30 = iArr[i + i28];
            if (i30 != 0) {
                int[] iArr12 = this.x;
                int i31 = iArr12[i30];
                iArr12[i30] = i31 + 1;
                iArr8[i31] = i29;
            }
            i28++;
            int i32 = i29 + 1;
            if (i32 >= i2) {
                break;
            }
            i29 = i32;
            i11 = 0;
            i10 = i3;
        }
        int[] iArr13 = this.x;
        int i33 = iArr13[i17];
        iArr13[i11] = i11;
        int i34 = -i18;
        this.u[i11] = i11;
        int i35 = 0;
        int i36 = -1;
        int i37 = 0;
        int i38 = 0;
        int i39 = 0;
        while (i16 <= i17) {
            int i40 = this.c[i16];
            while (true) {
                int i41 = i40 - 1;
                if (i40 != 0) {
                    int i42 = i39;
                    while (true) {
                        int i43 = i34 + i18;
                        if (i16 <= i43) {
                            break;
                        }
                        int i44 = i36 + 1;
                        int i45 = i17 - i43;
                        if (i45 > i18) {
                            i45 = i18;
                        }
                        int i46 = i16 - i43;
                        int i47 = i17;
                        int i48 = 1 << i46;
                        if (i48 > i40) {
                            int i49 = i48 - i40;
                            if (i46 < i45) {
                                int i50 = i16;
                                while (true) {
                                    int i51 = i46 + 1;
                                    if (i51 >= i45) {
                                        i9 = i51;
                                        break;
                                    }
                                    int i52 = i49 << 1;
                                    i9 = i51;
                                    i50++;
                                    int i53 = this.c[i50];
                                    if (i52 <= i53) {
                                        break;
                                    }
                                    i49 = i52 - i53;
                                    i46 = i9;
                                }
                                i46 = i9;
                            }
                        }
                        i42 = 1 << i46;
                        i38 = iArr7[0];
                        int i54 = i40;
                        if (i38 + i42 > MANY) {
                            return -3;
                        }
                        int[] iArr14 = this.u;
                        iArr14[i44] = i38;
                        iArr7[0] = iArr7[0] + i42;
                        if (i44 != 0) {
                            this.x[i44] = i35;
                            int[] iArr15 = this.r;
                            iArr15[0] = (byte) i46;
                            iArr15[1] = (byte) i18;
                            int i55 = i35 >>> (i43 - i18);
                            iArr15[2] = (i38 - iArr14[i36]) - i55;
                            System.arraycopy(iArr15, 0, iArr6, (iArr14[i36] + i55) * 3, 3);
                        } else {
                            iArr4[0] = i38;
                        }
                        i40 = i54;
                        i36 = i44;
                        i34 = i43;
                        i17 = i47;
                    }
                }
                i33 = i7;
                i35 = i8;
                i39 = i6;
                i40 = i41;
                i17 = i5;
                i10 = i3;
            }
        }
        return (i23 == 0 || i17 == 1) ? 0 : -5;
    }

    public static int inflate_trees_fixed(int[] iArr, int[] iArr2, int[][] iArr3, int[][] iArr4, ZStream zStream) {
        iArr[0] = 9;
        iArr2[0] = 5;
        iArr3[0] = fixed_tl;
        iArr4[0] = fixed_td;
        return 0;
    }

    private void initWorkArea(int i) {
        if (this.hn == null) {
            this.hn = new int[1];
            this.v = new int[i];
            this.c = new int[16];
            this.r = new int[3];
            this.u = new int[15];
            this.x = new int[16];
        }
        if (this.v.length < i) {
            this.v = new int[i];
        }
        for (int i2 = 0; i2 < i; i2++) {
            this.v[i2] = 0;
        }
        for (int i3 = 0; i3 < 16; i3++) {
            this.c[i3] = 0;
        }
        for (int i4 = 0; i4 < 3; i4++) {
            this.r[i4] = 0;
        }
        System.arraycopy(this.c, 0, this.u, 0, 15);
        System.arraycopy(this.c, 0, this.x, 0, 16);
    }

    public int inflate_trees_bits(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, ZStream zStream) {
        initWorkArea(19);
        int[] iArr5 = this.hn;
        iArr5[0] = 0;
        int huft_build = huft_build(iArr, 0, 19, 19, null, null, iArr3, iArr2, iArr4, iArr5, this.v);
        if (huft_build == -3) {
            zStream.msg = new ObfuscatedString(new long[]{-2734286775884223095L, 5300912837870789542L, -1518702476188377943L, 4214033675651404073L, -9133849542164013313L, -4554893714203971905L}).toString();
            return huft_build;
        }
        if (huft_build == -5 || iArr2[0] == 0) {
            zStream.msg = new ObfuscatedString(new long[]{7763686075568079510L, 781411200695892042L, -1369217639180733963L, -7601340854149416054L, -5652035848551712018L, -8907514524811506854L}).toString();
            return -3;
        }
        return huft_build;
    }

    public int inflate_trees_dynamic(int i, int i2, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int[] iArr5, int[] iArr6, ZStream zStream) {
        initWorkArea(StatisticsGraphData.DataTransferStats.MAX_BUCKETS);
        int[] iArr7 = this.hn;
        iArr7[0] = 0;
        int huft_build = huft_build(iArr, 0, i, 257, cplens, cplext, iArr4, iArr2, iArr6, iArr7, this.v);
        if (huft_build == 0 && iArr2[0] != 0) {
            initWorkArea(StatisticsGraphData.DataTransferStats.MAX_BUCKETS);
            int huft_build2 = huft_build(iArr, i, i2, 0, cpdist, cpdext, iArr5, iArr3, iArr6, this.hn, this.v);
            if (huft_build2 == 0 && (iArr3[0] != 0 || i <= 257)) {
                return 0;
            }
            if (huft_build2 == -3) {
                zStream.msg = new ObfuscatedString(new long[]{-9053967122704855293L, -7470462369047181496L, 1299447001992514208L, -5264413931365657590L, 6530359975607313037L}).toString();
                return huft_build2;
            }
            if (huft_build2 == -5) {
                zStream.msg = new ObfuscatedString(new long[]{4116858858720098608L, -851372830225965389L, 2133774005936672740L, 4491046170676984705L}).toString();
            } else if (huft_build2 != -4) {
                zStream.msg = new ObfuscatedString(new long[]{403970525489254473L, 3635267291337352461L, 8219513146241546013L, 2415366178241024603L, 3981348814169715173L}).toString();
            } else {
                return huft_build2;
            }
            return -3;
        }
        if (huft_build == -3) {
            zStream.msg = new ObfuscatedString(new long[]{-241566286682245922L, 7360691032642638620L, -5656274484571934440L, -3154517814271033105L, 1536707512002382595L, -9026035377822031107L}).toString();
            return huft_build;
        }
        if (huft_build != -4) {
            zStream.msg = new ObfuscatedString(new long[]{5646457748468655845L, -4286030027168426887L, -403093649195137912L, 3731707251065567319L, 7572462539493258468L}).toString();
            return -3;
        }
        return huft_build;
    }
}
