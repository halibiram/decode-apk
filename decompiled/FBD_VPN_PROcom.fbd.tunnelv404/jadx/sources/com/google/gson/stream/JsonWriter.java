package com.google.gson.stream;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.gson.FormattingStyle;
import com.google.gson.Strictness;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import j$.util.Objects;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public class JsonWriter implements Closeable, Flushable {
    private static final String[] HTML_SAFE_REPLACEMENT_CHARS;
    private String deferredName;
    private String formattedColon;
    private String formattedComma;
    private FormattingStyle formattingStyle;
    private boolean htmlSafe;
    private final Writer out;
    private boolean serializeNulls;
    private int[] stack = new int[32];
    private int stackSize = 0;
    private Strictness strictness;
    private boolean usesEmptyNewlineAndIndent;
    private static final Pattern VALID_JSON_NUMBER_PATTERN = Pattern.compile(new ObfuscatedString(new long[]{7066348131823711396L, -1629951574920571192L, -2442714882858350385L, -3329556695243167555L, 8210935477905454866L, -2199927941723837437L, 7853775411846290040L, 2352913829232077876L}).toString());
    private static final String[] REPLACEMENT_CHARS = new String[128];

    static {
        for (int i = 0; i <= 31; i++) {
            REPLACEMENT_CHARS[i] = String.format(new ObfuscatedString(new long[]{-1561912134618264686L, -6705060750840822376L}).toString(), Integer.valueOf(i));
        }
        String[] strArr = REPLACEMENT_CHARS;
        strArr[34] = new ObfuscatedString(new long[]{-6768020754348702667L, 7861625707663799333L}).toString();
        strArr[92] = new ObfuscatedString(new long[]{-3109595144732126533L, 9178915615064367662L}).toString();
        strArr[9] = new ObfuscatedString(new long[]{-2079851130146853428L, 4316150645895735420L}).toString();
        strArr[8] = new ObfuscatedString(new long[]{6570906020558367126L, 2451204388086092779L}).toString();
        strArr[10] = new ObfuscatedString(new long[]{7253719441085625086L, -6202713135118310164L}).toString();
        strArr[13] = new ObfuscatedString(new long[]{4369536713928678538L, -2499900071364272304L}).toString();
        strArr[12] = new ObfuscatedString(new long[]{-4956643660814476054L, 7913799835457680891L}).toString();
        String[] strArr2 = (String[]) strArr.clone();
        HTML_SAFE_REPLACEMENT_CHARS = strArr2;
        strArr2[60] = new ObfuscatedString(new long[]{-2613590511062483889L, -7574607421651422858L}).toString();
        strArr2[62] = new ObfuscatedString(new long[]{-1928946088376868025L, -3277841695969375931L}).toString();
        strArr2[38] = new ObfuscatedString(new long[]{2503645524860602791L, -6714858613363655402L}).toString();
        strArr2[61] = new ObfuscatedString(new long[]{-733822834059496541L, -832091884924840217L}).toString();
        strArr2[39] = new ObfuscatedString(new long[]{3228705092874799591L, -7341875914902849769L}).toString();
    }

    public JsonWriter(Writer writer) {
        push(6);
        this.strictness = Strictness.LEGACY_STRICT;
        this.serializeNulls = true;
        Objects.requireNonNull(writer, new ObfuscatedString(new long[]{-8679313336709375543L, 974594816486291173L, -6811865932944390766L}).toString());
        this.out = writer;
        setFormattingStyle(FormattingStyle.COMPACT);
    }

    private static boolean alwaysCreatesValidJsonNumber(Class<? extends Number> cls) {
        if (cls != Integer.class && cls != Long.class && cls != Byte.class && cls != Short.class && cls != BigDecimal.class && cls != BigInteger.class && cls != AtomicInteger.class && cls != AtomicLong.class) {
            return false;
        }
        return true;
    }

    private void beforeName() {
        int peek = peek();
        if (peek == 5) {
            this.out.write(this.formattedComma);
        } else if (peek != 3) {
            throw new IllegalStateException(new ObfuscatedString(new long[]{5629294420106672463L, 6839269496312788798L, -7618578686599877261L}).toString());
        }
        newline();
        replaceTop(4);
    }

    private void beforeValue() {
        int peek = peek();
        if (peek != 1) {
            if (peek != 2) {
                if (peek != 4) {
                    if (peek != 6) {
                        if (peek == 7) {
                            if (this.strictness != Strictness.LENIENT) {
                                throw new IllegalStateException(new ObfuscatedString(new long[]{4473744743787214283L, 3156924167841051200L, -8843556045925984966L, 209116843116478912L, -5987905510546018219L, -3204599704501576057L}).toString());
                            }
                        } else {
                            throw new IllegalStateException(new ObfuscatedString(new long[]{3803471014485239570L, 8641471767328011677L, 6492185018244656898L}).toString());
                        }
                    }
                    replaceTop(7);
                    return;
                }
                this.out.append((CharSequence) this.formattedColon);
                replaceTop(5);
                return;
            }
            this.out.append((CharSequence) this.formattedComma);
            newline();
            return;
        }
        replaceTop(2);
        newline();
    }

    @CanIgnoreReturnValue
    private JsonWriter closeScope(int i, int i2, char c) {
        int peek = peek();
        if (peek != i2 && peek != i) {
            throw new IllegalStateException(new ObfuscatedString(new long[]{-6691884778379651652L, 2769207243866695913L, 3185315735927968033L}).toString());
        }
        if (this.deferredName == null) {
            this.stackSize--;
            if (peek == i2) {
                newline();
            }
            this.out.write(c);
            return this;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{1778256808103191134L, 5850494028583074449L, 2625119685377693721L}).toString() + this.deferredName);
    }

    private void newline() {
        if (this.usesEmptyNewlineAndIndent) {
            return;
        }
        this.out.write(this.formattingStyle.getNewline());
        int i = this.stackSize;
        for (int i2 = 1; i2 < i; i2++) {
            this.out.write(this.formattingStyle.getIndent());
        }
    }

    @CanIgnoreReturnValue
    private JsonWriter openScope(int i, char c) {
        beforeValue();
        push(i);
        this.out.write(c);
        return this;
    }

    private int peek() {
        int i = this.stackSize;
        if (i != 0) {
            return this.stack[i - 1];
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{-468740670288686219L, 7886216226454844305L, -3623512711706637077L, -2418269648725840312L}).toString());
    }

    private void push(int i) {
        int i2 = this.stackSize;
        int[] iArr = this.stack;
        if (i2 == iArr.length) {
            this.stack = Arrays.copyOf(iArr, i2 * 2);
        }
        int[] iArr2 = this.stack;
        int i3 = this.stackSize;
        this.stackSize = i3 + 1;
        iArr2[i3] = i;
    }

    private void replaceTop(int i) {
        this.stack[this.stackSize - 1] = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x004d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void string(String str) {
        String[] strArr;
        String obfuscatedString;
        if (this.htmlSafe) {
            strArr = HTML_SAFE_REPLACEMENT_CHARS;
        } else {
            strArr = REPLACEMENT_CHARS;
        }
        this.out.write(34);
        int length = str.length();
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            if (charAt < 128) {
                obfuscatedString = strArr[charAt];
                if (obfuscatedString == null) {
                }
                if (i < i2) {
                    this.out.write(str, i, i2 - i);
                }
                this.out.write(obfuscatedString);
                i = i2 + 1;
            } else {
                if (charAt == 8232) {
                    obfuscatedString = new ObfuscatedString(new long[]{-7527831873447707647L, 3568201486951958112L}).toString();
                } else if (charAt == 8233) {
                    obfuscatedString = new ObfuscatedString(new long[]{2905017039870103675L, 1172431668894390457L}).toString();
                }
                if (i < i2) {
                }
                this.out.write(obfuscatedString);
                i = i2 + 1;
            }
        }
        if (i < length) {
            this.out.write(str, i, length - i);
        }
        this.out.write(34);
    }

    private void writeDeferredName() {
        if (this.deferredName != null) {
            beforeName();
            string(this.deferredName);
            this.deferredName = null;
        }
    }

    @CanIgnoreReturnValue
    public JsonWriter beginArray() {
        writeDeferredName();
        return openScope(1, '[');
    }

    @CanIgnoreReturnValue
    public JsonWriter beginObject() {
        writeDeferredName();
        return openScope(3, '{');
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.out.close();
        int i = this.stackSize;
        if (i <= 1 && (i != 1 || this.stack[i - 1] == 7)) {
            this.stackSize = 0;
            return;
        }
        throw new IOException(new ObfuscatedString(new long[]{-1460074272254785937L, -2227178590620307705L, -109608611449089043L, -2066219162537544721L}).toString());
    }

    @CanIgnoreReturnValue
    public JsonWriter endArray() {
        return closeScope(1, 2, ']');
    }

    @CanIgnoreReturnValue
    public JsonWriter endObject() {
        return closeScope(3, 5, '}');
    }

    public void flush() {
        if (this.stackSize != 0) {
            this.out.flush();
            return;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{3781405285564110722L, 987974520992157217L, -3672792314850483248L, -7956168961099927889L}).toString());
    }

    public final FormattingStyle getFormattingStyle() {
        return this.formattingStyle;
    }

    public final boolean getSerializeNulls() {
        return this.serializeNulls;
    }

    public final Strictness getStrictness() {
        return this.strictness;
    }

    public final boolean isHtmlSafe() {
        return this.htmlSafe;
    }

    public boolean isLenient() {
        if (this.strictness == Strictness.LENIENT) {
            return true;
        }
        return false;
    }

    @CanIgnoreReturnValue
    public JsonWriter jsonValue(String str) {
        if (str == null) {
            return nullValue();
        }
        writeDeferredName();
        beforeValue();
        this.out.append((CharSequence) str);
        return this;
    }

    @CanIgnoreReturnValue
    public JsonWriter name(String str) {
        Objects.requireNonNull(str, new ObfuscatedString(new long[]{8472031091555786704L, -4155667551222464952L, -8784162670818973101L}).toString());
        if (this.deferredName == null) {
            int peek = peek();
            if (peek != 3 && peek != 5) {
                throw new IllegalStateException(new ObfuscatedString(new long[]{-8853666624263449547L, 8277587625084257731L, 4238178399575834583L, -5061084672200454566L, 8241632140497371720L, -3852212797257154593L, 1208981567979644985L}).toString());
            }
            this.deferredName = str;
            return this;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{-7830028716494834292L, 2165970059467150731L, 3868109425943623766L, 1683134175435763699L, -7447591865382396146L, -8366201643056680351L}).toString());
    }

    @CanIgnoreReturnValue
    public JsonWriter nullValue() {
        if (this.deferredName != null) {
            if (this.serializeNulls) {
                writeDeferredName();
            } else {
                this.deferredName = null;
                return this;
            }
        }
        beforeValue();
        this.out.write(new ObfuscatedString(new long[]{-3018396792763307039L, 3756402729940253009L}).toString());
        return this;
    }

    public final void setFormattingStyle(FormattingStyle formattingStyle) {
        boolean z;
        Objects.requireNonNull(formattingStyle);
        this.formattingStyle = formattingStyle;
        this.formattedComma = new ObfuscatedString(new long[]{2337046271088621874L, 4180622941025116995L}).toString();
        if (this.formattingStyle.usesSpaceAfterSeparators()) {
            this.formattedColon = new ObfuscatedString(new long[]{3429794089709590509L, -705049441523462106L}).toString();
            if (this.formattingStyle.getNewline().isEmpty()) {
                this.formattedComma = new ObfuscatedString(new long[]{8426039383704575585L, 1616224910453079920L}).toString();
            }
        } else {
            this.formattedColon = new ObfuscatedString(new long[]{-312410735887036181L, 4911785182272117422L}).toString();
        }
        if (this.formattingStyle.getNewline().isEmpty() && this.formattingStyle.getIndent().isEmpty()) {
            z = true;
        } else {
            z = false;
        }
        this.usesEmptyNewlineAndIndent = z;
    }

    public final void setHtmlSafe(boolean z) {
        this.htmlSafe = z;
    }

    public final void setIndent(String str) {
        if (str.isEmpty()) {
            setFormattingStyle(FormattingStyle.COMPACT);
        } else {
            setFormattingStyle(FormattingStyle.PRETTY.withIndent(str));
        }
    }

    @Deprecated
    public final void setLenient(boolean z) {
        Strictness strictness;
        if (z) {
            strictness = Strictness.LENIENT;
        } else {
            strictness = Strictness.LEGACY_STRICT;
        }
        setStrictness(strictness);
    }

    public final void setSerializeNulls(boolean z) {
        this.serializeNulls = z;
    }

    public final void setStrictness(Strictness strictness) {
        Objects.requireNonNull(strictness);
        this.strictness = strictness;
    }

    @CanIgnoreReturnValue
    public JsonWriter value(String str) {
        if (str == null) {
            return nullValue();
        }
        writeDeferredName();
        beforeValue();
        string(str);
        return this;
    }

    @CanIgnoreReturnValue
    public JsonWriter value(boolean z) {
        writeDeferredName();
        beforeValue();
        this.out.write((z ? new ObfuscatedString(new long[]{9105468018284607697L, -6617852558747319560L}) : new ObfuscatedString(new long[]{7383615201609830420L, 6687705858681380374L})).toString());
        return this;
    }

    @CanIgnoreReturnValue
    public JsonWriter value(Boolean bool) {
        if (bool == null) {
            return nullValue();
        }
        writeDeferredName();
        beforeValue();
        this.out.write((bool.booleanValue() ? new ObfuscatedString(new long[]{-3240457997211151755L, 4527734948858271355L}) : new ObfuscatedString(new long[]{8531410433227521388L, -7709985508664194429L})).toString());
        return this;
    }

    @CanIgnoreReturnValue
    public JsonWriter value(float f) {
        writeDeferredName();
        if (this.strictness != Strictness.LENIENT && (Float.isNaN(f) || Float.isInfinite(f))) {
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{536066236472188499L, 2067153967813013614L, 488064108296341475L, -1755223324201583349L, 1847792976808191181L, -3381240159321351904L}).toString() + f);
        }
        beforeValue();
        this.out.append((CharSequence) Float.toString(f));
        return this;
    }

    @CanIgnoreReturnValue
    public JsonWriter value(double d) {
        writeDeferredName();
        if (this.strictness != Strictness.LENIENT && (Double.isNaN(d) || Double.isInfinite(d))) {
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{-1384260698565997168L, -4024519693390328032L, 5570128178001187520L, 5454866744337916497L, 6366300315557430030L, -1777190104247097033L}).toString() + d);
        }
        beforeValue();
        this.out.append((CharSequence) Double.toString(d));
        return this;
    }

    @CanIgnoreReturnValue
    public JsonWriter value(long j) {
        writeDeferredName();
        beforeValue();
        this.out.write(Long.toString(j));
        return this;
    }

    @CanIgnoreReturnValue
    public JsonWriter value(Number number) {
        if (number == null) {
            return nullValue();
        }
        writeDeferredName();
        String obj = number.toString();
        Class<?> cls = number.getClass();
        if (!alwaysCreatesValidJsonNumber(cls)) {
            if (!obj.equals(new ObfuscatedString(new long[]{7173772753406513289L, 3852820935864041125L, 5945301359333629431L}).toString()) && !obj.equals(new ObfuscatedString(new long[]{1493070213823752166L, 4460391816468862957L}).toString()) && !obj.equals(new ObfuscatedString(new long[]{-2104019972327740994L, 2776491525274755271L}).toString())) {
                if (cls != Float.class && cls != Double.class && !VALID_JSON_NUMBER_PATTERN.matcher(obj).matches()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(new ObfuscatedString(new long[]{-1117860849988053785L, -3734527599972270606L, -9099843442685131952L, -2187404868474266095L}).toString());
                    sb.append(cls);
                    throw new IllegalArgumentException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{8811393247722813401L, 7468967255451034387L, 1244189109587581002L, -3513516188312847095L, 4725737760614139549L}), sb, obj));
                }
            } else if (this.strictness != Strictness.LENIENT) {
                throw new IllegalArgumentException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-5633081111817187653L, -5846442997218334401L, -4087271118787855795L, -494299548108718206L, -7854534564437435878L, -8331038647145803660L}), new StringBuilder(), obj));
            }
        }
        beforeValue();
        this.out.append((CharSequence) obj);
        return this;
    }
}
