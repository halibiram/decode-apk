package okhttp3.internal.http2;

import androidx.core.view.PointerIconCompat;
import com.google.common.base.Ascii;
import defpackage.C0869xe0803c53;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilCommonKt;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0012J\u001d\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\fJ%\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0013"}, d2 = {"Lokhttp3/internal/http2/Huffman;", "", "Lokio/ByteString;", "source", "Lokio/BufferedSink;", "sink", "", "encode", "(Lokio/ByteString;Lokio/BufferedSink;)V", "bytes", "", "encodedLength", "(Lokio/ByteString;)I", "Lokio/BufferedSource;", "", "byteCount", "decode", "(Lokio/BufferedSource;JLokio/BufferedSink;)V", "듻득뒈땪돠딐듰뒉딁든뒘둬뒵딨뒻땨딃둥뎬듨딹딎딤둑뒘땸땤듨뒨뒝땩뎬땍듼뒤돸됩땹둥땻딁듨딜땥뒉딤됐딽땍돳듻뒤땠딸땲뒷땨됴되땸딐땥땵땜뎸땍뒹뒀땬듌땅땤땲돝딜뒤땬뒹돨돛뒐뒾땁듻듼둥땩듸뎨뒾땳뎡뎠뒘땐땤뒼돴땦땸땲돷두돝땪득듰땣딜돨딅땍땜딀땮딹딞돵땝됨땧땔땬뒤땮딞딌딽돸땯", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class Huffman {

    @NotNull
    public static final Huffman INSTANCE = new Object();

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final int[] f3377xfbe0c504 = {8184, 8388568, 268435426, 268435427, 268435428, 268435429, 268435430, 268435431, 268435432, 16777194, 1073741820, 268435433, 268435434, 1073741821, 268435435, 268435436, 268435437, 268435438, 268435439, 268435440, 268435441, 268435442, 1073741822, 268435443, 268435444, 268435445, 268435446, 268435447, 268435448, 268435449, 268435450, 268435451, 20, PointerIconCompat.TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW, PointerIconCompat.TYPE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW, 4090, 8185, 21, 248, 2042, PointerIconCompat.TYPE_ZOOM_IN, PointerIconCompat.TYPE_ZOOM_OUT, 249, 2043, 250, 22, 23, 24, 0, 1, 2, 25, 26, 27, 28, 29, 30, 31, 92, 251, 32764, 32, 4091, PointerIconCompat.TYPE_GRAB, 8186, 33, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 252, 115, 253, 8187, 524272, 8188, 16380, 34, 32765, 3, 35, 4, 36, 5, 37, 38, 39, 6, 116, 117, 40, 41, 42, 7, 43, 118, 44, 8, 9, 45, 119, 120, 121, 122, 123, 32766, 2044, 16381, 8189, 268435452, 1048550, 4194258, 1048551, 1048552, 4194259, 4194260, 4194261, 8388569, 4194262, 8388570, 8388571, 8388572, 8388573, 8388574, 16777195, 8388575, 16777196, 16777197, 4194263, 8388576, 16777198, 8388577, 8388578, 8388579, 8388580, 2097116, 4194264, 8388581, 4194265, 8388582, 8388583, 16777199, 4194266, 2097117, 1048553, 4194267, 4194268, 8388584, 8388585, 2097118, 8388586, 4194269, 4194270, 16777200, 2097119, 4194271, 8388587, 8388588, 2097120, 2097121, 4194272, 2097122, 8388589, 4194273, 8388590, 8388591, 1048554, 4194274, 4194275, 4194276, 8388592, 4194277, 4194278, 8388593, 67108832, 67108833, 1048555, 524273, 4194279, 8388594, 4194280, 33554412, 67108834, 67108835, 67108836, 134217694, 134217695, 67108837, 16777201, 33554413, 524274, 2097123, 67108838, 134217696, 134217697, 67108839, 134217698, 16777202, 2097124, 2097125, 67108840, 67108841, 268435453, 134217699, 134217700, 134217701, 1048556, 16777203, 1048557, 2097126, 4194281, 2097127, 2097128, 8388595, 4194282, 4194283, 33554414, 33554415, 16777204, 16777205, 67108842, 8388596, 67108843, 134217702, 67108844, 67108845, 134217703, 134217704, 134217705, 134217706, 134217707, 268435454, 134217708, 134217709, 134217710, 134217711, 134217712, 67108846};

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final byte[] f3378x3271d0aa = {13, Ascii.ETB, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.CAN, Ascii.RS, Ascii.FS, Ascii.FS, Ascii.RS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.RS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, Ascii.FS, 6, 10, 10, 12, 13, 6, 8, 11, 10, 10, 8, 11, 8, 6, 6, 6, 5, 5, 5, 6, 6, 6, 6, 6, 6, 6, 7, 8, Ascii.SI, 6, 12, 10, 13, 6, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 8, 7, 8, 13, 19, 13, Ascii.SO, 6, Ascii.SI, 5, 6, 5, 6, 5, 6, 6, 6, 5, 7, 7, 6, 6, 6, 5, 6, 7, 6, 5, 5, 6, 7, 7, 7, 7, 7, Ascii.SI, 11, Ascii.SO, 13, Ascii.FS, Ascii.DC4, Ascii.SYN, Ascii.DC4, Ascii.DC4, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.ETB, Ascii.SYN, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.CAN, Ascii.ETB, Ascii.CAN, Ascii.CAN, Ascii.SYN, Ascii.ETB, Ascii.CAN, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.ETB, Ascii.NAK, Ascii.SYN, Ascii.ETB, Ascii.SYN, Ascii.ETB, Ascii.ETB, Ascii.CAN, Ascii.SYN, Ascii.NAK, Ascii.DC4, Ascii.SYN, Ascii.SYN, Ascii.ETB, Ascii.ETB, Ascii.NAK, Ascii.ETB, Ascii.SYN, Ascii.SYN, Ascii.CAN, Ascii.NAK, Ascii.SYN, Ascii.ETB, Ascii.ETB, Ascii.NAK, Ascii.NAK, Ascii.SYN, Ascii.NAK, Ascii.ETB, Ascii.SYN, Ascii.ETB, Ascii.ETB, Ascii.DC4, Ascii.SYN, Ascii.SYN, Ascii.SYN, Ascii.ETB, Ascii.SYN, Ascii.SYN, Ascii.ETB, Ascii.SUB, Ascii.SUB, Ascii.DC4, 19, Ascii.SYN, Ascii.ETB, Ascii.SYN, Ascii.EM, Ascii.SUB, Ascii.SUB, Ascii.SUB, Ascii.ESC, Ascii.ESC, Ascii.SUB, Ascii.CAN, Ascii.EM, 19, Ascii.NAK, Ascii.SUB, Ascii.ESC, Ascii.ESC, Ascii.SUB, Ascii.ESC, Ascii.CAN, Ascii.NAK, Ascii.NAK, Ascii.SUB, Ascii.SUB, Ascii.FS, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.DC4, Ascii.CAN, Ascii.DC4, Ascii.NAK, Ascii.SYN, Ascii.NAK, Ascii.NAK, Ascii.ETB, Ascii.SYN, Ascii.SYN, Ascii.EM, Ascii.EM, Ascii.CAN, Ascii.CAN, Ascii.SUB, Ascii.ETB, Ascii.SUB, Ascii.ESC, Ascii.SUB, Ascii.SUB, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.FS, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.ESC, Ascii.SUB};

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public static final C0869xe0803c53 f3379x1378447b = new C0869xe0803c53();

    /* JADX WARN: Type inference failed for: r4v0, types: [okhttp3.internal.http2.Huffman, java.lang.Object] */
    static {
        C0869xe0803c53[] c0869xe0803c53Arr;
        for (int i = 0; i < 256; i++) {
            Huffman huffman = INSTANCE;
            int i2 = f3377xfbe0c504[i];
            int i3 = f3378x3271d0aa[i];
            huffman.getClass();
            C0869xe0803c53 c0869xe0803c53 = new C0869xe0803c53(i, i3);
            C0869xe0803c53 c0869xe0803c532 = f3379x1378447b;
            while (true) {
                c0869xe0803c53Arr = c0869xe0803c532.f4988xfbe0c504;
                if (i3 > 8) {
                    i3 -= 8;
                    int i4 = (i2 >>> i3) & 255;
                    Intrinsics.checkNotNull(c0869xe0803c53Arr);
                    C0869xe0803c53 c0869xe0803c533 = c0869xe0803c53Arr[i4];
                    if (c0869xe0803c533 == null) {
                        c0869xe0803c533 = new C0869xe0803c53();
                        c0869xe0803c53Arr[i4] = c0869xe0803c533;
                    }
                    c0869xe0803c532 = c0869xe0803c533;
                }
            }
            int i5 = 8 - i3;
            int i6 = (i2 << i5) & 255;
            Intrinsics.checkNotNull(c0869xe0803c53Arr);
            ArraysKt___ArraysJvmKt.fill(c0869xe0803c53Arr, c0869xe0803c53, i6, (1 << i5) + i6);
        }
    }

    public final void decode(@NotNull BufferedSource source, long byteCount, @NotNull BufferedSink sink) {
        int i;
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(sink, "sink");
        C0869xe0803c53 c0869xe0803c53 = f3379x1378447b;
        int i2 = 0;
        C0869xe0803c53 c0869xe0803c532 = c0869xe0803c53;
        int i3 = 0;
        for (long j = 0; j < byteCount; j++) {
            i2 = (i2 << 8) | _UtilCommonKt.and(source.readByte(), 255);
            i3 += 8;
            while (i3 >= 8) {
                C0869xe0803c53[] c0869xe0803c53Arr = c0869xe0803c532.f4988xfbe0c504;
                Intrinsics.checkNotNull(c0869xe0803c53Arr);
                c0869xe0803c532 = c0869xe0803c53Arr[(i2 >>> (i3 - 8)) & 255];
                Intrinsics.checkNotNull(c0869xe0803c532);
                if (c0869xe0803c532.f4988xfbe0c504 == null) {
                    sink.writeByte(c0869xe0803c532.f4989x3271d0aa);
                    i3 -= c0869xe0803c532.f4990x1378447b;
                    c0869xe0803c532 = c0869xe0803c53;
                } else {
                    i3 -= 8;
                }
            }
        }
        while (i3 > 0) {
            C0869xe0803c53[] c0869xe0803c53Arr2 = c0869xe0803c532.f4988xfbe0c504;
            Intrinsics.checkNotNull(c0869xe0803c53Arr2);
            C0869xe0803c53 c0869xe0803c533 = c0869xe0803c53Arr2[(i2 << (8 - i3)) & 255];
            Intrinsics.checkNotNull(c0869xe0803c533);
            if (c0869xe0803c533.f4988xfbe0c504 == null && (i = c0869xe0803c533.f4990x1378447b) <= i3) {
                sink.writeByte(c0869xe0803c533.f4989x3271d0aa);
                i3 -= i;
                c0869xe0803c532 = c0869xe0803c53;
            } else {
                return;
            }
        }
    }

    public final void encode(@NotNull ByteString source, @NotNull BufferedSink sink) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(sink, "sink");
        int size = source.size();
        long j = 0;
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            int and = _UtilCommonKt.and(source.getByte(i2), 255);
            int i3 = f3377xfbe0c504[and];
            byte b = f3378x3271d0aa[and];
            j = (j << b) | i3;
            i += b;
            while (i >= 8) {
                i -= 8;
                sink.writeByte((int) (j >> i));
            }
        }
        if (i > 0) {
            sink.writeByte((int) ((j << (8 - i)) | (255 >>> i)));
        }
    }

    public final int encodedLength(@NotNull ByteString bytes) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        long j = 0;
        for (int i = 0; i < bytes.size(); i++) {
            j += f3378x3271d0aa[_UtilCommonKt.and(bytes.getByte(i), 255)];
        }
        return (int) ((j + 7) >> 3);
    }
}
