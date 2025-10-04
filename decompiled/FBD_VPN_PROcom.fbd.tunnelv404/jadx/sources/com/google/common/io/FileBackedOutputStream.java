package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.errorprone.annotations.concurrent.GuardedBy;
import com.panda912.muddy.ObfuscatedString;
import j$.util.Objects;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
@Beta
@GwtIncompatible
/* loaded from: classes2.dex */
public final class FileBackedOutputStream extends OutputStream {

    @CheckForNull
    @GuardedBy("this")
    private File file;
    private final int fileThreshold;

    @CheckForNull
    @GuardedBy("this")
    private MemoryOutput memory;

    @GuardedBy("this")
    private OutputStream out;

    @CheckForNull
    private final File parentDirectory;
    private final boolean resetOnFinalize;
    private final ByteSource source;

    /* loaded from: classes2.dex */
    public static class MemoryOutput extends ByteArrayOutputStream {
        private MemoryOutput() {
        }

        public byte[] getBuffer() {
            return ((ByteArrayOutputStream) this).buf;
        }

        public int getCount() {
            return ((ByteArrayOutputStream) this).count;
        }
    }

    public FileBackedOutputStream(int i) {
        this(i, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized InputStream openInputStream() {
        if (this.file != null) {
            return new FileInputStream(this.file);
        }
        Objects.requireNonNull(this.memory);
        return new ByteArrayInputStream(this.memory.getBuffer(), 0, this.memory.getCount());
    }

    @GuardedBy("this")
    private void update(int i) {
        MemoryOutput memoryOutput = this.memory;
        if (memoryOutput != null && memoryOutput.getCount() + i > this.fileThreshold) {
            File createTempFile = File.createTempFile(new ObfuscatedString(new long[]{135842430388210248L, 3928803716422048189L, -4357928639118444104L, -5091188754155631302L}).toString(), null, this.parentDirectory);
            if (this.resetOnFinalize) {
                createTempFile.deleteOnExit();
            }
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
                fileOutputStream.write(this.memory.getBuffer(), 0, this.memory.getCount());
                fileOutputStream.flush();
                this.out = fileOutputStream;
                this.file = createTempFile;
                this.memory = null;
            } catch (IOException e) {
                createTempFile.delete();
                throw e;
            }
        }
    }

    public ByteSource asByteSource() {
        return this.source;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        this.out.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public synchronized void flush() {
        this.out.flush();
    }

    @VisibleForTesting
    @CheckForNull
    public synchronized File getFile() {
        return this.file;
    }

    public synchronized void reset() {
        try {
            close();
            MemoryOutput memoryOutput = this.memory;
            if (memoryOutput == null) {
                this.memory = new MemoryOutput();
            } else {
                memoryOutput.reset();
            }
            this.out = this.memory;
            File file = this.file;
            if (file != null) {
                this.file = null;
                if (!file.delete()) {
                    String valueOf = String.valueOf(file);
                    StringBuilder sb = new StringBuilder(valueOf.length() + 18);
                    sb.append(new ObfuscatedString(new long[]{3536413190066293342L, 7344139343959110321L, 567254666314422219L, 5651587122056100841L}).toString());
                    sb.append(valueOf);
                    throw new IOException(sb.toString());
                }
            }
        } catch (Throwable th) {
            if (this.memory == null) {
                this.memory = new MemoryOutput();
            } else {
                this.memory.reset();
            }
            this.out = this.memory;
            File file2 = this.file;
            if (file2 != null) {
                this.file = null;
                if (!file2.delete()) {
                    String valueOf2 = String.valueOf(file2);
                    StringBuilder sb2 = new StringBuilder(valueOf2.length() + 18);
                    sb2.append(new ObfuscatedString(new long[]{-9080658763795966879L, 409972585467828909L, 4449745205577709914L, -7276547976009678112L}).toString());
                    sb2.append(valueOf2);
                    throw new IOException(sb2.toString());
                }
            }
            throw th;
        } finally {
        }
    }

    @Override // java.io.OutputStream
    public synchronized void write(int i) {
        update(1);
        this.out.write(i);
    }

    public FileBackedOutputStream(int i, boolean z) {
        this(i, z, null);
    }

    private FileBackedOutputStream(int i, boolean z, @CheckForNull File file) {
        this.fileThreshold = i;
        this.resetOnFinalize = z;
        this.parentDirectory = file;
        MemoryOutput memoryOutput = new MemoryOutput();
        this.memory = memoryOutput;
        this.out = memoryOutput;
        if (z) {
            this.source = new ByteSource() { // from class: com.google.common.io.FileBackedOutputStream.1
                public void finalize() {
                    try {
                        FileBackedOutputStream.this.reset();
                    } catch (Throwable th) {
                        th.printStackTrace(System.err);
                    }
                }

                @Override // com.google.common.io.ByteSource
                public InputStream openStream() {
                    return FileBackedOutputStream.this.openInputStream();
                }
            };
        } else {
            this.source = new ByteSource() { // from class: com.google.common.io.FileBackedOutputStream.2
                @Override // com.google.common.io.ByteSource
                public InputStream openStream() {
                    return FileBackedOutputStream.this.openInputStream();
                }
            };
        }
    }

    @Override // java.io.OutputStream
    public synchronized void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public synchronized void write(byte[] bArr, int i, int i2) {
        update(i2);
        this.out.write(bArr, i, i2);
    }
}
