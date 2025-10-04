package com.jcraft.jzlib;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.UnsupportedEncodingException;

/* loaded from: classes3.dex */
public class GZIPHeader implements Cloneable {
    public static final byte OS_AMIGA = 1;
    public static final byte OS_ATARI = 5;
    public static final byte OS_CPM = 9;
    public static final byte OS_MACOS = 7;
    public static final byte OS_MSDOS = 0;
    public static final byte OS_OS2 = 6;
    public static final byte OS_QDOS = 12;
    public static final byte OS_RISCOS = 13;
    public static final byte OS_TOPS20 = 10;
    public static final byte OS_UNIX = 3;
    public static final byte OS_UNKNOWN = -1;
    public static final byte OS_VMCMS = 4;
    public static final byte OS_VMS = 2;
    public static final byte OS_WIN32 = 11;
    public static final byte OS_ZSYSTEM = 8;
    byte[] comment;
    long crc;
    byte[] extra;
    int hcrc;
    byte[] name;
    long time;
    int xflags;
    boolean text = false;
    private boolean fhcrc = false;
    int os = 255;
    boolean done = false;
    long mtime = 0;

    public Object clone() {
        GZIPHeader gZIPHeader = (GZIPHeader) super.clone();
        byte[] bArr = gZIPHeader.extra;
        if (bArr != null) {
            int length = bArr.length;
            byte[] bArr2 = new byte[length];
            System.arraycopy(bArr, 0, bArr2, 0, length);
            gZIPHeader.extra = bArr2;
        }
        byte[] bArr3 = gZIPHeader.name;
        if (bArr3 != null) {
            int length2 = bArr3.length;
            byte[] bArr4 = new byte[length2];
            System.arraycopy(bArr3, 0, bArr4, 0, length2);
            gZIPHeader.name = bArr4;
        }
        byte[] bArr5 = gZIPHeader.comment;
        if (bArr5 != null) {
            int length3 = bArr5.length;
            byte[] bArr6 = new byte[length3];
            System.arraycopy(bArr5, 0, bArr6, 0, length3);
            gZIPHeader.comment = bArr6;
        }
        return gZIPHeader;
    }

    public long getCRC() {
        return this.crc;
    }

    public String getComment() {
        byte[] bArr = this.comment;
        if (bArr == null) {
            return new ObfuscatedString(new long[]{6249210397147382752L}).toString();
        }
        try {
            return new String(bArr, new ObfuscatedString(new long[]{-5352762551409579555L, 4554192166005271533L, -2123651651094591410L}).toString());
        } catch (UnsupportedEncodingException e) {
            throw new InternalError(e.toString());
        }
    }

    public long getModifiedTime() {
        return this.mtime;
    }

    public String getName() {
        byte[] bArr = this.name;
        if (bArr == null) {
            return new ObfuscatedString(new long[]{-6368482751738573039L}).toString();
        }
        try {
            return new String(bArr, new ObfuscatedString(new long[]{6939017173517949500L, 5703845052914374504L, 1987217982353922863L}).toString());
        } catch (UnsupportedEncodingException e) {
            throw new InternalError(e.toString());
        }
    }

    public int getOS() {
        return this.os;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void put(Deflate deflate) {
        int i;
        boolean z = this.text;
        boolean z2 = z;
        if (this.fhcrc) {
            z2 = (z ? 1 : 0) | 2;
        }
        boolean z3 = z2;
        if (this.extra != null) {
            z3 = (z2 ? 1 : 0) | 4;
        }
        boolean z4 = z3;
        if (this.name != null) {
            z4 = (z3 ? 1 : 0) | '\b';
        }
        int i2 = z4;
        if (this.comment != null) {
            i2 = (z4 ? 1 : 0) | 16;
        }
        int i3 = deflate.level;
        if (i3 == 1) {
            i = 4;
        } else if (i3 == 9) {
            i = 2;
        } else {
            i = 0;
        }
        deflate.put_short(-29921);
        deflate.put_byte((byte) 8);
        deflate.put_byte((byte) i2);
        deflate.put_byte((byte) this.mtime);
        deflate.put_byte((byte) (this.mtime >> 8));
        deflate.put_byte((byte) (this.mtime >> 16));
        deflate.put_byte((byte) (this.mtime >> 24));
        deflate.put_byte((byte) i);
        deflate.put_byte((byte) this.os);
        byte[] bArr = this.extra;
        if (bArr != null) {
            deflate.put_byte((byte) bArr.length);
            deflate.put_byte((byte) (this.extra.length >> 8));
            byte[] bArr2 = this.extra;
            deflate.put_byte(bArr2, 0, bArr2.length);
        }
        byte[] bArr3 = this.name;
        if (bArr3 != null) {
            deflate.put_byte(bArr3, 0, bArr3.length);
            deflate.put_byte((byte) 0);
        }
        byte[] bArr4 = this.comment;
        if (bArr4 != null) {
            deflate.put_byte(bArr4, 0, bArr4.length);
            deflate.put_byte((byte) 0);
        }
    }

    public void setCRC(long j) {
        this.crc = j;
    }

    public void setComment(String str) {
        try {
            this.comment = str.getBytes(new ObfuscatedString(new long[]{5543701586673105773L, 2780371280554392742L, -8242851326957849308L}).toString());
        } catch (UnsupportedEncodingException unused) {
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{-6876627868909145598L, 2964804092568358266L, -8562690980897362588L, 6266083303117430204L, 5790453344210035491L}).toString() + this.name);
        }
    }

    public void setModifiedTime(long j) {
        this.mtime = j;
    }

    public void setName(String str) {
        try {
            this.name = str.getBytes(new ObfuscatedString(new long[]{6179575320364152117L, 8296918497148021643L, -3861306442391568474L}).toString());
        } catch (UnsupportedEncodingException unused) {
            throw new IllegalArgumentException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-4139221548710127448L, -4810903973307058752L, -3405277889901461471L, -7919845818659423614L, -8620531549526516804L}), new StringBuilder(), str));
        }
    }

    public void setOS(int i) {
        if ((i >= 0 && i <= 13) || i == 255) {
            this.os = i;
        } else {
            throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-2057618548398262398L, 3781214633871386943L}), new StringBuilder(), i));
        }
    }
}
