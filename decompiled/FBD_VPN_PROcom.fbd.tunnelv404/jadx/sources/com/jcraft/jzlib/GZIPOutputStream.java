package com.jcraft.jzlib;

import com.panda912.muddy.ObfuscatedString;
import java.io.OutputStream;

/* loaded from: classes3.dex */
public class GZIPOutputStream extends DeflaterOutputStream {
    public GZIPOutputStream(OutputStream outputStream) {
        this(outputStream, 512);
    }

    private void check() {
        if (this.deflater.dstate.status == 42) {
        } else {
            throw new GZIPException(new ObfuscatedString(new long[]{-5980330084219702894L, -6435177508879487291L, -1796339978737656831L, 7214390478075268241L, -276424758999174022L}).toString());
        }
    }

    public long getCRC() {
        Deflate deflate = this.deflater.dstate;
        if (deflate.status == 666) {
            return deflate.getGZIPHeader().getCRC();
        }
        throw new GZIPException(new ObfuscatedString(new long[]{6654080963707149630L, -8905292014654092867L, 3127332464695016789L, 2308571099451230897L, -7466025951645826545L}).toString());
    }

    public void setComment(String str) {
        check();
        this.deflater.dstate.getGZIPHeader().setComment(str);
    }

    public void setModifiedTime(long j) {
        check();
        this.deflater.dstate.getGZIPHeader().setModifiedTime(j);
    }

    public void setName(String str) {
        check();
        this.deflater.dstate.getGZIPHeader().setName(str);
    }

    public void setOS(int i) {
        check();
        this.deflater.dstate.getGZIPHeader().setOS(i);
    }

    public GZIPOutputStream(OutputStream outputStream, int i) {
        this(outputStream, i, true);
    }

    public GZIPOutputStream(OutputStream outputStream, int i, boolean z) {
        this(outputStream, new Deflater(-1, 31), i, z);
        this.mydeflater = true;
    }

    public GZIPOutputStream(OutputStream outputStream, Deflater deflater, int i, boolean z) {
        super(outputStream, deflater, i, z);
    }
}
