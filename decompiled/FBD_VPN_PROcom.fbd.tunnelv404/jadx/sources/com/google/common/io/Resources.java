package com.google.common.io;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.collect.Lists;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.List;

@ElementTypesAreNonnullByDefault
@GwtIncompatible
/* loaded from: classes2.dex */
public final class Resources {

    /* loaded from: classes2.dex */
    public static final class UrlByteSource extends ByteSource {
        private final URL url;

        @Override // com.google.common.io.ByteSource
        public InputStream openStream() {
            return this.url.openStream();
        }

        public String toString() {
            String valueOf = String.valueOf(this.url);
            StringBuilder sb = new StringBuilder(valueOf.length() + 24);
            sb.append(new ObfuscatedString(new long[]{3775161548121498356L, 4047973201390838221L, -5828968209505947900L, 7763495308890013020L}).toString());
            sb.append(valueOf);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{6449273809109221745L, -561964078702660109L}), sb);
        }

        private UrlByteSource(URL url) {
            this.url = (URL) Preconditions.checkNotNull(url);
        }
    }

    private Resources() {
    }

    public static ByteSource asByteSource(URL url) {
        return new UrlByteSource(url);
    }

    public static CharSource asCharSource(URL url, Charset charset) {
        return asByteSource(url).asCharSource(charset);
    }

    public static void copy(URL url, OutputStream outputStream) {
        asByteSource(url).copyTo(outputStream);
    }

    @CanIgnoreReturnValue
    public static URL getResource(String str) {
        URL resource = ((ClassLoader) MoreObjects.firstNonNull(Thread.currentThread().getContextClassLoader(), Resources.class.getClassLoader())).getResource(str);
        Preconditions.checkArgument(resource != null, new ObfuscatedString(new long[]{3069888619442680101L, -8306710781392855598L, -5606149704928392305L, 6238915840630012820L}).toString(), str);
        return resource;
    }

    @CanIgnoreReturnValue
    @ParametricNullness
    public static <T> T readLines(URL url, Charset charset, LineProcessor<T> lineProcessor) {
        return (T) asCharSource(url, charset).readLines(lineProcessor);
    }

    public static byte[] toByteArray(URL url) {
        return asByteSource(url).read();
    }

    public static String toString(URL url, Charset charset) {
        return asCharSource(url, charset).read();
    }

    public static List<String> readLines(URL url, Charset charset) {
        return (List) readLines(url, charset, new LineProcessor<List<String>>() { // from class: com.google.common.io.Resources.1
            final List<String> result = Lists.newArrayList();

            @Override // com.google.common.io.LineProcessor
            public boolean processLine(String str) {
                this.result.add(str);
                return true;
            }

            @Override // com.google.common.io.LineProcessor
            public List<String> getResult() {
                return this.result;
            }
        });
    }

    @CanIgnoreReturnValue
    public static URL getResource(Class<?> cls, String str) {
        URL resource = cls.getResource(str);
        Preconditions.checkArgument(resource != null, new ObfuscatedString(new long[]{-2868437400892185931L, -6828757513721701262L, -3381134875254750811L, 2057787421314830882L, 8851188942211481175L, 9199047130723593407L}).toString(), str, cls.getName());
        return resource;
    }
}
