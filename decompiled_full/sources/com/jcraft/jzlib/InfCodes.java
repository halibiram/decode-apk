package com.jcraft.jzlib;

import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class InfCodes {
    private static final int BADCODE = 9;
    private static final int COPY = 5;
    private static final int DIST = 3;
    private static final int DISTEXT = 4;
    private static final int END = 8;
    private static final int LEN = 1;
    private static final int LENEXT = 2;
    private static final int LIT = 6;
    private static final int START = 0;
    private static final int WASH = 7;
    private static final int Z_BUF_ERROR = -5;
    private static final int Z_DATA_ERROR = -3;
    private static final int Z_ERRNO = -1;
    private static final int Z_MEM_ERROR = -4;
    private static final int Z_NEED_DICT = 2;
    private static final int Z_OK = 0;
    private static final int Z_STREAM_END = 1;
    private static final int Z_STREAM_ERROR = -2;
    private static final int Z_VERSION_ERROR = -6;
    private static final int[] inflate_mask = {0, 1, 3, 7, 15, 31, 63, 127, 255, 511, 1023, 2047, 4095, 8191, 16383, 32767, 65535};
    byte dbits;
    int dist;
    int[] dtree;
    int dtree_index;
    int get;
    byte lbits;
    int len;
    int lit;
    int[] ltree;
    int ltree_index;
    int mode;
    int need;
    private final InfBlocks s;
    int[] tree;
    int tree_index = 0;
    private final ZStream z;

    public InfCodes(ZStream zStream, InfBlocks infBlocks) {
        this.z = zStream;
        this.s = infBlocks;
    }

    public void free(ZStream zStream) {
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x01b2, code lost:
    
        r2 = r32.avail_in - r5;
        r3 = r7 >> 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x01b7, code lost:
    
        if (r3 >= r2) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x01b9, code lost:
    
        r2 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x01ba, code lost:
    
        r31.bitb = r6;
        r31.bitk = r7 - (r2 << 3);
        r32.avail_in = r5 + r2;
        r32.total_in += r4 - r32.next_in_index;
        r32.next_in_index = r4 - r2;
        r31.write = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x01d3, code lost:
    
        return 0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int inflate_fast(int i, int i2, int[] iArr, int i3, int[] iArr2, int i4, InfBlocks infBlocks, ZStream zStream) {
        int i5;
        int i6;
        int i7;
        int i8 = zStream.next_in_index;
        int i9 = zStream.avail_in;
        int i10 = infBlocks.bitb;
        int i11 = infBlocks.bitk;
        int i12 = infBlocks.write;
        int i13 = infBlocks.read;
        int i14 = i12 < i13 ? (i13 - i12) - 1 : infBlocks.end - i12;
        int[] iArr3 = inflate_mask;
        int i15 = iArr3[i];
        int i16 = iArr3[i2];
        while (true) {
            if (i11 < 20) {
                i9--;
                i10 |= (zStream.next_in[i8] & 255) << i11;
                i11 += 8;
                i8++;
            } else {
                int i17 = i10 & i15;
                int i18 = (i3 + i17) * 3;
                int i19 = iArr[i18];
                if (i19 == 0) {
                    int i20 = iArr[i18 + 1];
                    i10 >>= i20;
                    i11 -= i20;
                    i7 = i12 + 1;
                    infBlocks.window[i12] = (byte) iArr[i18 + 2];
                    i14--;
                    i12 = i7;
                    if (i14 < 258 || i9 < 10) {
                        break;
                    }
                }
                do {
                    int i21 = iArr[i18 + 1];
                    i10 >>= i21;
                    i11 -= i21;
                    if ((i19 & 16) != 0) {
                        int i22 = i19 & 15;
                        int i23 = iArr[i18 + 2] + (inflate_mask[i22] & i10);
                        int i24 = i10 >> i22;
                        int i25 = i11 - i22;
                        while (i25 < 15) {
                            i9--;
                            i24 |= (zStream.next_in[i8] & 255) << i25;
                            i25 += 8;
                            i8++;
                        }
                        int i26 = i24 & i16;
                        int i27 = (i4 + i26) * 3;
                        int i28 = iArr2[i27];
                        while (true) {
                            int i29 = iArr2[i27 + 1];
                            i24 >>= i29;
                            i25 -= i29;
                            if ((i28 & 16) != 0) {
                                int i30 = i28 & 15;
                                int i31 = i8;
                                int i32 = i9;
                                while (i25 < i30) {
                                    i32--;
                                    i24 |= (zStream.next_in[i31] & 255) << i25;
                                    i25 += 8;
                                    i31++;
                                }
                                int i33 = iArr2[i27 + 2] + (inflate_mask[i30] & i24);
                                int i34 = i24 >> i30;
                                int i35 = i25 - i30;
                                int i36 = i14 - i23;
                                if (i12 >= i33) {
                                    int i37 = i12 - i33;
                                    int i38 = i12 - i37;
                                    if (i38 > 0 && 2 > i38) {
                                        byte[] bArr = infBlocks.window;
                                        int i39 = i12 + 1;
                                        int i40 = i37 + 1;
                                        bArr[i12] = bArr[i37];
                                        i12 += 2;
                                        i5 = i37 + 2;
                                        bArr[i39] = bArr[i40];
                                    } else {
                                        byte[] bArr2 = infBlocks.window;
                                        System.arraycopy(bArr2, i37, bArr2, i12, 2);
                                        i12 += 2;
                                        i5 = i37 + 2;
                                    }
                                    i23 -= 2;
                                } else {
                                    i5 = i12 - i33;
                                    do {
                                        i6 = infBlocks.end;
                                        i5 += i6;
                                    } while (i5 < 0);
                                    int i41 = i6 - i5;
                                    if (i23 > i41) {
                                        i23 -= i41;
                                        int i42 = i12 - i5;
                                        if (i42 <= 0 || i41 <= i42) {
                                            byte[] bArr3 = infBlocks.window;
                                            System.arraycopy(bArr3, i5, bArr3, i12, i41);
                                            i12 += i41;
                                        } else {
                                            while (true) {
                                                byte[] bArr4 = infBlocks.window;
                                                int i43 = i5 + 1;
                                                bArr4[i12] = bArr4[i5];
                                                i41--;
                                                i12++;
                                                if (i41 == 0) {
                                                    break;
                                                }
                                                i5 = i43;
                                            }
                                        }
                                        i5 = 0;
                                    }
                                }
                                int i44 = i12 - i5;
                                if (i44 <= 0 || i23 <= i44) {
                                    byte[] bArr5 = infBlocks.window;
                                    System.arraycopy(bArr5, i5, bArr5, i12, i23);
                                    i12 += i23;
                                } else {
                                    while (true) {
                                        byte[] bArr6 = infBlocks.window;
                                        int i45 = i5 + 1;
                                        bArr6[i12] = bArr6[i5];
                                        i23--;
                                        i12++;
                                        if (i23 == 0) {
                                            break;
                                        }
                                        i5 = i45;
                                    }
                                }
                                i9 = i32;
                                i8 = i31;
                                i10 = i34;
                                i11 = i35;
                                i14 = i36;
                            } else if ((i28 & 64) == 0) {
                                i26 = i26 + iArr2[i27 + 2] + (inflate_mask[i28] & i24);
                                i27 = (i4 + i26) * 3;
                                i28 = iArr2[i27];
                            } else {
                                zStream.msg = new ObfuscatedString(new long[]{8589940800426472595L, -5264814201363891947L, -9158029676712435185L, 4725191888594858501L}).toString();
                                int i46 = zStream.avail_in - i9;
                                int i47 = i25 >> 3;
                                if (i47 < i46) {
                                    i46 = i47;
                                }
                                infBlocks.bitb = i24;
                                infBlocks.bitk = i25 - (i46 << 3);
                                zStream.avail_in = i9 + i46;
                                zStream.total_in += r4 - zStream.next_in_index;
                                zStream.next_in_index = i8 - i46;
                                infBlocks.write = i12;
                                return -3;
                            }
                        }
                    } else {
                        if ((i19 & 64) != 0) {
                            if ((i19 & 32) != 0) {
                                int i48 = zStream.avail_in - i9;
                                int i49 = i11 >> 3;
                                if (i49 < i48) {
                                    i48 = i49;
                                }
                                infBlocks.bitb = i10;
                                infBlocks.bitk = i11 - (i48 << 3);
                                zStream.avail_in = i9 + i48;
                                zStream.total_in += r4 - zStream.next_in_index;
                                zStream.next_in_index = i8 - i48;
                                infBlocks.write = i12;
                                return 1;
                            }
                            zStream.msg = new ObfuscatedString(new long[]{8535343724375599452L, 934872931584825377L, -6472013011360574999L, 1745027827585184465L, -8337536137895927498L}).toString();
                            int i50 = zStream.avail_in - i9;
                            int i51 = i11 >> 3;
                            if (i51 < i50) {
                                i50 = i51;
                            }
                            infBlocks.bitb = i10;
                            infBlocks.bitk = i11 - (i50 << 3);
                            zStream.avail_in = i9 + i50;
                            zStream.total_in += r4 - zStream.next_in_index;
                            zStream.next_in_index = i8 - i50;
                            infBlocks.write = i12;
                            return -3;
                        }
                        i17 = i17 + iArr[i18 + 2] + (inflate_mask[i19] & i10);
                        i18 = (i3 + i17) * 3;
                        i19 = iArr[i18];
                    }
                } while (i19 != 0);
                int i52 = iArr[i18 + 1];
                i10 >>= i52;
                i11 -= i52;
                i7 = i12 + 1;
                infBlocks.window[i12] = (byte) iArr[i18 + 2];
                i14--;
                i12 = i7;
                if (i14 < 258) {
                    break;
                }
                break;
            }
        }
    }

    public void init(int i, int i2, int[] iArr, int i3, int[] iArr2, int i4) {
        this.mode = 0;
        this.lbits = (byte) i;
        this.dbits = (byte) i2;
        this.ltree = iArr;
        this.ltree_index = i3;
        this.dtree = iArr2;
        this.dtree_index = i4;
        this.tree = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00a0, code lost:
    
        r0 = r20.s;
        r0.bitb = r3;
        r0.bitk = r4;
        r3 = r20.z;
        r3.avail_in = r1;
        r3.total_in += r2 - r3.next_in_index;
        r3.next_in_index = r2;
        r0.write = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00bc, code lost:
    
        return r0.inflate_flush(1);
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0028. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:101:0x028d  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x029c  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x036d  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x03b5  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x03c1  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x016e A[LOOP:2: B:38:0x016c->B:39:0x016e, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0243  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int proc(int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11 = 5;
        int i12 = 8;
        ZStream zStream = this.z;
        int i13 = zStream.next_in_index;
        int i14 = zStream.avail_in;
        InfBlocks infBlocks = this.s;
        int i15 = infBlocks.bitb;
        int i16 = infBlocks.bitk;
        int i17 = infBlocks.write;
        int i18 = infBlocks.read;
        int i19 = i17 < i18 ? (i18 - i17) - 1 : infBlocks.end - i17;
        int i20 = i13;
        int i21 = i14;
        int i22 = i;
        while (true) {
            switch (this.mode) {
                case 0:
                    i3 = 9;
                    if (i19 < 258 || i21 < 10) {
                        i4 = 7;
                    } else {
                        InfBlocks infBlocks2 = this.s;
                        infBlocks2.bitb = i15;
                        infBlocks2.bitk = i16;
                        ZStream zStream2 = this.z;
                        zStream2.avail_in = i21;
                        zStream2.total_in += i20 - zStream2.next_in_index;
                        zStream2.next_in_index = i20;
                        infBlocks2.write = i17;
                        i4 = 7;
                        i22 = inflate_fast(this.lbits, this.dbits, this.ltree, this.ltree_index, this.dtree, this.dtree_index, infBlocks2, zStream2);
                        ZStream zStream3 = this.z;
                        i20 = zStream3.next_in_index;
                        i21 = zStream3.avail_in;
                        InfBlocks infBlocks3 = this.s;
                        int i23 = infBlocks3.bitb;
                        int i24 = infBlocks3.bitk;
                        int i25 = infBlocks3.write;
                        int i26 = infBlocks3.read;
                        int i27 = i25 < i26 ? (i26 - i25) - 1 : infBlocks3.end - i25;
                        if (i22 != 0) {
                            this.mode = i22 == 1 ? 7 : 9;
                            i11 = 5;
                            i19 = i27;
                            i15 = i23;
                            i16 = i24;
                            i17 = i25;
                        } else {
                            i19 = i27;
                            i15 = i23;
                            i16 = i24;
                            i17 = i25;
                        }
                    }
                    this.need = this.lbits;
                    this.tree = this.ltree;
                    this.tree_index = this.ltree_index;
                    this.mode = 1;
                    i5 = this.need;
                    while (i16 < i5) {
                        if (i21 != 0) {
                            i21--;
                            i15 |= (this.z.next_in[i20] & 255) << i16;
                            i16 += i12;
                            i20++;
                            i22 = 0;
                        } else {
                            InfBlocks infBlocks4 = this.s;
                            infBlocks4.bitb = i15;
                            infBlocks4.bitk = i16;
                            ZStream zStream4 = this.z;
                            zStream4.avail_in = i21;
                            zStream4.total_in += i20 - zStream4.next_in_index;
                            zStream4.next_in_index = i20;
                            infBlocks4.write = i17;
                            return infBlocks4.inflate_flush(i22);
                        }
                    }
                    int i28 = (this.tree_index + (inflate_mask[i5] & i15)) * 3;
                    int[] iArr = this.tree;
                    int i29 = iArr[i28 + 1];
                    i15 >>>= i29;
                    i16 -= i29;
                    i6 = iArr[i28];
                    if (i6 != 0) {
                        this.lit = iArr[i28 + 2];
                        this.mode = 6;
                    } else if ((i6 & 16) != 0) {
                        this.get = i6 & 15;
                        this.len = iArr[i28 + 2];
                        this.mode = 2;
                    } else {
                        if ((i6 & 64) == 0) {
                            this.need = i6;
                            this.tree_index = (i28 / 3) + iArr[i28 + 2];
                        } else if ((i6 & 32) != 0) {
                            this.mode = i4;
                        } else {
                            this.mode = i3;
                            this.z.msg = new ObfuscatedString(new long[]{8632935984107226945L, -919088834507371770L, 2890924960077846641L, 88909828438675584L, 5975875678206004951L}).toString();
                            InfBlocks infBlocks5 = this.s;
                            infBlocks5.bitb = i15;
                            infBlocks5.bitk = i16;
                            ZStream zStream5 = this.z;
                            zStream5.avail_in = i21;
                            zStream5.total_in += i20 - zStream5.next_in_index;
                            zStream5.next_in_index = i20;
                            infBlocks5.write = i17;
                            return infBlocks5.inflate_flush(-3);
                        }
                        i11 = 5;
                        i12 = 8;
                    }
                    i11 = 5;
                    i12 = 8;
                    break;
                case 1:
                    i3 = 9;
                    i4 = 7;
                    i5 = this.need;
                    while (i16 < i5) {
                    }
                    int i282 = (this.tree_index + (inflate_mask[i5] & i15)) * 3;
                    int[] iArr2 = this.tree;
                    int i292 = iArr2[i282 + 1];
                    i15 >>>= i292;
                    i16 -= i292;
                    i6 = iArr2[i282];
                    if (i6 != 0) {
                    }
                    i11 = 5;
                    i12 = 8;
                    break;
                case 2:
                    int i30 = this.get;
                    while (i16 < i30) {
                        if (i21 != 0) {
                            i21--;
                            i15 |= (this.z.next_in[i20] & 255) << i16;
                            i16 += i12;
                            i20++;
                            i22 = 0;
                        } else {
                            InfBlocks infBlocks6 = this.s;
                            infBlocks6.bitb = i15;
                            infBlocks6.bitk = i16;
                            ZStream zStream6 = this.z;
                            zStream6.avail_in = i21;
                            zStream6.total_in += i20 - zStream6.next_in_index;
                            zStream6.next_in_index = i20;
                            infBlocks6.write = i17;
                            return infBlocks6.inflate_flush(i22);
                        }
                    }
                    this.len += inflate_mask[i30] & i15;
                    i15 >>= i30;
                    i16 -= i30;
                    this.need = this.dbits;
                    this.tree = this.dtree;
                    this.tree_index = this.dtree_index;
                    this.mode = 3;
                    i7 = this.need;
                    while (i16 < i7) {
                        if (i21 != 0) {
                            i21--;
                            i15 |= (this.z.next_in[i20] & 255) << i16;
                            i16 += i12;
                            i20++;
                            i22 = 0;
                        } else {
                            InfBlocks infBlocks7 = this.s;
                            infBlocks7.bitb = i15;
                            infBlocks7.bitk = i16;
                            ZStream zStream7 = this.z;
                            zStream7.avail_in = i21;
                            zStream7.total_in += i20 - zStream7.next_in_index;
                            zStream7.next_in_index = i20;
                            infBlocks7.write = i17;
                            return infBlocks7.inflate_flush(i22);
                        }
                    }
                    int i31 = (this.tree_index + (inflate_mask[i7] & i15)) * 3;
                    int[] iArr3 = this.tree;
                    int i32 = iArr3[i31 + 1];
                    i15 >>= i32;
                    i16 -= i32;
                    i8 = iArr3[i31];
                    if ((i8 & 16) == 0) {
                        this.get = i8 & 15;
                        this.dist = iArr3[i31 + 2];
                        this.mode = 4;
                    } else if ((i8 & 64) == 0) {
                        this.need = i8;
                        this.tree_index = (i31 / 3) + iArr3[i31 + 2];
                    } else {
                        this.mode = 9;
                        this.z.msg = new ObfuscatedString(new long[]{-5221655426182520057L, -8695892893519220963L, -4910334927229425323L, -2754297299522028858L}).toString();
                        InfBlocks infBlocks8 = this.s;
                        infBlocks8.bitb = i15;
                        infBlocks8.bitk = i16;
                        ZStream zStream8 = this.z;
                        zStream8.avail_in = i21;
                        zStream8.total_in += i20 - zStream8.next_in_index;
                        zStream8.next_in_index = i20;
                        infBlocks8.write = i17;
                        return infBlocks8.inflate_flush(-3);
                    }
                    i11 = 5;
                case 3:
                    i7 = this.need;
                    while (i16 < i7) {
                    }
                    int i312 = (this.tree_index + (inflate_mask[i7] & i15)) * 3;
                    int[] iArr32 = this.tree;
                    int i322 = iArr32[i312 + 1];
                    i15 >>= i322;
                    i16 -= i322;
                    i8 = iArr32[i312];
                    if ((i8 & 16) == 0) {
                    }
                    i11 = 5;
                    break;
                case 4:
                    int i33 = this.get;
                    while (i16 < i33) {
                        if (i21 != 0) {
                            i21--;
                            i15 |= (this.z.next_in[i20] & 255) << i16;
                            i16 += i12;
                            i20++;
                            i22 = 0;
                        } else {
                            InfBlocks infBlocks9 = this.s;
                            infBlocks9.bitb = i15;
                            infBlocks9.bitk = i16;
                            ZStream zStream9 = this.z;
                            zStream9.avail_in = i21;
                            zStream9.total_in += i20 - zStream9.next_in_index;
                            zStream9.next_in_index = i20;
                            infBlocks9.write = i17;
                            return infBlocks9.inflate_flush(i22);
                        }
                    }
                    this.dist += inflate_mask[i33] & i15;
                    i15 >>= i33;
                    i16 -= i33;
                    this.mode = i11;
                    i9 = i17 - this.dist;
                    while (i9 < 0) {
                        i9 += this.s.end;
                    }
                    while (this.len != 0) {
                        if (i19 == 0) {
                            InfBlocks infBlocks10 = this.s;
                            int i34 = infBlocks10.end;
                            if (i17 == i34 && (i10 = infBlocks10.read) != 0) {
                                i19 = i10 > 0 ? i10 - 1 : i34;
                                i17 = 0;
                            }
                            if (i19 == 0) {
                                infBlocks10.write = i17;
                                i22 = infBlocks10.inflate_flush(i22);
                                InfBlocks infBlocks11 = this.s;
                                int i35 = infBlocks11.write;
                                int i36 = infBlocks11.read;
                                int i37 = i35 < i36 ? (i36 - i35) - 1 : infBlocks11.end - i35;
                                int i38 = infBlocks11.end;
                                if (i35 == i38 && i36 != 0) {
                                    if (i36 > 0) {
                                        i38 = i36 - 1;
                                    }
                                    i37 = i38;
                                    i35 = 0;
                                }
                                if (i37 == 0) {
                                    infBlocks11.bitb = i15;
                                    infBlocks11.bitk = i16;
                                    ZStream zStream10 = this.z;
                                    zStream10.avail_in = i21;
                                    zStream10.total_in += i20 - zStream10.next_in_index;
                                    zStream10.next_in_index = i20;
                                    infBlocks11.write = i35;
                                    return infBlocks11.inflate_flush(i22);
                                }
                                i17 = i35;
                                i19 = i37;
                            }
                        }
                        InfBlocks infBlocks12 = this.s;
                        byte[] bArr = infBlocks12.window;
                        int i39 = i17 + 1;
                        int i40 = i9 + 1;
                        bArr[i17] = bArr[i9];
                        i19--;
                        i9 = i40 == infBlocks12.end ? 0 : i40;
                        this.len--;
                        i17 = i39;
                    }
                    this.mode = 0;
                    i11 = 5;
                    break;
                case 5:
                    i9 = i17 - this.dist;
                    while (i9 < 0) {
                    }
                    while (this.len != 0) {
                    }
                    this.mode = 0;
                    i11 = 5;
                case 6:
                    if (i19 == 0) {
                        InfBlocks infBlocks13 = this.s;
                        int i41 = infBlocks13.end;
                        if (i17 == i41 && (i2 = infBlocks13.read) != 0) {
                            i19 = i2 > 0 ? i2 - 1 : i41;
                            i17 = 0;
                        }
                        if (i19 == 0) {
                            infBlocks13.write = i17;
                            int inflate_flush = infBlocks13.inflate_flush(i22);
                            InfBlocks infBlocks14 = this.s;
                            int i42 = infBlocks14.write;
                            int i43 = infBlocks14.read;
                            int i44 = i42 < i43 ? (i43 - i42) - 1 : infBlocks14.end - i42;
                            int i45 = infBlocks14.end;
                            if (i42 == i45 && i43 != 0) {
                                if (i43 > 0) {
                                    i45 = i43 - 1;
                                }
                                i44 = i45;
                                i42 = 0;
                            }
                            if (i44 == 0) {
                                infBlocks14.bitb = i15;
                                infBlocks14.bitk = i16;
                                ZStream zStream11 = this.z;
                                zStream11.avail_in = i21;
                                zStream11.total_in += i20 - zStream11.next_in_index;
                                zStream11.next_in_index = i20;
                                infBlocks14.write = i42;
                                return infBlocks14.inflate_flush(inflate_flush);
                            }
                            i17 = i42;
                            i19 = i44;
                        }
                    }
                    this.s.window[i17] = (byte) this.lit;
                    i19--;
                    this.mode = 0;
                    i17++;
                    i22 = 0;
                    break;
                case 7:
                    if (i16 > 7) {
                        i16 -= 8;
                        i21++;
                        i20--;
                    }
                    InfBlocks infBlocks15 = this.s;
                    infBlocks15.write = i17;
                    int inflate_flush2 = infBlocks15.inflate_flush(i22);
                    InfBlocks infBlocks16 = this.s;
                    int i46 = infBlocks16.write;
                    int i47 = infBlocks16.read;
                    if (i46 >= i47) {
                        int i48 = infBlocks16.end;
                    }
                    if (i47 != i46) {
                        infBlocks16.bitb = i15;
                        infBlocks16.bitk = i16;
                        ZStream zStream12 = this.z;
                        zStream12.avail_in = i21;
                        zStream12.total_in += i20 - zStream12.next_in_index;
                        zStream12.next_in_index = i20;
                        infBlocks16.write = i46;
                        return infBlocks16.inflate_flush(inflate_flush2);
                    }
                    this.mode = i12;
                    i17 = i46;
                    break;
                case 8:
                    break;
                case 9:
                    InfBlocks infBlocks17 = this.s;
                    infBlocks17.bitb = i15;
                    infBlocks17.bitk = i16;
                    ZStream zStream13 = this.z;
                    zStream13.avail_in = i21;
                    zStream13.total_in += i20 - zStream13.next_in_index;
                    zStream13.next_in_index = i20;
                    infBlocks17.write = i17;
                    return infBlocks17.inflate_flush(-3);
                default:
                    InfBlocks infBlocks18 = this.s;
                    infBlocks18.bitb = i15;
                    infBlocks18.bitk = i16;
                    ZStream zStream14 = this.z;
                    zStream14.avail_in = i21;
                    zStream14.total_in += i20 - zStream14.next_in_index;
                    zStream14.next_in_index = i20;
                    infBlocks18.write = i17;
                    return infBlocks18.inflate_flush(-2);
            }
        }
    }
}
