package com.jcraft.jzlib;

import com.google.android.material.internal.ViewUtils;
import com.google.common.base.Ascii;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class Tree {
    private static final int BL_CODES = 19;
    static final int Buf_size = 16;
    static final int DIST_CODE_LEN = 512;
    private static final int D_CODES = 30;
    static final int END_BLOCK = 256;
    private static final int HEAP_SIZE = 573;
    private static final int LENGTH_CODES = 29;
    private static final int LITERALS = 256;
    private static final int L_CODES = 286;
    private static final int MAX_BITS = 15;
    static final int MAX_BL_BITS = 7;
    static final int REPZ_11_138 = 18;
    static final int REPZ_3_10 = 17;
    static final int REP_3_6 = 16;
    short[] dyn_tree;
    int max_code;
    StaticTree stat_desc;
    static final int[] extra_lbits = {0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 0};
    static final int[] extra_dbits = {0, 0, 0, 0, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13};
    static final int[] extra_blbits = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 3, 7};
    static final byte[] bl_order = {Ascii.DLE, 17, Ascii.DC2, 0, 8, 7, 9, 6, 10, 5, 11, 4, 12, 3, 13, 2, Ascii.SO, 1, Ascii.SI};
    static final byte[] _dist_code = {0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, 0, 0, Ascii.DLE, 17, Ascii.DC2, Ascii.DC2, 19, 19, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS, Ascii.GS};
    static final byte[] _length_code = {0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SO, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.DLE, Ascii.DLE, Ascii.DLE, Ascii.DLE, Ascii.DLE, Ascii.DLE, Ascii.DLE, Ascii.DLE, 17, 17, 17, 17, 17, 17, 17, 17, Ascii.DC2, Ascii.DC2, Ascii.DC2, Ascii.DC2, Ascii.DC2, Ascii.DC2, Ascii.DC2, Ascii.DC2, 19, 19, 19, 19, 19, 19, 19, 19, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.DC4, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.NAK, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.CAN, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.FS};
    static final int[] base_length = {0, 1, 2, 3, 4, 5, 6, 7, 8, 10, 12, 14, 16, 20, 24, 28, 32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 0};
    static final int[] base_dist = {0, 1, 2, 3, 4, 6, 8, 12, 16, 24, 32, 48, 64, 96, 128, 192, 256, 384, 512, ViewUtils.EDGE_TO_EDGE_FLAGS, 1024, 1536, 2048, 3072, 4096, 6144, 8192, 12288, 16384, 24576};

    private static final int bi_reverse(int i, int i2) {
        int i3 = 0;
        do {
            int i4 = i3 | (i & 1);
            i >>>= 1;
            i3 = i4 << 1;
            i2--;
        } while (i2 > 0);
        return i3 >>> 1;
    }

    public static int d_code(int i) {
        if (i < 256) {
            return _dist_code[i];
        }
        return _dist_code[(i >>> 7) + 256];
    }

    private static final void gen_codes(short[] sArr, int i, short[] sArr2, short[] sArr3) {
        sArr3[0] = 0;
        short s = 0;
        for (int i2 = 1; i2 <= 15; i2++) {
            s = (short) ((s + sArr2[i2 - 1]) << 1);
            sArr3[i2] = s;
        }
        for (int i3 = 0; i3 <= i; i3++) {
            int i4 = i3 * 2;
            short s2 = sArr[i4 + 1];
            if (s2 != 0) {
                short s3 = sArr3[s2];
                sArr3[s2] = (short) (s3 + 1);
                sArr[i4] = (short) bi_reverse(s3, s2);
            }
        }
    }

    public void build_tree(Deflate deflate) {
        int i;
        int i2;
        int i3;
        short[] sArr = this.dyn_tree;
        StaticTree staticTree = this.stat_desc;
        short[] sArr2 = staticTree.static_tree;
        int i4 = staticTree.elems;
        deflate.heap_len = 0;
        deflate.heap_max = HEAP_SIZE;
        int i5 = -1;
        for (int i6 = 0; i6 < i4; i6++) {
            int i7 = i6 * 2;
            if (sArr[i7] != 0) {
                int[] iArr = deflate.heap;
                int i8 = deflate.heap_len + 1;
                deflate.heap_len = i8;
                iArr[i8] = i6;
                deflate.depth[i6] = 0;
                i5 = i6;
            } else {
                sArr[i7 + 1] = 0;
            }
        }
        while (true) {
            i = deflate.heap_len;
            if (i >= 2) {
                break;
            }
            int[] iArr2 = deflate.heap;
            int i9 = i + 1;
            deflate.heap_len = i9;
            if (i5 < 2) {
                i3 = i5 + 1;
                i2 = i3;
            } else {
                i2 = i5;
                i3 = 0;
            }
            iArr2[i9] = i3;
            int i10 = i3 * 2;
            sArr[i10] = 1;
            deflate.depth[i3] = 0;
            deflate.opt_len--;
            if (sArr2 != null) {
                deflate.static_len -= sArr2[i10 + 1];
            }
            i5 = i2;
        }
        this.max_code = i5;
        for (int i11 = i / 2; i11 >= 1; i11--) {
            deflate.pqdownheap(sArr, i11);
        }
        while (true) {
            int[] iArr3 = deflate.heap;
            int i12 = iArr3[1];
            int i13 = deflate.heap_len;
            deflate.heap_len = i13 - 1;
            iArr3[1] = iArr3[i13];
            deflate.pqdownheap(sArr, 1);
            int[] iArr4 = deflate.heap;
            int i14 = iArr4[1];
            int i15 = deflate.heap_max;
            int i16 = i15 - 1;
            deflate.heap_max = i16;
            iArr4[i16] = i12;
            int i17 = i15 - 2;
            deflate.heap_max = i17;
            iArr4[i17] = i14;
            int i18 = i12 * 2;
            int i19 = i14 * 2;
            sArr[i4 * 2] = (short) (sArr[i18] + sArr[i19]);
            byte[] bArr = deflate.depth;
            bArr[i4] = (byte) (Math.max((int) bArr[i12], (int) bArr[i14]) + 1);
            short s = (short) i4;
            sArr[i19 + 1] = s;
            sArr[i18 + 1] = s;
            int i20 = i4 + 1;
            deflate.heap[1] = i4;
            deflate.pqdownheap(sArr, 1);
            if (deflate.heap_len < 2) {
                int[] iArr5 = deflate.heap;
                int i21 = deflate.heap_max - 1;
                deflate.heap_max = i21;
                iArr5[i21] = iArr5[1];
                gen_bitlen(deflate);
                gen_codes(sArr, i5, deflate.bl_count, deflate.next_code);
                return;
            }
            i4 = i20;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void gen_bitlen(Deflate deflate) {
        short[] sArr;
        short s;
        int i;
        short[] sArr2 = this.dyn_tree;
        StaticTree staticTree = this.stat_desc;
        short[] sArr3 = staticTree.static_tree;
        int[] iArr = staticTree.extra_bits;
        int i2 = staticTree.extra_base;
        int i3 = staticTree.max_length;
        for (int i4 = 0; i4 <= 15; i4++) {
            deflate.bl_count[i4] = 0;
        }
        int[] iArr2 = deflate.heap;
        int i5 = deflate.heap_max;
        sArr2[(iArr2[i5] * 2) + 1] = 0;
        int i6 = i5 + 1;
        int i7 = 0;
        while (i6 < HEAP_SIZE) {
            int i8 = deflate.heap[i6];
            int i9 = i8 * 2;
            int i10 = i9 + 1;
            int i11 = sArr2[(sArr2[i10] * 2) + 1] + 1;
            if (i11 > i3) {
                i7++;
                i11 = i3;
            }
            sArr2[i10] = (short) i11;
            if (i8 <= this.max_code) {
                short[] sArr4 = deflate.bl_count;
                sArr4[i11] = (short) (sArr4[i11] + 1);
                if (i8 >= i2) {
                    i = iArr[i8 - i2];
                } else {
                    i = 0;
                }
                short s2 = sArr2[i9];
                deflate.opt_len = ((i11 + i) * s2) + deflate.opt_len;
                if (sArr3 != null) {
                    deflate.static_len = ((sArr3[i10] + i) * s2) + deflate.static_len;
                }
            }
            i6++;
        }
        if (i7 == 0) {
            return;
        }
        do {
            int i12 = i3 - 1;
            while (true) {
                sArr = deflate.bl_count;
                s = sArr[i12];
                if (s != 0) {
                    break;
                } else {
                    i12--;
                }
            }
            sArr[i12] = (short) (s - 1);
            int i13 = i12 + 1;
            sArr[i13] = (short) (sArr[i13] + 2);
            sArr[i3] = (short) (sArr[i3] - 1);
            i7 -= 2;
        } while (i7 > 0);
        while (i3 != 0) {
            short s3 = deflate.bl_count[i3];
            while (s3 != 0) {
                i6--;
                int i14 = deflate.heap[i6];
                if (i14 <= this.max_code) {
                    int i15 = (i14 * 2) + 1;
                    short s4 = sArr2[i15];
                    if (s4 != i3) {
                        deflate.opt_len = (int) (((i3 - s4) * sArr2[r3]) + deflate.opt_len);
                        sArr2[i15] = (short) i3;
                    }
                    s3--;
                }
            }
            i3--;
        }
    }
}
