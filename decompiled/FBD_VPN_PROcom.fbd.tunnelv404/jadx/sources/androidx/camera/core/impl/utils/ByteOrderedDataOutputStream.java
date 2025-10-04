package androidx.camera.core.impl.utils;

import java.io.FilterOutputStream;
import java.io.OutputStream;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
class ByteOrderedDataOutputStream extends FilterOutputStream {
    private ByteOrder mByteOrder;
    final OutputStream mOutputStream;

    public ByteOrderedDataOutputStream(OutputStream outputStream, ByteOrder byteOrder) {
        super(outputStream);
        this.mOutputStream = outputStream;
        this.mByteOrder = byteOrder;
    }

    public void setByteOrder(ByteOrder byteOrder) {
        this.mByteOrder = byteOrder;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr) {
        this.mOutputStream.write(bArr);
    }

    public void writeByte(int i) {
        this.mOutputStream.write(i);
    }

    public void writeInt(int i) {
        ByteOrder byteOrder = this.mByteOrder;
        if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
            this.mOutputStream.write(i & 255);
            this.mOutputStream.write((i >>> 8) & 255);
            this.mOutputStream.write((i >>> 16) & 255);
            this.mOutputStream.write((i >>> 24) & 255);
            return;
        }
        if (byteOrder == ByteOrder.BIG_ENDIAN) {
            this.mOutputStream.write((i >>> 24) & 255);
            this.mOutputStream.write((i >>> 16) & 255);
            this.mOutputStream.write((i >>> 8) & 255);
            this.mOutputStream.write(i & 255);
        }
    }

    public void writeShort(short s) {
        ByteOrder byteOrder = this.mByteOrder;
        if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
            this.mOutputStream.write(s & 255);
            this.mOutputStream.write((s >>> 8) & 255);
        } else if (byteOrder == ByteOrder.BIG_ENDIAN) {
            this.mOutputStream.write((s >>> 8) & 255);
            this.mOutputStream.write(s & 255);
        }
    }

    public void writeUnsignedInt(long j) {
        writeInt((int) j);
    }

    public void writeUnsignedShort(int i) {
        writeShort((short) i);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        this.mOutputStream.write(bArr, i, i2);
    }
}
