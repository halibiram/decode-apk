package com.jcraft.jzlib;

import com.jcraft.jzlib.JZlib;

@Deprecated
/* loaded from: classes3.dex */
public class ZStream {
    private static final int DEF_WBITS = 15;
    private static final int MAX_MEM_LEVEL = 9;
    private static final int MAX_WBITS = 15;
    private static final int Z_BUF_ERROR = -5;
    private static final int Z_DATA_ERROR = -3;
    private static final int Z_ERRNO = -1;
    private static final int Z_FINISH = 4;
    private static final int Z_FULL_FLUSH = 3;
    private static final int Z_MEM_ERROR = -4;
    private static final int Z_NEED_DICT = 2;
    private static final int Z_NO_FLUSH = 0;
    private static final int Z_OK = 0;
    private static final int Z_PARTIAL_FLUSH = 1;
    private static final int Z_STREAM_END = 1;
    private static final int Z_STREAM_ERROR = -2;
    private static final int Z_SYNC_FLUSH = 2;
    private static final int Z_VERSION_ERROR = -6;
    Checksum adler;
    public int avail_in;
    public int avail_out;
    int data_type;
    Deflate dstate;
    Inflate istate;
    public String msg;
    public byte[] next_in;
    public int next_in_index;
    public byte[] next_out;
    public int next_out_index;
    public long total_in;
    public long total_out;

    public ZStream() {
        this(new Adler32());
    }

    public int deflate(int i) {
        Deflate deflate = this.dstate;
        if (deflate == null) {
            return -2;
        }
        return deflate.deflate(i);
    }

    public int deflateEnd() {
        Deflate deflate = this.dstate;
        if (deflate == null) {
            return -2;
        }
        int deflateEnd = deflate.deflateEnd();
        this.dstate = null;
        return deflateEnd;
    }

    public int deflateInit(int i) {
        return deflateInit(i, 15);
    }

    public int deflateParams(int i, int i2) {
        Deflate deflate = this.dstate;
        if (deflate == null) {
            return -2;
        }
        return deflate.deflateParams(i, i2);
    }

    public int deflateSetDictionary(byte[] bArr, int i) {
        Deflate deflate = this.dstate;
        if (deflate == null) {
            return -2;
        }
        return deflate.deflateSetDictionary(bArr, i);
    }

    public int end() {
        return 0;
    }

    public boolean finished() {
        return false;
    }

    public void flush_pending() {
        Deflate deflate = this.dstate;
        int i = deflate.pending;
        int i2 = this.avail_out;
        if (i > i2) {
            i = i2;
        }
        if (i == 0) {
            return;
        }
        byte[] bArr = deflate.pending_buf;
        int length = bArr.length;
        int i3 = deflate.pending_out;
        if (length > i3) {
            byte[] bArr2 = this.next_out;
            if (bArr2.length > this.next_out_index && bArr.length >= i3 + i) {
                int length2 = bArr2.length;
            }
        }
        System.arraycopy(bArr, i3, this.next_out, this.next_out_index, i);
        this.next_out_index += i;
        Deflate deflate2 = this.dstate;
        deflate2.pending_out += i;
        this.total_out += i;
        this.avail_out -= i;
        int i4 = deflate2.pending - i;
        deflate2.pending = i4;
        if (i4 == 0) {
            deflate2.pending_out = 0;
        }
    }

    public void free() {
        this.next_in = null;
        this.next_out = null;
        this.msg = null;
    }

    public long getAdler() {
        return this.adler.getValue();
    }

    public int getAvailIn() {
        return this.avail_in;
    }

    public int getAvailOut() {
        return this.avail_out;
    }

    public String getMessage() {
        return this.msg;
    }

    public byte[] getNextIn() {
        return this.next_in;
    }

    public int getNextInIndex() {
        return this.next_in_index;
    }

    public byte[] getNextOut() {
        return this.next_out;
    }

    public int getNextOutIndex() {
        return this.next_out_index;
    }

    public long getTotalIn() {
        return this.total_in;
    }

    public long getTotalOut() {
        return this.total_out;
    }

    public int inflate(int i) {
        Inflate inflate = this.istate;
        if (inflate == null) {
            return -2;
        }
        return inflate.inflate(i);
    }

    public int inflateEnd() {
        Inflate inflate = this.istate;
        if (inflate == null) {
            return -2;
        }
        return inflate.inflateEnd();
    }

    public boolean inflateFinished() {
        if (this.istate.mode == 12) {
            return true;
        }
        return false;
    }

    public int inflateInit() {
        return inflateInit(15);
    }

    public int inflateSetDictionary(byte[] bArr, int i) {
        Inflate inflate = this.istate;
        if (inflate == null) {
            return -2;
        }
        return inflate.inflateSetDictionary(bArr, i);
    }

    public int inflateSync() {
        Inflate inflate = this.istate;
        if (inflate == null) {
            return -2;
        }
        return inflate.inflateSync();
    }

    public int inflateSyncPoint() {
        Inflate inflate = this.istate;
        if (inflate == null) {
            return -2;
        }
        return inflate.inflateSyncPoint();
    }

    public int read_buf(byte[] bArr, int i, int i2) {
        int i3 = this.avail_in;
        if (i3 <= i2) {
            i2 = i3;
        }
        if (i2 == 0) {
            return 0;
        }
        this.avail_in = i3 - i2;
        if (this.dstate.wrap != 0) {
            this.adler.update(this.next_in, this.next_in_index, i2);
        }
        System.arraycopy(this.next_in, this.next_in_index, bArr, i, i2);
        this.next_in_index += i2;
        this.total_in += i2;
        return i2;
    }

    public void setAvailIn(int i) {
        this.avail_in = i;
    }

    public void setAvailOut(int i) {
        this.avail_out = i;
    }

    public void setInput(byte[] bArr) {
        setInput(bArr, 0, bArr.length, false);
    }

    public void setNextIn(byte[] bArr) {
        this.next_in = bArr;
    }

    public void setNextInIndex(int i) {
        this.next_in_index = i;
    }

    public void setNextOut(byte[] bArr) {
        this.next_out = bArr;
    }

    public void setNextOutIndex(int i) {
        this.next_out_index = i;
    }

    public void setOutput(byte[] bArr) {
        setOutput(bArr, 0, bArr.length);
    }

    public ZStream(Checksum checksum) {
        this.adler = checksum;
    }

    public int deflateInit(int i, boolean z) {
        return deflateInit(i, 15, z);
    }

    public int inflateInit(boolean z) {
        return inflateInit(15, z);
    }

    public void setInput(byte[] bArr, boolean z) {
        setInput(bArr, 0, bArr.length, z);
    }

    public void setOutput(byte[] bArr, int i, int i2) {
        this.next_out = bArr;
        this.next_out_index = i;
        this.avail_out = i2;
    }

    public int deflateInit(int i, int i2) {
        return deflateInit(i, i2, false);
    }

    public int inflateInit(int i) {
        return inflateInit(i, false);
    }

    public void setInput(byte[] bArr, int i, int i2, boolean z) {
        if (i2 > 0 || !z || this.next_in == null) {
            int i3 = this.avail_in;
            if (i3 > 0 && z) {
                byte[] bArr2 = new byte[i3 + i2];
                System.arraycopy(this.next_in, this.next_in_index, bArr2, 0, i3);
                System.arraycopy(bArr, i, bArr2, this.avail_in, i2);
                this.next_in = bArr2;
                this.next_in_index = 0;
                this.avail_in += i2;
                return;
            }
            this.next_in = bArr;
            this.next_in_index = i;
            this.avail_in = i2;
        }
    }

    public int deflateInit(int i, int i2, int i3, JZlib.WrapperType wrapperType) {
        if (i2 < 9 || i2 > 15) {
            return -2;
        }
        if (wrapperType == JZlib.W_NONE) {
            i2 *= -1;
        } else if (wrapperType == JZlib.W_GZIP) {
            i2 += 16;
        } else if (wrapperType == JZlib.W_ANY) {
            return -2;
        }
        return deflateInit(i, i2, i3);
    }

    public int inflateInit(JZlib.WrapperType wrapperType) {
        return inflateInit(15, wrapperType);
    }

    public int inflateInit(int i, JZlib.WrapperType wrapperType) {
        boolean z;
        if (wrapperType == JZlib.W_NONE) {
            z = true;
        } else {
            if (wrapperType == JZlib.W_GZIP) {
                i += 16;
            } else if (wrapperType == JZlib.W_ANY) {
                i |= 1073741824;
            }
            z = false;
        }
        return inflateInit(i, z);
    }

    public int deflateInit(int i, int i2, int i3) {
        Deflate deflate = new Deflate(this);
        this.dstate = deflate;
        return deflate.deflateInit(i, i2, i3);
    }

    public int inflateInit(int i, boolean z) {
        Inflate inflate = new Inflate(this);
        this.istate = inflate;
        if (z) {
            i = -i;
        }
        return inflate.inflateInit(i);
    }

    public int deflateInit(int i, int i2, boolean z) {
        Deflate deflate = new Deflate(this);
        this.dstate = deflate;
        if (z) {
            i2 = -i2;
        }
        return deflate.deflateInit(i, i2);
    }
}
