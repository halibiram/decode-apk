package com.airbnb.lottie.parser.moshi;

import androidx.annotation.Nullable;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.EOFException;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class JsonUtf8Reader extends JsonReader {
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
    private static final int PEEKED_BUFFERED_NAME = 15;
    private static final int PEEKED_DOUBLE_QUOTED = 9;
    private static final int PEEKED_DOUBLE_QUOTED_NAME = 13;
    private static final int PEEKED_END_ARRAY = 4;
    private static final int PEEKED_END_OBJECT = 2;
    private static final int PEEKED_EOF = 18;
    private static final int PEEKED_FALSE = 6;
    private static final int PEEKED_LONG = 16;
    private static final int PEEKED_NONE = 0;
    private static final int PEEKED_NULL = 7;
    private static final int PEEKED_NUMBER = 17;
    private static final int PEEKED_SINGLE_QUOTED = 8;
    private static final int PEEKED_SINGLE_QUOTED_NAME = 12;
    private static final int PEEKED_TRUE = 5;
    private static final int PEEKED_UNQUOTED = 10;
    private static final int PEEKED_UNQUOTED_NAME = 14;
    private final Buffer buffer;
    private int peeked = 0;
    private long peekedLong;
    private int peekedNumberLength;

    @Nullable
    private String peekedString;
    private final BufferedSource source;
    private static final ByteString SINGLE_QUOTE_OR_SLASH = ByteString.encodeUtf8(new ObfuscatedString(new long[]{-6650985535355916112L, -7383381010993912630L}).toString());
    private static final ByteString DOUBLE_QUOTE_OR_SLASH = ByteString.encodeUtf8(new ObfuscatedString(new long[]{4145630026289606344L, -5963615686708367691L}).toString());
    private static final ByteString UNQUOTED_STRING_TERMINALS = ByteString.encodeUtf8(new ObfuscatedString(new long[]{1078947152680182808L, -7067223999866808195L, -1299618438516164536L}).toString());
    private static final ByteString LINEFEED_OR_CARRIAGE_RETURN = ByteString.encodeUtf8(new ObfuscatedString(new long[]{-4395057742500927436L, -1155286314254120137L}).toString());
    private static final ByteString CLOSING_BLOCK_COMMENT = ByteString.encodeUtf8(new ObfuscatedString(new long[]{3805809156619674567L, -1943472744618250545L}).toString());

    public JsonUtf8Reader(BufferedSource bufferedSource) {
        if (bufferedSource != null) {
            this.source = bufferedSource;
            this.buffer = bufferedSource.getBufferField();
            pushScope(6);
            return;
        }
        throw new NullPointerException(new ObfuscatedString(new long[]{-4006666486131979498L, 5950949104884395021L, -8191092170140662564L}).toString());
    }

    private void checkLenient() {
        if (this.lenient) {
        } else {
            throw syntaxError(new ObfuscatedString(new long[]{5357259289264992269L, 8869878274558260155L, -5283249058454700861L, -2031044223531785361L, -1181989748676205303L, -6382734464788664210L, 8048470297608257662L, 6315032039791149311L}).toString());
        }
    }

    private int doPeek() {
        int[] iArr = this.scopes;
        int i = this.stackSize;
        int i2 = iArr[i - 1];
        if (i2 == 1) {
            iArr[i - 1] = 2;
        } else if (i2 == 2) {
            int nextNonWhitespace = nextNonWhitespace(true);
            this.buffer.readByte();
            if (nextNonWhitespace != 44) {
                if (nextNonWhitespace != 59) {
                    if (nextNonWhitespace == 93) {
                        this.peeked = 4;
                        return 4;
                    }
                    throw syntaxError(new ObfuscatedString(new long[]{3249635403515004207L, -508174501322241565L, -7461728622503310290L, 2208146399018947432L}).toString());
                }
                checkLenient();
            }
        } else if (i2 != 3 && i2 != 5) {
            if (i2 == 4) {
                iArr[i - 1] = 5;
                int nextNonWhitespace2 = nextNonWhitespace(true);
                this.buffer.readByte();
                if (nextNonWhitespace2 != 58) {
                    if (nextNonWhitespace2 == 61) {
                        checkLenient();
                        if (this.source.request(1L) && this.buffer.getByte(0L) == 62) {
                            this.buffer.readByte();
                        }
                    } else {
                        throw syntaxError(new ObfuscatedString(new long[]{-3552611152868801635L, -3799715483722044680L, 8963406093449946286L}).toString());
                    }
                }
            } else if (i2 == 6) {
                iArr[i - 1] = 7;
            } else if (i2 == 7) {
                if (nextNonWhitespace(false) == -1) {
                    this.peeked = 18;
                    return 18;
                }
                checkLenient();
            } else if (i2 == 8) {
                throw new IllegalStateException(new ObfuscatedString(new long[]{-408464080161955903L, 2844058152293622486L, 4270605128655146682L, -2470774692316733334L}).toString());
            }
        } else {
            iArr[i - 1] = 4;
            if (i2 == 5) {
                int nextNonWhitespace3 = nextNonWhitespace(true);
                this.buffer.readByte();
                if (nextNonWhitespace3 != 44) {
                    if (nextNonWhitespace3 != 59) {
                        if (nextNonWhitespace3 == 125) {
                            this.peeked = 2;
                            return 2;
                        }
                        throw syntaxError(new ObfuscatedString(new long[]{-5258892140577031028L, -7956899629070535083L, 1951187141024154846L, -1069756594280396198L}).toString());
                    }
                    checkLenient();
                }
            }
            int nextNonWhitespace4 = nextNonWhitespace(true);
            if (nextNonWhitespace4 != 34) {
                if (nextNonWhitespace4 != 39) {
                    if (nextNonWhitespace4 != 125) {
                        checkLenient();
                        if (isLiteral((char) nextNonWhitespace4)) {
                            this.peeked = 14;
                            return 14;
                        }
                        throw syntaxError(new ObfuscatedString(new long[]{-1323965581860487985L, -7479799789041523576L, -1588905556085021484L}).toString());
                    }
                    if (i2 != 5) {
                        this.buffer.readByte();
                        this.peeked = 2;
                        return 2;
                    }
                    throw syntaxError(new ObfuscatedString(new long[]{7188858893919609738L, 7344001733357192458L, 6424056535726290914L}).toString());
                }
                this.buffer.readByte();
                checkLenient();
                this.peeked = 12;
                return 12;
            }
            this.buffer.readByte();
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
                                int peekKeyword = peekKeyword();
                                if (peekKeyword != 0) {
                                    return peekKeyword;
                                }
                                int peekNumber = peekNumber();
                                if (peekNumber != 0) {
                                    return peekNumber;
                                }
                                if (isLiteral(this.buffer.getByte(0L))) {
                                    checkLenient();
                                    this.peeked = 10;
                                    return 10;
                                }
                                throw syntaxError(new ObfuscatedString(new long[]{5872198930257644039L, 7783209101899508308L, -320836205824984622L}).toString());
                            }
                            this.buffer.readByte();
                            this.peeked = 1;
                            return 1;
                        }
                        if (i2 == 1) {
                            this.buffer.readByte();
                            this.peeked = 4;
                            return 4;
                        }
                    } else {
                        this.buffer.readByte();
                        this.peeked = 3;
                        return 3;
                    }
                }
                if (i2 != 1 && i2 != 2) {
                    throw syntaxError(new ObfuscatedString(new long[]{3131661159851240125L, -5078256149144972123L, 3885402250592405716L}).toString());
                }
                checkLenient();
                this.peeked = 7;
                return 7;
            }
            checkLenient();
            this.buffer.readByte();
            this.peeked = 8;
            return 8;
        }
        this.buffer.readByte();
        this.peeked = 9;
        return 9;
    }

    private int findName(String str, JsonReader.Options options) {
        int length = options.strings.length;
        for (int i = 0; i < length; i++) {
            if (str.equals(options.strings[i])) {
                this.peeked = 0;
                this.pathNames[this.stackSize - 1] = str;
                return i;
            }
        }
        return -1;
    }

    private boolean isLiteral(int i) {
        if (i != 9 && i != 10 && i != 12 && i != 13 && i != 32) {
            if (i != 35) {
                if (i != 44) {
                    if (i != 47 && i != 61) {
                        if (i != 123 && i != 125 && i != 58) {
                            if (i != 59) {
                                switch (i) {
                                    case 91:
                                    case 93:
                                        return false;
                                    case 92:
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

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0025, code lost:
    
        r6.buffer.skip(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x002d, code lost:
    
        if (r2 != 47) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0081, code lost:
    
        if (r2 != 35) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0083, code lost:
    
        checkLenient();
        skipToEndOfLine();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x008b, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0037, code lost:
    
        if (r6.source.request(2) != false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x003a, code lost:
    
        checkLenient();
        r3 = r6.buffer.getByte(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0047, code lost:
    
        if (r3 == 42) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x005a, code lost:
    
        r6.buffer.readByte();
        r6.buffer.readByte();
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0068, code lost:
    
        if (skipToEndOfBlockComment() == false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x007e, code lost:
    
        throw syntaxError(new com.panda912.muddy.ObfuscatedString(new long[]{-61475113640479556L, 4946484435913861867L, 7900061020787248626L, 6604784628808406823L}).toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0049, code lost:
    
        if (r3 == 47) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x004c, code lost:
    
        r6.buffer.readByte();
        r6.buffer.readByte();
        skipToEndOfLine();
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x004b, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0039, code lost:
    
        return r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int nextNonWhitespace(boolean z) {
        while (true) {
            int i = 0;
            while (true) {
                int i2 = i + 1;
                if (this.source.request(i2)) {
                    byte b = this.buffer.getByte(i);
                    if (b != 10 && b != 32 && b != 13 && b != 9) {
                        break;
                    }
                    i = i2;
                } else {
                    if (!z) {
                        return -1;
                    }
                    throw new EOFException(new ObfuscatedString(new long[]{-1556678984978282661L, 3758232001665996629L, 9198171249646036541L}).toString());
                }
            }
        }
    }

    private String nextQuotedValue(ByteString byteString) {
        StringBuilder sb = null;
        while (true) {
            long indexOfElement = this.source.indexOfElement(byteString);
            if (indexOfElement != -1) {
                if (this.buffer.getByte(indexOfElement) == 92) {
                    if (sb == null) {
                        sb = new StringBuilder();
                    }
                    sb.append(this.buffer.readUtf8(indexOfElement));
                    this.buffer.readByte();
                    sb.append(readEscapeCharacter());
                } else {
                    if (sb == null) {
                        String readUtf8 = this.buffer.readUtf8(indexOfElement);
                        this.buffer.readByte();
                        return readUtf8;
                    }
                    sb.append(this.buffer.readUtf8(indexOfElement));
                    this.buffer.readByte();
                    return sb.toString();
                }
            } else {
                throw syntaxError(new ObfuscatedString(new long[]{-7006411980082705154L, -5922583693909349447L, -3924708838519055200L, 9039106698842053579L}).toString());
            }
        }
    }

    private String nextUnquotedValue() {
        long indexOfElement = this.source.indexOfElement(UNQUOTED_STRING_TERMINALS);
        if (indexOfElement != -1) {
            return this.buffer.readUtf8(indexOfElement);
        }
        return this.buffer.readUtf8();
    }

    private int peekKeyword() {
        String obfuscatedString;
        String obfuscatedString2;
        int i;
        byte b = this.buffer.getByte(0L);
        if (b != 116 && b != 84) {
            if (b != 102 && b != 70) {
                if (b != 110 && b != 78) {
                    return 0;
                }
                obfuscatedString = new ObfuscatedString(new long[]{-2315581931763974548L, 1044286649940544617L}).toString();
                obfuscatedString2 = new ObfuscatedString(new long[]{3399788637675631497L, -1691470223231947834L}).toString();
                i = 7;
            } else {
                obfuscatedString = new ObfuscatedString(new long[]{-941690421490648732L, 8160057107523319092L}).toString();
                obfuscatedString2 = new ObfuscatedString(new long[]{5929157656086260297L, -9185643323482364528L}).toString();
                i = 6;
            }
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{3335361664901523964L, -1612001004128526209L}).toString();
            obfuscatedString2 = new ObfuscatedString(new long[]{2564786930869903738L, 153324131341136473L}).toString();
            i = 5;
        }
        int length = obfuscatedString.length();
        int i2 = 1;
        while (i2 < length) {
            int i3 = i2 + 1;
            if (!this.source.request(i3)) {
                return 0;
            }
            byte b2 = this.buffer.getByte(i2);
            if (b2 != obfuscatedString.charAt(i2) && b2 != obfuscatedString2.charAt(i2)) {
                return 0;
            }
            i2 = i3;
        }
        if (this.source.request(1 + length) && isLiteral(this.buffer.getByte(length))) {
            return 0;
        }
        this.buffer.skip(length);
        this.peeked = i;
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x0081, code lost:
    
        if (isLiteral(r11) != false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0083, code lost:
    
        if (r6 != 2) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0085, code lost:
    
        if (r7 == false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x008b, code lost:
    
        if (r8 != Long.MIN_VALUE) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x008d, code lost:
    
        if (r10 == false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0091, code lost:
    
        if (r8 != 0) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0093, code lost:
    
        if (r10 != false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0095, code lost:
    
        if (r10 == false) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0098, code lost:
    
        r8 = -r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0099, code lost:
    
        r16.peekedLong = r8;
        r16.buffer.skip(r5);
        r16.peeked = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00a5, code lost:
    
        return 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00a6, code lost:
    
        if (r6 == 2) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00a9, code lost:
    
        if (r6 == 4) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00ac, code lost:
    
        if (r6 != 7) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00af, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00b0, code lost:
    
        r16.peekedNumberLength = r5;
        r16.peeked = 17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00b6, code lost:
    
        return 17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00b7, code lost:
    
        return 0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int peekNumber() {
        boolean z;
        boolean z2 = true;
        long j = 0;
        int i = 0;
        char c = 0;
        boolean z3 = true;
        boolean z4 = false;
        while (true) {
            int i2 = i + 1;
            if (!this.source.request(i2)) {
                break;
            }
            byte b = this.buffer.getByte(i);
            if (b != 43) {
                if (b != 69 && b != 101) {
                    if (b != 45) {
                        if (b != 46) {
                            if (b < 48 || b > 57) {
                                break;
                            }
                            if (c != z2 && c != 0) {
                                if (c == 2) {
                                    if (j == 0) {
                                        return 0;
                                    }
                                    long j2 = (10 * j) - (b - 48);
                                    if (j <= -922337203685477580L && (j != -922337203685477580L || j2 >= j)) {
                                        z = false;
                                    } else {
                                        z = true;
                                    }
                                    z3 &= z;
                                    j = j2;
                                } else if (c == 3) {
                                    c = 4;
                                } else if (c == 5 || c == 6) {
                                    c = 7;
                                }
                            } else {
                                j = -(b - 48);
                                c = 2;
                            }
                        } else {
                            if (c != 2) {
                                return 0;
                            }
                            c = 3;
                        }
                    } else if (c == 0) {
                        c = 1;
                        z4 = true;
                    } else if (c != 5) {
                        return 0;
                    }
                } else {
                    if (c != 2 && c != 4) {
                        return 0;
                    }
                    c = 5;
                }
                i = i2;
                z2 = true;
            } else if (c != 5) {
                return 0;
            }
            c = 6;
            i = i2;
            z2 = true;
        }
    }

    private char readEscapeCharacter() {
        int i;
        if (this.source.request(1L)) {
            byte readByte = this.buffer.readByte();
            if (readByte != 10 && readByte != 34 && readByte != 39 && readByte != 47 && readByte != 92) {
                if (readByte != 98) {
                    if (readByte != 102) {
                        if (readByte == 110) {
                            return '\n';
                        }
                        if (readByte != 114) {
                            if (readByte != 116) {
                                if (readByte != 117) {
                                    if (this.lenient) {
                                        return (char) readByte;
                                    }
                                    throw syntaxError(new ObfuscatedString(new long[]{-8793162767118785922L, 8265174105042617214L, -2351415104473484776L, -874527356399645289L, -3324990599754192761L}).toString() + ((char) readByte));
                                }
                                if (this.source.request(4L)) {
                                    char c = 0;
                                    for (int i2 = 0; i2 < 4; i2++) {
                                        byte b = this.buffer.getByte(i2);
                                        char c2 = (char) (c << 4);
                                        if (b >= 48 && b <= 57) {
                                            i = b - 48;
                                        } else if (b >= 97 && b <= 102) {
                                            i = b - 87;
                                        } else {
                                            if (b < 65 || b > 70) {
                                                throw syntaxError(new ObfuscatedString(new long[]{6224029787145610375L, 5203879086870120753L}).toString() + this.buffer.readUtf8(4L));
                                            }
                                            i = b - 55;
                                        }
                                        c = (char) (i + c2);
                                    }
                                    this.buffer.skip(4L);
                                    return c;
                                }
                                throw new EOFException(AbstractC0749x8313616e.m3335x8c6fc18a(new ObfuscatedString(new long[]{-1313218719426386284L, -4006469369269215857L, -1907555674762394542L, -870490022920403050L, 6444141743156682244L, -3904520059512516257L}), new StringBuilder(), this));
                            }
                            return '\t';
                        }
                        return '\r';
                    }
                    return '\f';
                }
                return '\b';
            }
            return (char) readByte;
        }
        throw syntaxError(new ObfuscatedString(new long[]{-1172544887763344078L, -621085724149545330L, -8069809160201868314L, -1584351085931226202L, -7787669168385709983L}).toString());
    }

    private void skipQuotedValue(ByteString byteString) {
        while (true) {
            long indexOfElement = this.source.indexOfElement(byteString);
            if (indexOfElement != -1) {
                if (this.buffer.getByte(indexOfElement) == 92) {
                    this.buffer.skip(indexOfElement + 1);
                    readEscapeCharacter();
                } else {
                    this.buffer.skip(indexOfElement + 1);
                    return;
                }
            } else {
                throw syntaxError(new ObfuscatedString(new long[]{-619548747173290489L, -8238937024188172748L, 547936457962615187L, 4868140065807792507L}).toString());
            }
        }
    }

    private boolean skipToEndOfBlockComment() {
        boolean z;
        long size;
        long indexOf = this.source.indexOf(CLOSING_BLOCK_COMMENT);
        if (indexOf != -1) {
            z = true;
        } else {
            z = false;
        }
        Buffer buffer = this.buffer;
        if (z) {
            size = indexOf + r1.size();
        } else {
            size = buffer.size();
        }
        buffer.skip(size);
        return z;
    }

    private void skipToEndOfLine() {
        long size;
        long indexOfElement = this.source.indexOfElement(LINEFEED_OR_CARRIAGE_RETURN);
        Buffer buffer = this.buffer;
        if (indexOfElement != -1) {
            size = indexOfElement + 1;
        } else {
            size = buffer.size();
        }
        buffer.skip(size);
    }

    private void skipUnquotedValue() {
        long indexOfElement = this.source.indexOfElement(UNQUOTED_STRING_TERMINALS);
        Buffer buffer = this.buffer;
        if (indexOfElement == -1) {
            indexOfElement = buffer.size();
        }
        buffer.skip(indexOfElement);
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public void beginArray() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 3) {
            pushScope(1);
            this.pathIndices[this.stackSize - 1] = 0;
            this.peeked = 0;
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{9022564990490760499L, -2935495848795817122L, -2694835979452535857L, 8759467532436147363L, 835687801900136669L}).toString());
            sb.append(peek());
            throw new JsonDataException(AbstractC0749x8313616e.m3335x8c6fc18a(new ObfuscatedString(new long[]{8835075851859858984L, 6175165360068841260L, -8494148558223196389L}), sb, this));
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public void beginObject() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 1) {
            pushScope(3);
            this.peeked = 0;
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{-7035313136707789792L, 2810094546789064970L, 3769228913221089235L, 112991432064733734L, -5883993154298612291L}).toString());
            sb.append(peek());
            throw new JsonDataException(AbstractC0749x8313616e.m3335x8c6fc18a(new ObfuscatedString(new long[]{-9125492733100491548L, 4540571341089028864L, -2364326368104210183L}), sb, this));
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.peeked = 0;
        this.scopes[0] = 8;
        this.stackSize = 1;
        this.buffer.clear();
        this.source.close();
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
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
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-5135598581826112066L, -7128527830026511451L, -3562161760057562097L, -499246150181615723L, 6872186124600321139L}).toString());
        sb.append(peek());
        throw new JsonDataException(AbstractC0749x8313616e.m3335x8c6fc18a(new ObfuscatedString(new long[]{-7160902791755639071L, 5534651217260908228L, 8542105025968353077L}), sb, this));
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
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
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-4542490560977507177L, 1481190878624387623L, -7582207970840751998L, 7154086881569422658L, -153384450170419466L}).toString());
        sb.append(peek());
        throw new JsonDataException(AbstractC0749x8313616e.m3335x8c6fc18a(new ObfuscatedString(new long[]{-4568636732977521341L, -172687502435138525L, 1208741687745708964L}), sb, this));
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public boolean hasNext() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i != 2 && i != 4 && i != 18) {
            return true;
        }
        return false;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
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
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-7282004371366198831L, 3148101930017304361L, 9134623223067988234L, -8196496149295407393L, 8446678882812851959L}).toString());
        sb.append(peek());
        throw new JsonDataException(AbstractC0749x8313616e.m3335x8c6fc18a(new ObfuscatedString(new long[]{-1327623411650094376L, 1552815708642816038L, -6808108789059922522L}), sb, this));
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public double nextDouble() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 16) {
            this.peeked = 0;
            int[] iArr = this.pathIndices;
            int i2 = this.stackSize - 1;
            iArr[i2] = iArr[i2] + 1;
            return this.peekedLong;
        }
        if (i == 17) {
            this.peekedString = this.buffer.readUtf8(this.peekedNumberLength);
        } else if (i == 9) {
            this.peekedString = nextQuotedValue(DOUBLE_QUOTE_OR_SLASH);
        } else if (i == 8) {
            this.peekedString = nextQuotedValue(SINGLE_QUOTE_OR_SLASH);
        } else if (i == 10) {
            this.peekedString = nextUnquotedValue();
        } else if (i != 11) {
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{3111666925961082880L, 1637251670971252038L, -8329787001593135730L, -3863422025083096359L, -1270232706874702523L}).toString());
            sb.append(peek());
            throw new JsonDataException(AbstractC0749x8313616e.m3335x8c6fc18a(new ObfuscatedString(new long[]{-993614574084712804L, -130762087948659032L, 5102206360427848860L}), sb, this));
        }
        this.peeked = 11;
        try {
            double parseDouble = Double.parseDouble(this.peekedString);
            if (!this.lenient && (Double.isNaN(parseDouble) || Double.isInfinite(parseDouble))) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(new ObfuscatedString(new long[]{-1339957188633549982L, -6077803843835822349L, -7064747899889986612L, 1177880855697289795L, -8563096626780535422L, 4844096571743767743L}).toString());
                sb2.append(parseDouble);
                throw new JsonEncodingException(AbstractC0749x8313616e.m3335x8c6fc18a(new ObfuscatedString(new long[]{-8339908435711212598L, 989567611344139588L, 3745136643851716166L}), sb2, this));
            }
            this.peekedString = null;
            this.peeked = 0;
            int[] iArr2 = this.pathIndices;
            int i3 = this.stackSize - 1;
            iArr2[i3] = iArr2[i3] + 1;
            return parseDouble;
        } catch (NumberFormatException unused) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(new ObfuscatedString(new long[]{-1398364787036450433L, 8513194904713917785L, -281661138937687593L, 7951941877135680671L, -8397951463664846688L}).toString());
            sb3.append(this.peekedString);
            throw new JsonDataException(AbstractC0749x8313616e.m3335x8c6fc18a(new ObfuscatedString(new long[]{-2458165835435612656L, 534808397054335361L, -6140774147158086090L}), sb3, this));
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public int nextInt() {
        String nextQuotedValue;
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 16) {
            long j = this.peekedLong;
            int i2 = (int) j;
            if (j == i2) {
                this.peeked = 0;
                int[] iArr = this.pathIndices;
                int i3 = this.stackSize - 1;
                iArr[i3] = iArr[i3] + 1;
                return i2;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{-7811599993089107784L, 1353231267441047140L, 1235063391034231180L, 8121716029482806055L}).toString());
            sb.append(this.peekedLong);
            throw new JsonDataException(AbstractC0749x8313616e.m3335x8c6fc18a(new ObfuscatedString(new long[]{-3943292012977088291L, -2571383498769234355L, -3781135641167550095L}), sb, this));
        }
        if (i == 17) {
            this.peekedString = this.buffer.readUtf8(this.peekedNumberLength);
        } else if (i != 9 && i != 8) {
            if (i != 11) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(new ObfuscatedString(new long[]{3439061405338801776L, 2312629148127015295L, 1521403065697634792L, -165940057618449976L}).toString());
                sb2.append(peek());
                throw new JsonDataException(AbstractC0749x8313616e.m3335x8c6fc18a(new ObfuscatedString(new long[]{-8401055519913043914L, -4723683345204176932L, -5058382263683881609L}), sb2, this));
            }
        } else {
            if (i == 9) {
                nextQuotedValue = nextQuotedValue(DOUBLE_QUOTE_OR_SLASH);
            } else {
                nextQuotedValue = nextQuotedValue(SINGLE_QUOTE_OR_SLASH);
            }
            this.peekedString = nextQuotedValue;
            try {
                int parseInt = Integer.parseInt(nextQuotedValue);
                this.peeked = 0;
                int[] iArr2 = this.pathIndices;
                int i4 = this.stackSize - 1;
                iArr2[i4] = iArr2[i4] + 1;
                return parseInt;
            } catch (NumberFormatException unused) {
            }
        }
        this.peeked = 11;
        try {
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
            StringBuilder sb3 = new StringBuilder();
            sb3.append(new ObfuscatedString(new long[]{3514952481425282584L, -8116384994075337812L, 4227881212807004942L, -3289609318225781938L}).toString());
            sb3.append(this.peekedString);
            throw new JsonDataException(AbstractC0749x8313616e.m3335x8c6fc18a(new ObfuscatedString(new long[]{-4277091457031346143L, 8091390589825397327L, -2887487500529411912L}), sb3, this));
        } catch (NumberFormatException unused2) {
            StringBuilder sb4 = new StringBuilder();
            sb4.append(new ObfuscatedString(new long[]{-761665532173313238L, 3065831336921108869L, 5154823054772107464L, 7438553058944474678L}).toString());
            sb4.append(this.peekedString);
            throw new JsonDataException(AbstractC0749x8313616e.m3335x8c6fc18a(new ObfuscatedString(new long[]{-6748125928729612632L, -3489473810081636644L, 2249773773119318797L}), sb4, this));
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public String nextName() {
        String str;
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 14) {
            str = nextUnquotedValue();
        } else if (i == 13) {
            str = nextQuotedValue(DOUBLE_QUOTE_OR_SLASH);
        } else if (i == 12) {
            str = nextQuotedValue(SINGLE_QUOTE_OR_SLASH);
        } else if (i == 15) {
            str = this.peekedString;
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{-5922461960523097704L, -2466734034977781543L, 7843436803334587709L, -1944020878223709469L}).toString());
            sb.append(peek());
            throw new JsonDataException(AbstractC0749x8313616e.m3335x8c6fc18a(new ObfuscatedString(new long[]{-3371124282682813687L, 7577050168559065593L, -5090407856582147917L}), sb, this));
        }
        this.peeked = 0;
        this.pathNames[this.stackSize - 1] = str;
        return str;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public String nextString() {
        String readUtf8;
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i == 10) {
            readUtf8 = nextUnquotedValue();
        } else if (i == 9) {
            readUtf8 = nextQuotedValue(DOUBLE_QUOTE_OR_SLASH);
        } else if (i == 8) {
            readUtf8 = nextQuotedValue(SINGLE_QUOTE_OR_SLASH);
        } else if (i == 11) {
            readUtf8 = this.peekedString;
            this.peekedString = null;
        } else if (i == 16) {
            readUtf8 = Long.toString(this.peekedLong);
        } else if (i == 17) {
            readUtf8 = this.buffer.readUtf8(this.peekedNumberLength);
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{-7576506180241418895L, 9070182291065170309L, -5095451237911811209L, 2076120366584108264L, -2098150865111548405L}).toString());
            sb.append(peek());
            throw new JsonDataException(AbstractC0749x8313616e.m3335x8c6fc18a(new ObfuscatedString(new long[]{6267027681727550055L, -5929533781651723065L, 3694853569799745873L}), sb, this));
        }
        this.peeked = 0;
        int[] iArr = this.pathIndices;
        int i2 = this.stackSize - 1;
        iArr[i2] = iArr[i2] + 1;
        return readUtf8;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public JsonReader.Token peek() {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        switch (i) {
            case 1:
                return JsonReader.Token.BEGIN_OBJECT;
            case 2:
                return JsonReader.Token.END_OBJECT;
            case 3:
                return JsonReader.Token.BEGIN_ARRAY;
            case 4:
                return JsonReader.Token.END_ARRAY;
            case 5:
            case 6:
                return JsonReader.Token.BOOLEAN;
            case 7:
                return JsonReader.Token.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return JsonReader.Token.STRING;
            case 12:
            case 13:
            case 14:
            case 15:
                return JsonReader.Token.NAME;
            case 16:
            case 17:
                return JsonReader.Token.NUMBER;
            case 18:
                return JsonReader.Token.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public int selectName(JsonReader.Options options) {
        int i = this.peeked;
        if (i == 0) {
            i = doPeek();
        }
        if (i < 12 || i > 15) {
            return -1;
        }
        if (i == 15) {
            return findName(this.peekedString, options);
        }
        int select = this.source.select(options.doubleQuoteSuffix);
        if (select != -1) {
            this.peeked = 0;
            this.pathNames[this.stackSize - 1] = options.strings[select];
            return select;
        }
        String str = this.pathNames[this.stackSize - 1];
        String nextName = nextName();
        int findName = findName(nextName, options);
        if (findName == -1) {
            this.peeked = 15;
            this.peekedString = nextName;
            this.pathNames[this.stackSize - 1] = str;
        }
        return findName;
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public void skipName() {
        if (!this.failOnUnknown) {
            int i = this.peeked;
            if (i == 0) {
                i = doPeek();
            }
            if (i == 14) {
                skipUnquotedValue();
            } else if (i == 13) {
                skipQuotedValue(DOUBLE_QUOTE_OR_SLASH);
            } else if (i == 12) {
                skipQuotedValue(SINGLE_QUOTE_OR_SLASH);
            } else if (i != 15) {
                StringBuilder sb = new StringBuilder();
                sb.append(new ObfuscatedString(new long[]{-62808464731937959L, -7930629201520788114L, -8645595243579310110L, -3821704313680346561L}).toString());
                sb.append(peek());
                throw new JsonDataException(AbstractC0749x8313616e.m3335x8c6fc18a(new ObfuscatedString(new long[]{3458108509099576038L, 1706693840506837563L, 4318977453221212481L}), sb, this));
            }
            this.peeked = 0;
            this.pathNames[this.stackSize - 1] = new ObfuscatedString(new long[]{-3637319669180073498L, 907850145687283442L}).toString();
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(new ObfuscatedString(new long[]{3972450551791128833L, 272169224155587302L, 3577681369949858114L, -2078791283976610789L}).toString());
        sb2.append(peek());
        throw new JsonDataException(AbstractC0749x8313616e.m3335x8c6fc18a(new ObfuscatedString(new long[]{-8665287811791027386L, 3487671716501913739L}), sb2, this));
    }

    @Override // com.airbnb.lottie.parser.moshi.JsonReader
    public void skipValue() {
        if (!this.failOnUnknown) {
            int i = 0;
            do {
                int i2 = this.peeked;
                if (i2 == 0) {
                    i2 = doPeek();
                }
                if (i2 == 3) {
                    pushScope(1);
                } else if (i2 == 1) {
                    pushScope(3);
                } else {
                    if (i2 == 4) {
                        i--;
                        if (i >= 0) {
                            this.stackSize--;
                        } else {
                            StringBuilder sb = new StringBuilder();
                            sb.append(new ObfuscatedString(new long[]{6974258563729252860L, 4634983121780818059L, -7547884871338335262L, 5345323461405077226L, 4337763499899374213L}).toString());
                            sb.append(peek());
                            throw new JsonDataException(AbstractC0749x8313616e.m3335x8c6fc18a(new ObfuscatedString(new long[]{-3739265420843875230L, -109540153158975530L, 1329546784190246330L}), sb, this));
                        }
                    } else if (i2 == 2) {
                        i--;
                        if (i >= 0) {
                            this.stackSize--;
                        } else {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(new ObfuscatedString(new long[]{-7290091609392747886L, 7975390419706635930L, 5159309205022148902L, -2128176053223385360L, 1457062507195533539L}).toString());
                            sb2.append(peek());
                            throw new JsonDataException(AbstractC0749x8313616e.m3335x8c6fc18a(new ObfuscatedString(new long[]{1044356538231821711L, 385633197413267246L, 6913459205386079347L}), sb2, this));
                        }
                    } else if (i2 != 14 && i2 != 10) {
                        if (i2 != 9 && i2 != 13) {
                            if (i2 != 8 && i2 != 12) {
                                if (i2 == 17) {
                                    this.buffer.skip(this.peekedNumberLength);
                                } else if (i2 == 18) {
                                    StringBuilder sb3 = new StringBuilder();
                                    sb3.append(new ObfuscatedString(new long[]{8828200386128591028L, -3939325993205739473L, -3475930998995036985L, -6838449791163341250L, -228941629611734334L}).toString());
                                    sb3.append(peek());
                                    throw new JsonDataException(AbstractC0749x8313616e.m3335x8c6fc18a(new ObfuscatedString(new long[]{5466051939985837809L, -6384702425316520144L, -4032315244452520987L}), sb3, this));
                                }
                            } else {
                                skipQuotedValue(SINGLE_QUOTE_OR_SLASH);
                            }
                        } else {
                            skipQuotedValue(DOUBLE_QUOTE_OR_SLASH);
                        }
                    } else {
                        skipUnquotedValue();
                    }
                    this.peeked = 0;
                }
                i++;
                this.peeked = 0;
            } while (i != 0);
            int[] iArr = this.pathIndices;
            int i3 = this.stackSize;
            int i4 = i3 - 1;
            iArr[i4] = iArr[i4] + 1;
            this.pathNames[i3 - 1] = new ObfuscatedString(new long[]{8005864217501162281L, 3127173946909221391L}).toString();
            return;
        }
        StringBuilder sb4 = new StringBuilder();
        sb4.append(new ObfuscatedString(new long[]{-4533634311459336579L, 8008213416024795149L, -7811660609513873795L, 6091510124682101508L}).toString());
        sb4.append(peek());
        throw new JsonDataException(AbstractC0749x8313616e.m3335x8c6fc18a(new ObfuscatedString(new long[]{-8650219546903751933L, -980585054261747909L}), sb4, this));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-2344639455687021897L, 8332568532467764445L, 7494681396725612963L}).toString());
        sb.append(this.source);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{233483377622687884L, 4185654588663565818L}), sb);
    }
}
