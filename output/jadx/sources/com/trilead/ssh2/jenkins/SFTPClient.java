package com.trilead.ssh2.jenkins;

import com.panda912.muddy.ObfuscatedString;
import com.trilead.ssh2.Connection;
import com.trilead.ssh2.SFTPException;
import com.trilead.ssh2.SFTPv3Client;
import com.trilead.ssh2.SFTPv3FileAttributes;
import com.trilead.ssh2.SFTPv3FileHandle;
import defpackage.AbstractC0749x8313616e;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes3.dex */
public class SFTPClient extends SFTPv3Client {

    /* loaded from: classes3.dex */
    public class SFTPOutputStream extends OutputStream {
        private final SFTPv3FileHandle h;
        private long offset = 0;

        public SFTPOutputStream(SFTPv3FileHandle sFTPv3FileHandle) {
            this.h = sFTPv3FileHandle;
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            SFTPClient.this.closeFile(this.h);
        }

        @Override // java.io.OutputStream
        public void write(int i) {
            write(new byte[]{(byte) i});
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) {
            SFTPClient.this.write(this.h, this.offset, bArr, i, i2);
            this.offset += i2;
        }
    }

    public SFTPClient(Connection connection) {
        super(connection);
    }

    @Override // com.trilead.ssh2.SFTPv3Client
    public SFTPv3FileAttributes _stat(String str) {
        try {
            return stat(str);
        } catch (SFTPException e) {
            int serverErrorCode = e.getServerErrorCode();
            if (serverErrorCode != 2 && serverErrorCode != 10) {
                throw e;
            }
            return null;
        }
    }

    @Override // com.trilead.ssh2.SFTPv3Client
    public void chmod(String str, int i) {
        SFTPv3FileAttributes sFTPv3FileAttributes = new SFTPv3FileAttributes();
        sFTPv3FileAttributes.permissions = Integer.valueOf(i);
        setstat(str, sFTPv3FileAttributes);
    }

    @Override // com.trilead.ssh2.SFTPv3Client
    public boolean exists(String str) {
        if (_stat(str) != null) {
            return true;
        }
        return false;
    }

    @Override // com.trilead.ssh2.SFTPv3Client
    public void mkdirs(String str, int i) {
        SFTPv3FileAttributes _stat = _stat(str);
        if (_stat != null && _stat.isDirectory()) {
            return;
        }
        int lastIndexOf = str.lastIndexOf(47);
        if (lastIndexOf > 0) {
            mkdirs(str.substring(0, lastIndexOf), i);
        }
        try {
            mkdir(str, i);
        } catch (IOException e) {
            throw new IOException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-371068392105750841L, 4344686170804171216L, -1367768618046856997L}), new StringBuilder(), str), e);
        }
    }

    @Override // com.trilead.ssh2.SFTPv3Client
    public InputStream read(String str) {
        return new SFTPInputStream(openFileRO(str));
    }

    @Override // com.trilead.ssh2.SFTPv3Client
    public OutputStream writeToFile(String str) {
        return new SFTPOutputStream(createFile(str));
    }

    /* loaded from: classes3.dex */
    public class SFTPInputStream extends InputStream {
        private final SFTPv3FileHandle h;
        private long offset = 0;

        public SFTPInputStream(SFTPv3FileHandle sFTPv3FileHandle) {
            this.h = sFTPv3FileHandle;
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            SFTPClient.this.closeFile(this.h);
        }

        @Override // java.io.InputStream
        public int read() {
            byte[] bArr = new byte[1];
            if (read(bArr) < 0) {
                return -1;
            }
            return bArr[0];
        }

        @Override // java.io.InputStream
        public long skip(long j) {
            this.offset += j;
            return j;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) {
            int read = SFTPClient.this.read(this.h, this.offset, bArr, i, i2);
            if (read < 0) {
                return -1;
            }
            this.offset += read;
            return read;
        }
    }
}
