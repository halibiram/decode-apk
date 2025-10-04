package com.google.gson.stream;

import com.google.gson.Strictness;
import com.google.gson.internal.JsonReaderInternalAccess;
import com.google.gson.internal.TroubleshootingGuide;
import com.google.gson.internal.bind.JsonTreeReader;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import j$.util.Objects;
import java.io.Closeable;
import java.io.EOFException;
import java.io.Reader;
import java.util.Arrays;
import kotlin.text.Typography;

/* loaded from: classes3.dex */
public class JsonReader implements Closeable {
    static final int BUFFER_SIZE = 1024;
    static final int DEFAULT_NESTING_LIMIT = 255;
    private static final long MIN_INCOMPLETE_INTEGER = -922337203685477580L;
    private static final int NUMBER_CHAR_DECIMAL = 3;
    private static final int NUMBER_CHAR_DIGIT = 2;
    private static final int NUMBER_CHAR_EXP_DIGIT = 7;
    private static final int NUMBER_CHAR_EXP_E = 5;
    private static final int NUMBER_CHAR_EXP_SIGN = 6;
    private static final int NUMBER_CHAR_FRACTION_DIGIT = 4;
    private static final int NUMBER_CHAR_NONE = 0;
    private static final int NUMBER_CHAR_SIGN = 1;
    private static final int PEEKED_BEGIN_ARRAY = 3;
    private static final int PEEKED_BEGIN_OBJECT = 1;
    private static final int PEEKED_BUFFERED = 11;
    private static final int PEEKED_DOUBLE_QUOTED = 9;
    private static final int PEEKED_DOUBLE_QUOTED_NAME = 13;
    private static final int PEEKED_END_ARRAY = 4;
    private static final int PEEKED_END_OBJECT = 2;
    private static final int PEEKED_EOF = 17;
    private static final int PEEKED_FALSE = 6;
    private static final int PEEKED_LONG = 15;
    private static final int PEEKED_NONE = 0;
    private static final int PEEKED_NULL = 7;
    private static final int PEEKED_NUMBER = 16;
    private static final int PEEKED_SINGLE_QUOTED = 8;
    private static final int PEEKED_SINGLE_QUOTED_NAME = 12;
    private static final int PEEKED_TRUE = 5;
    private static final int PEEKED_UNQUOTED = 10;
    private static final int PEEKED_UNQUOTED_NAME = 14;
    private final Reader in;
    private int[] pathIndices;
    private String[] pathNames;
    private long peekedLong;
    private int peekedNumberLength;
    private String peekedString;
    private int[] stack;
    private Strictness strictness = Strictness.LEGACY_STRICT;
    private int nestingLimit = 255;
    private final char[] buffer = new char[1024];
    private int pos = 0;
    private int limit = 0;
    private int lineNumber = 0;
    private int lineStart = 0;
    int peeked = 0;
    private int stackSize = 1;

    static {
        JsonReaderInternalAccess.INSTANCE = new JsonReaderInternalAccess() { // from class: com.google.gson.stream.JsonReader.1
            @Override // com.google.gson.internal.JsonReaderInternalAccess
            public void promoteNameToValue(JsonReader jsonReader) {
                if (jsonReader instanceof JsonTreeReader) {
                    ((JsonTreeReader) jsonReader).promoteNameToValue();
                    return;
                }
                int i = jsonReader.peeked;
                if (i == 0) {
                    i = jsonReader.doPeek();
                }
                if (i == 13) {
                    jsonReader.peeked = 9;
                } else if (i == 12) {
                    jsonReader.peeked = 8;
                } else {
                    if (i == 14) {
                        jsonReader.peeked = 10;
                        return;
                    }
                    throw jsonReader.unexpectedTokenError(new ObfuscatedString(new long[]{9077726354665326260L, 2209874950960683546L}).toString());
                }
            }
        };
    }

    public JsonReader(Reader reader) {
        int[] iArr = new int[32];
        this.stack = iArr;
        iArr[0] = 6;
        this.pathNames = new String[32];
        this.pathIndices = new int[32];
        Objects.requireNonNull(reader, new ObfuscatedString(new long[]{-7083024505601822617L, 8293820440978894259L, -6437602289700095789L}).toString());
        this.in = reader;
    }

    private void checkLenient() {
        if (this.strictness == Strictness.LENIENT) {
        } else {
            throw syntaxError(new ObfuscatedString(new long[]{-5212502074420048351L, -171312677853148996L, 8881773084482655857L, -4608094873416921863L, -7763157632622029803L, 1427747925227301713L, 3964713331817830636L, -8512323425177449846L, -4344461211637182252L, 16088153097710133L, 1439984308935652578L}).toString());
        }
    }

    private void consumeNonExecutePrefix() {
        nextNonWhitespace(true);
        int i = this.pos;
        this.pos = i - 1;
        if (i + 4 > this.limit && !fillBuffer(5)) {
            return;
        }
        int i2 = this.pos;
        char[] cArr = this.buffer;
        if (cArr[i2] == ')' && cArr[i2 + 1] == ']' && cArr[i2 + 2] == '}' && cArr[i2 + 3] == '\'' && cArr[i2 + 4] == '\n') {
            this.pos = i2 + 5;
        }
    }

    private boolean fillBuffer(int i) {
        int i2;
        int i3;
        char[] cArr = this.buffer;
        int i4 = this.lineStart;
        int i5 = this.pos;
        this.lineStart = i4 - i5;
        int i6 = this.limit;
        if (i6 != i5) {
            int i7 = i6 - i5;
            this.limit = i7;
            System.arraycopy(cArr, i5, cArr, 0, i7);
        } else {
            this.limit = 0;
        }
        this.pos = 0;
        do {
            Reader reader = this.in;
            int i8 = this.limit;
            int read = reader.read(cArr, i8, cArr.length - i8);
            if (read == -1) {
                return false;
            }
            i2 = this.limit + read;
            this.limit = i2;
            if (this.lineNumber == 0 && (i3 = this.lineStart) == 0 && i2 > 0 && cArr[0] == 65279) {
                this.pos++;
                this.lineStart = i3 + 1;
                i++;
            }
        } while (i2 < i);
        return true;
    }

    private String getPath(boolean z) {
        StringBuilder sb = new StringBuilder("$");
        int i = 0;
        while (true) {
            int i2 = this.stackSize;
            if (i < i2) {
                int i3 = this.stack[i];
                switch (i3) {
                    case 1:
                    case 2:
                        int i4 = this.pathIndices[i];
                        if (z && i4 > 0 && i == i2 - 1) {
                            i4--;
                        }
                        sb.append('[');
                        sb.append(i4);
                        sb.append(']');
                        break;
                    case 3:
                    case 4:
                    case 5:
                        sb.append('.');
                        String str = this.pathNames[i];
                        if (str == null) {
                            break;
                        } else {
                            sb.append(str);
                            break;
                        }
                    case 6:
                    case 7:
                    case 8:
                        break;
                    default:
                        throw new AssertionError(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{2204650485592252378L, -3580563972897968568L, -5566637543128137551L, 1632244164624091704L}), new StringBuilder(), i3));
                }
                i++;
            } else {
                return sb.toString();
            }
        }
    }

    private boolean isLiteral(char c) {
        if (c != '\t' && c != '\n' && c != '\f' && c != '\r' && c != ' ') {
            if (c != '#') {
                if (c != ',') {
                    if (c != '/' && c != '=') {
                        if (c != '{' && c != '}' && c != ':') {
                            if (c != ';') {
                                switch (c) {
                                    case '[':
                                    case ']':
                                        return false;
                                    case '\\':
                                        break;
                                    default:
                                        return true;
                                }
                            }
                        } else {
                            return false;
                        }
                    }
                } else {
                    return false;
                }
            }
            checkLenient();
            return false;
        }
        return false;
    }

    private int nextNonWhitespace(boolean z) {
        char[] cArr = this.buffer;
        int i = this.pos;
        int i2 = this.limit;
        while (true) {
            if (i == i2) {
                this.pos = i;
                if (!fillBuffer(1)) {
                    if (!z) {
                        return -1;
                    }
                    throw new EOFException(new ObfuscatedString(new long[]{-1403605390133085191L, -347533002919868566L, 7609551109425915386L}).toString() + locationString());
                }
                i = this.pos;
                i2 = this.limit;
            }
            int i3 = i + 1;
            char c = cArr[i];
            if (c == '\n') {
                this.lineNumber++;
                this.lineStart = i3;
            } else if (c != ' ' && c != '\r' && c != '\t') {
                if (c == '/') {
                    this.pos = i3;
                    if (i3 == i2) {
                        this.pos = i;
                        boolean fillBuffer = fillBuffer(2);
                        this.pos++;
                        if (!fillBuffer) {
                            return c;
                        }
                    }
                    checkLenient();
                    int i4 = this.pos;
                    char c2 = cArr[i4];
                    if (c2 != '*') {
                        if (c2 != '/') {
                            return c;
                        }
                        this.pos = i4 + 1;
                        skipToEndOfLine();
                        i = this.pos;
                        i2 = this.limit;
                    } else {
                        this.pos = i4 + 1;
                        if (skipTo(new ObfuscatedString(new long[]{-6430276574981362190L, 8216179821673595589L}).toString())) {
                            i = this.pos + 2;
                            i2 = this.limit;
                        } else {
                            throw syntaxError(new ObfuscatedString(new long[]{5627371364250717611L, 3794396078584164484L, 1505619083099517125L, -1179137594363790630L}).toString());
                        }
                    }
                } else if (c == '#') {
                    this.pos = i3;
                    checkLenient();
                    skipToEndOfLine();
                    i = this.pos;
                    i2 = this.limit;
                } else {
                    this.pos = i3;
                    return c;
                }
            }
            i = i3;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x007a, code lost:
    
        if (r2 != null) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x007c, code lost:
    
        r2 = new java.lang.StringBuilder(java.lang.Math.max((r3 - r4) * 2, 16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x008a, code lost:
    
        r2.append(r1, r4, r3 - r4);
        r10.pos = r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String nextQuotedValue(char c) {
        char[] cArr = this.buffer;
        StringBuilder sb = null;
        do {
            int i = this.pos;
            int i2 = this.limit;
            while (true) {
                int i3 = i2;
                int i4 = i;
                while (i < i3) {
                    int i5 = i + 1;
                    char c2 = cArr[i];
                    if (this.strictness == Strictness.STRICT && c2 < ' ') {
                        throw syntaxError(new ObfuscatedString(new long[]{3148160013909317412L, 5113200961398507859L, -7081280916638395707L, 2482742663848042387L, 2094062129727987442L, 8228070609746927946L, -7591293216968265005L, -5146071013196400926L, 6236507983367397952L, -502890112913336990L, -1929426290080797462L}).toString());
                    }
                    if (c2 == c) {
                        this.pos = i5;
                        int i6 = (i5 - i4) - 1;
                        if (sb == null) {
                            return new String(cArr, i4, i6);
                        }
                        sb.append(cArr, i4, i6);
                        return sb.toString();
                    }
                    if (c2 == '\\') {
                        this.pos = i5;
                        int i7 = i5 - i4;
                        int i8 = i7 - 1;
                        if (sb == null) {
                            sb = new StringBuilder(Math.max(i7 * 2, 16));
                        }
                        sb.append(cArr, i4, i8);
                        sb.append(readEscapeCharacter());
                        i = this.pos;
                        i2 = this.limit;
                    } else {
                        if (c2 == '\n') {
                            this.lineNumber++;
                            this.lineStart = i5;
                        }
                        i = i5;
                    }
                }
                break;
            }
        } while (fillBuffer(1));
        throw syntaxError(new ObfuscatedString(new long[]{6590454228098488540L, -3959005688642120072L, -6873864124909548856L, 7561481286458195435L}).toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x004a, code lost:
    
        checkLenient();
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:54:0x0044. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String nextUnquotedValue() {
        String sb;
        StringBuilder sb2 = null;
        int i = 0;
        do {
            int i2 = 0;
            while (true) {
                int i3 = this.pos;
                if (i3 + i2 < this.limit) {
                    char c = this.buffer[i3 + i2];
                    if (c != '\t' && c != '\n' && c != '\f' && c != '\r' && c != ' ') {
                        if (c != '#') {
                            if (c != ',') {
                                if (c != '/' && c != '=') {
                                    if (c != '{' && c != '}' && c != ':') {
                                        if (c != ';') {
                                            switch (c) {
                                                case '[':
                                                case ']':
                                                    break;
                                                case '\\':
                                                    break;
                                                default:
                                                    i2++;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                } else if (i2 < this.buffer.length) {
                    if (fillBuffer(i2 + 1)) {
                    }
                } else {
                    if (sb2 == null) {
                        sb2 = new StringBuilder(Math.max(i2, 16));
                    }
                    sb2.append(this.buffer, this.pos, i2);
                    this.pos += i2;
                }
            }
            i = i2;
            if (sb2 != null) {
                sb = new String(this.buffer, this.pos, i);
            } else {
                sb2.append(this.buffer, this.pos, i);
                sb = sb2.toString();
            }
            this.pos += i;
            return sb;
        } while (fillBuffer(1));
        if (sb2 != null) {
        }
        this.pos += i;
        return sb;
    }

    private int peekKeyword() {
        String obfuscatedString;
        String obfuscatedString2;
        int i;
        boolean z;
        char c = this.buffer[this.pos];
        if (c != 't' && c != 'T') {
            if (c != 'f' && c != 'F') {
                if (c != 'n' && c != 'N') {
                    return 0;
                }
                obfuscatedString = new ObfuscatedString(new long[]{4694251075887065575L, 9053076741034644488L}).toString();
                obfuscatedString2 = new ObfuscatedString(new long[]{1721443256233115366L, -4697456632052700470L}).toString();
                i = 7;
            } else {
                obfuscatedString = new ObfuscatedString(new long[]{-2214261732447532538L, 2996126719991025227L}).toString();
                obfuscatedString2 = new ObfuscatedString(new long[]{8827849314836244820L, -1351552169514659169L}).toString();
                i = 6;
            }
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{-30253759123151525L, 2600268175804087366L}).toString();
            obfuscatedString2 = new ObfuscatedString(new long[]{4301027692452106115L, 2824221331578339499L}).toString();
            i = 5;
        }
        if (this.strictness != Strictness.STRICT) {
            z = true;
        } else {
            z = false;
        }
        int length = obfuscatedString.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (this.pos + i2 >= this.limit && !fillBuffer(i2 + 1)) {
                return 0;
            }
            char c2 = this.buffer[this.pos + i2];
            if (c2 != obfuscatedString.charAt(i2) && (!z || c2 != obfuscatedString2.charAt(i2))) {
                return 0;
            }
        }
        if ((this.pos + length < this.limit || fillBuffer(1 + length)) && isLiteral(this.buffer[this.pos + length])) {
            return 0;
        }
        this.pos += length;
        this.peeked = i;
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0095, code lost:
    
        if (r9 != 2) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0097, code lost:
    
        if (r10 == false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x009d, code lost:
    
        if (r11 != Long.MIN_VALUE) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x009f, code lost:
    
        if (r13 == false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x00a5, code lost:
    
        if (r11 != 0) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x00a7, code lost:
    
        if (r13 != false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00a9, code lost:
    
        if (r13 == false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x00ac, code lost:
    
        r11 = -r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00ad, code lost:
    
        r18.peekedLong = r11;
        r18.pos += r8;
        r18.peeked = 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00b8, code lost:
    
        return 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00b9, code lost:
    
        if (r9 == 2) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00bc, code lost:
    
        if (r9 == 4) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00bf, code lost:
    
        if (r9 != 7) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00c2, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00c4, code lost:
    
        r18.peekedNumberLength = r8;
        r18.peeked = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00ca, code lost:
    
        return 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0093, code lost:
    
        if (isLiteral(r14) != false) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x00cb, code lost:
    
        return 0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int peekNumber() {
        boolean z;
        char[] cArr = this.buffer;
        int i = this.pos;
        int i2 = this.limit;
        int i3 = 0;
        int i4 = 0;
        char c = 0;
        boolean z2 = true;
        long j = 0;
        boolean z3 = false;
        while (true) {
            if (i + i4 == i2) {
                if (i4 == cArr.length) {
                    return i3;
                }
                if (!fillBuffer(i4 + 1)) {
                    break;
                }
                i = this.pos;
                i2 = this.limit;
            }
            char c2 = cArr[i + i4];
            if (c2 != '+') {
                if (c2 != 'E' && c2 != 'e') {
                    if (c2 != '-') {
                        if (c2 != '.') {
                            if (c2 < '0' || c2 > '9') {
                                break;
                            }
                            if (c != 1 && c != 0) {
                                if (c == 2) {
                                    if (j == 0) {
                                        return 0;
                                    }
                                    long j2 = (10 * j) - (c2 - '0');
                                    if (j <= -922337203685477580L && (j != -922337203685477580L || j2 >= j)) {
                                        z = false;
                                    } else {
                                        z = true;
                                    }
                                    z2 &= z;
                                    j = j2;
                                } else if (c == 3) {
                                    i3 = 0;
                                    c = 4;
                                } else if (c == 5 || c == 6) {
                                    i3 = 0;
                                    c = 7;
                                }
                                i3 = 0;
                            } else {
                                j = -(c2 - '0');
                                i3 = 0;
                                c = 2;
                            }
                        } else {
                            i3 = 0;
                            if (c != 2) {
                                return 0;
                            }
                            c = 3;
                        }
                    } else {
                        i3 = 0;
                        if (c == 0) {
                            c = 1;
                            z3 = true;
                        } else if (c != 5) {
                            return 0;
                        }
                    }
                } else {
                    i3 = 0;
                    if (c != 2 && c != 4) {
                        return 0;
                    }
                    c = 5;
                }
                i4++;
            } else {
                i3 = 0;
                if (c != 5) {
                    return 0;
                }
            }
            c = 6;
            i4++;
        }
    }

    private void push(int i) {
        int i2 = this.stackSize;
        if (i2 - 1 < this.nestingLimit) {
            int[] iArr = this.stack;
            if (i2 == iArr.length) {
                int i3 = i2 * 2;
                this.stack = Arrays.copyOf(iArr, i3);
                this.pathIndices = Arrays.copyOf(this.pathIndices, i3);
                this.pathNames = (String[]) Arrays.copyOf(this.pathNames, i3);
            }
            int[] iArr2 = this.stack;
            int i4 = this.stackSize;
            this.stackSize = i4 + 1;
            iArr2[i4] = i;
            return;
        }
        throw new MalformedJsonException(new ObfuscatedString(new long[]{3919815985169524329L, 3304931016858003973L, -6763947097926934429L}).toString() + this.nestingLimit + new ObfuscatedString(new long[]{368065816889657024L, 8776681786868815184L}).toString() + locationString());
    }

    private char readEscapeCharacter() {
        int i;
        if (this.pos == this.limit && !fillBuffer(1)) {
            throw syntaxError(new ObfuscatedString(new long[]{-234542312599518802L, -2879052272853326482L, 4053955232583311139L, -3821676028161678140L, -4125220624134253769L}).toString());
        }
        char[] cArr = this.buffer;
        int i2 = this.pos;
        int i3 = i2 + 1;
        this.pos = i3;
        char c = cArr[i2];
        if (c != '\n') {
            if (c != '\"') {
                if (c != '\'') {
                    if (c != '/' && c != '\\') {
                        if (c != 'b') {
                            if (c != 'f') {
                                if (c == 'n') {
                                    return '\n';
                                }
                                if (c != 'r') {
                                    if (c != 't') {
                                        if (c == 'u') {
                                            if (i2 + 5 > this.limit && !fillBuffer(4)) {
                                                throw syntaxError(new ObfuscatedString(new long[]{1974120474328987800L, -4983306015033847991L, -6072604248217740255L, 2361397742019410120L, 5442287239309054927L}).toString());
                                            }
                                            int i4 = this.pos;
                                            int i5 = i4 + 4;
                                            int i6 = 0;
                                            while (i4 < i5) {
                                                char c2 = this.buffer[i4];
                                                int i7 = i6 << 4;
                                                if (c2 >= '0' && c2 <= '9') {
                                                    i = c2 - '0';
                                                } else if (c2 >= 'a' && c2 <= 'f') {
                                                    i = c2 - 'W';
                                                } else if (c2 >= 'A' && c2 <= 'F') {
                                                    i = c2 - '7';
                                                } else {
                                                    throw syntaxError(new ObfuscatedString(new long[]{-6268328433338927429L, -8766162315383547428L, 1583788940389370708L, -7450267280579720929L, -3163756950184797714L}).toString() + new String(this.buffer, this.pos, 4));
                                                }
                                                i6 = i + i7;
                                                i4++;
                                            }
                                            this.pos += 4;
                                            return (char) i6;
                                        }
                                        throw syntaxError(new ObfuscatedString(new long[]{-1044179523292963026L, -3654806682556231255L, 6206139654166089119L, 8888426449116437334L}).toString());
                                    }
                                    return '\t';
                                }
                                return '\r';
                            }
                            return '\f';
                        }
                        return '\b';
                    }
                }
            }
            return c;
        }
        if (this.strictness != Strictness.STRICT) {
            this.lineNumber++;
            this.lineStart = i3;
        } else {
            throw syntaxError(new ObfuscatedString(new long[]{4063973040089351561L, -4659267328192851923L, -2145270448540412252L, -1687445342047517691L, -6273635493840369993L, 1926953634996070477L, 1640291596447220408L}).toString());
        }
        if (this.strictness == Strictness.STRICT) {
            throw syntaxError(new ObfuscatedString(new long[]{-2621674109923314068L, 7819931087144661033L, 8104059900943919597L, 5363338090007232130L, -8019979089756335346L, -4807735786142311113L, -2053243342510915551L}).toString());
        }
        return c;
    }

    private void skipQuotedValue(char c) {
        char[] cArr = this.buffer;
        do {
            int i = this.pos;
            int i2 = this.limit;
            while (i < i2) {
                int i3 = i + 1;
                char c2 = cArr[i];
                if (c2 == c) {
                    this.pos = i3;
                    return;
                }
                if (c2 == '\\') {
                    this.pos = i3;
                    readEscapeCharacter();
                    i = this.pos;
                    i2 = this.limit;
                } else {
                    if (c2 == '\n') {
                        this.lineNumber++;
                        this.lineStart = i3;
                    }
                    i = i3;
                }
            }
            this.pos = i;
        } while (fillBuffer(1));
        throw syntaxError(new ObfuscatedString(new long[]{9144609572635884206L, -6968250341960077808L, -6755904776257806487L, -6695042852056812093L}).toString());
    }

    private boolean skipTo(String str) {
        int length = str.length();
        while (true) {
            if (this.pos + length > this.limit && !fillBuffer(length)) {
                return false;
            }
            char[] cArr = this.buffer;
            int i = this.pos;
            if (cArr[i] == '\n') {
                this.lineNumber++;
                this.lineStart = i + 1;
            } else {
                for (int i2 = 0; i2 < length; i2++) {
                    if (this.buffer[this.pos + i2] != str.charAt(i2)) {
                        break;
                    }
                }
                return true;
            }
            this.pos++;
        }
    }

    private void skipToEndOfLine() {
        char c;
        do {
            if (this.pos < this.limit || fillBuffer(1)) {
                char[] cArr = this.buffer;
                int i = this.pos;
                int i2 = i + 1;
                this.pos = i2;
                c = cArr[i];
                if (c == '\n') {
                    this.lineNumber++;
                    this.lineStart = i2;
                    return;
                }
            } else {
                return;
            }
        } while (c != '\r');
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
        	at jadx.core.dex.visitors.regions.RegionMaker.calcSwitchOut(RegionMaker.java:923)
        	at jadx.core.dex.visitors.regions.RegionMaker.processSwitch(RegionMaker.java:797)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:157)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:740)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:740)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:735)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:152)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeEndlessLoop(RegionMaker.java:411)
        	at jadx.core.dex.visitors.regions.RegionMaker.processLoop(RegionMaker.java:201)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:135)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMaker.processLoop(RegionMaker.java:242)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:135)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:91)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
        */
    private void skipUnquotedValue() {
        /*
            r4 = this;
        L0:
            r0 = 0
        L1:
            int r1 = r4.pos
            int r2 = r1 + r0
            int r3 = r4.limit
            if (r2 >= r3) goto L51
            char[] r2 = r4.buffer
            int r1 = r1 + r0
            char r1 = r2[r1]
            r2 = 9
            if (r1 == r2) goto L4b
            r2 = 10
            if (r1 == r2) goto L4b
            r2 = 12
            if (r1 == r2) goto L4b
            r2 = 13
            if (r1 == r2) goto L4b
            r2 = 32
            if (r1 == r2) goto L4b
            r2 = 35
            if (r1 == r2) goto L48
            r2 = 44
            if (r1 == r2) goto L4b
            r2 = 47
            if (r1 == r2) goto L48
            r2 = 61
            if (r1 == r2) goto L48
            r2 = 123(0x7b, float:1.72E-43)
            if (r1 == r2) goto L4b
            r2 = 125(0x7d, float:1.75E-43)
            if (r1 == r2) goto L4b
            r2 = 58
            if (r1 == r2) goto L4b
            r2 = 59
            if (r1 == r2) goto L48
            switch(r1) {
                case 91: goto L4b;
                case 92: goto L48;
                case 93: goto L4b;
                default: goto L45;
            }
        L45:
            int r0 = r0 + 1
            goto L1
        L48:
            r4.checkLenient()
        L4b:
            int r1 = r4.pos
            int r1 = r1 + r0
            r4.pos = r1
            return
        L51:
            int r1 = r1 + r0
            r4.pos = r1
            r0 = 1
            boolean r0 = r4.fillBuffer(r0)
            if (r0 != 0) goto L0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.JsonReader.skipUnquotedValue():void");
    }

    private MalformedJsonException syntaxError(String str) {
        StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(str);
        m3341xc20437a5.append(locationString());
        m3341xc20437a5.append(new ObfuscatedString(new long[]{-3101868939623609675L, -4680672491446014084L}).toString());
        m3341xc20437a5.append(TroubleshootingGuide.createUrl(new ObfuscatedString(new long[]{-2415180381489286124L, 176726799559673823L, 3969661415190996847L}).toString()));
        throw new MalformedJsonException(m3341xc20437a5.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public IllegalStateException unexpectedTokenError(String str) {
        ObfuscatedString obfuscatedString;
        if (peek() == JsonToken.NULL) {
            obfuscatedString = new ObfuscatedString(new long[]{-3951389448285087338L, -3557741010915906086L, -7379529699587642946L, 7567450705095557776L});
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{4751547263477652843L, -7250782209286046785L, 43443140211647581L, 2236123581532600449L, 7622901775891857928L});
        }
        return new IllegalStateException(new ObfuscatedString(new long[]{-1695668866340823908L, 6567910613302163210L, 5344063214430530032L}).toString() + str + new ObfuscatedString(new long[]{-4527214706089218413L, 1067634686449228465L, -2961353098771042125L}).toString() + peek() + locationString() + new ObfuscatedString(new long[]{-953255249131130803L, 5381537249500370083L}).toString() + TroubleshootingGuide.createUrl(obfuscatedString.toString()));
    }

    public void beginArray() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 3) {
            push(1);
            this.pathIndices[this.stackSize - 1] = 0;
            this.peeked = 0;
            return;
        }
        throw unexpectedTokenError(new ObfuscatedString(new long[]{1819939732529837954L, 2805416127229142938L, 5388133940010511695L}).toString());
    }

    public void beginObject() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 1) {
            push(3);
            this.peeked = 0;
            return;
        }
        throw unexpectedTokenError(new ObfuscatedString(new long[]{5034232674873607774L, 2097731076581052590L, 4155248264508025397L}).toString());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.peeked = 0;
        this.stack[0] = 8;
        this.stackSize = 1;
        this.in.close();
    }

    public int doPeek() {
        int nextNonWhitespace;
        int[] iArr = this.stack;
        int i = this.stackSize;
        int i2 = iArr[i - 1];
        if (i2 == 1) {
            iArr[i - 1] = 2;
        } else if (i2 == 2) {
            int nextNonWhitespace2 = nextNonWhitespace(true);
            if (nextNonWhitespace2 != 44) {
                if (nextNonWhitespace2 != 59) {
                    if (nextNonWhitespace2 == 93) {
                        this.peeked = 4;
                        return 4;
                    }
                    throw syntaxError(new ObfuscatedString(new long[]{6362532430135193898L, 3733348560519342385L, 5803621634518762871L, 2060917471187029816L}).toString());
                }
                checkLenient();
            }
        } else if (i2 != 3 && i2 != 5) {
            if (i2 == 4) {
                iArr[i - 1] = 5;
                int nextNonWhitespace3 = nextNonWhitespace(true);
                if (nextNonWhitespace3 != 58) {
                    if (nextNonWhitespace3 == 61) {
                        checkLenient();
                        if (this.pos < this.limit || fillBuffer(1)) {
                            char[] cArr = this.buffer;
                            int i3 = this.pos;
                            if (cArr[i3] == '>') {
                                this.pos = i3 + 1;
                            }
                        }
                    } else {
                        throw syntaxError(new ObfuscatedString(new long[]{1227227301979167703L, 8542981327087960337L, 2068738243805729970L}).toString());
                    }
                }
            } else if (i2 == 6) {
                if (this.strictness == Strictness.LENIENT) {
                    consumeNonExecutePrefix();
                }
                this.stack[this.stackSize - 1] = 7;
            } else if (i2 == 7) {
                if (nextNonWhitespace(false) == -1) {
                    this.peeked = 17;
                    return 17;
                }
                checkLenient();
                this.pos--;
            } else if (i2 == 8) {
                throw new IllegalStateException(new ObfuscatedString(new long[]{-7187840503286261106L, -8145839259502215651L, -592258697996330561L, 3611019195110589069L}).toString());
            }
        } else {
            iArr[i - 1] = 4;
            if (i2 == 5 && (nextNonWhitespace = nextNonWhitespace(true)) != 44) {
                if (nextNonWhitespace != 59) {
                    if (nextNonWhitespace == 125) {
                        this.peeked = 2;
                        return 2;
                    }
                    throw syntaxError(new ObfuscatedString(new long[]{4654071939041176955L, -7039883453732954467L, 8569190675675086946L, 798318996811809898L}).toString());
                }
                checkLenient();
            }
            int nextNonWhitespace4 = nextNonWhitespace(true);
            if (nextNonWhitespace4 != 34) {
                if (nextNonWhitespace4 != 39) {
                    if (nextNonWhitespace4 != 125) {
                        checkLenient();
                        this.pos--;
                        if (isLiteral((char) nextNonWhitespace4)) {
                            this.peeked = 14;
                            return 14;
                        }
                        throw syntaxError(new ObfuscatedString(new long[]{6503918309752103101L, -267039658470446845L, 1442921481367868430L}).toString());
                    }
                    if (i2 != 5) {
                        this.peeked = 2;
                        return 2;
                    }
                    throw syntaxError(new ObfuscatedString(new long[]{-5387719416817648711L, 526378097076344182L, -7497951040506767473L}).toString());
                }
                checkLenient();
                this.peeked = 12;
                return 12;
            }
            this.peeked = 13;
            return 13;
        }
        int nextNonWhitespace5 = nextNonWhitespace(true);
        if (nextNonWhitespace5 != 34) {
            if (nextNonWhitespace5 != 39) {
                if (nextNonWhitespace5 != 44 && nextNonWhitespace5 != 59) {
                    if (nextNonWhitespace5 != 91) {
                        if (nextNonWhitespace5 != 93) {
                            if (nextNonWhitespace5 != 123) {
                                this.pos--;
                                int peekKeyword = peekKeyword();
                                if (peekKeyword != 0) {
                                    return peekKeyword;
                                }
                                int peekNumber = peekNumber();
                                if (peekNumber != 0) {
                                    return peekNumber;
                                }
                                if (isLiteral(this.buffer[this.pos])) {
                                    checkLenient();
                                    this.peeked = 10;
                                    return 10;
                                }
                                throw syntaxError(new ObfuscatedString(new long[]{2126549687308866148L, 7323362864995421154L, -5102420263602464533L}).toString());
                            }
                            this.peeked = 1;
                            return 1;
                        }
                        if (i2 == 1) {
                            this.peeked = 4;
                            return 4;
                        }
                    } else {
                        this.peeked = 3;
                        return 3;
                    }
                }
                if (i2 != 1 && i2 != 2) {
                    throw syntaxError(new ObfuscatedString(new long[]{642839735465943028L, -5991393217786363687L, 1366564763938403388L}).toString());
                }
                checkLenient();
                this.pos--;
                this.peeked = 7;
                return 7;
            }
            checkLenient();
            this.peeked = 8;
            return 8;
        }
        this.peeked = 9;
        return 9;
    }

    public void endArray() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 4) {
            int i2 = this.stackSize;
            this.stackSize = i2 - 1;
            int[] iArr = this.pathIndices;
            int i3 = i2 - 2;
            iArr[i3] = iArr[i3] + 1;
            this.peeked = 0;
            return;
        }
        throw unexpectedTokenError(new ObfuscatedString(new long[]{1980880619189276824L, 7776275338777907286L, 7511798893378669325L}).toString());
    }

    public void endObject() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 2) {
            int i2 = this.stackSize;
            int i3 = i2 - 1;
            this.stackSize = i3;
            this.pathNames[i3] = null;
            int[] iArr = this.pathIndices;
            int i4 = i2 - 2;
            iArr[i4] = iArr[i4] + 1;
            this.peeked = 0;
            return;
        }
        throw unexpectedTokenError(new ObfuscatedString(new long[]{6947973444029335926L, -2776174562844153478L, 8645378287641956281L}).toString());
    }

    public final int getNestingLimit() {
        return this.nestingLimit;
    }

    public String getPreviousPath() {
        return getPath(true);
    }

    public final Strictness getStrictness() {
        return this.strictness;
    }

    public boolean hasNext() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i != 2 && i != 4 && i != 17) {
            return true;
        }
        return false;
    }

    public final boolean isLenient() {
        if (this.strictness == Strictness.LENIENT) {
            return true;
        }
        return false;
    }

    public String locationString() {
        return new ObfuscatedString(new long[]{-4349123111312212137L, 8693213872728989410L, -2497135978182839586L}).toString() + (this.lineNumber + 1) + new ObfuscatedString(new long[]{-6581834890609672524L, -4284400635399657733L}).toString() + ((this.pos - this.lineStart) + 1) + new ObfuscatedString(new long[]{-1615570630999940621L, 6563976063397804738L}).toString() + getPath();
    }

    public boolean nextBoolean() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 5) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i2 = this.stackSize - 1;
            iArr[i2] = iArr[i2] + 1;
            return true;
        }
        if (i == 6) {
            this.peeked = 0;
            int[] iArr2 = this.pathIndices;
            int i3 = this.stackSize - 1;
            iArr2[i3] = iArr2[i3] + 1;
            return false;
        }
        throw unexpectedTokenError(new ObfuscatedString(new long[]{7221798246782400533L, 3348439411726278742L, 5725038586040284175L}).toString());
    }

    public double nextDouble() {
        char c;
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 15) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i2 = this.stackSize - 1;
            iArr[i2] = iArr[i2] + 1;
            return this.peekedLong;
        }
        if (i == 16) {
            this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else if (i != 8 && i != 9) {
            if (i == 10) {
                this.peekedString = nextUnquotedValue();
            } else if (i != 11) {
                throw unexpectedTokenError(new ObfuscatedString(new long[]{-8674867154220523007L, 1157852809629008158L}).toString());
            }
        } else {
            if (i == 8) {
                c = '\'';
            } else {
                c = Typography.quote;
            }
            this.peekedString = nextQuotedValue(c);
        }
        this.peeked = 11;
        double parseDouble = Double.parseDouble(this.peekedString);
        if (this.strictness != Strictness.LENIENT && (Double.isNaN(parseDouble) || Double.isInfinite(parseDouble))) {
            throw syntaxError(new ObfuscatedString(new long[]{-5226950218710524896L, 6656297714424012017L, 5857242061116678508L, -376857522442210819L, -4949060618489702215L, 3484748736685533691L}).toString() + parseDouble);
        }
        this.peekedString = null;
        this.peeked = 0;
        int[] iArr2 = this.pathIndices;
        int i3 = this.stackSize - 1;
        iArr2[i3] = iArr2[i3] + 1;
        return parseDouble;
    }

    public int nextInt() {
        char c;
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 15) {
            long j = this.peekedLong;
            int i2 = (int) j;
            if (j == i2) {
                this.peeked = 0;
                int[] iArr = this.pathIndices;
                int i3 = this.stackSize - 1;
                iArr[i3] = iArr[i3] + 1;
                return i2;
            }
            throw new NumberFormatException(new ObfuscatedString(new long[]{-3265217923710140323L, -1006349982149750874L, 2146491781430604731L, -7950397558071892L}).toString() + this.peekedLong + locationString());
        }
        if (i == 16) {
            this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else {
            if (i != 8 && i != 9 && i != 10) {
                throw unexpectedTokenError(new ObfuscatedString(new long[]{-2720699935598533845L, -7795443656931043758L}).toString());
            }
            if (i == 10) {
                this.peekedString = nextUnquotedValue();
            } else {
                if (i == 8) {
                    c = '\'';
                } else {
                    c = Typography.quote;
                }
                this.peekedString = nextQuotedValue(c);
            }
            try {
                int parseInt = Integer.parseInt(this.peekedString);
                this.peeked = 0;
                int[] iArr2 = this.pathIndices;
                int i4 = this.stackSize - 1;
                iArr2[i4] = iArr2[i4] + 1;
                return parseInt;
            } catch (NumberFormatException unused) {
            }
        }
        this.peeked = 11;
        double parseDouble = Double.parseDouble(this.peekedString);
        int i5 = (int) parseDouble;
        if (i5 == parseDouble) {
            this.peekedString = null;
            this.peeked = 0;
            int[] iArr3 = this.pathIndices;
            int i6 = this.stackSize - 1;
            iArr3[i6] = iArr3[i6] + 1;
            return i5;
        }
        throw new NumberFormatException(new ObfuscatedString(new long[]{-3838061012904087564L, -3933780361625180552L, -8273183278655968328L, 7600944106707045818L}).toString() + this.peekedString + locationString());
    }

    public long nextLong() {
        char c;
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 15) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i2 = this.stackSize - 1;
            iArr[i2] = iArr[i2] + 1;
            return this.peekedLong;
        }
        if (i == 16) {
            this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else {
            if (i != 8 && i != 9 && i != 10) {
                throw unexpectedTokenError(new ObfuscatedString(new long[]{5697205534892028496L, -4154048794556032915L}).toString());
            }
            if (i == 10) {
                this.peekedString = nextUnquotedValue();
            } else {
                if (i == 8) {
                    c = '\'';
                } else {
                    c = Typography.quote;
                }
                this.peekedString = nextQuotedValue(c);
            }
            try {
                long parseLong = Long.parseLong(this.peekedString);
                this.peeked = 0;
                int[] iArr2 = this.pathIndices;
                int i3 = this.stackSize - 1;
                iArr2[i3] = iArr2[i3] + 1;
                return parseLong;
            } catch (NumberFormatException unused) {
            }
        }
        this.peeked = 11;
        double parseDouble = Double.parseDouble(this.peekedString);
        long j = (long) parseDouble;
        if (j == parseDouble) {
            this.peekedString = null;
            this.peeked = 0;
            int[] iArr3 = this.pathIndices;
            int i4 = this.stackSize - 1;
            iArr3[i4] = iArr3[i4] + 1;
            return j;
        }
        throw new NumberFormatException(new ObfuscatedString(new long[]{-3528437171851514803L, 2768418280124666531L, -6053023736617973464L, 8367348462484252242L}).toString() + this.peekedString + locationString());
    }

    public String nextName() {
        String nextQuotedValue;
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 14) {
            nextQuotedValue = nextUnquotedValue();
        } else if (i == 12) {
            nextQuotedValue = nextQuotedValue('\'');
        } else if (i == 13) {
            nextQuotedValue = nextQuotedValue(Typography.quote);
        } else {
            throw unexpectedTokenError(new ObfuscatedString(new long[]{-6486196377187591113L, -5416760408073563426L}).toString());
        }
        this.peeked = 0;
        this.pathNames[this.stackSize - 1] = nextQuotedValue;
        return nextQuotedValue;
    }

    public void nextNull() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 7) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i2 = this.stackSize - 1;
            iArr[i2] = iArr[i2] + 1;
            return;
        }
        throw unexpectedTokenError(new ObfuscatedString(new long[]{-1441265510068907037L, -7010437947470400202L}).toString());
    }

    public String nextString() {
        String str;
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 10) {
            str = nextUnquotedValue();
        } else if (i == 8) {
            str = nextQuotedValue('\'');
        } else if (i == 9) {
            str = nextQuotedValue(Typography.quote);
        } else if (i == 11) {
            str = this.peekedString;
            this.peekedString = null;
        } else if (i == 15) {
            str = Long.toString(this.peekedLong);
        } else if (i == 16) {
            str = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else {
            throw unexpectedTokenError(new ObfuscatedString(new long[]{7247409486477254041L, 9075250954952088078L}).toString());
        }
        this.peeked = 0;
        int[] iArr = this.pathIndices;
        int i2 = this.stackSize - 1;
        iArr[i2] = iArr[i2] + 1;
        return str;
    }

    public JsonToken peek() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        switch (i) {
            case 1:
                return JsonToken.BEGIN_OBJECT;
            case 2:
                return JsonToken.END_OBJECT;
            case 3:
                return JsonToken.BEGIN_ARRAY;
            case 4:
                return JsonToken.END_ARRAY;
            case 5:
            case 6:
                return JsonToken.BOOLEAN;
            case 7:
                return JsonToken.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return JsonToken.STRING;
            case 12:
            case 13:
            case 14:
                return JsonToken.NAME;
            case 15:
            case 16:
                return JsonToken.NUMBER;
            case 17:
                return JsonToken.END_DOCUMENT;
            default:
                throw new AssertionError();
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

    public final void setNestingLimit(int i) {
        if (i >= 0) {
            this.nestingLimit = i;
        } else {
            throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{8177381823383690304L, 5024697425738000632L, -7284146669752754190L, -9050893607264666902L}), new StringBuilder(), i));
        }
    }

    public final void setStrictness(Strictness strictness) {
        Objects.requireNonNull(strictness);
        this.strictness = strictness;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0010. Please report as an issue. */
    public void skipValue() {
        int i = 0;
        do {
            int i2 = this.peeked;
            if (i2 == 0) {
                i2 = doPeek();
            }
            switch (i2) {
                case 1:
                    push(3);
                    i++;
                    this.peeked = 0;
                    break;
                case 2:
                    if (i == 0) {
                        this.pathNames[this.stackSize - 1] = null;
                    }
                    this.stackSize--;
                    i--;
                    this.peeked = 0;
                    break;
                case 3:
                    push(1);
                    i++;
                    this.peeked = 0;
                    break;
                case 4:
                    this.stackSize--;
                    i--;
                    this.peeked = 0;
                    break;
                case 5:
                case 6:
                case 7:
                case 11:
                case 15:
                default:
                    this.peeked = 0;
                    break;
                case 8:
                    skipQuotedValue('\'');
                    this.peeked = 0;
                    break;
                case 9:
                    skipQuotedValue(Typography.quote);
                    this.peeked = 0;
                    break;
                case 10:
                    skipUnquotedValue();
                    this.peeked = 0;
                    break;
                case 12:
                    skipQuotedValue('\'');
                    if (i == 0) {
                        this.pathNames[this.stackSize - 1] = new ObfuscatedString(new long[]{-2258836251892871474L, -9208376882162707115L, -6123929136488936144L}).toString();
                    }
                    this.peeked = 0;
                    break;
                case 13:
                    skipQuotedValue(Typography.quote);
                    if (i == 0) {
                        this.pathNames[this.stackSize - 1] = new ObfuscatedString(new long[]{381675792529989674L, 6026232061839671998L, 8790355191678877996L}).toString();
                    }
                    this.peeked = 0;
                    break;
                case 14:
                    skipUnquotedValue();
                    if (i == 0) {
                        this.pathNames[this.stackSize - 1] = new ObfuscatedString(new long[]{-291830651047373921L, 5494803056707405510L, -5345362809267581789L}).toString();
                    }
                    this.peeked = 0;
                    break;
                case 16:
                    this.pos += this.peekedNumberLength;
                    this.peeked = 0;
                    break;
                case 17:
                    return;
            }
        } while (i > 0);
        int[] iArr = this.pathIndices;
        int i3 = this.stackSize - 1;
        iArr[i3] = iArr[i3] + 1;
    }

    public String toString() {
        return getClass().getSimpleName() + locationString();
    }

    public String getPath() {
        return getPath(false);
    }
}
