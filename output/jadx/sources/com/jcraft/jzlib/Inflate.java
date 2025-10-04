package com.jcraft.jzlib;

import com.panda912.muddy.ObfuscatedString;
import java.io.ByteArrayOutputStream;
import okhttp3.internal.ws.WebSocketProtocol;

/* loaded from: classes3.dex */
final class Inflate {
    private static final int BAD = 13;
    private static final int BLOCKS = 7;
    private static final int CHECK1 = 11;
    private static final int CHECK2 = 10;
    private static final int CHECK3 = 9;
    private static final int CHECK4 = 8;
    private static final int COMMENT = 21;
    private static final int DICT0 = 6;
    private static final int DICT1 = 5;
    private static final int DICT2 = 4;
    private static final int DICT3 = 3;
    private static final int DICT4 = 2;
    private static final int DONE = 12;
    private static final int EXLEN = 18;
    private static final int EXTRA = 19;
    private static final int FLAG = 1;
    private static final int FLAGS = 23;
    private static final int HCRC = 22;
    private static final int HEAD = 14;
    static final int INFLATE_ANY = 1073741824;
    private static final int LENGTH = 15;
    private static final int MAX_WBITS = 15;
    private static final int METHOD = 0;
    private static final int NAME = 20;
    private static final int OS = 17;
    private static final int PRESET_DICT = 32;
    private static final int TIME = 16;
    private static final int Z_BUF_ERROR = -5;
    private static final int Z_DATA_ERROR = -3;
    private static final int Z_DEFLATED = 8;
    private static final int Z_ERRNO = -1;
    static final int Z_FINISH = 4;
    static final int Z_FULL_FLUSH = 3;
    private static final int Z_MEM_ERROR = -4;
    private static final int Z_NEED_DICT = 2;
    static final int Z_NO_FLUSH = 0;
    private static final int Z_OK = 0;
    static final int Z_PARTIAL_FLUSH = 1;
    private static final int Z_STREAM_END = 1;
    private static final int Z_STREAM_ERROR = -2;
    static final int Z_SYNC_FLUSH = 2;
    private static final int Z_VERSION_ERROR = -6;
    private static byte[] mark = {0, 0, -1, -1};
    InfBlocks blocks;
    private int flags;
    int marker;
    int method;
    int mode;
    long need;
    int wbits;
    int wrap;
    private final ZStream z;
    long was = -1;
    private int need_bytes = -1;
    private byte[] crcbuf = new byte[4];
    GZIPHeader gheader = null;
    private ByteArrayOutputStream tmp_string = null;

    /* loaded from: classes3.dex */
    public class Return extends Exception {
        int r;

        public Return(int i) {
            this.r = i;
        }
    }

    public Inflate(ZStream zStream) {
        this.z = zStream;
    }

    private void checksum(int i, long j) {
        for (int i2 = 0; i2 < i; i2++) {
            this.crcbuf[i2] = (byte) (255 & j);
            j >>= 8;
        }
        this.z.adler.update(this.crcbuf, 0, i);
    }

    private int readBytes(int i, int i2, int i3) {
        if (this.need_bytes == -1) {
            this.need_bytes = i;
            this.need = 0L;
        }
        while (true) {
            int i4 = this.need_bytes;
            if (i4 > 0) {
                ZStream zStream = this.z;
                int i5 = zStream.avail_in;
                if (i5 != 0) {
                    zStream.avail_in = i5 - 1;
                    zStream.total_in++;
                    long j = this.need;
                    byte[] bArr = zStream.next_in;
                    zStream.next_in_index = zStream.next_in_index + 1;
                    this.need = j | ((bArr[r5] & 255) << ((i - i4) * 8));
                    this.need_bytes = i4 - 1;
                    i2 = i3;
                } else {
                    throw new Return(i2);
                }
            } else {
                if (i == 2) {
                    this.need &= WebSocketProtocol.PAYLOAD_SHORT_MAX;
                } else if (i == 4) {
                    this.need &= 4294967295L;
                }
                this.need_bytes = -1;
                return i2;
            }
        }
    }

    private int readString(int i, int i2) {
        if (this.tmp_string == null) {
            this.tmp_string = new ByteArrayOutputStream();
        }
        while (true) {
            ZStream zStream = this.z;
            int i3 = zStream.avail_in;
            if (i3 != 0) {
                zStream.avail_in = i3 - 1;
                zStream.total_in++;
                byte[] bArr = zStream.next_in;
                int i4 = zStream.next_in_index;
                byte b = bArr[i4];
                if (b != 0) {
                    this.tmp_string.write(bArr, i4, 1);
                }
                ZStream zStream2 = this.z;
                zStream2.adler.update(zStream2.next_in, zStream2.next_in_index, 1);
                this.z.next_in_index++;
                if (b == 0) {
                    return i2;
                }
                i = i2;
            } else {
                throw new Return(i);
            }
        }
    }

    public GZIPHeader getGZIPHeader() {
        return this.gheader;
    }

    public boolean inParsingHeader() {
        int i = this.mode;
        if (i == 2 || i == 3 || i == 4 || i == 5 || i == 14) {
            return true;
        }
        switch (i) {
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                return true;
            default:
                return false;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x04a8, code lost:
    
        r29.mode = 12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x04aa, code lost:
    
        return 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:228:0x04c6, code lost:
    
        r3 = r29.z;
        r5 = r3.avail_in;
     */
    /* JADX WARN: Code restructure failed: missing block: B:229:0x04ca, code lost:
    
        if (r5 != 0) goto L248;
     */
    /* JADX WARN: Code restructure failed: missing block: B:230:0x04cc, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:231:0x04cd, code lost:
    
        r3.avail_in = r5 - 1;
        r3.total_in++;
        r2 = r3.next_in;
        r3.next_in_index = r3.next_in_index + 1;
        r29.need = ((r2[r5] & 255) << 24) & 4278190080L;
        r29.mode = 3;
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:232:0x04f2, code lost:
    
        r3 = r29.z;
        r5 = r3.avail_in;
     */
    /* JADX WARN: Code restructure failed: missing block: B:233:0x04f6, code lost:
    
        if (r5 != 0) goto L252;
     */
    /* JADX WARN: Code restructure failed: missing block: B:234:0x04f8, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:235:0x04f9, code lost:
    
        r3.avail_in = r5 - 1;
        r3.total_in++;
        r5 = r29.need;
        r2 = r3.next_in;
        r3.next_in_index = r3.next_in_index + 1;
        r29.need = r5 + (((r2[r7] & 255) << 16) & 16711680);
        r29.mode = 4;
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:236:0x051c, code lost:
    
        r3 = r29.z;
        r4 = r3.avail_in;
     */
    /* JADX WARN: Code restructure failed: missing block: B:237:0x0520, code lost:
    
        if (r4 != 0) goto L256;
     */
    /* JADX WARN: Code restructure failed: missing block: B:238:0x0522, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:239:0x0523, code lost:
    
        r3.avail_in = r4 - 1;
        r3.total_in++;
        r4 = r29.need;
        r2 = r3.next_in;
        r3.next_in_index = r3.next_in_index + 1;
        r29.need = r4 + (((r2[r6] & 255) << 8) & 65280);
        r29.mode = 5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:240:0x0545, code lost:
    
        r2 = r29.z;
        r3 = r2.avail_in;
     */
    /* JADX WARN: Code restructure failed: missing block: B:241:0x0549, code lost:
    
        if (r3 != 0) goto L260;
     */
    /* JADX WARN: Code restructure failed: missing block: B:242:0x054b, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:243:0x054c, code lost:
    
        r2.avail_in = r3 - 1;
        r2.total_in++;
        r3 = r29.need;
        r0 = r2.next_in;
        r2.next_in_index = 1 + r2.next_in_index;
        r3 = r3 + (r0[r5] & 255);
        r29.need = r3;
        r2.adler.reset(r3);
        r29.mode = 6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:244:0x056f, code lost:
    
        return 2;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x0031. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:104:0x01d7 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0170 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0145 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0134 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:140:0x00c9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:290:0x0364  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x0390  */
    /* JADX WARN: Removed duplicated region for block: B:296:0x03ba  */
    /* JADX WARN: Removed duplicated region for block: B:308:0x03b9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:310:0x038f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:312:0x0363 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:318:0x0337  */
    /* JADX WARN: Removed duplicated region for block: B:319:0x0336 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00fb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x019b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int inflate(int i) {
        int i2;
        int i3;
        GZIPHeader gZIPHeader;
        int i4;
        int i5;
        int i6;
        String str;
        GZIPHeader gZIPHeader2;
        GZIPHeader gZIPHeader3;
        int i7 = 8;
        ZStream zStream = this.z;
        if (zStream == null || zStream.next_in == null) {
            return (i == 4 && this.mode == 14) ? 0 : -2;
        }
        int i8 = -5;
        int i9 = i == 4 ? -5 : 0;
        while (true) {
            switch (this.mode) {
                case 2:
                    break;
                case 3:
                    break;
                case 4:
                    break;
                case 5:
                    i9 = i8;
                    break;
                case 6:
                    this.mode = 13;
                    this.z.msg = new ObfuscatedString(new long[]{1538869544594207517L, -5885328842008234313L, 7049913904182965935L}).toString();
                    this.marker = 0;
                    return -2;
                case 7:
                    i8 = this.blocks.proc(i8);
                    if (i8 == -3) {
                        this.mode = 13;
                        this.marker = 0;
                    } else {
                        if (i8 == 0) {
                            i8 = i9;
                        }
                        if (i8 != 1) {
                            return i8;
                        }
                        this.was = this.z.adler.getValue();
                        this.blocks.reset();
                        if (this.wrap == 0) {
                            this.mode = 12;
                            i8 = i9;
                        } else {
                            this.mode = i7;
                            i8 = i9;
                            ZStream zStream2 = this.z;
                            i2 = zStream2.avail_in;
                            if (i2 != 0) {
                                return i8;
                            }
                            zStream2.avail_in = i2 - 1;
                            zStream2.total_in++;
                            byte[] bArr = zStream2.next_in;
                            zStream2.next_in_index = zStream2.next_in_index + 1;
                            this.need = ((bArr[r7] & 255) << 24) & 4278190080L;
                            this.mode = 9;
                            i8 = i9;
                            ZStream zStream3 = this.z;
                            i6 = zStream3.avail_in;
                            if (i6 != 0) {
                                return i8;
                            }
                            zStream3.avail_in = i6 - 1;
                            zStream3.total_in++;
                            long j = this.need;
                            byte[] bArr2 = zStream3.next_in;
                            zStream3.next_in_index = zStream3.next_in_index + 1;
                            this.need = j + (((bArr2[r9] & 255) << 16) & 16711680);
                            this.mode = 10;
                            i8 = i9;
                            ZStream zStream4 = this.z;
                            i5 = zStream4.avail_in;
                            if (i5 != 0) {
                                return i8;
                            }
                            zStream4.avail_in = i5 - 1;
                            zStream4.total_in++;
                            long j2 = this.need;
                            byte[] bArr3 = zStream4.next_in;
                            zStream4.next_in_index = zStream4.next_in_index + 1;
                            this.need = j2 + (((bArr3[r8] & 255) << i7) & 65280);
                            this.mode = 11;
                            i8 = i9;
                            ZStream zStream5 = this.z;
                            i3 = zStream5.avail_in;
                            if (i3 != 0) {
                                return i8;
                            }
                            zStream5.avail_in = i3 - 1;
                            zStream5.total_in++;
                            long j3 = this.need;
                            byte[] bArr4 = zStream5.next_in;
                            zStream5.next_in_index = zStream5.next_in_index + 1;
                            long j4 = j3 + (bArr4[r8] & 255);
                            this.need = j4;
                            int i10 = this.flags;
                            if (i10 != 0) {
                                this.need = (((j4 & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 24) | (((-16777216) & j4) >> 24) | ((j4 & 16711680) >> i7) | ((j4 & 65280) << i7)) & 4294967295L;
                            }
                            int i11 = (int) this.was;
                            long j5 = this.need;
                            if (i11 != ((int) j5)) {
                                zStream5.msg = new ObfuscatedString(new long[]{5417066874475617775L, -7112818235140369441L, 8565482810562411137L, -94639655431976929L}).toString();
                            } else if (i10 != 0 && (gZIPHeader = this.gheader) != null) {
                                gZIPHeader.crc = j5;
                            }
                            this.mode = 15;
                            i4 = i9;
                            if (this.wrap == 0 && this.flags != 0) {
                                try {
                                    i4 = readBytes(4, i4, i9);
                                    String str2 = this.z.msg;
                                    if (str2 != null && str2.equals(new ObfuscatedString(new long[]{-2707645021788114778L, 710215552684407308L, 5971985128842815533L, -2073331556925343647L}).toString())) {
                                        this.mode = 13;
                                        this.marker = 5;
                                    } else {
                                        long j6 = this.need;
                                        ZStream zStream6 = this.z;
                                        if (j6 != (zStream6.total_out & 4294967295L)) {
                                            zStream6.msg = new ObfuscatedString(new long[]{-8630464394443751904L, -1812131510779365006L, 3008697392865881739L, -417933480316061616L}).toString();
                                            this.mode = 13;
                                        } else {
                                            zStream6.msg = null;
                                            break;
                                        }
                                    }
                                    i8 = i4;
                                    i7 = 8;
                                } catch (Return e) {
                                    return e.r;
                                }
                            } else {
                                str = this.z.msg;
                                if (str != null && str.equals(new ObfuscatedString(new long[]{2807450003801837014L, -8757154836012470929L, 2268816752015885241L, -6241526930272893230L}).toString())) {
                                    this.mode = 13;
                                    this.marker = 5;
                                    i8 = i4;
                                    i7 = 8;
                                }
                            }
                        }
                    }
                    break;
                case 8:
                    ZStream zStream22 = this.z;
                    i2 = zStream22.avail_in;
                    if (i2 != 0) {
                    }
                    break;
                case 9:
                    ZStream zStream32 = this.z;
                    i6 = zStream32.avail_in;
                    if (i6 != 0) {
                    }
                    break;
                case 10:
                    ZStream zStream42 = this.z;
                    i5 = zStream42.avail_in;
                    if (i5 != 0) {
                    }
                    break;
                case 11:
                    ZStream zStream52 = this.z;
                    i3 = zStream52.avail_in;
                    if (i3 != 0) {
                    }
                    break;
                case 12:
                    break;
                case 13:
                    return -3;
                case 14:
                    if (this.wrap == 0) {
                        this.mode = 7;
                    } else {
                        try {
                            i8 = readBytes(2, i8, i9);
                            int i12 = this.wrap;
                            if ((i12 != 4 && (i12 & 2) == 0) || this.need != 35615) {
                                if ((i12 & 2) != 0) {
                                    this.mode = 13;
                                    this.z.msg = new ObfuscatedString(new long[]{3961734166432986890L, 8500137498644776912L, 3628204625973109911L, -4208007189508224971L}).toString();
                                } else {
                                    this.flags = 0;
                                    long j7 = this.need;
                                    int i13 = (int) j7;
                                    int i14 = i13 & 255;
                                    this.method = i14;
                                    int i15 = (int) (j7 >> i7);
                                    int i16 = i15 & 255;
                                    if (((i12 & 1) != 0 && ((i14 << 8) + i16) % 31 == 0) || (i13 & 15) == i7) {
                                        if ((i13 & 15) != i7) {
                                            this.mode = 13;
                                            this.z.msg = new ObfuscatedString(new long[]{2484720671101531196L, 7338194725502813960L, -7268545429431192238L, -6919769402494327070L, -1211204448249240778L}).toString();
                                        } else {
                                            if (i12 == 4) {
                                                this.wrap = 1;
                                            }
                                            if ((i14 >> 4) + i7 > this.wbits) {
                                                this.mode = 13;
                                                this.z.msg = new ObfuscatedString(new long[]{8083411982909396125L, 5093506778556172994L, -3928905817778773391L, 2379064290464379534L}).toString();
                                            } else {
                                                this.z.adler = new Adler32();
                                                if ((i15 & 32) == 0) {
                                                    this.mode = 7;
                                                } else {
                                                    this.mode = 2;
                                                    break;
                                                }
                                            }
                                        }
                                    } else if (i12 == 4) {
                                        ZStream zStream7 = this.z;
                                        zStream7.next_in_index -= 2;
                                        zStream7.avail_in += 2;
                                        zStream7.total_in -= 2;
                                        this.wrap = 0;
                                        this.mode = 7;
                                    } else {
                                        this.mode = 13;
                                        this.z.msg = new ObfuscatedString(new long[]{-6464436857992226710L, 8490266797093739955L, 860721757430917976L, -4224110045459126104L}).toString();
                                    }
                                }
                            } else {
                                if (i12 == 4) {
                                    this.wrap = 2;
                                }
                                this.z.adler = new CRC32();
                                checksum(2, this.need);
                                if (this.gheader == null) {
                                    this.gheader = new GZIPHeader();
                                }
                                this.mode = 23;
                            }
                        } catch (Return e2) {
                            return e2.r;
                        }
                    }
                    break;
                case 15:
                    i4 = i8;
                    if (this.wrap == 0) {
                        break;
                    }
                    str = this.z.msg;
                    if (str != null) {
                        this.mode = 13;
                        this.marker = 5;
                        i8 = i4;
                        i7 = 8;
                        break;
                    }
                case 16:
                    try {
                        i8 = readBytes(4, i8, i9);
                        gZIPHeader3 = this.gheader;
                        if (gZIPHeader3 != null) {
                            gZIPHeader3.time = this.need;
                        }
                        if ((this.flags & 512) != 0) {
                            checksum(4, this.need);
                        }
                        this.mode = 17;
                        try {
                            i8 = readBytes(2, i8, i9);
                            gZIPHeader2 = this.gheader;
                            if (gZIPHeader2 != null) {
                                long j8 = this.need;
                                gZIPHeader2.xflags = ((int) j8) & 255;
                                gZIPHeader2.os = (((int) j8) >> 8) & 255;
                            }
                            if ((this.flags & 512) != 0) {
                                checksum(2, this.need);
                            }
                            this.mode = 18;
                            if ((this.flags & 1024) == 0) {
                                try {
                                    i8 = readBytes(2, i8, i9);
                                    GZIPHeader gZIPHeader4 = this.gheader;
                                    if (gZIPHeader4 != null) {
                                        gZIPHeader4.extra = new byte[65535 & ((int) this.need)];
                                    }
                                    if ((this.flags & 512) != 0) {
                                        checksum(2, this.need);
                                    }
                                } catch (Return e3) {
                                    return e3.r;
                                }
                            } else {
                                GZIPHeader gZIPHeader5 = this.gheader;
                                if (gZIPHeader5 != null) {
                                    gZIPHeader5.extra = null;
                                }
                            }
                            this.mode = 19;
                            if ((this.flags & 1024) != 0) {
                                try {
                                    i8 = readBytes(i8, i9);
                                    if (this.gheader != null) {
                                        byte[] byteArray = this.tmp_string.toByteArray();
                                        this.tmp_string = null;
                                        int length = byteArray.length;
                                        byte[] bArr5 = this.gheader.extra;
                                        if (length == bArr5.length) {
                                            System.arraycopy(byteArray, 0, bArr5, 0, byteArray.length);
                                        } else {
                                            this.z.msg = new ObfuscatedString(new long[]{-2582057668495622375L, 5055496444576864401L, -5821545806830269121L, 3202596182627519875L}).toString();
                                            this.mode = 13;
                                        }
                                    }
                                } catch (Return e4) {
                                    return e4.r;
                                }
                            } else {
                                GZIPHeader gZIPHeader6 = this.gheader;
                                if (gZIPHeader6 != null) {
                                    gZIPHeader6.extra = null;
                                }
                            }
                            this.mode = 20;
                            if ((this.flags & 2048) == 0) {
                                try {
                                    i8 = readString(i8, i9);
                                    GZIPHeader gZIPHeader7 = this.gheader;
                                    if (gZIPHeader7 != null) {
                                        gZIPHeader7.name = this.tmp_string.toByteArray();
                                    }
                                    this.tmp_string = null;
                                } catch (Return e5) {
                                    return e5.r;
                                }
                            } else {
                                GZIPHeader gZIPHeader8 = this.gheader;
                                if (gZIPHeader8 != null) {
                                    gZIPHeader8.name = null;
                                }
                            }
                            this.mode = 21;
                            if ((this.flags & 4096) != 0) {
                                try {
                                    i8 = readString(i8, i9);
                                    GZIPHeader gZIPHeader9 = this.gheader;
                                    if (gZIPHeader9 != null) {
                                        gZIPHeader9.comment = this.tmp_string.toByteArray();
                                    }
                                    this.tmp_string = null;
                                } catch (Return e6) {
                                    return e6.r;
                                }
                            } else {
                                GZIPHeader gZIPHeader10 = this.gheader;
                                if (gZIPHeader10 != null) {
                                    gZIPHeader10.comment = null;
                                }
                            }
                            this.mode = 22;
                            if ((this.flags & 512) == 0) {
                                try {
                                    i8 = readBytes(2, i8, i9);
                                    GZIPHeader gZIPHeader11 = this.gheader;
                                    if (gZIPHeader11 != null) {
                                        gZIPHeader11.hcrc = (int) (this.need & WebSocketProtocol.PAYLOAD_SHORT_MAX);
                                    }
                                    if (this.need != (this.z.adler.getValue() & WebSocketProtocol.PAYLOAD_SHORT_MAX)) {
                                        this.mode = 13;
                                        this.z.msg = new ObfuscatedString(new long[]{-3049893891099485787L, -2326541279952062115L, 6496034083928943239L, 3531712447708532248L}).toString();
                                        this.marker = 5;
                                    }
                                } catch (Return e7) {
                                    return e7.r;
                                }
                            }
                            this.z.adler = new CRC32();
                            this.mode = 7;
                        } catch (Return e8) {
                            return e8.r;
                        }
                    } catch (Return e9) {
                        return e9.r;
                    }
                case 17:
                    i8 = readBytes(2, i8, i9);
                    gZIPHeader2 = this.gheader;
                    if (gZIPHeader2 != null) {
                    }
                    if ((this.flags & 512) != 0) {
                    }
                    this.mode = 18;
                    if ((this.flags & 1024) == 0) {
                    }
                    this.mode = 19;
                    if ((this.flags & 1024) != 0) {
                    }
                    this.mode = 20;
                    if ((this.flags & 2048) == 0) {
                    }
                    this.mode = 21;
                    if ((this.flags & 4096) != 0) {
                    }
                    this.mode = 22;
                    if ((this.flags & 512) == 0) {
                    }
                    this.z.adler = new CRC32();
                    this.mode = 7;
                    break;
                case 18:
                    if ((this.flags & 1024) == 0) {
                    }
                    this.mode = 19;
                    if ((this.flags & 1024) != 0) {
                    }
                    this.mode = 20;
                    if ((this.flags & 2048) == 0) {
                    }
                    this.mode = 21;
                    if ((this.flags & 4096) != 0) {
                    }
                    this.mode = 22;
                    if ((this.flags & 512) == 0) {
                    }
                    this.z.adler = new CRC32();
                    this.mode = 7;
                    break;
                case 19:
                    if ((this.flags & 1024) != 0) {
                    }
                    this.mode = 20;
                    if ((this.flags & 2048) == 0) {
                    }
                    this.mode = 21;
                    if ((this.flags & 4096) != 0) {
                    }
                    this.mode = 22;
                    if ((this.flags & 512) == 0) {
                    }
                    this.z.adler = new CRC32();
                    this.mode = 7;
                    break;
                case 20:
                    if ((this.flags & 2048) == 0) {
                    }
                    this.mode = 21;
                    if ((this.flags & 4096) != 0) {
                    }
                    this.mode = 22;
                    if ((this.flags & 512) == 0) {
                    }
                    this.z.adler = new CRC32();
                    this.mode = 7;
                    break;
                case 21:
                    if ((this.flags & 4096) != 0) {
                    }
                    this.mode = 22;
                    if ((this.flags & 512) == 0) {
                    }
                    this.z.adler = new CRC32();
                    this.mode = 7;
                    break;
                case 22:
                    if ((this.flags & 512) == 0) {
                    }
                    this.z.adler = new CRC32();
                    this.mode = 7;
                    break;
                case 23:
                    try {
                        i8 = readBytes(2, i8, i9);
                        long j9 = this.need;
                        int i17 = (int) j9;
                        this.flags = i17 & 65535;
                        if ((i17 & 255) != i7) {
                            this.z.msg = new ObfuscatedString(new long[]{-5246097676478132928L, 8419052828331183362L, -5612108873650436078L, 2755228571183713488L, -7717713493617088715L}).toString();
                            this.mode = 13;
                        } else if ((57344 & i17) != 0) {
                            this.z.msg = new ObfuscatedString(new long[]{-9012659848305880231L, -3605732964474391712L, 6057030353595135704L, 1399345769231127766L}).toString();
                            this.mode = 13;
                        } else {
                            if ((i17 & 512) != 0) {
                                checksum(2, j9);
                            }
                            this.mode = 16;
                            i8 = readBytes(4, i8, i9);
                            gZIPHeader3 = this.gheader;
                            if (gZIPHeader3 != null) {
                            }
                            if ((this.flags & 512) != 0) {
                            }
                            this.mode = 17;
                            i8 = readBytes(2, i8, i9);
                            gZIPHeader2 = this.gheader;
                            if (gZIPHeader2 != null) {
                            }
                            if ((this.flags & 512) != 0) {
                            }
                            this.mode = 18;
                            if ((this.flags & 1024) == 0) {
                            }
                            this.mode = 19;
                            if ((this.flags & 1024) != 0) {
                            }
                            this.mode = 20;
                            if ((this.flags & 2048) == 0) {
                            }
                            this.mode = 21;
                            if ((this.flags & 4096) != 0) {
                            }
                            this.mode = 22;
                            if ((this.flags & 512) == 0) {
                            }
                            this.z.adler = new CRC32();
                            this.mode = 7;
                        }
                    } catch (Return e10) {
                        return e10.r;
                    }
                    break;
                default:
                    return -2;
            }
        }
    }

    public int inflateEnd() {
        InfBlocks infBlocks = this.blocks;
        if (infBlocks != null) {
            infBlocks.free();
            return 0;
        }
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0030, code lost:
    
        if (r7 < 48) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int inflateInit(int i) {
        ZStream zStream = this.z;
        zStream.msg = null;
        this.blocks = null;
        this.wrap = 0;
        if (i < 0) {
            i = -i;
        } else if ((1073741824 & i) != 0) {
            this.wrap = 4;
            int i2 = (-1073741825) & i;
            if (i2 >= 48) {
                i = i2;
            }
            i &= 15;
        } else {
            if ((i & (-32)) != 0) {
                this.wrap = 4;
            } else {
                this.wrap = (i >> 4) + 1;
            }
            i &= 15;
        }
        if (i >= 8 && i <= 15) {
            this.wbits = i;
            this.blocks = new InfBlocks(zStream, 1 << i);
            inflateReset();
            return 0;
        }
        inflateEnd();
        return -2;
    }

    public int inflateReset() {
        ZStream zStream = this.z;
        if (zStream == null) {
            return -2;
        }
        zStream.total_out = 0L;
        zStream.total_in = 0L;
        zStream.msg = null;
        this.mode = 14;
        this.need_bytes = -1;
        this.blocks.reset();
        return 0;
    }

    public int inflateSetDictionary(byte[] bArr, int i) {
        int i2;
        int i3;
        ZStream zStream = this.z;
        if (zStream != null) {
            int i4 = this.mode;
            if (i4 == 6 || this.wrap == 0) {
                if (i4 == 6) {
                    long value = zStream.adler.getValue();
                    this.z.adler.reset();
                    this.z.adler.update(bArr, 0, i);
                    if (this.z.adler.getValue() != value) {
                        return -3;
                    }
                }
                this.z.adler.reset();
                int i5 = this.wbits;
                if (i >= (1 << i5)) {
                    i2 = (1 << i5) - 1;
                    i3 = i - i2;
                } else {
                    i2 = i;
                    i3 = 0;
                }
                this.blocks.set_dictionary(bArr, i3, i2);
                this.mode = 7;
                return 0;
            }
            return -2;
        }
        return -2;
    }

    public int inflateSync() {
        ZStream zStream = this.z;
        if (zStream == null) {
            return -2;
        }
        if (this.mode != 13) {
            this.mode = 13;
            this.marker = 0;
        }
        int i = zStream.avail_in;
        if (i == 0) {
            return -5;
        }
        int i2 = zStream.next_in_index;
        int i3 = this.marker;
        while (i != 0 && i3 < 4) {
            byte b = this.z.next_in[i2];
            if (b == mark[i3]) {
                i3++;
            } else if (b != 0) {
                i3 = 0;
            } else {
                i3 = 4 - i3;
            }
            i2++;
            i--;
        }
        ZStream zStream2 = this.z;
        long j = zStream2.total_in + (i2 - zStream2.next_in_index);
        zStream2.total_in = j;
        zStream2.next_in_index = i2;
        zStream2.avail_in = i;
        this.marker = i3;
        if (i3 != 4) {
            return -3;
        }
        long j2 = zStream2.total_out;
        inflateReset();
        ZStream zStream3 = this.z;
        zStream3.total_in = j;
        zStream3.total_out = j2;
        this.mode = 7;
        return 0;
    }

    public int inflateSyncPoint() {
        InfBlocks infBlocks;
        if (this.z != null && (infBlocks = this.blocks) != null) {
            return infBlocks.sync_point();
        }
        return -2;
    }

    private int readBytes(int i, int i2) {
        if (this.tmp_string == null) {
            this.tmp_string = new ByteArrayOutputStream();
        }
        while (this.need > 0) {
            ZStream zStream = this.z;
            int i3 = zStream.avail_in;
            if (i3 != 0) {
                zStream.avail_in = i3 - 1;
                zStream.total_in++;
                byte[] bArr = zStream.next_in;
                int i4 = zStream.next_in_index;
                byte b = bArr[i4];
                this.tmp_string.write(bArr, i4, 1);
                ZStream zStream2 = this.z;
                zStream2.adler.update(zStream2.next_in, zStream2.next_in_index, 1);
                this.z.next_in_index++;
                this.need--;
                i = i2;
            } else {
                throw new Return(i);
            }
        }
        return i;
    }
}
