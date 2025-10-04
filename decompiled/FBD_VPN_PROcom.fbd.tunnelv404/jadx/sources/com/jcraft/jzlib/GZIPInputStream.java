package com.jcraft.jzlib;

import com.panda912.muddy.ObfuscatedString;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes3.dex */
public class GZIPInputStream extends InflaterInputStream {
    public GZIPInputStream(InputStream inputStream) {
        this(inputStream, 512, true);
    }

    private int fill(byte[] bArr) {
        int i;
        int length = bArr.length;
        int i2 = 0;
        do {
            try {
                i = ((FilterInputStream) this).in.read(bArr, i2, bArr.length - i2);
            } catch (IOException unused) {
                i = -1;
            }
            if (i == -1) {
                break;
            }
            i2 += i;
        } while (i2 < length);
        return i2;
    }

    public long getCRC() {
        Inflate inflate = this.inflater.istate;
        if (inflate.mode == 12) {
            return inflate.getGZIPHeader().getCRC();
        }
        throw new GZIPException(new ObfuscatedString(new long[]{5408703815749010299L, -7128197811444365780L, -5069567188878978760L, -1740782082940109572L, -4310951316826748579L}).toString());
    }

    public String getComment() {
        return this.inflater.istate.getGZIPHeader().getComment();
    }

    public long getModifiedtime() {
        return this.inflater.istate.getGZIPHeader().getModifiedTime();
    }

    public String getName() {
        return this.inflater.istate.getGZIPHeader().getName();
    }

    public int getOS() {
        return this.inflater.istate.getGZIPHeader().getOS();
    }

    @Override // com.jcraft.jzlib.InflaterInputStream
    public void readHeader() {
        byte[] bArr;
        int fill;
        byte[] bytes = new ObfuscatedString(new long[]{-2034535954849575777L}).toString().getBytes();
        this.inflater.setOutput(bytes, 0, 0);
        this.inflater.setInput(bytes, 0, 0, false);
        byte[] bArr2 = new byte[10];
        int fill2 = fill(bArr2);
        if (fill2 != 10) {
            if (fill2 > 0) {
                this.inflater.setInput(bArr2, 0, fill2, false);
                Inflater inflater = this.inflater;
                inflater.next_in_index = 0;
                inflater.avail_in = fill2;
            }
            throw new IOException(new ObfuscatedString(new long[]{511000348371219106L, 6915129495132934445L}).toString());
        }
        this.inflater.setInput(bArr2, 0, fill2, false);
        byte[] bArr3 = new byte[1];
        do {
            if (this.inflater.avail_in <= 0) {
                if (((FilterInputStream) this).in.read(bArr3) > 0) {
                    this.inflater.setInput(bArr3, 0, 1, true);
                } else {
                    throw new IOException(new ObfuscatedString(new long[]{-7452678346760717810L, -401196367736788669L}).toString());
                }
            }
            if (this.inflater.inflate(0) != 0) {
                int length = 2048 - this.inflater.next_in.length;
                if (length > 0 && (fill = fill((bArr = new byte[length]))) > 0) {
                    Inflater inflater2 = this.inflater;
                    inflater2.avail_in += inflater2.next_in_index;
                    inflater2.next_in_index = 0;
                    inflater2.setInput(bArr, 0, fill, true);
                }
                Inflater inflater3 = this.inflater;
                inflater3.avail_in += inflater3.next_in_index;
                inflater3.next_in_index = 0;
                throw new IOException(this.inflater.msg);
            }
        } while (this.inflater.istate.inParsingHeader());
    }

    public GZIPInputStream(InputStream inputStream, int i, boolean z) {
        this(inputStream, new Inflater(31), i, z);
        this.myinflater = true;
    }

    public GZIPInputStream(InputStream inputStream, Inflater inflater, int i, boolean z) {
        super(inputStream, inflater, i, z);
    }
}
