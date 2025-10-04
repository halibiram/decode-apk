package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Ascii;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.hash.Funnels;
import com.google.common.hash.HashCode;
import com.google.common.hash.HashFunction;
import com.google.common.hash.Hasher;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import defpackage.AbstractC1320xaf50c7e8;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.Reader;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

@ElementTypesAreNonnullByDefault
@GwtIncompatible
/* loaded from: classes2.dex */
public abstract class ByteSource {

    /* loaded from: classes2.dex */
    public class AsCharSource extends CharSource {
        final Charset charset;

        public AsCharSource(Charset charset) {
            this.charset = (Charset) Preconditions.checkNotNull(charset);
        }

        @Override // com.google.common.io.CharSource
        public ByteSource asByteSource(Charset charset) {
            if (charset.equals(this.charset)) {
                return ByteSource.this;
            }
            return super.asByteSource(charset);
        }

        @Override // com.google.common.io.CharSource
        public Reader openStream() {
            return new InputStreamReader(ByteSource.this.openStream(), this.charset);
        }

        @Override // com.google.common.io.CharSource
        public String read() {
            return new String(ByteSource.this.read(), this.charset);
        }

        public String toString() {
            String obj = ByteSource.this.toString();
            String valueOf = String.valueOf(this.charset);
            StringBuilder m2938x1aebc6d9 = AbstractC0362x4440ab85.m2938x1aebc6d9(valueOf.length() + AbstractC1320xaf50c7e8.m4356x1378447b(15, obj), obj);
            m2938x1aebc6d9.append(new ObfuscatedString(new long[]{-7235301011252862450L, -3105886423606370674L, 1627465785599577182L}).toString());
            m2938x1aebc6d9.append(valueOf);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-620415521883143564L, 4765347749358340683L}), m2938x1aebc6d9);
        }
    }

    /* loaded from: classes2.dex */
    public static class ByteArrayByteSource extends ByteSource {
        final byte[] bytes;
        final int length;
        final int offset;

        public ByteArrayByteSource(byte[] bArr) {
            this(bArr, 0, bArr.length);
        }

        @Override // com.google.common.io.ByteSource
        public long copyTo(OutputStream outputStream) {
            outputStream.write(this.bytes, this.offset, this.length);
            return this.length;
        }

        @Override // com.google.common.io.ByteSource
        public HashCode hash(HashFunction hashFunction) {
            return hashFunction.hashBytes(this.bytes, this.offset, this.length);
        }

        @Override // com.google.common.io.ByteSource
        public boolean isEmpty() {
            if (this.length == 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.common.io.ByteSource
        public InputStream openBufferedStream() {
            return openStream();
        }

        @Override // com.google.common.io.ByteSource
        public InputStream openStream() {
            return new ByteArrayInputStream(this.bytes, this.offset, this.length);
        }

        @Override // com.google.common.io.ByteSource
        public byte[] read() {
            byte[] bArr = this.bytes;
            int i = this.offset;
            return Arrays.copyOfRange(bArr, i, this.length + i);
        }

        @Override // com.google.common.io.ByteSource
        public long size() {
            return this.length;
        }

        @Override // com.google.common.io.ByteSource
        public Optional<Long> sizeIfKnown() {
            return Optional.of(Long.valueOf(this.length));
        }

        @Override // com.google.common.io.ByteSource
        public ByteSource slice(long j, long j2) {
            boolean z;
            boolean z2 = false;
            if (j >= 0) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkArgument(z, new ObfuscatedString(new long[]{6582352015013565490L, 2373068713007836148L, -1532937427560284973L, -6555588242744486861L, 8776034027913951547L}).toString(), j);
            if (j2 >= 0) {
                z2 = true;
            }
            Preconditions.checkArgument(z2, new ObfuscatedString(new long[]{411715481825478965L, 722633210791277545L, -6387653797036823896L, -1473780354534665424L, 989130093585602749L}).toString(), j2);
            long min = Math.min(j, this.length);
            return new ByteArrayByteSource(this.bytes, this.offset + ((int) min), (int) Math.min(j2, this.length - min));
        }

        public String toString() {
            String truncate = Ascii.truncate(BaseEncoding.base16().encode(this.bytes, this.offset, this.length), 30, new ObfuscatedString(new long[]{3230593776718576367L, 4317504350537118185L}).toString());
            StringBuilder sb = new StringBuilder(AbstractC1320xaf50c7e8.m4356x1378447b(17, truncate));
            sb.append(new ObfuscatedString(new long[]{-6002529419461787759L, -1354638890617620369L, 1274877444667069303L}).toString());
            sb.append(truncate);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{2699264591988659483L, 672921238060515879L}), sb);
        }

        public ByteArrayByteSource(byte[] bArr, int i, int i2) {
            this.bytes = bArr;
            this.offset = i;
            this.length = i2;
        }

        @Override // com.google.common.io.ByteSource
        @ParametricNullness
        public <T> T read(ByteProcessor<T> byteProcessor) {
            byteProcessor.processBytes(this.bytes, this.offset, this.length);
            return byteProcessor.getResult();
        }
    }

    /* loaded from: classes2.dex */
    public static final class ConcatenatedByteSource extends ByteSource {
        final Iterable<? extends ByteSource> sources;

        public ConcatenatedByteSource(Iterable<? extends ByteSource> iterable) {
            this.sources = (Iterable) Preconditions.checkNotNull(iterable);
        }

        @Override // com.google.common.io.ByteSource
        public boolean isEmpty() {
            Iterator<? extends ByteSource> it = this.sources.iterator();
            while (it.hasNext()) {
                if (!it.next().isEmpty()) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.common.io.ByteSource
        public InputStream openStream() {
            return new MultiInputStream(this.sources.iterator());
        }

        @Override // com.google.common.io.ByteSource
        public long size() {
            Iterator<? extends ByteSource> it = this.sources.iterator();
            long j = 0;
            while (it.hasNext()) {
                j += it.next().size();
                if (j < 0) {
                    return Long.MAX_VALUE;
                }
            }
            return j;
        }

        @Override // com.google.common.io.ByteSource
        public Optional<Long> sizeIfKnown() {
            Iterable<? extends ByteSource> iterable = this.sources;
            if (!(iterable instanceof Collection)) {
                return Optional.absent();
            }
            Iterator<? extends ByteSource> it = iterable.iterator();
            long j = 0;
            while (it.hasNext()) {
                Optional<Long> sizeIfKnown = it.next().sizeIfKnown();
                if (!sizeIfKnown.isPresent()) {
                    return Optional.absent();
                }
                j += sizeIfKnown.get().longValue();
                if (j < 0) {
                    return Optional.of(Long.MAX_VALUE);
                }
            }
            return Optional.of(Long.valueOf(j));
        }

        public String toString() {
            String valueOf = String.valueOf(this.sources);
            StringBuilder sb = new StringBuilder(valueOf.length() + 19);
            sb.append(new ObfuscatedString(new long[]{5750430475841485207L, -1748355050911720185L, -1624211846995462861L, -3638879804985480593L}).toString());
            sb.append(valueOf);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-2367637016679910400L, 1791979539322566497L}), sb);
        }
    }

    /* loaded from: classes2.dex */
    public static final class EmptyByteSource extends ByteArrayByteSource {
        static final EmptyByteSource INSTANCE = new EmptyByteSource();

        public EmptyByteSource() {
            super(new byte[0]);
        }

        @Override // com.google.common.io.ByteSource
        public CharSource asCharSource(Charset charset) {
            Preconditions.checkNotNull(charset);
            return CharSource.empty();
        }

        @Override // com.google.common.io.ByteSource.ByteArrayByteSource, com.google.common.io.ByteSource
        public byte[] read() {
            return this.bytes;
        }

        @Override // com.google.common.io.ByteSource.ByteArrayByteSource
        public String toString() {
            return new ObfuscatedString(new long[]{-1572205994457469775L, 2121355473625371708L, -2155754673307573077L, -6583582789946528973L}).toString();
        }
    }

    /* loaded from: classes2.dex */
    public final class SlicedByteSource extends ByteSource {
        final long length;
        final long offset;

        public SlicedByteSource(long j, long j2) {
            boolean z;
            if (j >= 0) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkArgument(z, new ObfuscatedString(new long[]{8317597814330089323L, 2335426080093950511L, 4308094524732762823L, -6915347688107814537L, 1789856730450495494L}).toString(), j);
            Preconditions.checkArgument(j2 >= 0, new ObfuscatedString(new long[]{-2722658412447377810L, -8782658497993898970L, 6445264054302577340L, 4781009460396487610L, 3353043486112147139L}).toString(), j2);
            this.offset = j;
            this.length = j2;
        }

        private InputStream sliceStream(InputStream inputStream) {
            long j = this.offset;
            if (j > 0) {
                try {
                    if (ByteStreams.skipUpTo(inputStream, j) < this.offset) {
                        inputStream.close();
                        return new ByteArrayInputStream(new byte[0]);
                    }
                } finally {
                }
            }
            return ByteStreams.limit(inputStream, this.length);
        }

        @Override // com.google.common.io.ByteSource
        public boolean isEmpty() {
            if (this.length != 0 && !super.isEmpty()) {
                return false;
            }
            return true;
        }

        @Override // com.google.common.io.ByteSource
        public InputStream openBufferedStream() {
            return sliceStream(ByteSource.this.openBufferedStream());
        }

        @Override // com.google.common.io.ByteSource
        public InputStream openStream() {
            return sliceStream(ByteSource.this.openStream());
        }

        @Override // com.google.common.io.ByteSource
        public Optional<Long> sizeIfKnown() {
            Optional<Long> sizeIfKnown = ByteSource.this.sizeIfKnown();
            if (sizeIfKnown.isPresent()) {
                long longValue = sizeIfKnown.get().longValue();
                return Optional.of(Long.valueOf(Math.min(this.length, longValue - Math.min(this.offset, longValue))));
            }
            return Optional.absent();
        }

        @Override // com.google.common.io.ByteSource
        public ByteSource slice(long j, long j2) {
            boolean z;
            boolean z2 = false;
            if (j >= 0) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkArgument(z, new ObfuscatedString(new long[]{6272869345521277292L, 7900957114565682568L, 1849701385397579332L, -5990275289103699381L, 2346747823629118733L}).toString(), j);
            if (j2 >= 0) {
                z2 = true;
            }
            Preconditions.checkArgument(z2, new ObfuscatedString(new long[]{-1463666076731993604L, 4283898991728542731L, -5080910427176889863L, -6028181341814329492L, 4319254645157518482L}).toString(), j2);
            long j3 = this.length - j;
            if (j3 <= 0) {
                return ByteSource.empty();
            }
            return ByteSource.this.slice(this.offset + j, Math.min(j2, j3));
        }

        public String toString() {
            String obj = ByteSource.this.toString();
            long j = this.offset;
            long j2 = this.length;
            StringBuilder m2938x1aebc6d9 = AbstractC0362x4440ab85.m2938x1aebc6d9(AbstractC1320xaf50c7e8.m4356x1378447b(50, obj), obj);
            m2938x1aebc6d9.append(new ObfuscatedString(new long[]{-3070718497104975398L, -1071325403670207964L}).toString());
            m2938x1aebc6d9.append(j);
            m2938x1aebc6d9.append(new ObfuscatedString(new long[]{3032628780622611041L, -60396217837149578L}).toString());
            m2938x1aebc6d9.append(j2);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{2098754870449686695L, -2315595207501123222L}), m2938x1aebc6d9);
        }
    }

    public static ByteSource concat(Iterable<? extends ByteSource> iterable) {
        return new ConcatenatedByteSource(iterable);
    }

    private long countBySkipping(InputStream inputStream) {
        long j = 0;
        while (true) {
            long skipUpTo = ByteStreams.skipUpTo(inputStream, 2147483647L);
            if (skipUpTo > 0) {
                j += skipUpTo;
            } else {
                return j;
            }
        }
    }

    public static ByteSource empty() {
        return EmptyByteSource.INSTANCE;
    }

    public static ByteSource wrap(byte[] bArr) {
        return new ByteArrayByteSource(bArr);
    }

    public CharSource asCharSource(Charset charset) {
        return new AsCharSource(charset);
    }

    public boolean contentEquals(ByteSource byteSource) {
        int read;
        Preconditions.checkNotNull(byteSource);
        byte[] createBuffer = ByteStreams.createBuffer();
        byte[] createBuffer2 = ByteStreams.createBuffer();
        Closer create = Closer.create();
        try {
            InputStream inputStream = (InputStream) create.register(openStream());
            InputStream inputStream2 = (InputStream) create.register(byteSource.openStream());
            do {
                read = ByteStreams.read(inputStream, createBuffer, 0, createBuffer.length);
                if (read == ByteStreams.read(inputStream2, createBuffer2, 0, createBuffer2.length) && Arrays.equals(createBuffer, createBuffer2)) {
                }
                return false;
            } while (read == createBuffer.length);
            create.close();
            return true;
        } catch (Throwable th) {
            try {
                throw create.rethrow(th);
            } finally {
                create.close();
            }
        }
    }

    @CanIgnoreReturnValue
    public long copyTo(OutputStream outputStream) {
        Preconditions.checkNotNull(outputStream);
        try {
            return ByteStreams.copy((InputStream) Closer.create().register(openStream()), outputStream);
        } finally {
        }
    }

    public HashCode hash(HashFunction hashFunction) {
        Hasher newHasher = hashFunction.newHasher();
        copyTo(Funnels.asOutputStream(newHasher));
        return newHasher.hash();
    }

    public boolean isEmpty() {
        Optional<Long> sizeIfKnown = sizeIfKnown();
        boolean z = false;
        if (sizeIfKnown.isPresent()) {
            if (sizeIfKnown.get().longValue() != 0) {
                return false;
            }
            return true;
        }
        Closer create = Closer.create();
        try {
            if (((InputStream) create.register(openStream())).read() == -1) {
                z = true;
            }
            return z;
        } catch (Throwable th) {
            try {
                throw create.rethrow(th);
            } finally {
                create.close();
            }
        }
    }

    public InputStream openBufferedStream() {
        InputStream openStream = openStream();
        if (openStream instanceof BufferedInputStream) {
            return (BufferedInputStream) openStream;
        }
        return new BufferedInputStream(openStream);
    }

    public abstract InputStream openStream();

    public byte[] read() {
        byte[] byteArray;
        Closer create = Closer.create();
        try {
            InputStream inputStream = (InputStream) create.register(openStream());
            Optional<Long> sizeIfKnown = sizeIfKnown();
            if (sizeIfKnown.isPresent()) {
                byteArray = ByteStreams.toByteArray(inputStream, sizeIfKnown.get().longValue());
            } else {
                byteArray = ByteStreams.toByteArray(inputStream);
            }
            return byteArray;
        } catch (Throwable th) {
            try {
                throw create.rethrow(th);
            } finally {
                create.close();
            }
        }
    }

    public long size() {
        Optional<Long> sizeIfKnown = sizeIfKnown();
        if (sizeIfKnown.isPresent()) {
            return sizeIfKnown.get().longValue();
        }
        Closer create = Closer.create();
        try {
            return countBySkipping((InputStream) create.register(openStream()));
        } catch (IOException unused) {
            create.close();
            try {
                return ByteStreams.exhaust((InputStream) Closer.create().register(openStream()));
            } finally {
            }
        } finally {
        }
    }

    @Beta
    public Optional<Long> sizeIfKnown() {
        return Optional.absent();
    }

    public ByteSource slice(long j, long j2) {
        return new SlicedByteSource(j, j2);
    }

    public static ByteSource concat(Iterator<? extends ByteSource> it) {
        return concat(ImmutableList.copyOf(it));
    }

    public static ByteSource concat(ByteSource... byteSourceArr) {
        return concat(ImmutableList.copyOf(byteSourceArr));
    }

    @CanIgnoreReturnValue
    public long copyTo(ByteSink byteSink) {
        Preconditions.checkNotNull(byteSink);
        Closer create = Closer.create();
        try {
            return ByteStreams.copy((InputStream) create.register(openStream()), (OutputStream) create.register(byteSink.openStream()));
        } finally {
        }
    }

    @CanIgnoreReturnValue
    @Beta
    public <T> T read(ByteProcessor<T> byteProcessor) {
        Preconditions.checkNotNull(byteProcessor);
        try {
            return (T) ByteStreams.readBytes((InputStream) Closer.create().register(openStream()), byteProcessor);
        } finally {
        }
    }
}
