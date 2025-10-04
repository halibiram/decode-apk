package com.jcraft.jzlib;

import com.jcraft.jzlib.JZlib;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes3.dex */
public final class Deflater extends ZStream {
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
    private boolean finished;

    public Deflater() {
        this.finished = false;
    }

    public int copy(Deflater deflater) {
        this.finished = deflater.finished;
        return Deflate.deflateCopy(this, deflater);
    }

    @Override // com.jcraft.jzlib.ZStream
    public int deflate(int i) {
        Deflate deflate = this.dstate;
        if (deflate == null) {
            return -2;
        }
        int deflate2 = deflate.deflate(i);
        if (deflate2 == 1) {
            this.finished = true;
        }
        return deflate2;
    }

    @Override // com.jcraft.jzlib.ZStream
    public int end() {
        this.finished = true;
        Deflate deflate = this.dstate;
        if (deflate == null) {
            return -2;
        }
        int deflateEnd = deflate.deflateEnd();
        this.dstate = null;
        free();
        return deflateEnd;
    }

    @Override // com.jcraft.jzlib.ZStream
    public boolean finished() {
        return this.finished;
    }

    public int init(int i) {
        return init(i, 15);
    }

    public int params(int i, int i2) {
        Deflate deflate = this.dstate;
        if (deflate == null) {
            return -2;
        }
        return deflate.deflateParams(i, i2);
    }

    public int setDictionary(byte[] bArr, int i) {
        Deflate deflate = this.dstate;
        if (deflate == null) {
            return -2;
        }
        return deflate.deflateSetDictionary(bArr, i);
    }

    public int init(int i, boolean z) {
        return init(i, 15, z);
    }

    public Deflater(int i) {
        this(i, 15);
    }

    public int init(int i, int i2) {
        return init(i, i2, false);
    }

    public Deflater(int i, boolean z) {
        this(i, 15, z);
    }

    public int init(int i, int i2, int i3, JZlib.WrapperType wrapperType) {
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
        return init(i, i2, i3);
    }

    public Deflater(int i, int i2) {
        this(i, i2, false);
    }

    public Deflater(int i, int i2, boolean z) {
        this.finished = false;
        int init = init(i, i2, z);
        if (init == 0) {
            return;
        }
        StringBuilder m3340x952a0a9e = AbstractC0749x8313616e.m3340x952a0a9e(init);
        m3340x952a0a9e.append(new ObfuscatedString(new long[]{-5691117272901393641L, -8126047807621621828L}).toString());
        m3340x952a0a9e.append(this.msg);
        throw new GZIPException(m3340x952a0a9e.toString());
    }

    public int init(int i, int i2, int i3) {
        this.finished = false;
        Deflate deflate = new Deflate(this);
        this.dstate = deflate;
        return deflate.deflateInit(i, i2, i3);
    }

    public int init(int i, int i2, boolean z) {
        this.finished = false;
        Deflate deflate = new Deflate(this);
        this.dstate = deflate;
        if (z) {
            i2 = -i2;
        }
        return deflate.deflateInit(i, i2);
    }

    public Deflater(int i, int i2, int i3, JZlib.WrapperType wrapperType) {
        this.finished = false;
        int init = init(i, i2, i3, wrapperType);
        if (init == 0) {
            return;
        }
        StringBuilder m3340x952a0a9e = AbstractC0749x8313616e.m3340x952a0a9e(init);
        m3340x952a0a9e.append(new ObfuscatedString(new long[]{-6871666474055873855L, -8803369693152456939L}).toString());
        m3340x952a0a9e.append(this.msg);
        throw new GZIPException(m3340x952a0a9e.toString());
    }

    public Deflater(int i, int i2, int i3) {
        this.finished = false;
        int init = init(i, i2, i3);
        if (init == 0) {
            return;
        }
        StringBuilder m3340x952a0a9e = AbstractC0749x8313616e.m3340x952a0a9e(init);
        m3340x952a0a9e.append(new ObfuscatedString(new long[]{-8011930326476948262L, 2636759548238551263L}).toString());
        m3340x952a0a9e.append(this.msg);
        throw new GZIPException(m3340x952a0a9e.toString());
    }
}
