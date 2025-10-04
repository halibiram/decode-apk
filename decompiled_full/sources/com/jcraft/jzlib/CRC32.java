package com.jcraft.jzlib;

/* loaded from: classes3.dex */
public final class CRC32 implements Checksum {
    private static final int GF2_DIM = 32;
    private static int[] crc_table = new int[256];
    private int v = 0;

    static {
        for (int i = 0; i < 256; i++) {
            int i2 = 8;
            int i3 = i;
            while (true) {
                i2--;
                if (i2 >= 0) {
                    if ((i3 & 1) != 0) {
                        i3 = (i3 >>> 1) ^ (-306674912);
                    } else {
                        i3 >>>= 1;
                    }
                }
            }
            crc_table[i] = i3;
        }
    }

    public static long combine(long j, long j2, long j3) {
        long[] jArr = new long[32];
        long[] jArr2 = new long[32];
        if (j3 <= 0) {
            return j;
        }
        jArr2[0] = 3988292384L;
        long j4 = 1;
        for (int i = 1; i < 32; i++) {
            jArr2[i] = j4;
            j4 <<= 1;
        }
        gf2_matrix_square(jArr, jArr2);
        gf2_matrix_square(jArr2, jArr);
        long j5 = j;
        long j6 = j3;
        do {
            gf2_matrix_square(jArr, jArr2);
            if ((j6 & 1) != 0) {
                j5 = gf2_matrix_times(jArr, j5);
            }
            long j7 = j6 >> 1;
            if (j7 == 0) {
                break;
            }
            gf2_matrix_square(jArr2, jArr);
            if ((j7 & 1) != 0) {
                j5 = gf2_matrix_times(jArr2, j5);
            }
            j6 >>= 2;
        } while (j6 != 0);
        return j5 ^ j2;
    }

    public static int[] getCRC32Table() {
        int[] iArr = crc_table;
        int length = iArr.length;
        int[] iArr2 = new int[length];
        System.arraycopy(iArr, 0, iArr2, 0, length);
        return iArr2;
    }

    public static final void gf2_matrix_square(long[] jArr, long[] jArr2) {
        for (int i = 0; i < 32; i++) {
            jArr[i] = gf2_matrix_times(jArr2, jArr2[i]);
        }
    }

    private static long gf2_matrix_times(long[] jArr, long j) {
        int i = 0;
        long j2 = 0;
        while (j != 0) {
            if ((1 & j) != 0) {
                j2 ^= jArr[i];
            }
            j >>= 1;
            i++;
        }
        return j2;
    }

    @Override // com.jcraft.jzlib.Checksum
    public long getValue() {
        return this.v & 4294967295L;
    }

    @Override // com.jcraft.jzlib.Checksum
    public void reset() {
        this.v = 0;
    }

    @Override // com.jcraft.jzlib.Checksum
    public void update(byte[] bArr, int i, int i2) {
        int i3 = ~this.v;
        while (true) {
            i2--;
            if (i2 >= 0) {
                i3 = (i3 >>> 8) ^ crc_table[(bArr[i] ^ i3) & 255];
                i++;
            } else {
                this.v = ~i3;
                return;
            }
        }
    }

    @Override // com.jcraft.jzlib.Checksum
    public CRC32 copy() {
        CRC32 crc32 = new CRC32();
        crc32.v = this.v;
        return crc32;
    }

    @Override // com.jcraft.jzlib.Checksum
    public void reset(long j) {
        this.v = (int) (j & 4294967295L);
    }
}
