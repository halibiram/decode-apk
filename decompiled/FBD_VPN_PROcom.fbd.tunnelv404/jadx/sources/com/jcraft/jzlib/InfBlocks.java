package com.jcraft.jzlib;

import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class InfBlocks {
    private static final int BAD = 9;
    private static final int BTREE = 4;
    private static final int CODES = 6;
    private static final int DONE = 8;
    private static final int DRY = 7;
    private static final int DTREE = 5;
    private static final int LENS = 1;
    private static final int MANY = 1440;
    private static final int STORED = 2;
    private static final int TABLE = 3;
    private static final int TYPE = 0;
    private static final int Z_BUF_ERROR = -5;
    private static final int Z_DATA_ERROR = -3;
    private static final int Z_ERRNO = -1;
    private static final int Z_MEM_ERROR = -4;
    private static final int Z_NEED_DICT = 2;
    private static final int Z_OK = 0;
    private static final int Z_STREAM_END = 1;
    private static final int Z_STREAM_ERROR = -2;
    private static final int Z_VERSION_ERROR = -6;
    int bitb;
    int bitk;
    int[] blens;
    private boolean check;
    private final InfCodes codes;
    int end;
    int index;
    int last;
    int left;
    int mode;
    int read;
    int table;
    byte[] window;
    int write;
    private final ZStream z;
    private static final int[] inflate_mask = {0, 1, 3, 7, 15, 31, 63, 127, 255, 511, 1023, 2047, 4095, 8191, 16383, 32767, 65535};
    static final int[] border = {16, 17, 18, 0, 8, 7, 9, 6, 10, 5, 11, 4, 12, 3, 13, 2, 14, 1, 15};
    int[] bb = new int[1];
    int[] tb = new int[1];
    int[] bl = new int[1];
    int[] bd = new int[1];
    int[][] tl = new int[1];
    int[][] td = new int[1];
    int[] tli = new int[1];
    int[] tdi = new int[1];
    private final InfTree inftree = new InfTree();
    int[] hufts = new int[4320];

    public InfBlocks(ZStream zStream, int i) {
        this.z = zStream;
        this.codes = new InfCodes(zStream, this);
        this.window = new byte[i];
        this.end = i;
        this.check = zStream.istate.wrap != 0;
        this.mode = 0;
        reset();
    }

    public void free() {
        reset();
        this.window = null;
        this.hufts = null;
    }

    public int inflate_flush(int i) {
        ZStream zStream = this.z;
        int i2 = zStream.next_out_index;
        int i3 = this.read;
        int i4 = this.write;
        if (i3 > i4) {
            i4 = this.end;
        }
        int i5 = i4 - i3;
        int i6 = zStream.avail_out;
        if (i5 > i6) {
            i5 = i6;
        }
        if (i5 != 0 && i == -5) {
            i = 0;
        }
        zStream.avail_out = i6 - i5;
        zStream.total_out += i5;
        if (this.check && i5 > 0) {
            zStream.adler.update(this.window, i3, i5);
        }
        System.arraycopy(this.window, i3, this.z.next_out, i2, i5);
        int i7 = i2 + i5;
        int i8 = i3 + i5;
        int i9 = this.end;
        if (i8 == i9) {
            if (this.write == i9) {
                this.write = 0;
            }
            int i10 = this.write;
            ZStream zStream2 = this.z;
            int i11 = zStream2.avail_out;
            if (i10 > i11) {
                i10 = i11;
            }
            if (i10 != 0 && i == -5) {
                i = 0;
            }
            zStream2.avail_out = i11 - i10;
            zStream2.total_out += i10;
            if (this.check && i10 > 0) {
                zStream2.adler.update(this.window, 0, i10);
            }
            System.arraycopy(this.window, 0, this.z.next_out, i7, i10);
            i7 += i10;
            i8 = i10;
        }
        this.z.next_out_index = i7;
        this.read = i8;
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:153:0x03a5, code lost:
    
        r33.blens = null;
        r33.mode = 9;
        r33.z.msg = new com.panda912.muddy.ObfuscatedString(new long[]{-4092501412112968149L, -644998452303992015L, -9061256289720423761L, -2954172374755524790L, 124077977857436794L}).toString();
        r33.bitb = r2;
        r33.bitk = r14;
        r1 = r33.z;
        r1.avail_in = r11;
        r1.total_in += r12 - r1.next_in_index;
        r1.next_in_index = r12;
        r33.write = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x03d9, code lost:
    
        return inflate_flush(-3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0264, code lost:
    
        r33.write = r15;
        r1 = inflate_flush(r10);
        r15 = r33.write;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x026e, code lost:
    
        if (r33.read == r15) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0270, code lost:
    
        r33.bitb = r13;
        r33.bitk = r14;
        r2 = r33.z;
        r2.avail_in = r11;
        r2.total_in += r12 - r2.next_in_index;
        r2.next_in_index = r12;
        r33.write = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x028a, code lost:
    
        return inflate_flush(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x028b, code lost:
    
        r33.mode = 8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:204:0x03da, code lost:
    
        r33.mode = 9;
        r33.z.msg = new com.panda912.muddy.ObfuscatedString(new long[]{-2891208440118305445L, -3397782942219844104L, 969072906299480117L, 6187253474127354774L, -8765075104899575472L, 6518233454893825799L}).toString();
        r33.bitb = r13;
        r33.bitk = r14;
        r1 = r33.z;
        r1.avail_in = r11;
        r1.total_in += r12 - r1.next_in_index;
        r1.next_in_index = r12;
        r33.write = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x040a, code lost:
    
        return inflate_flush(-3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x028f, code lost:
    
        r33.bitb = r13;
        r33.bitk = r14;
        r1 = r33.z;
        r1.avail_in = r11;
        r1.total_in += r12 - r1.next_in_index;
        r1.next_in_index = r12;
        r33.write = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x02aa, code lost:
    
        return inflate_flush(1);
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x002d. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0123 A[LOOP:7: B:109:0x011d->B:111:0x0123, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0130 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x02ab  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0189 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x00d2  */
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
        int i8 = 4;
        int i9 = 14;
        int i10 = -3;
        int i11 = 5;
        int i12 = 8;
        int i13 = -1;
        ZStream zStream = this.z;
        int i14 = zStream.next_in_index;
        int i15 = zStream.avail_in;
        int i16 = this.bitb;
        int i17 = this.bitk;
        int i18 = this.write;
        int i19 = this.read;
        int i20 = 1;
        int i21 = i18 < i19 ? (i19 - i18) - 1 : this.end - i18;
        int i22 = i18;
        int i23 = i17;
        int i24 = i16;
        int i25 = i14;
        int i26 = i15;
        int i27 = i;
        while (true) {
            char c = 0;
            switch (this.mode) {
                case 0:
                    int i28 = 3;
                    while (i23 < i28) {
                        if (i26 != 0) {
                            i26--;
                            i24 |= (this.z.next_in[i25] & 255) << i23;
                            i23 += 8;
                            i25++;
                            i28 = 3;
                            i27 = 0;
                        } else {
                            this.bitb = i24;
                            this.bitk = i23;
                            ZStream zStream2 = this.z;
                            zStream2.avail_in = i26;
                            zStream2.total_in += i25 - zStream2.next_in_index;
                            zStream2.next_in_index = i25;
                            this.write = i22;
                            return inflate_flush(i27);
                        }
                    }
                    this.last = i24 & 1;
                    int i29 = (i24 & 7) >>> 1;
                    if (i29 == 0) {
                        int i30 = i24 >>> 3;
                        int i31 = i23 - 3;
                        int i32 = i31 & 7;
                        i6 = i30 >>> i32;
                        i23 = i31 - i32;
                        this.mode = 1;
                    } else if (i29 == 1) {
                        InfTree.inflate_trees_fixed(this.bl, this.bd, this.tl, this.td, this.z);
                        this.codes.init(this.bl[0], this.bd[0], this.tl[0], 0, this.td[0], 0);
                        i6 = i24 >>> 3;
                        i23 -= 3;
                        this.mode = 6;
                    } else if (i29 == 2) {
                        i23 -= 3;
                        this.mode = 3;
                        i6 = i24 >>> 3;
                    } else {
                        if (i29 == 3) {
                            this.mode = 9;
                            this.z.msg = new ObfuscatedString(new long[]{-8455610075959739403L, 5331369403888284925L, -3889912110759141476L, -4565266539772299471L}).toString();
                            this.bitb = i24 >>> 3;
                            this.bitk = i23 - 3;
                            ZStream zStream3 = this.z;
                            zStream3.avail_in = i26;
                            zStream3.total_in += i25 - zStream3.next_in_index;
                            zStream3.next_in_index = i25;
                            this.write = i22;
                            return inflate_flush(-3);
                        }
                        i6 = i24;
                    }
                    i24 = i6;
                    i20 = 1;
                    i8 = 4;
                    i9 = 14;
                    i10 = -3;
                    i11 = 5;
                    i12 = 8;
                    i13 = -1;
                case 1:
                    while (i23 < 32) {
                        if (i26 != 0) {
                            i26--;
                            i24 |= (this.z.next_in[i25] & 255) << i23;
                            i23 += 8;
                            i25++;
                            i27 = 0;
                        } else {
                            this.bitb = i24;
                            this.bitk = i23;
                            ZStream zStream4 = this.z;
                            zStream4.avail_in = i26;
                            zStream4.total_in += i25 - zStream4.next_in_index;
                            zStream4.next_in_index = i25;
                            this.write = i22;
                            return inflate_flush(i27);
                        }
                    }
                    int i33 = 65535 & i24;
                    if ((((~i24) >>> 16) & 65535) != i33) {
                        this.mode = 9;
                        this.z.msg = new ObfuscatedString(new long[]{6046589098929869568L, -5795601346798212595L, -4057141719109792798L, -1634361765016008135L, -9189561713496675060L}).toString();
                        this.bitb = i24;
                        this.bitk = i23;
                        ZStream zStream5 = this.z;
                        zStream5.avail_in = i26;
                        zStream5.total_in += i25 - zStream5.next_in_index;
                        zStream5.next_in_index = i25;
                        this.write = i22;
                        return inflate_flush(-3);
                    }
                    this.left = i33;
                    if (i33 != 0) {
                        i7 = 2;
                    } else {
                        i7 = this.last != 0 ? 7 : 0;
                    }
                    this.mode = i7;
                    i20 = 1;
                    i8 = 4;
                    i9 = 14;
                    i10 = -3;
                    i11 = 5;
                    i12 = 8;
                    i13 = -1;
                    i24 = 0;
                    i23 = 0;
                case 2:
                    if (i26 == 0) {
                        this.bitb = i24;
                        this.bitk = i23;
                        ZStream zStream6 = this.z;
                        zStream6.avail_in = i26;
                        zStream6.total_in += i25 - zStream6.next_in_index;
                        zStream6.next_in_index = i25;
                        this.write = i22;
                        return inflate_flush(i27);
                    }
                    if (i21 == 0) {
                        int i34 = this.end;
                        if (i22 == i34 && (i2 = this.read) != 0) {
                            i21 = i2 > 0 ? i2 - 1 : i34;
                            i22 = 0;
                        }
                        if (i21 == 0) {
                            this.write = i22;
                            int inflate_flush = inflate_flush(i27);
                            int i35 = this.write;
                            int i36 = this.read;
                            int i37 = i35 < i36 ? (i36 - i35) - 1 : this.end - i35;
                            int i38 = this.end;
                            if (i35 != i38 || i36 == 0) {
                                i22 = i35;
                                i21 = i37;
                            } else {
                                if (i36 > 0) {
                                    i38 = i36 - 1;
                                }
                                i21 = i38;
                                i22 = 0;
                            }
                            if (i21 == 0) {
                                this.bitb = i24;
                                this.bitk = i23;
                                ZStream zStream7 = this.z;
                                zStream7.avail_in = i26;
                                zStream7.total_in += i25 - zStream7.next_in_index;
                                zStream7.next_in_index = i25;
                                this.write = i22;
                                return inflate_flush(inflate_flush);
                            }
                        }
                    }
                    int i39 = i21;
                    int i40 = this.left;
                    if (i40 > i26) {
                        i40 = i26;
                    }
                    if (i40 > i39) {
                        i40 = i39;
                    }
                    System.arraycopy(this.z.next_in, i25, this.window, i22, i40);
                    i25 += i40;
                    i26 -= i40;
                    i22 += i40;
                    i21 = i39 - i40;
                    int i41 = this.left - i40;
                    this.left = i41;
                    if (i41 == 0) {
                        this.mode = this.last != 0 ? 7 : 0;
                    }
                    i20 = 1;
                    i8 = 4;
                    i9 = 14;
                    i10 = -3;
                    i11 = 5;
                    i12 = 8;
                    i13 = -1;
                    i27 = 0;
                    break;
                case 3:
                    while (i23 < i9) {
                        if (i26 != 0) {
                            i26 += i13;
                            i24 |= (this.z.next_in[i25] & 255) << i23;
                            i23 += i12;
                            i25++;
                            i27 = 0;
                        } else {
                            this.bitb = i24;
                            this.bitk = i23;
                            ZStream zStream8 = this.z;
                            zStream8.avail_in = i26;
                            zStream8.total_in += i25 - zStream8.next_in_index;
                            zStream8.next_in_index = i25;
                            this.write = i22;
                            return inflate_flush(i27);
                        }
                    }
                    int i42 = i24 & 16383;
                    this.table = i42;
                    int i43 = i24 & 31;
                    if (i43 <= 29 && (i5 = (i42 >> i11) & 31) <= 29) {
                        int i44 = i43 + 258 + i5;
                        int[] iArr = this.blens;
                        if (iArr == null || iArr.length < i44) {
                            this.blens = new int[i44];
                        } else {
                            for (int i45 = 0; i45 < i44; i45 += i20) {
                                this.blens[i45] = 0;
                            }
                        }
                        i24 >>>= i9;
                        i23 -= 14;
                        this.index = 0;
                        this.mode = i8;
                        while (this.index < (this.table >>> 10) + i8) {
                            int i46 = 3;
                            while (i23 < i46) {
                                if (i26 != 0) {
                                    i26 += i13;
                                    i24 |= (this.z.next_in[i25] & 255) << i23;
                                    i23 += 8;
                                    i25++;
                                    i46 = 3;
                                    i27 = 0;
                                } else {
                                    this.bitb = i24;
                                    this.bitk = i23;
                                    ZStream zStream9 = this.z;
                                    zStream9.avail_in = i26;
                                    zStream9.total_in += i25 - zStream9.next_in_index;
                                    zStream9.next_in_index = i25;
                                    this.write = i22;
                                    return inflate_flush(i27);
                                }
                            }
                            int[] iArr2 = this.blens;
                            int[] iArr3 = border;
                            int i47 = this.index;
                            this.index = i47 + 1;
                            iArr2[iArr3[i47]] = i24 & 7;
                            i24 >>>= 3;
                            i23 -= 3;
                            i8 = 4;
                        }
                        while (true) {
                            i4 = this.index;
                            if (i4 >= 19) {
                                int[] iArr4 = this.blens;
                                int[] iArr5 = border;
                                this.index = i4 + 1;
                                iArr4[iArr5[i4]] = 0;
                            } else {
                                int[] iArr6 = this.bb;
                                iArr6[0] = 7;
                                int inflate_trees_bits = this.inftree.inflate_trees_bits(this.blens, iArr6, this.tb, this.hufts, this.z);
                                if (inflate_trees_bits != 0) {
                                    if (inflate_trees_bits == -3) {
                                        this.blens = null;
                                        this.mode = 9;
                                    }
                                    this.bitb = i24;
                                    this.bitk = i23;
                                    ZStream zStream10 = this.z;
                                    zStream10.avail_in = i26;
                                    zStream10.total_in += i25 - zStream10.next_in_index;
                                    zStream10.next_in_index = i25;
                                    this.write = i22;
                                    return inflate_flush(inflate_trees_bits);
                                }
                                this.index = 0;
                                this.mode = i11;
                                while (true) {
                                    i3 = this.table;
                                    if (this.index < (i3 & 31) + 258 + ((i3 >> 5) & 31)) {
                                        this.tb[c] = i13;
                                        int[] iArr7 = this.bl;
                                        iArr7[c] = 9;
                                        int[] iArr8 = this.bd;
                                        iArr8[c] = 6;
                                        int inflate_trees_dynamic = this.inftree.inflate_trees_dynamic((i3 & 31) + 257, ((i3 >> i11) & 31) + 1, this.blens, iArr7, iArr8, this.tli, this.tdi, this.hufts, this.z);
                                        if (inflate_trees_dynamic != 0) {
                                            if (inflate_trees_dynamic == -3) {
                                                this.blens = null;
                                                this.mode = 9;
                                            }
                                            this.bitb = i24;
                                            this.bitk = i23;
                                            ZStream zStream11 = this.z;
                                            zStream11.avail_in = i26;
                                            zStream11.total_in += i25 - zStream11.next_in_index;
                                            zStream11.next_in_index = i25;
                                            this.write = i22;
                                            return inflate_flush(inflate_trees_dynamic);
                                        }
                                        InfCodes infCodes = this.codes;
                                        int i48 = this.bl[0];
                                        int i49 = this.bd[0];
                                        int[] iArr9 = this.hufts;
                                        infCodes.init(i48, i49, iArr9, this.tli[0], iArr9, this.tdi[0]);
                                        this.mode = 6;
                                        break;
                                    } else {
                                        int i50 = this.bb[0];
                                        while (i23 < i50) {
                                            if (i26 != 0) {
                                                i26--;
                                                i24 |= (this.z.next_in[i25] & 255) << i23;
                                                i23 += 8;
                                                i25++;
                                                i27 = 0;
                                            } else {
                                                this.bitb = i24;
                                                this.bitk = i23;
                                                ZStream zStream12 = this.z;
                                                zStream12.avail_in = i26;
                                                zStream12.total_in += i25 - zStream12.next_in_index;
                                                zStream12.next_in_index = i25;
                                                this.write = i22;
                                                return inflate_flush(i27);
                                            }
                                        }
                                        int i51 = this.tb[0];
                                        int[] iArr10 = this.hufts;
                                        int[] iArr11 = inflate_mask;
                                        int i52 = iArr10[(((iArr11[i50] & i24) + i51) * 3) + 1];
                                        int i53 = iArr10[((i51 + (iArr11[i52] & i24)) * 3) + 2];
                                        if (i53 < 16) {
                                            int i54 = i24 >>> i52;
                                            i23 -= i52;
                                            int[] iArr12 = this.blens;
                                            int i55 = this.index;
                                            this.index = i55 + 1;
                                            iArr12[i55] = i53;
                                            i24 = i54;
                                        } else {
                                            int i56 = i53 == 18 ? 7 : i53 - 14;
                                            int i57 = i53 == 18 ? 11 : 3;
                                            while (i23 < i52 + i56) {
                                                if (i26 != 0) {
                                                    i26--;
                                                    i24 |= (this.z.next_in[i25] & 255) << i23;
                                                    i23 += 8;
                                                    i25++;
                                                    i27 = 0;
                                                } else {
                                                    this.bitb = i24;
                                                    this.bitk = i23;
                                                    ZStream zStream13 = this.z;
                                                    zStream13.avail_in = i26;
                                                    zStream13.total_in += i25 - zStream13.next_in_index;
                                                    zStream13.next_in_index = i25;
                                                    this.write = i22;
                                                    return inflate_flush(i27);
                                                }
                                            }
                                            int i58 = i24 >>> i52;
                                            int i59 = i23 - i52;
                                            int i60 = i57 + (inflate_mask[i56] & i58);
                                            int i61 = i58 >>> i56;
                                            i23 = i59 - i56;
                                            int i62 = this.index;
                                            int i63 = this.table;
                                            if (i62 + i60 <= (i63 & 31) + 258 + ((i63 >> 5) & 31) && (i53 != 16 || i62 >= 1)) {
                                                int i64 = i53 == 16 ? this.blens[i62 - 1] : 0;
                                                while (true) {
                                                    int i65 = i62 + 1;
                                                    this.blens[i62] = i64;
                                                    i60--;
                                                    if (i60 == 0) {
                                                        this.index = i65;
                                                        i24 = i61;
                                                    } else {
                                                        i62 = i65;
                                                    }
                                                }
                                            }
                                        }
                                        c = 0;
                                        i11 = 5;
                                        i13 = -1;
                                    }
                                }
                            }
                        }
                    }
                    break;
                case 4:
                    while (this.index < (this.table >>> 10) + i8) {
                    }
                    while (true) {
                        i4 = this.index;
                        if (i4 >= 19) {
                        }
                        int[] iArr42 = this.blens;
                        int[] iArr52 = border;
                        this.index = i4 + 1;
                        iArr42[iArr52[i4]] = 0;
                    }
                    break;
                case 5:
                    while (true) {
                        i3 = this.table;
                        if (this.index < (i3 & 31) + 258 + ((i3 >> 5) & 31)) {
                        }
                        c = 0;
                        i11 = 5;
                        i13 = -1;
                    }
                    break;
                case 6:
                    this.bitb = i24;
                    this.bitk = i23;
                    ZStream zStream14 = this.z;
                    zStream14.avail_in = i26;
                    zStream14.total_in += i25 - zStream14.next_in_index;
                    zStream14.next_in_index = i25;
                    this.write = i22;
                    int proc = this.codes.proc(i27);
                    if (proc != 1) {
                        return inflate_flush(proc);
                    }
                    this.codes.free(this.z);
                    ZStream zStream15 = this.z;
                    i25 = zStream15.next_in_index;
                    i26 = zStream15.avail_in;
                    i24 = this.bitb;
                    i23 = this.bitk;
                    i22 = this.write;
                    int i66 = this.read;
                    i21 = i22 < i66 ? (i66 - i22) - 1 : this.end - i22;
                    if (this.last == 0) {
                        this.mode = 0;
                        i20 = 1;
                        i8 = 4;
                        i9 = 14;
                        i10 = -3;
                        i11 = 5;
                        i12 = 8;
                        i13 = -1;
                        i27 = 0;
                    } else {
                        this.mode = 7;
                        i27 = 0;
                        break;
                    }
                case 7:
                    break;
                case 8:
                    break;
                case 9:
                    this.bitb = i24;
                    this.bitk = i23;
                    ZStream zStream16 = this.z;
                    zStream16.avail_in = i26;
                    zStream16.total_in += i25 - zStream16.next_in_index;
                    zStream16.next_in_index = i25;
                    this.write = i22;
                    return inflate_flush(i10);
                default:
                    this.bitb = i24;
                    this.bitk = i23;
                    ZStream zStream17 = this.z;
                    zStream17.avail_in = i26;
                    zStream17.total_in += i25 - zStream17.next_in_index;
                    zStream17.next_in_index = i25;
                    this.write = i22;
                    return inflate_flush(-2);
            }
        }
    }

    public void reset() {
        if (this.mode == 6) {
            this.codes.free(this.z);
        }
        this.mode = 0;
        this.bitk = 0;
        this.bitb = 0;
        this.write = 0;
        this.read = 0;
        if (this.check) {
            this.z.adler.reset();
        }
    }

    public void set_dictionary(byte[] bArr, int i, int i2) {
        System.arraycopy(bArr, i, this.window, 0, i2);
        this.write = i2;
        this.read = i2;
    }

    public int sync_point() {
        if (this.mode == 1) {
            return 1;
        }
        return 0;
    }
}
