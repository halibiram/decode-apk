package com.trilead.ssh2.packets;

import com.panda912.muddy.ObfuscatedString;
import com.trilead.ssh2.util.Tokenizer;
import java.io.IOException;
import java.math.BigInteger;

/* loaded from: classes3.dex */
public class TypesReader {
    byte[] arr;
    int max;
    int pos;

    public TypesReader(byte[] bArr) {
        this.arr = bArr;
        this.pos = 0;
        this.max = bArr.length;
    }

    public boolean readBoolean() {
        int i = this.pos;
        if (i < this.max) {
            byte[] bArr = this.arr;
            this.pos = i + 1;
            if (bArr[i] != 0) {
                return true;
            }
            return false;
        }
        throw new IOException(new ObfuscatedString(new long[]{5734717613400673450L, -1642650238166806033L, -5844741971004380660L, 1271278952444519451L}).toString());
    }

    public int readByte() {
        int i = this.pos;
        if (i < this.max) {
            byte[] bArr = this.arr;
            this.pos = i + 1;
            return bArr[i] & 255;
        }
        throw new IOException(new ObfuscatedString(new long[]{-3892275984887805121L, 3129057530081340213L, 1301296647128836740L, 1497188234771380420L}).toString());
    }

    public byte[] readByteString() {
        int readUINT32 = readUINT32();
        int i = this.pos;
        if (readUINT32 + i <= this.max) {
            byte[] bArr = new byte[readUINT32];
            System.arraycopy(this.arr, i, bArr, 0, readUINT32);
            this.pos += readUINT32;
            return bArr;
        }
        throw new IOException(new ObfuscatedString(new long[]{8557758792384082614L, -2534064237819749261L, 6662720147469687982L, 1847634190745933805L, -4391973223102340621L}).toString());
    }

    public byte[] readBytes(int i) {
        int i2 = this.pos;
        if (i2 + i <= this.max) {
            byte[] bArr = new byte[i];
            System.arraycopy(this.arr, i2, bArr, 0, i);
            this.pos += i;
            return bArr;
        }
        throw new IOException(new ObfuscatedString(new long[]{-3448688858003889193L, -6296589229129705493L, -4288195586206875338L, 1440700305713549444L}).toString());
    }

    public BigInteger readMPINT() {
        byte[] readByteString = readByteString();
        if (readByteString.length == 0) {
            return BigInteger.ZERO;
        }
        return new BigInteger(readByteString);
    }

    public String[] readNameList() {
        return Tokenizer.parseTokens(readString(), ',');
    }

    public String readString(String str) {
        int readUINT32 = readUINT32();
        int i = this.pos;
        if (readUINT32 + i <= this.max) {
            String str2 = str == null ? new String(this.arr, i, readUINT32) : new String(this.arr, i, readUINT32, str);
            this.pos += readUINT32;
            return str2;
        }
        throw new IOException(new ObfuscatedString(new long[]{643195964742442686L, 7943480614499029797L, -3247150026349940561L, -3094693388028054560L}).toString());
    }

    public int readUINT32() {
        int i = this.pos;
        if (i + 4 <= this.max) {
            byte[] bArr = this.arr;
            int i2 = i + 1;
            this.pos = i2;
            int i3 = (bArr[i] & 255) << 24;
            int i4 = i + 2;
            this.pos = i4;
            int i5 = ((bArr[i2] & 255) << 16) | i3;
            int i6 = i + 3;
            this.pos = i6;
            int i7 = i5 | ((bArr[i4] & 255) << 8);
            this.pos = i + 4;
            return (bArr[i6] & 255) | i7;
        }
        throw new IOException(new ObfuscatedString(new long[]{4098405384177853779L, -1213004856042317246L, -555676635458831698L, -7385060221330733301L}).toString());
    }

    public long readUINT64() {
        int i = this.pos;
        if (i + 8 <= this.max) {
            byte[] bArr = this.arr;
            int i2 = i + 1;
            this.pos = i2;
            int i3 = (bArr[i] & 255) << 24;
            int i4 = i + 2;
            this.pos = i4;
            int i5 = ((bArr[i2] & 255) << 16) | i3;
            int i6 = i + 3;
            this.pos = i6;
            int i7 = i5 | ((bArr[i4] & 255) << 8);
            int i8 = 4 + i;
            this.pos = i8;
            long j = i7 | (bArr[i6] & 255);
            int i9 = i + 5;
            this.pos = i9;
            int i10 = (bArr[i8] & 255) << 24;
            int i11 = i + 6;
            this.pos = i11;
            int i12 = i10 | ((bArr[i9] & 255) << 16);
            this.pos = i + 7;
            int i13 = i12 | ((bArr[i11] & 255) << 8);
            this.pos = i + 8;
            return ((i13 | (bArr[r5] & 255)) & 4294967295L) | (j << 32);
        }
        throw new IOException(new ObfuscatedString(new long[]{3058532076031004256L, -551337070359908698L, -6505139119093711268L, -4650346007451357046L}).toString());
    }

    public int remain() {
        return this.max - this.pos;
    }

    public TypesReader(byte[] bArr, int i) {
        this.arr = bArr;
        this.pos = i;
        this.max = bArr.length;
        if (i < 0 || i > bArr.length) {
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{8866481836459095706L, 9103573904572886107L, 4800805754441157206L}).toString());
        }
    }

    public void readBytes(byte[] bArr, int i, int i2) {
        int i3 = this.pos;
        if (i3 + i2 <= this.max) {
            System.arraycopy(this.arr, i3, bArr, i, i2);
            this.pos += i2;
            return;
        }
        throw new IOException(new ObfuscatedString(new long[]{8481241324562033488L, 175247359353225844L, -4013415208345988855L, -2051954270973607109L}).toString());
    }

    public String readString() {
        int readUINT32 = readUINT32();
        int i = this.pos;
        if (readUINT32 + i <= this.max) {
            String str = new String(this.arr, i, readUINT32, new ObfuscatedString(new long[]{8515461348726747136L, 2559882223258646758L, 8999239375585401503L}).toString());
            this.pos += readUINT32;
            return str;
        }
        throw new IOException(new ObfuscatedString(new long[]{-6590641213816362791L, 760466800895083955L, -8216493063551770260L, -8054837912312432217L}).toString());
    }

    public TypesReader(byte[] bArr, int i, int i2) {
        this.arr = bArr;
        this.pos = i;
        int i3 = i2 + i;
        this.max = i3;
        if (i >= 0 && i <= bArr.length) {
            if (i3 < 0 || i3 > bArr.length) {
                throw new IllegalArgumentException(new ObfuscatedString(new long[]{-8768684181010232066L, -6993684179195832172L, 8774333998723363948L}).toString());
            }
            return;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-2415510955029624077L, 7308097074379614071L, 8950745120845788811L}).toString());
    }
}
