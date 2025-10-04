package com.airbnb.lottie.parser.moshi;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.Closeable;
import java.io.IOException;
import java.util.Arrays;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;

/* loaded from: classes.dex */
public abstract class JsonReader implements Closeable {
    private static final String[] REPLACEMENT_CHARS = new String[128];
    boolean failOnUnknown;
    boolean lenient;
    int stackSize;
    int[] scopes = new int[32];
    String[] pathNames = new String[32];
    int[] pathIndices = new int[32];

    /* loaded from: classes.dex */
    public static final class Options {
        final okio.Options doubleQuoteSuffix;
        final String[] strings;

        private Options(String[] strArr, okio.Options options) {
            this.strings = strArr;
            this.doubleQuoteSuffix = options;
        }

        public static Options of(String... strArr) {
            try {
                ByteString[] byteStringArr = new ByteString[strArr.length];
                Buffer buffer = new Buffer();
                for (int i = 0; i < strArr.length; i++) {
                    JsonReader.string(buffer, strArr[i]);
                    buffer.readByte();
                    byteStringArr[i] = buffer.readByteString();
                }
                return new Options((String[]) strArr.clone(), okio.Options.of(byteStringArr));
            } catch (IOException e) {
                throw new AssertionError(e);
            }
        }
    }

    /* loaded from: classes.dex */
    public enum Token {
        BEGIN_ARRAY,
        END_ARRAY,
        BEGIN_OBJECT,
        END_OBJECT,
        NAME,
        STRING,
        NUMBER,
        BOOLEAN,
        NULL,
        END_DOCUMENT
    }

    static {
        for (int i = 0; i <= 31; i++) {
            REPLACEMENT_CHARS[i] = String.format(new ObfuscatedString(new long[]{-5133648863873370474L, -4636865023121353296L}).toString(), Integer.valueOf(i));
        }
        String[] strArr = REPLACEMENT_CHARS;
        strArr[34] = new ObfuscatedString(new long[]{-3077211904250597315L, -6589315921449451290L}).toString();
        strArr[92] = new ObfuscatedString(new long[]{8642427006868109159L, 485411592552606414L}).toString();
        strArr[9] = new ObfuscatedString(new long[]{-5607359380225065106L, -8561414476279797564L}).toString();
        strArr[8] = new ObfuscatedString(new long[]{4304689098446316289L, 9049240108899488123L}).toString();
        strArr[10] = new ObfuscatedString(new long[]{-6612142574269234960L, 8041682450557376864L}).toString();
        strArr[13] = new ObfuscatedString(new long[]{-444202902728368540L, 5776644992958138180L}).toString();
        strArr[12] = new ObfuscatedString(new long[]{-1612592424174962508L, 7881940600452994329L}).toString();
    }

    public static JsonReader of(BufferedSource bufferedSource) {
        return new JsonUtf8Reader(bufferedSource);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0044  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void string(BufferedSink bufferedSink, String str) {
        String obfuscatedString;
        String[] strArr = REPLACEMENT_CHARS;
        bufferedSink.writeByte(34);
        int length = str.length();
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            if (charAt < 128) {
                obfuscatedString = strArr[charAt];
                if (obfuscatedString == null) {
                }
                if (i < i2) {
                    bufferedSink.writeUtf8(str, i, i2);
                }
                bufferedSink.writeUtf8(obfuscatedString);
                i = i2 + 1;
            } else {
                if (charAt == 8232) {
                    obfuscatedString = new ObfuscatedString(new long[]{6507657445681198100L, -3811193336638119418L}).toString();
                } else if (charAt == 8233) {
                    obfuscatedString = new ObfuscatedString(new long[]{8193769370323878361L, -2912465417509699290L}).toString();
                }
                if (i < i2) {
                }
                bufferedSink.writeUtf8(obfuscatedString);
                i = i2 + 1;
            }
        }
        if (i < length) {
            bufferedSink.writeUtf8(str, i, length);
        }
        bufferedSink.writeByte(34);
    }

    public abstract void beginArray();

    public abstract void beginObject();

    public abstract void endArray();

    public abstract void endObject();

    public final String getPath() {
        return JsonScope.getPath(this.stackSize, this.scopes, this.pathNames, this.pathIndices);
    }

    public abstract boolean hasNext();

    public abstract boolean nextBoolean();

    public abstract double nextDouble();

    public abstract int nextInt();

    public abstract String nextName();

    public abstract String nextString();

    public abstract Token peek();

    public final void pushScope(int i) {
        int i2 = this.stackSize;
        int[] iArr = this.scopes;
        if (i2 == iArr.length) {
            if (i2 != 256) {
                this.scopes = Arrays.copyOf(iArr, iArr.length * 2);
                String[] strArr = this.pathNames;
                this.pathNames = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
                int[] iArr2 = this.pathIndices;
                this.pathIndices = Arrays.copyOf(iArr2, iArr2.length * 2);
            } else {
                throw new JsonDataException(new ObfuscatedString(new long[]{-4981258703319815149L, -5953933277743678117L, 2588550481535860418L, 7297174221065094390L}).toString() + getPath());
            }
        }
        int[] iArr3 = this.scopes;
        int i3 = this.stackSize;
        this.stackSize = i3 + 1;
        iArr3[i3] = i;
    }

    public abstract int selectName(Options options);

    public abstract void skipName();

    public abstract void skipValue();

    public final JsonEncodingException syntaxError(String str) {
        StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(str);
        m3341xc20437a5.append(new ObfuscatedString(new long[]{-4526732790559112064L, 6408584092830155555L, 3007094772427207309L}).toString());
        m3341xc20437a5.append(getPath());
        throw new JsonEncodingException(m3341xc20437a5.toString());
    }
}
