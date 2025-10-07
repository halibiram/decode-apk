package com.google.common.io;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Ascii;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.math.IntMath;
import com.google.errorprone.annotations.concurrent.LazyInit;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import defpackage.AbstractC1320xaf50c7e8;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import java.math.RoundingMode;
import java.util.Arrays;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
@GwtCompatible(emulated = true)
/* loaded from: classes2.dex */
public abstract class BaseEncoding {
    private static final BaseEncoding BASE64 = new Base64Encoding(new ObfuscatedString(new long[]{-1841042760061933789L, -5471005034178918272L}).toString(), new ObfuscatedString(new long[]{1952761343804553674L, -127077336992355821L, 6460904677401086030L, -2146650670943607766L, -6286880380049123694L, -8858060547334345571L, 666766059878722866L, -825549304728856916L, -8529380413078892535L}).toString(), '=');
    private static final BaseEncoding BASE64_URL = new Base64Encoding(new ObfuscatedString(new long[]{7918221951727382133L, -2107398834445088321L, -4063926887604811413L}).toString(), new ObfuscatedString(new long[]{3966813583628133764L, 7892343746818585449L, -6046460792209191781L, 1532820543519765794L, 7510062195531336386L, -4175822835094674697L, -1815153208109868375L, 3863743743054041427L, -794736130689698425L}).toString(), '=');
    private static final BaseEncoding BASE32 = new StandardBaseEncoding(new ObfuscatedString(new long[]{8831614825630614322L, -3414047244379394346L}).toString(), new ObfuscatedString(new long[]{4523237448331531445L, -4203501001551439783L, 53105870760700200L, -3993597926897398824L, -7119235486976857819L}).toString(), '=');
    private static final BaseEncoding BASE32_HEX = new StandardBaseEncoding(new ObfuscatedString(new long[]{5228282593211198784L, -3778962514722221992L, 6077972529125693589L}).toString(), new ObfuscatedString(new long[]{-6413426821949025703L, -2416792589066175180L, 7533563407347446068L, -1355389555401137896L, 4843404915840138077L}).toString(), '=');
    private static final BaseEncoding BASE16 = new Base16Encoding(new ObfuscatedString(new long[]{6400768028573103048L, -9060627513825336501L}).toString(), new ObfuscatedString(new long[]{-4077927234196930036L, -2224143537207145136L, 3300837991369036104L}).toString());

    /* loaded from: classes2.dex */
    public static final class Alphabet {
        final int bitsPerChar;
        final int bytesPerChunk;
        private final char[] chars;
        final int charsPerChunk;
        private final byte[] decodabet;
        final int mask;
        private final String name;
        private final boolean[] validPadding;

        public Alphabet(String str, char[] cArr) {
            String str2;
            boolean z;
            boolean z2;
            this.name = (String) Preconditions.checkNotNull(str);
            this.chars = (char[]) Preconditions.checkNotNull(cArr);
            try {
                int log2 = IntMath.log2(cArr.length, RoundingMode.UNNECESSARY);
                this.bitsPerChar = log2;
                int min = Math.min(8, Integer.lowestOneBit(log2));
                try {
                    this.charsPerChunk = 8 / min;
                    this.bytesPerChunk = log2 / min;
                    this.mask = cArr.length - 1;
                    byte[] bArr = new byte[128];
                    Arrays.fill(bArr, (byte) -1);
                    for (int i = 0; i < cArr.length; i++) {
                        char c = cArr[i];
                        if (c < 128) {
                            z = true;
                        } else {
                            z = false;
                        }
                        Preconditions.checkArgument(z, new ObfuscatedString(new long[]{-8705213204057385000L, 5402984194699315361L, 4263838720345201253L, 1510486972796158070L}).toString(), c);
                        if (bArr[c] == -1) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        Preconditions.checkArgument(z2, new ObfuscatedString(new long[]{-1617175341872963L, 5293713181668712718L, -382587924052279875L, -2455186550720658936L}).toString(), c);
                        bArr[c] = (byte) i;
                    }
                    this.decodabet = bArr;
                    boolean[] zArr = new boolean[this.charsPerChunk];
                    for (int i2 = 0; i2 < this.bytesPerChunk; i2++) {
                        zArr[IntMath.divide(i2 * 8, this.bitsPerChar, RoundingMode.CEILING)] = true;
                    }
                    this.validPadding = zArr;
                } catch (ArithmeticException e) {
                    String obfuscatedString = new ObfuscatedString(new long[]{1365721562109384112L, 5618544361661252458L, -362179399483486062L, -244861069344053142L}).toString();
                    String str3 = new String(cArr);
                    if (str3.length() != 0) {
                        str2 = obfuscatedString.concat(str3);
                    } else {
                        str2 = new String(obfuscatedString);
                    }
                    throw new IllegalArgumentException(str2, e);
                }
            } catch (ArithmeticException e2) {
                int length = cArr.length;
                throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{8511661551157908186L, 2898867239307859274L, 4761825394852475979L, 220299798802537386L}), new StringBuilder(35), length), e2);
            }
        }

        private boolean hasLowerCase() {
            for (char c : this.chars) {
                if (Ascii.isLowerCase(c)) {
                    return true;
                }
            }
            return false;
        }

        private boolean hasUpperCase() {
            for (char c : this.chars) {
                if (Ascii.isUpperCase(c)) {
                    return true;
                }
            }
            return false;
        }

        public boolean canDecode(char c) {
            if (c <= 127 && this.decodabet[c] != -1) {
                return true;
            }
            return false;
        }

        public int decode(char c) {
            String str;
            String str2;
            if (c > 127) {
                String obfuscatedString = new ObfuscatedString(new long[]{-8851140504359973764L, -1691111106134391020L, -1718219902241606112L, 6446243628689313602L, 9062385519955777399L}).toString();
                String valueOf = String.valueOf(Integer.toHexString(c));
                if (valueOf.length() != 0) {
                    str2 = obfuscatedString.concat(valueOf);
                } else {
                    str2 = new String(obfuscatedString);
                }
                throw new DecodingException(str2);
            }
            byte b = this.decodabet[c];
            if (b == -1) {
                if (c > ' ' && c != 127) {
                    StringBuilder sb = new StringBuilder(25);
                    sb.append(new ObfuscatedString(new long[]{-5111348139344373297L, 4911027046178704359L, 5648388539395079481L, 3217216664192900483L}).toString());
                    sb.append(c);
                    throw new DecodingException(sb.toString());
                }
                String obfuscatedString2 = new ObfuscatedString(new long[]{4178892914716539297L, 7150013152869213585L, 1128420510016645234L, 7810509211888011014L, 6080734414037320826L}).toString();
                String valueOf2 = String.valueOf(Integer.toHexString(c));
                if (valueOf2.length() != 0) {
                    str = obfuscatedString2.concat(valueOf2);
                } else {
                    str = new String(obfuscatedString2);
                }
                throw new DecodingException(str);
            }
            return b;
        }

        public char encode(int i) {
            return this.chars[i];
        }

        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof Alphabet) {
                return Arrays.equals(this.chars, ((Alphabet) obj).chars);
            }
            return false;
        }

        public int hashCode() {
            return Arrays.hashCode(this.chars);
        }

        public boolean isValidPaddingStartPosition(int i) {
            return this.validPadding[i % this.charsPerChunk];
        }

        public Alphabet lowerCase() {
            if (!hasUpperCase()) {
                return this;
            }
            Preconditions.checkState(!hasLowerCase(), new ObfuscatedString(new long[]{-4228899158808465693L, 5482955522759837268L, 5408225593896281586L, 1445463197823570326L, 2378372790739653972L, 5268066483659504586L, -2910770255934576095L}).toString());
            char[] cArr = new char[this.chars.length];
            int i = 0;
            while (true) {
                char[] cArr2 = this.chars;
                if (i < cArr2.length) {
                    cArr[i] = Ascii.toLowerCase(cArr2[i]);
                    i++;
                } else {
                    return new Alphabet(String.valueOf(this.name).concat(new ObfuscatedString(new long[]{-2937977536513319863L, -4963723549945292572L, -7632750663790386544L}).toString()), cArr);
                }
            }
        }

        public boolean matches(char c) {
            byte[] bArr = this.decodabet;
            if (c < bArr.length && bArr[c] != -1) {
                return true;
            }
            return false;
        }

        public String toString() {
            return this.name;
        }

        public Alphabet upperCase() {
            if (!hasLowerCase()) {
                return this;
            }
            Preconditions.checkState(!hasUpperCase(), new ObfuscatedString(new long[]{7666658954596935015L, -5260829659917546236L, -5031887512684105902L, 3444273171067371232L, -2596313035973092047L, 4344642407163401444L, 5927387511491205680L}).toString());
            char[] cArr = new char[this.chars.length];
            int i = 0;
            while (true) {
                char[] cArr2 = this.chars;
                if (i < cArr2.length) {
                    cArr[i] = Ascii.toUpperCase(cArr2[i]);
                    i++;
                } else {
                    return new Alphabet(String.valueOf(this.name).concat(new ObfuscatedString(new long[]{-7921445949634106781L, -7693301869609860850L, -8346646673512520006L}).toString()), cArr);
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class Base16Encoding extends StandardBaseEncoding {
        final char[] encoding;

        public Base16Encoding(String str, String str2) {
            this(new Alphabet(str, str2.toCharArray()));
        }

        @Override // com.google.common.io.BaseEncoding.StandardBaseEncoding, com.google.common.io.BaseEncoding
        public int decodeTo(byte[] bArr, CharSequence charSequence) {
            Preconditions.checkNotNull(bArr);
            if (charSequence.length() % 2 != 1) {
                int i = 0;
                int i2 = 0;
                while (i < charSequence.length()) {
                    bArr[i2] = (byte) ((this.alphabet.decode(charSequence.charAt(i)) << 4) | this.alphabet.decode(charSequence.charAt(i + 1)));
                    i += 2;
                    i2++;
                }
                return i2;
            }
            int length = charSequence.length();
            throw new DecodingException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{4286124315009134331L, -8880562876468354580L, 7076453090115231756L, 3416247534037512508L}), new StringBuilder(32), length));
        }

        @Override // com.google.common.io.BaseEncoding.StandardBaseEncoding, com.google.common.io.BaseEncoding
        public void encodeTo(Appendable appendable, byte[] bArr, int i, int i2) {
            Preconditions.checkNotNull(appendable);
            Preconditions.checkPositionIndexes(i, i + i2, bArr.length);
            for (int i3 = 0; i3 < i2; i3++) {
                int i4 = bArr[i + i3] & 255;
                appendable.append(this.encoding[i4]);
                appendable.append(this.encoding[i4 | 256]);
            }
        }

        @Override // com.google.common.io.BaseEncoding.StandardBaseEncoding
        public BaseEncoding newInstance(Alphabet alphabet, @CheckForNull Character ch) {
            return new Base16Encoding(alphabet);
        }

        private Base16Encoding(Alphabet alphabet) {
            super(alphabet, null);
            this.encoding = new char[512];
            Preconditions.checkArgument(alphabet.chars.length == 16);
            for (int i = 0; i < 256; i++) {
                this.encoding[i] = alphabet.encode(i >>> 4);
                this.encoding[i | 256] = alphabet.encode(i & 15);
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class Base64Encoding extends StandardBaseEncoding {
        public Base64Encoding(String str, String str2, @CheckForNull Character ch) {
            this(new Alphabet(str, str2.toCharArray()), ch);
        }

        @Override // com.google.common.io.BaseEncoding.StandardBaseEncoding, com.google.common.io.BaseEncoding
        public int decodeTo(byte[] bArr, CharSequence charSequence) {
            Preconditions.checkNotNull(bArr);
            CharSequence trimTrailingPadding = trimTrailingPadding(charSequence);
            if (this.alphabet.isValidPaddingStartPosition(trimTrailingPadding.length())) {
                int i = 0;
                int i2 = 0;
                while (i < trimTrailingPadding.length()) {
                    int i3 = i + 2;
                    int decode = (this.alphabet.decode(trimTrailingPadding.charAt(i)) << 18) | (this.alphabet.decode(trimTrailingPadding.charAt(i + 1)) << 12);
                    int i4 = i2 + 1;
                    bArr[i2] = (byte) (decode >>> 16);
                    if (i3 < trimTrailingPadding.length()) {
                        int i5 = i + 3;
                        int decode2 = decode | (this.alphabet.decode(trimTrailingPadding.charAt(i3)) << 6);
                        int i6 = i2 + 2;
                        bArr[i4] = (byte) ((decode2 >>> 8) & 255);
                        if (i5 < trimTrailingPadding.length()) {
                            i += 4;
                            i2 += 3;
                            bArr[i6] = (byte) ((decode2 | this.alphabet.decode(trimTrailingPadding.charAt(i5))) & 255);
                        } else {
                            i2 = i6;
                            i = i5;
                        }
                    } else {
                        i2 = i4;
                        i = i3;
                    }
                }
                return i2;
            }
            int length = trimTrailingPadding.length();
            throw new DecodingException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-1497741624198581155L, -5614340698903834219L, -2464447373617644464L, -8161603659982992222L}), new StringBuilder(32), length));
        }

        @Override // com.google.common.io.BaseEncoding.StandardBaseEncoding, com.google.common.io.BaseEncoding
        public void encodeTo(Appendable appendable, byte[] bArr, int i, int i2) {
            Preconditions.checkNotNull(appendable);
            int i3 = i + i2;
            Preconditions.checkPositionIndexes(i, i3, bArr.length);
            while (i2 >= 3) {
                int i4 = i + 2;
                int i5 = ((bArr[i + 1] & 255) << 8) | ((bArr[i] & 255) << 16);
                i += 3;
                int i6 = i5 | (bArr[i4] & 255);
                appendable.append(this.alphabet.encode(i6 >>> 18));
                appendable.append(this.alphabet.encode((i6 >>> 12) & 63));
                appendable.append(this.alphabet.encode((i6 >>> 6) & 63));
                appendable.append(this.alphabet.encode(i6 & 63));
                i2 -= 3;
            }
            if (i < i3) {
                encodeChunkTo(appendable, bArr, i, i3 - i);
            }
        }

        @Override // com.google.common.io.BaseEncoding.StandardBaseEncoding
        public BaseEncoding newInstance(Alphabet alphabet, @CheckForNull Character ch) {
            return new Base64Encoding(alphabet, ch);
        }

        private Base64Encoding(Alphabet alphabet, @CheckForNull Character ch) {
            super(alphabet, ch);
            Preconditions.checkArgument(alphabet.chars.length == 64);
        }
    }

    /* loaded from: classes2.dex */
    public static final class DecodingException extends IOException {
        public DecodingException(String str) {
            super(str);
        }

        public DecodingException(Throwable th) {
            super(th);
        }
    }

    /* loaded from: classes2.dex */
    public static final class SeparatedBaseEncoding extends BaseEncoding {
        private final int afterEveryChars;
        private final BaseEncoding delegate;
        private final String separator;

        public SeparatedBaseEncoding(BaseEncoding baseEncoding, String str, int i) {
            boolean z;
            this.delegate = (BaseEncoding) Preconditions.checkNotNull(baseEncoding);
            this.separator = (String) Preconditions.checkNotNull(str);
            this.afterEveryChars = i;
            if (i > 0) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkArgument(z, new ObfuscatedString(new long[]{8048905541261371239L, 4917244786464109703L, -3040429112790182079L, 8397536523419815969L, -8393693145755785350L, 5957460773647867901L, 3636485238146504920L}).toString(), i);
        }

        @Override // com.google.common.io.BaseEncoding
        public boolean canDecode(CharSequence charSequence) {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < charSequence.length(); i++) {
                char charAt = charSequence.charAt(i);
                if (this.separator.indexOf(charAt) < 0) {
                    sb.append(charAt);
                }
            }
            return this.delegate.canDecode(sb);
        }

        @Override // com.google.common.io.BaseEncoding
        public int decodeTo(byte[] bArr, CharSequence charSequence) {
            StringBuilder sb = new StringBuilder(charSequence.length());
            for (int i = 0; i < charSequence.length(); i++) {
                char charAt = charSequence.charAt(i);
                if (this.separator.indexOf(charAt) < 0) {
                    sb.append(charAt);
                }
            }
            return this.delegate.decodeTo(bArr, sb);
        }

        @Override // com.google.common.io.BaseEncoding
        @GwtIncompatible
        public InputStream decodingStream(Reader reader) {
            return this.delegate.decodingStream(BaseEncoding.ignoringReader(reader, this.separator));
        }

        @Override // com.google.common.io.BaseEncoding
        public void encodeTo(Appendable appendable, byte[] bArr, int i, int i2) {
            this.delegate.encodeTo(BaseEncoding.separatingAppendable(appendable, this.separator, this.afterEveryChars), bArr, i, i2);
        }

        @Override // com.google.common.io.BaseEncoding
        @GwtIncompatible
        public OutputStream encodingStream(Writer writer) {
            return this.delegate.encodingStream(BaseEncoding.separatingWriter(writer, this.separator, this.afterEveryChars));
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding lowerCase() {
            return this.delegate.lowerCase().withSeparator(this.separator, this.afterEveryChars);
        }

        @Override // com.google.common.io.BaseEncoding
        public int maxDecodedSize(int i) {
            return this.delegate.maxDecodedSize(i);
        }

        @Override // com.google.common.io.BaseEncoding
        public int maxEncodedSize(int i) {
            int maxEncodedSize = this.delegate.maxEncodedSize(i);
            return (IntMath.divide(Math.max(0, maxEncodedSize - 1), this.afterEveryChars, RoundingMode.FLOOR) * this.separator.length()) + maxEncodedSize;
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding omitPadding() {
            return this.delegate.omitPadding().withSeparator(this.separator, this.afterEveryChars);
        }

        public String toString() {
            String valueOf = String.valueOf(this.delegate);
            String str = this.separator;
            int i = this.afterEveryChars;
            StringBuilder m2938x1aebc6d9 = AbstractC0362x4440ab85.m2938x1aebc6d9(AbstractC1320xaf50c7e8.m4356x1378447b(valueOf.length() + 31, str), valueOf);
            m2938x1aebc6d9.append(new ObfuscatedString(new long[]{-6695963275168590239L, -6693790531212182265L, 3058857036295111274L}).toString());
            m2938x1aebc6d9.append(str);
            m2938x1aebc6d9.append(new ObfuscatedString(new long[]{151480892200797989L, -7453665268896480063L}).toString());
            m2938x1aebc6d9.append(i);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-8775947607330405911L, -3287694757205645321L}), m2938x1aebc6d9);
        }

        @Override // com.google.common.io.BaseEncoding
        public CharSequence trimTrailingPadding(CharSequence charSequence) {
            return this.delegate.trimTrailingPadding(charSequence);
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding upperCase() {
            return this.delegate.upperCase().withSeparator(this.separator, this.afterEveryChars);
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding withPadChar(char c) {
            return this.delegate.withPadChar(c).withSeparator(this.separator, this.afterEveryChars);
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding withSeparator(String str, int i) {
            throw new UnsupportedOperationException(new ObfuscatedString(new long[]{5939766735631343211L, 4199014720298530308L, 7142408593763475138L, -4055683855662932971L}).toString());
        }
    }

    /* loaded from: classes2.dex */
    public static class StandardBaseEncoding extends BaseEncoding {
        final Alphabet alphabet;

        @CheckForNull
        @LazyInit
        private transient BaseEncoding lowerCase;

        @CheckForNull
        final Character paddingChar;

        @CheckForNull
        @LazyInit
        private transient BaseEncoding upperCase;

        public StandardBaseEncoding(String str, String str2, @CheckForNull Character ch) {
            this(new Alphabet(str, str2.toCharArray()), ch);
        }

        @Override // com.google.common.io.BaseEncoding
        public boolean canDecode(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            CharSequence trimTrailingPadding = trimTrailingPadding(charSequence);
            if (!this.alphabet.isValidPaddingStartPosition(trimTrailingPadding.length())) {
                return false;
            }
            for (int i = 0; i < trimTrailingPadding.length(); i++) {
                if (!this.alphabet.canDecode(trimTrailingPadding.charAt(i))) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.common.io.BaseEncoding
        public int decodeTo(byte[] bArr, CharSequence charSequence) {
            Alphabet alphabet;
            Preconditions.checkNotNull(bArr);
            CharSequence trimTrailingPadding = trimTrailingPadding(charSequence);
            if (this.alphabet.isValidPaddingStartPosition(trimTrailingPadding.length())) {
                int i = 0;
                int i2 = 0;
                while (i < trimTrailingPadding.length()) {
                    long j = 0;
                    int i3 = 0;
                    int i4 = 0;
                    while (true) {
                        alphabet = this.alphabet;
                        if (i3 >= alphabet.charsPerChunk) {
                            break;
                        }
                        j <<= alphabet.bitsPerChar;
                        if (i + i3 < trimTrailingPadding.length()) {
                            j |= this.alphabet.decode(trimTrailingPadding.charAt(i4 + i));
                            i4++;
                        }
                        i3++;
                    }
                    int i5 = alphabet.bytesPerChunk;
                    int i6 = (i5 * 8) - (i4 * alphabet.bitsPerChar);
                    int i7 = (i5 - 1) * 8;
                    while (i7 >= i6) {
                        bArr[i2] = (byte) ((j >>> i7) & 255);
                        i7 -= 8;
                        i2++;
                    }
                    i += this.alphabet.charsPerChunk;
                }
                return i2;
            }
            throw new DecodingException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-3993458811518345130L, -1295965934709276191L, 5906213429018510205L, 8389782480054519248L}), new StringBuilder(32), trimTrailingPadding.length()));
        }

        @Override // com.google.common.io.BaseEncoding
        @GwtIncompatible
        public InputStream decodingStream(final Reader reader) {
            Preconditions.checkNotNull(reader);
            return new InputStream() { // from class: com.google.common.io.BaseEncoding.StandardBaseEncoding.2
                int bitBuffer = 0;
                int bitBufferLength = 0;
                int readChars = 0;
                boolean hitPadding = false;

                @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                    reader.close();
                }

                @Override // java.io.InputStream
                public int read() {
                    int i;
                    while (true) {
                        int read = reader.read();
                        if (read == -1) {
                            if (this.hitPadding || StandardBaseEncoding.this.alphabet.isValidPaddingStartPosition(this.readChars)) {
                                return -1;
                            }
                            throw new DecodingException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-2324593709376209308L, -2004083354088624432L, 5123738653254130783L, 5456486288927574449L}), new StringBuilder(32), this.readChars));
                        }
                        this.readChars++;
                        char c = (char) read;
                        Character ch = StandardBaseEncoding.this.paddingChar;
                        if (ch != null && ch.charValue() == c) {
                            if (this.hitPadding || ((i = this.readChars) != 1 && StandardBaseEncoding.this.alphabet.isValidPaddingStartPosition(i - 1))) {
                                this.hitPadding = true;
                            }
                        } else if (!this.hitPadding) {
                            int i2 = this.bitBuffer;
                            Alphabet alphabet = StandardBaseEncoding.this.alphabet;
                            int i3 = i2 << alphabet.bitsPerChar;
                            this.bitBuffer = i3;
                            int decode = alphabet.decode(c) | i3;
                            this.bitBuffer = decode;
                            int i4 = this.bitBufferLength + StandardBaseEncoding.this.alphabet.bitsPerChar;
                            this.bitBufferLength = i4;
                            if (i4 >= 8) {
                                int i5 = i4 - 8;
                                this.bitBufferLength = i5;
                                return (decode >> i5) & 255;
                            }
                        } else {
                            int i6 = this.readChars;
                            StringBuilder sb = new StringBuilder(61);
                            sb.append(new ObfuscatedString(new long[]{-2109558974203989975L, -2921966077455368082L, 6178838484625494315L, -4982800543517236747L, 2065216461865434442L, 5300986461102459739L}).toString());
                            sb.append(c);
                            throw new DecodingException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-6593260005322245413L, -2721186899017888182L, -2685673083925622243L}), sb, i6));
                        }
                    }
                    throw new DecodingException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-4898825298145766246L, -6047631911548689066L, 6735410047471366466L, -9097982898125158531L, 5339588654244151962L}), new StringBuilder(41), this.readChars));
                }

                @Override // java.io.InputStream
                public int read(byte[] bArr, int i, int i2) {
                    int i3 = i2 + i;
                    Preconditions.checkPositionIndexes(i, i3, bArr.length);
                    int i4 = i;
                    while (i4 < i3) {
                        int read = read();
                        if (read == -1) {
                            int i5 = i4 - i;
                            if (i5 == 0) {
                                return -1;
                            }
                            return i5;
                        }
                        bArr[i4] = (byte) read;
                        i4++;
                    }
                    return i4 - i;
                }
            };
        }

        public void encodeChunkTo(Appendable appendable, byte[] bArr, int i, int i2) {
            boolean z;
            Preconditions.checkNotNull(appendable);
            Preconditions.checkPositionIndexes(i, i + i2, bArr.length);
            int i3 = 0;
            if (i2 <= this.alphabet.bytesPerChunk) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkArgument(z);
            long j = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                j = (j | (bArr[i + i4] & 255)) << 8;
            }
            int i5 = ((i2 + 1) * 8) - this.alphabet.bitsPerChar;
            while (i3 < i2 * 8) {
                Alphabet alphabet = this.alphabet;
                appendable.append(alphabet.encode(((int) (j >>> (i5 - i3))) & alphabet.mask));
                i3 += this.alphabet.bitsPerChar;
            }
            if (this.paddingChar != null) {
                while (i3 < this.alphabet.bytesPerChunk * 8) {
                    appendable.append(this.paddingChar.charValue());
                    i3 += this.alphabet.bitsPerChar;
                }
            }
        }

        @Override // com.google.common.io.BaseEncoding
        public void encodeTo(Appendable appendable, byte[] bArr, int i, int i2) {
            Preconditions.checkNotNull(appendable);
            Preconditions.checkPositionIndexes(i, i + i2, bArr.length);
            int i3 = 0;
            while (i3 < i2) {
                encodeChunkTo(appendable, bArr, i + i3, Math.min(this.alphabet.bytesPerChunk, i2 - i3));
                i3 += this.alphabet.bytesPerChunk;
            }
        }

        @Override // com.google.common.io.BaseEncoding
        @GwtIncompatible
        public OutputStream encodingStream(final Writer writer) {
            Preconditions.checkNotNull(writer);
            return new OutputStream() { // from class: com.google.common.io.BaseEncoding.StandardBaseEncoding.1
                int bitBuffer = 0;
                int bitBufferLength = 0;
                int writtenChars = 0;

                @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                public void close() {
                    int i = this.bitBufferLength;
                    if (i > 0) {
                        int i2 = this.bitBuffer;
                        Alphabet alphabet = StandardBaseEncoding.this.alphabet;
                        writer.write(alphabet.encode((i2 << (alphabet.bitsPerChar - i)) & alphabet.mask));
                        this.writtenChars++;
                        if (StandardBaseEncoding.this.paddingChar != null) {
                            while (true) {
                                int i3 = this.writtenChars;
                                StandardBaseEncoding standardBaseEncoding = StandardBaseEncoding.this;
                                if (i3 % standardBaseEncoding.alphabet.charsPerChunk == 0) {
                                    break;
                                }
                                writer.write(standardBaseEncoding.paddingChar.charValue());
                                this.writtenChars++;
                            }
                        }
                    }
                    writer.close();
                }

                @Override // java.io.OutputStream, java.io.Flushable
                public void flush() {
                    writer.flush();
                }

                @Override // java.io.OutputStream
                public void write(int i) {
                    this.bitBuffer = (i & 255) | (this.bitBuffer << 8);
                    this.bitBufferLength += 8;
                    while (true) {
                        int i2 = this.bitBufferLength;
                        Alphabet alphabet = StandardBaseEncoding.this.alphabet;
                        int i3 = alphabet.bitsPerChar;
                        if (i2 >= i3) {
                            writer.write(alphabet.encode((this.bitBuffer >> (i2 - i3)) & alphabet.mask));
                            this.writtenChars++;
                            this.bitBufferLength -= StandardBaseEncoding.this.alphabet.bitsPerChar;
                        } else {
                            return;
                        }
                    }
                }
            };
        }

        public boolean equals(@CheckForNull Object obj) {
            if (!(obj instanceof StandardBaseEncoding)) {
                return false;
            }
            StandardBaseEncoding standardBaseEncoding = (StandardBaseEncoding) obj;
            if (!this.alphabet.equals(standardBaseEncoding.alphabet) || !Objects.equal(this.paddingChar, standardBaseEncoding.paddingChar)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return this.alphabet.hashCode() ^ Objects.hashCode(this.paddingChar);
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding lowerCase() {
            BaseEncoding baseEncoding = this.lowerCase;
            if (baseEncoding == null) {
                Alphabet lowerCase = this.alphabet.lowerCase();
                if (lowerCase == this.alphabet) {
                    baseEncoding = this;
                } else {
                    baseEncoding = newInstance(lowerCase, this.paddingChar);
                }
                this.lowerCase = baseEncoding;
            }
            return baseEncoding;
        }

        @Override // com.google.common.io.BaseEncoding
        public int maxDecodedSize(int i) {
            return (int) (((this.alphabet.bitsPerChar * i) + 7) / 8);
        }

        @Override // com.google.common.io.BaseEncoding
        public int maxEncodedSize(int i) {
            Alphabet alphabet = this.alphabet;
            return IntMath.divide(i, alphabet.bytesPerChunk, RoundingMode.CEILING) * alphabet.charsPerChunk;
        }

        public BaseEncoding newInstance(Alphabet alphabet, @CheckForNull Character ch) {
            return new StandardBaseEncoding(alphabet, ch);
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding omitPadding() {
            if (this.paddingChar == null) {
                return this;
            }
            return newInstance(this.alphabet, null);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(new ObfuscatedString(new long[]{9013932000640518290L, 9148688028077602113L, -1289482097201313527L}).toString());
            sb.append(this.alphabet.toString());
            if (8 % this.alphabet.bitsPerChar != 0) {
                if (this.paddingChar == null) {
                    sb.append(new ObfuscatedString(new long[]{-439998592567362775L, -2206346245963038565L, 7218209935298812536L}).toString());
                } else {
                    sb.append(new ObfuscatedString(new long[]{-3592096183706094578L, -4521416595422856160L, 2505053454801608057L}).toString());
                    sb.append(this.paddingChar);
                    sb.append(new ObfuscatedString(new long[]{-8848141374796030397L, 5401538578051052675L}).toString());
                }
            }
            return sb.toString();
        }

        @Override // com.google.common.io.BaseEncoding
        public CharSequence trimTrailingPadding(CharSequence charSequence) {
            Preconditions.checkNotNull(charSequence);
            Character ch = this.paddingChar;
            if (ch == null) {
                return charSequence;
            }
            char charValue = ch.charValue();
            int length = charSequence.length() - 1;
            while (length >= 0 && charSequence.charAt(length) == charValue) {
                length--;
            }
            return charSequence.subSequence(0, length + 1);
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding upperCase() {
            BaseEncoding baseEncoding = this.upperCase;
            if (baseEncoding == null) {
                Alphabet upperCase = this.alphabet.upperCase();
                if (upperCase == this.alphabet) {
                    baseEncoding = this;
                } else {
                    baseEncoding = newInstance(upperCase, this.paddingChar);
                }
                this.upperCase = baseEncoding;
            }
            return baseEncoding;
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding withPadChar(char c) {
            Character ch;
            if (8 % this.alphabet.bitsPerChar != 0 && ((ch = this.paddingChar) == null || ch.charValue() != c)) {
                return newInstance(this.alphabet, Character.valueOf(c));
            }
            return this;
        }

        @Override // com.google.common.io.BaseEncoding
        public BaseEncoding withSeparator(String str, int i) {
            boolean z = true;
            for (int i2 = 0; i2 < str.length(); i2++) {
                Preconditions.checkArgument(!this.alphabet.matches(str.charAt(i2)), new ObfuscatedString(new long[]{-2481274585400151658L, -6540080212715055556L, 1458977041458662730L, 7417600576336457022L, 4177663602170332895L, 1144367285881488238L, -8699904898501727013L, -3574391814183800653L}).toString(), str);
            }
            Character ch = this.paddingChar;
            if (ch != null) {
                if (str.indexOf(ch.charValue()) >= 0) {
                    z = false;
                }
                Preconditions.checkArgument(z, new ObfuscatedString(new long[]{-3096730520164739751L, -6436955367479744264L, -1372623886828339354L, -8537474273518682972L, -1913444886237656071L, 2840563655853221079L, -5953124014299580622L}).toString(), str);
            }
            return new SeparatedBaseEncoding(this, str, i);
        }

        public StandardBaseEncoding(Alphabet alphabet, @CheckForNull Character ch) {
            this.alphabet = (Alphabet) Preconditions.checkNotNull(alphabet);
            Preconditions.checkArgument(ch == null || !alphabet.matches(ch.charValue()), new ObfuscatedString(new long[]{-4297715067032561720L, -6052861134401191261L, 711696799476719708L, 1670889859465125446L, 8783621874701711114L, 5991843047701210347L, 8649220989954272832L}).toString(), ch);
            this.paddingChar = ch;
        }
    }

    public static BaseEncoding base16() {
        return BASE16;
    }

    public static BaseEncoding base32() {
        return BASE32;
    }

    public static BaseEncoding base32Hex() {
        return BASE32_HEX;
    }

    public static BaseEncoding base64() {
        return BASE64;
    }

    public static BaseEncoding base64Url() {
        return BASE64_URL;
    }

    private static byte[] extract(byte[] bArr, int i) {
        if (i == bArr.length) {
            return bArr;
        }
        byte[] bArr2 = new byte[i];
        System.arraycopy(bArr, 0, bArr2, 0, i);
        return bArr2;
    }

    @GwtIncompatible
    public static Reader ignoringReader(final Reader reader, final String str) {
        Preconditions.checkNotNull(reader);
        Preconditions.checkNotNull(str);
        return new Reader() { // from class: com.google.common.io.BaseEncoding.3
            @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                reader.close();
            }

            @Override // java.io.Reader
            public int read() {
                int read;
                do {
                    read = reader.read();
                    if (read == -1) {
                        break;
                    }
                } while (str.indexOf((char) read) >= 0);
                return read;
            }

            @Override // java.io.Reader
            public int read(char[] cArr, int i, int i2) {
                throw new UnsupportedOperationException();
            }
        };
    }

    public static Appendable separatingAppendable(Appendable appendable, String str, int i) {
        boolean z;
        Preconditions.checkNotNull(appendable);
        Preconditions.checkNotNull(str);
        if (i > 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z);
        return new Appendable(i, appendable, str) { // from class: com.google.common.io.BaseEncoding.4
            int charsUntilSeparator;
            final /* synthetic */ int val$afterEveryChars;
            final /* synthetic */ Appendable val$delegate;
            final /* synthetic */ String val$separator;

            {
                this.val$afterEveryChars = i;
                this.val$delegate = appendable;
                this.val$separator = str;
                this.charsUntilSeparator = i;
            }

            @Override // java.lang.Appendable
            public Appendable append(char c) {
                if (this.charsUntilSeparator == 0) {
                    this.val$delegate.append(this.val$separator);
                    this.charsUntilSeparator = this.val$afterEveryChars;
                }
                this.val$delegate.append(c);
                this.charsUntilSeparator--;
                return this;
            }

            @Override // java.lang.Appendable
            public Appendable append(@CheckForNull CharSequence charSequence, int i2, int i3) {
                throw new UnsupportedOperationException();
            }

            @Override // java.lang.Appendable
            public Appendable append(@CheckForNull CharSequence charSequence) {
                throw new UnsupportedOperationException();
            }
        };
    }

    @GwtIncompatible
    public static Writer separatingWriter(final Writer writer, String str, int i) {
        final Appendable separatingAppendable = separatingAppendable(writer, str, i);
        return new Writer() { // from class: com.google.common.io.BaseEncoding.5
            @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                writer.close();
            }

            @Override // java.io.Writer, java.io.Flushable
            public void flush() {
                writer.flush();
            }

            @Override // java.io.Writer
            public void write(int i2) {
                separatingAppendable.append((char) i2);
            }

            @Override // java.io.Writer
            public void write(char[] cArr, int i2, int i3) {
                throw new UnsupportedOperationException();
            }
        };
    }

    public abstract boolean canDecode(CharSequence charSequence);

    public final byte[] decode(CharSequence charSequence) {
        try {
            return decodeChecked(charSequence);
        } catch (DecodingException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public final byte[] decodeChecked(CharSequence charSequence) {
        CharSequence trimTrailingPadding = trimTrailingPadding(charSequence);
        byte[] bArr = new byte[maxDecodedSize(trimTrailingPadding.length())];
        return extract(bArr, decodeTo(bArr, trimTrailingPadding));
    }

    public abstract int decodeTo(byte[] bArr, CharSequence charSequence);

    @GwtIncompatible
    public final ByteSource decodingSource(final CharSource charSource) {
        Preconditions.checkNotNull(charSource);
        return new ByteSource() { // from class: com.google.common.io.BaseEncoding.2
            @Override // com.google.common.io.ByteSource
            public InputStream openStream() {
                return BaseEncoding.this.decodingStream(charSource.openStream());
            }
        };
    }

    @GwtIncompatible
    public abstract InputStream decodingStream(Reader reader);

    public String encode(byte[] bArr) {
        return encode(bArr, 0, bArr.length);
    }

    public abstract void encodeTo(Appendable appendable, byte[] bArr, int i, int i2);

    @GwtIncompatible
    public final ByteSink encodingSink(final CharSink charSink) {
        Preconditions.checkNotNull(charSink);
        return new ByteSink() { // from class: com.google.common.io.BaseEncoding.1
            @Override // com.google.common.io.ByteSink
            public OutputStream openStream() {
                return BaseEncoding.this.encodingStream(charSink.openStream());
            }
        };
    }

    @GwtIncompatible
    public abstract OutputStream encodingStream(Writer writer);

    public abstract BaseEncoding lowerCase();

    public abstract int maxDecodedSize(int i);

    public abstract int maxEncodedSize(int i);

    public abstract BaseEncoding omitPadding();

    public CharSequence trimTrailingPadding(CharSequence charSequence) {
        return (CharSequence) Preconditions.checkNotNull(charSequence);
    }

    public abstract BaseEncoding upperCase();

    public abstract BaseEncoding withPadChar(char c);

    public abstract BaseEncoding withSeparator(String str, int i);

    public final String encode(byte[] bArr, int i, int i2) {
        Preconditions.checkPositionIndexes(i, i + i2, bArr.length);
        StringBuilder sb = new StringBuilder(maxEncodedSize(i2));
        try {
            encodeTo(sb, bArr, i, i2);
            return sb.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
