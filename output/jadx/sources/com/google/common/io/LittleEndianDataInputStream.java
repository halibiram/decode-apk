package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import com.google.common.primitives.Longs;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.DoNotCall;
import com.panda912.muddy.ObfuscatedString;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.InputStream;

@ElementTypesAreNonnullByDefault
@Beta
@GwtIncompatible
/* loaded from: classes2.dex */
public final class LittleEndianDataInputStream extends FilterInputStream implements DataInput {
    public LittleEndianDataInputStream(InputStream inputStream) {
        super((InputStream) Preconditions.checkNotNull(inputStream));
    }

    private byte readAndCheckByte() {
        int read = ((FilterInputStream) this).in.read();
        if (-1 != read) {
            return (byte) read;
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    @CanIgnoreReturnValue
    public boolean readBoolean() {
        if (readUnsignedByte() != 0) {
            return true;
        }
        return false;
    }

    @Override // java.io.DataInput
    @CanIgnoreReturnValue
    public byte readByte() {
        return (byte) readUnsignedByte();
    }

    @Override // java.io.DataInput
    @CanIgnoreReturnValue
    public char readChar() {
        return (char) readUnsignedShort();
    }

    @Override // java.io.DataInput
    @CanIgnoreReturnValue
    public double readDouble() {
        return Double.longBitsToDouble(readLong());
    }

    @Override // java.io.DataInput
    @CanIgnoreReturnValue
    public float readFloat() {
        return Float.intBitsToFloat(readInt());
    }

    @Override // java.io.DataInput
    public void readFully(byte[] bArr) {
        ByteStreams.readFully(this, bArr);
    }

    @Override // java.io.DataInput
    @CanIgnoreReturnValue
    public int readInt() {
        byte readAndCheckByte = readAndCheckByte();
        byte readAndCheckByte2 = readAndCheckByte();
        return Ints.fromBytes(readAndCheckByte(), readAndCheckByte(), readAndCheckByte2, readAndCheckByte);
    }

    @Override // java.io.DataInput
    @CanIgnoreReturnValue
    @DoNotCall("Always throws UnsupportedOperationException")
    public String readLine() {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-4754005432397570319L, -6343408567340884841L, -2121226414897864216L, 946484727696832872L, -1902552629935075447L}).toString());
    }

    @Override // java.io.DataInput
    @CanIgnoreReturnValue
    public long readLong() {
        byte readAndCheckByte = readAndCheckByte();
        byte readAndCheckByte2 = readAndCheckByte();
        byte readAndCheckByte3 = readAndCheckByte();
        byte readAndCheckByte4 = readAndCheckByte();
        byte readAndCheckByte5 = readAndCheckByte();
        byte readAndCheckByte6 = readAndCheckByte();
        return Longs.fromBytes(readAndCheckByte(), readAndCheckByte(), readAndCheckByte6, readAndCheckByte5, readAndCheckByte4, readAndCheckByte3, readAndCheckByte2, readAndCheckByte);
    }

    @Override // java.io.DataInput
    @CanIgnoreReturnValue
    public short readShort() {
        return (short) readUnsignedShort();
    }

    @Override // java.io.DataInput
    @CanIgnoreReturnValue
    public String readUTF() {
        return new DataInputStream(((FilterInputStream) this).in).readUTF();
    }

    @Override // java.io.DataInput
    @CanIgnoreReturnValue
    public int readUnsignedByte() {
        int read = ((FilterInputStream) this).in.read();
        if (read >= 0) {
            return read;
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    @CanIgnoreReturnValue
    public int readUnsignedShort() {
        return Ints.fromBytes((byte) 0, (byte) 0, readAndCheckByte(), readAndCheckByte());
    }

    @Override // java.io.DataInput
    public int skipBytes(int i) {
        return (int) ((FilterInputStream) this).in.skip(i);
    }

    @Override // java.io.DataInput
    public void readFully(byte[] bArr, int i, int i2) {
        ByteStreams.readFully(this, bArr, i, i2);
    }
}
