package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Ascii;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.base.Splitter;
import com.google.common.collect.AbstractIterator;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import defpackage.AbstractC1320xaf50c7e8;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.Reader;
import java.io.StringReader;
import java.io.Writer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
@GwtIncompatible
/* loaded from: classes2.dex */
public abstract class CharSource {

    /* loaded from: classes2.dex */
    public final class AsByteSource extends ByteSource {
        final Charset charset;

        public AsByteSource(Charset charset) {
            this.charset = (Charset) Preconditions.checkNotNull(charset);
        }

        @Override // com.google.common.io.ByteSource
        public CharSource asCharSource(Charset charset) {
            if (charset.equals(this.charset)) {
                return CharSource.this;
            }
            return super.asCharSource(charset);
        }

        @Override // com.google.common.io.ByteSource
        public InputStream openStream() {
            return new ReaderInputStream(CharSource.this.openStream(), this.charset, 8192);
        }

        public String toString() {
            String obj = CharSource.this.toString();
            String valueOf = String.valueOf(this.charset);
            StringBuilder m2938x1aebc6d9 = AbstractC0362x4440ab85.m2938x1aebc6d9(valueOf.length() + AbstractC1320xaf50c7e8.m4356x1378447b(15, obj), obj);
            m2938x1aebc6d9.append(new ObfuscatedString(new long[]{-8748103844422943567L, 8604437769357709935L, 7324142929479485445L}).toString());
            m2938x1aebc6d9.append(valueOf);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-388696603421990725L, -3201029286527236659L}), m2938x1aebc6d9);
        }
    }

    /* loaded from: classes2.dex */
    public static class CharSequenceCharSource extends CharSource {
        private static final Splitter LINE_SPLITTER = Splitter.onPattern(new ObfuscatedString(new long[]{-6210411351022537604L, 78411154200285700L}).toString());
        protected final CharSequence seq;

        public CharSequenceCharSource(CharSequence charSequence) {
            this.seq = (CharSequence) Preconditions.checkNotNull(charSequence);
        }

        private Iterator<String> linesIterator() {
            return new AbstractIterator<String>() { // from class: com.google.common.io.CharSource.CharSequenceCharSource.1
                Iterator<String> lines;

                {
                    this.lines = CharSequenceCharSource.LINE_SPLITTER.split(CharSequenceCharSource.this.seq).iterator();
                }

                @Override // com.google.common.collect.AbstractIterator
                @CheckForNull
                public String computeNext() {
                    if (this.lines.hasNext()) {
                        String next = this.lines.next();
                        if (this.lines.hasNext() || !next.isEmpty()) {
                            return next;
                        }
                    }
                    return endOfData();
                }
            };
        }

        @Override // com.google.common.io.CharSource
        public boolean isEmpty() {
            if (this.seq.length() == 0) {
                return true;
            }
            return false;
        }

        @Override // com.google.common.io.CharSource
        public long length() {
            return this.seq.length();
        }

        @Override // com.google.common.io.CharSource
        public Optional<Long> lengthIfKnown() {
            return Optional.of(Long.valueOf(this.seq.length()));
        }

        @Override // com.google.common.io.CharSource
        public Reader openStream() {
            return new CharSequenceReader(this.seq);
        }

        @Override // com.google.common.io.CharSource
        public String read() {
            return this.seq.toString();
        }

        @Override // com.google.common.io.CharSource
        @CheckForNull
        public String readFirstLine() {
            Iterator<String> linesIterator = linesIterator();
            if (linesIterator.hasNext()) {
                return linesIterator.next();
            }
            return null;
        }

        @Override // com.google.common.io.CharSource
        public ImmutableList<String> readLines() {
            return ImmutableList.copyOf(linesIterator());
        }

        public String toString() {
            String truncate = Ascii.truncate(this.seq, 30, new ObfuscatedString(new long[]{5502062345117214189L, 5123406168043334685L}).toString());
            StringBuilder sb = new StringBuilder(AbstractC1320xaf50c7e8.m4356x1378447b(17, truncate));
            sb.append(new ObfuscatedString(new long[]{3307339643313477234L, -7787956370659080036L, 2772593196234007243L}).toString());
            sb.append(truncate);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-4248173047664454482L, -4952201121936669847L}), sb);
        }

        @Override // com.google.common.io.CharSource
        @ParametricNullness
        public <T> T readLines(LineProcessor<T> lineProcessor) {
            Iterator<String> linesIterator = linesIterator();
            while (linesIterator.hasNext() && lineProcessor.processLine(linesIterator.next())) {
            }
            return lineProcessor.getResult();
        }
    }

    /* loaded from: classes2.dex */
    public static final class ConcatenatedCharSource extends CharSource {
        private final Iterable<? extends CharSource> sources;

        public ConcatenatedCharSource(Iterable<? extends CharSource> iterable) {
            this.sources = (Iterable) Preconditions.checkNotNull(iterable);
        }

        @Override // com.google.common.io.CharSource
        public boolean isEmpty() {
            Iterator<? extends CharSource> it = this.sources.iterator();
            while (it.hasNext()) {
                if (!it.next().isEmpty()) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.common.io.CharSource
        public long length() {
            Iterator<? extends CharSource> it = this.sources.iterator();
            long j = 0;
            while (it.hasNext()) {
                j += it.next().length();
            }
            return j;
        }

        @Override // com.google.common.io.CharSource
        public Optional<Long> lengthIfKnown() {
            Iterator<? extends CharSource> it = this.sources.iterator();
            long j = 0;
            while (it.hasNext()) {
                Optional<Long> lengthIfKnown = it.next().lengthIfKnown();
                if (!lengthIfKnown.isPresent()) {
                    return Optional.absent();
                }
                j += lengthIfKnown.get().longValue();
            }
            return Optional.of(Long.valueOf(j));
        }

        @Override // com.google.common.io.CharSource
        public Reader openStream() {
            return new MultiReader(this.sources.iterator());
        }

        public String toString() {
            String valueOf = String.valueOf(this.sources);
            StringBuilder sb = new StringBuilder(valueOf.length() + 19);
            sb.append(new ObfuscatedString(new long[]{-4819198171763350888L, -493667945744337516L, 4285982333665033578L, 3941126199653619335L}).toString());
            sb.append(valueOf);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{4857150761168448973L, 4043620736285466306L}), sb);
        }
    }

    /* loaded from: classes2.dex */
    public static final class EmptyCharSource extends StringCharSource {
        private static final EmptyCharSource INSTANCE = new EmptyCharSource();

        private EmptyCharSource() {
            super(new ObfuscatedString(new long[]{-2721249686763176220L}).toString());
        }

        @Override // com.google.common.io.CharSource.CharSequenceCharSource
        public String toString() {
            return new ObfuscatedString(new long[]{6095707342260253536L, 7450690165769655059L, -7181578806814451256L, -1702431989103581536L}).toString();
        }
    }

    public static CharSource concat(Iterable<? extends CharSource> iterable) {
        return new ConcatenatedCharSource(iterable);
    }

    private long countBySkipping(Reader reader) {
        long j = 0;
        while (true) {
            long skip = reader.skip(Long.MAX_VALUE);
            if (skip != 0) {
                j += skip;
            } else {
                return j;
            }
        }
    }

    public static CharSource empty() {
        return EmptyCharSource.INSTANCE;
    }

    public static CharSource wrap(CharSequence charSequence) {
        if (charSequence instanceof String) {
            return new StringCharSource((String) charSequence);
        }
        return new CharSequenceCharSource(charSequence);
    }

    @Beta
    public ByteSource asByteSource(Charset charset) {
        return new AsByteSource(charset);
    }

    @CanIgnoreReturnValue
    public long copyTo(Appendable appendable) {
        Preconditions.checkNotNull(appendable);
        try {
            return CharStreams.copy((Reader) Closer.create().register(openStream()), appendable);
        } finally {
        }
    }

    public boolean isEmpty() {
        Optional<Long> lengthIfKnown = lengthIfKnown();
        boolean z = false;
        if (lengthIfKnown.isPresent()) {
            if (lengthIfKnown.get().longValue() != 0) {
                return false;
            }
            return true;
        }
        Closer create = Closer.create();
        try {
            if (((Reader) create.register(openStream())).read() == -1) {
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

    @Beta
    public long length() {
        Optional<Long> lengthIfKnown = lengthIfKnown();
        if (lengthIfKnown.isPresent()) {
            return lengthIfKnown.get().longValue();
        }
        try {
            return countBySkipping((Reader) Closer.create().register(openStream()));
        } finally {
        }
    }

    @Beta
    public Optional<Long> lengthIfKnown() {
        return Optional.absent();
    }

    public BufferedReader openBufferedStream() {
        Reader openStream = openStream();
        if (openStream instanceof BufferedReader) {
            return (BufferedReader) openStream;
        }
        return new BufferedReader(openStream);
    }

    public abstract Reader openStream();

    public String read() {
        try {
            return CharStreams.toString((Reader) Closer.create().register(openStream()));
        } finally {
        }
    }

    @CheckForNull
    public String readFirstLine() {
        try {
            return ((BufferedReader) Closer.create().register(openBufferedStream())).readLine();
        } finally {
        }
    }

    public ImmutableList<String> readLines() {
        try {
            BufferedReader bufferedReader = (BufferedReader) Closer.create().register(openBufferedStream());
            ArrayList newArrayList = Lists.newArrayList();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    newArrayList.add(readLine);
                } else {
                    return ImmutableList.copyOf((Collection) newArrayList);
                }
            }
        } finally {
        }
    }

    /* loaded from: classes2.dex */
    public static class StringCharSource extends CharSequenceCharSource {
        public StringCharSource(String str) {
            super(str);
        }

        @Override // com.google.common.io.CharSource
        public long copyTo(Appendable appendable) {
            appendable.append(this.seq);
            return this.seq.length();
        }

        @Override // com.google.common.io.CharSource.CharSequenceCharSource, com.google.common.io.CharSource
        public Reader openStream() {
            return new StringReader((String) this.seq);
        }

        @Override // com.google.common.io.CharSource
        public long copyTo(CharSink charSink) {
            Preconditions.checkNotNull(charSink);
            try {
                ((Writer) Closer.create().register(charSink.openStream())).write((String) this.seq);
                return this.seq.length();
            } finally {
            }
        }
    }

    public static CharSource concat(Iterator<? extends CharSource> it) {
        return concat(ImmutableList.copyOf(it));
    }

    public static CharSource concat(CharSource... charSourceArr) {
        return concat(ImmutableList.copyOf(charSourceArr));
    }

    @CanIgnoreReturnValue
    public long copyTo(CharSink charSink) {
        Preconditions.checkNotNull(charSink);
        Closer create = Closer.create();
        try {
            return CharStreams.copy((Reader) create.register(openStream()), (Writer) create.register(charSink.openStream()));
        } finally {
        }
    }

    @CanIgnoreReturnValue
    @Beta
    @ParametricNullness
    public <T> T readLines(LineProcessor<T> lineProcessor) {
        Preconditions.checkNotNull(lineProcessor);
        try {
            return (T) CharStreams.readLines((Reader) Closer.create().register(openStream()), lineProcessor);
        } finally {
        }
    }
}
