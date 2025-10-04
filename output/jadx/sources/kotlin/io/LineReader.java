package kotlin.io;

import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\bÀ\u0002\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lkotlin/io/LineReader;", "", "Ljava/io/InputStream;", "inputStream", "Ljava/nio/charset/Charset;", "charset", "", "readLine", "(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nConsole.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Console.kt\nkotlin/io/LineReader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,299:1\n1#2:300\n*E\n"})
/* loaded from: classes3.dex */
public final class LineReader {

    @NotNull
    public static final LineReader INSTANCE = new Object();

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static CharsetDecoder f1390xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static boolean f1391x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public static final byte[] f1392x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public static final char[] f1393x75d576dc;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public static final ByteBuffer f1394x9738a56c;

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
    public static final CharBuffer f1395x9e171bf9;

    /* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋, reason: contains not printable characters */
    public static final StringBuilder f1396x34271fae;

    /* JADX WARN: Type inference failed for: r0v0, types: [kotlin.io.LineReader, java.lang.Object] */
    static {
        byte[] bArr = new byte[32];
        f1392x1378447b = bArr;
        char[] cArr = new char[32];
        f1393x75d576dc = cArr;
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        Intrinsics.checkNotNullExpressionValue(wrap, "wrap(...)");
        f1394x9738a56c = wrap;
        CharBuffer wrap2 = CharBuffer.wrap(cArr);
        Intrinsics.checkNotNullExpressionValue(wrap2, "wrap(...)");
        f1395x9e171bf9 = wrap2;
        f1396x34271fae = new StringBuilder();
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static int m1975xfbe0c504(boolean z) {
        while (true) {
            CharsetDecoder charsetDecoder = f1390xfbe0c504;
            CharsetDecoder charsetDecoder2 = null;
            if (charsetDecoder == null) {
                charsetDecoder = null;
            }
            ByteBuffer byteBuffer = f1394x9738a56c;
            CharBuffer charBuffer = f1395x9e171bf9;
            CoderResult decode = charsetDecoder.decode(byteBuffer, charBuffer, z);
            Intrinsics.checkNotNullExpressionValue(decode, "decode(...)");
            boolean isError = decode.isError();
            StringBuilder sb = f1396x34271fae;
            if (isError) {
                CharsetDecoder charsetDecoder3 = f1390xfbe0c504;
                if (charsetDecoder3 != null) {
                    charsetDecoder2 = charsetDecoder3;
                }
                charsetDecoder2.reset();
                byteBuffer.position(0);
                sb.setLength(0);
                decode.throwException();
            }
            int position = charBuffer.position();
            if (!decode.isOverflow()) {
                return position;
            }
            char[] cArr = f1393x75d576dc;
            int i = position - 1;
            sb.append(cArr, 0, i);
            charBuffer.position(0);
            charBuffer.limit(32);
            charBuffer.put(cArr[i]);
        }
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static void m1976x3271d0aa(Charset charset) {
        CharsetDecoder newDecoder = charset.newDecoder();
        Intrinsics.checkNotNullExpressionValue(newDecoder, "newDecoder(...)");
        f1390xfbe0c504 = newDecoder;
        ByteBuffer byteBuffer = f1394x9738a56c;
        byteBuffer.clear();
        CharBuffer charBuffer = f1395x9e171bf9;
        charBuffer.clear();
        byteBuffer.put((byte) 10);
        byteBuffer.flip();
        CharsetDecoder charsetDecoder = f1390xfbe0c504;
        CharsetDecoder charsetDecoder2 = null;
        if (charsetDecoder == null) {
            charsetDecoder = null;
        }
        charsetDecoder.decode(byteBuffer, charBuffer, false);
        boolean z = true;
        if (charBuffer.position() != 1 || charBuffer.get(0) != '\n') {
            z = false;
        }
        f1391x3271d0aa = z;
        CharsetDecoder charsetDecoder3 = f1390xfbe0c504;
        if (charsetDecoder3 != null) {
            charsetDecoder2 = charsetDecoder3;
        }
        charsetDecoder2.reset();
        byteBuffer.position(0);
        f1396x34271fae.setLength(0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0087, code lost:
    
        if (r0 <= 0) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0089, code lost:
    
        r9 = kotlin.io.LineReader.f1393x75d576dc;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x008f, code lost:
    
        if (r9[r0 - 1] != '\n') goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0091, code lost:
    
        r1 = r0 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0093, code lost:
    
        if (r1 <= 0) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0095, code lost:
    
        r0 = r0 - 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x009b, code lost:
    
        if (r9[r0] != '\r') goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x009e, code lost:
    
        r0 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x009f, code lost:
    
        r9 = kotlin.io.LineReader.f1396x34271fae;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00a5, code lost:
    
        if (r9.length() != 0) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00af, code lost:
    
        return new java.lang.String(kotlin.io.LineReader.f1393x75d576dc, 0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00b0, code lost:
    
        r9.append(kotlin.io.LineReader.f1393x75d576dc, 0, r0);
        r0 = r9.toString();
        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, "toString(...)");
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00c2, code lost:
    
        if (r9.length() <= 32) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00c4, code lost:
    
        r9.setLength(32);
        r9.trimToSize();
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00ca, code lost:
    
        r9.setLength(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00ce, code lost:
    
        return r0;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0059 A[Catch: all -> 0x001a, TryCatch #0 {all -> 0x001a, blocks: (B:3:0x0001, B:5:0x000f, B:9:0x0023, B:54:0x002e, B:61:0x003d, B:64:0x0052, B:25:0x0089, B:27:0x0091, B:29:0x0095, B:33:0x009f, B:35:0x00a7, B:39:0x00b0, B:41:0x00c4, B:42:0x00ca, B:11:0x0059, B:14:0x0064, B:18:0x006b, B:20:0x007b, B:23:0x0083, B:45:0x00cf, B:66:0x001d), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x002e A[SYNTHETIC] */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized String readLine(@NotNull InputStream inputStream, @NotNull Charset charset) {
        int read;
        int m1975xfbe0c504;
        try {
            Intrinsics.checkNotNullParameter(inputStream, "inputStream");
            Intrinsics.checkNotNullParameter(charset, "charset");
            CharsetDecoder charsetDecoder = f1390xfbe0c504;
            if (charsetDecoder != null) {
                if (!Intrinsics.areEqual(charsetDecoder.charset(), charset)) {
                }
                int i = 0;
                int i2 = 0;
                while (true) {
                    read = inputStream.read();
                    if (read != -1) {
                        CharsetDecoder charsetDecoder2 = null;
                        if (f1396x34271fae.length() == 0 && i == 0 && i2 == 0) {
                            return null;
                        }
                        ByteBuffer byteBuffer = f1394x9738a56c;
                        byteBuffer.limit(i);
                        f1395x9e171bf9.position(i2);
                        m1975xfbe0c504 = m1975xfbe0c504(true);
                        CharsetDecoder charsetDecoder3 = f1390xfbe0c504;
                        if (charsetDecoder3 != null) {
                            charsetDecoder2 = charsetDecoder3;
                        }
                        charsetDecoder2.reset();
                        byteBuffer.position(0);
                    } else {
                        int i3 = i + 1;
                        f1392x1378447b[i] = (byte) read;
                        if (read != 10 && i3 != 32 && f1391x3271d0aa) {
                            i = i3;
                        }
                        ByteBuffer byteBuffer2 = f1394x9738a56c;
                        byteBuffer2.limit(i3);
                        f1395x9e171bf9.position(i2);
                        i2 = m1975xfbe0c504(false);
                        if (i2 > 0 && f1393x75d576dc[i2 - 1] == '\n') {
                            byteBuffer2.position(0);
                            m1975xfbe0c504 = i2;
                            break;
                        }
                        byteBuffer2.compact();
                        int position = byteBuffer2.position();
                        byteBuffer2.position(0);
                        i = position;
                    }
                }
            }
            m1976x3271d0aa(charset);
            int i4 = 0;
            int i22 = 0;
            while (true) {
                read = inputStream.read();
                if (read != -1) {
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
