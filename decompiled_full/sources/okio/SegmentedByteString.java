package okio;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.common.base.Ascii;
import defpackage.AbstractC1197x89633db9;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okio.Buffer;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000P\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\n\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0005\n\u0002\b\f\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000f\u001a'\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0000H\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u0013\u0010\b\u001a\u00020\u0007*\u00020\u0007H\u0000¢\u0006\u0004\b\b\u0010\t\u001a\u0013\u0010\b\u001a\u00020\n*\u00020\nH\u0000¢\u0006\u0004\b\b\u0010\u000b\u001a\u0013\u0010\b\u001a\u00020\u0000*\u00020\u0000H\u0000¢\u0006\u0004\b\b\u0010\f\u001a\u001c\u0010\u000e\u001a\u00020\n*\u00020\n2\u0006\u0010\r\u001a\u00020\nH\u0080\f¢\u0006\u0004\b\u000e\u0010\u000f\u001a\u001c\u0010\u0010\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\r\u001a\u00020\nH\u0080\f¢\u0006\u0004\b\u0010\u0010\u0011\u001a\u001c\u0010\u0014\u001a\u00020\n*\u00020\u00122\u0006\u0010\u0013\u001a\u00020\nH\u0080\f¢\u0006\u0004\b\u0014\u0010\u0015\u001a\u001c\u0010\u0016\u001a\u00020\n*\u00020\u00122\u0006\u0010\u0013\u001a\u00020\nH\u0080\f¢\u0006\u0004\b\u0016\u0010\u0015\u001a\u001c\u0010\u0017\u001a\u00020\n*\u00020\u00122\u0006\u0010\u0013\u001a\u00020\nH\u0080\f¢\u0006\u0004\b\u0017\u0010\u0015\u001a\u001c\u0010\u0017\u001a\u00020\u0000*\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0000H\u0080\f¢\u0006\u0004\b\u0017\u0010\u0018\u001a\u001c\u0010\u0019\u001a\u00020\u0012*\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0080\f¢\u0006\u0004\b\u0019\u0010\u001a\u001a\u001c\u0010\u0017\u001a\u00020\u0000*\u00020\n2\u0006\u0010\u0013\u001a\u00020\u0000H\u0080\f¢\u0006\u0004\b\u0017\u0010\u001b\u001a \u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\nH\u0080\b¢\u0006\u0004\b\u001e\u0010\u0011\u001a \u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\u0000H\u0080\b¢\u0006\u0004\b\u001e\u0010\u001b\u001a7\u0010#\u001a\u00020\"2\u0006\u0010\u001c\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\nH\u0000¢\u0006\u0004\b#\u0010$\u001a\u0013\u0010&\u001a\u00020%*\u00020\u0012H\u0000¢\u0006\u0004\b&\u0010'\u001a\u0013\u0010&\u001a\u00020%*\u00020\nH\u0000¢\u0006\u0004\b&\u0010(\u001a\u0013\u0010&\u001a\u00020%*\u00020\u0000H\u0000¢\u0006\u0004\b&\u0010)\u001a\u0017\u0010,\u001a\u00020*2\u0006\u0010+\u001a\u00020*H\u0000¢\u0006\u0004\b,\u0010-\u001a\u001b\u0010,\u001a\u00020\n*\u00020.2\u0006\u0010/\u001a\u00020\nH\u0000¢\u0006\u0004\b,\u00100\u001a\u001b\u0010,\u001a\u00020\n*\u00020\u001f2\u0006\u00101\u001a\u00020\nH\u0000¢\u0006\u0004\b,\u00102\"\u001a\u00107\u001a\u00020*8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b3\u00104\u001a\u0004\b5\u00106\"\u001a\u0010<\u001a\u00020\n8\u0000X\u0080D¢\u0006\f\n\u0004\b8\u00109\u001a\u0004\b:\u0010;¨\u0006="}, d2 = {"", "size", TypedValues.CycleType.S_WAVE_OFFSET, "byteCount", "", "checkOffsetAndCount", "(JJJ)V", "", "reverseBytes", "(S)S", "", "(I)I", "(J)J", "bitCount", "leftRotate", "(II)I", "rightRotate", "(JI)J", "", "other", "shr", "(BI)I", "shl", "and", "(BJ)J", "xor", "(BB)B", "(IJ)J", "a", "b", "minOf", "", "aOffset", "bOffset", "", "arrayRangeEquals", "([BI[BII)Z", "", "toHexString", "(B)Ljava/lang/String;", "(I)Ljava/lang/String;", "(J)Ljava/lang/String;", "Lokio/Buffer$UnsafeCursor;", "unsafeCursor", "resolveDefaultParameter", "(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;", "Lokio/ByteString;", "position", "(Lokio/ByteString;I)I", "sizeParam", "([BI)I", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "Lokio/Buffer$UnsafeCursor;", "getDEFAULT__new_UnsafeCursor", "()Lokio/Buffer$UnsafeCursor;", "DEFAULT__new_UnsafeCursor", "뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫", "I", "getDEFAULT__ByteString_size", "()I", "DEFAULT__ByteString_size", "okio"}, k = 2, mv = {2, 1, 0}, xi = 48)
@JvmName(name = "-SegmentedByteString")
@SourceDebugExtension({"SMAP\nUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,185:1\n67#1:186\n73#1:187\n*S KotlinDebug\n*F\n+ 1 Util.kt\nokio/-SegmentedByteString\n*L\n105#1:186\n106#1:187\n*E\n"})
/* renamed from: okio.-SegmentedByteString, reason: invalid class name */
/* loaded from: classes3.dex */
public final class SegmentedByteString {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final Buffer.UnsafeCursor f3555xfbe0c504 = new Buffer.UnsafeCursor();

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final int f3556x3271d0aa = -1234567890;

    public static final int and(byte b, int i) {
        return b & i;
    }

    public static final boolean arrayRangeEquals(@NotNull byte[] a, int i, @NotNull byte[] b, int i2, int i3) {
        Intrinsics.checkNotNullParameter(a, "a");
        Intrinsics.checkNotNullParameter(b, "b");
        for (int i4 = 0; i4 < i3; i4++) {
            if (a[i4 + i] != b[i4 + i2]) {
                return false;
            }
        }
        return true;
    }

    public static final void checkOffsetAndCount(long j, long j2, long j3) {
        if ((j2 | j3) >= 0 && j2 <= j && j - j2 >= j3) {
            return;
        }
        throw new ArrayIndexOutOfBoundsException("size=" + j + " offset=" + j2 + " byteCount=" + j3);
    }

    public static final int getDEFAULT__ByteString_size() {
        return f3556x3271d0aa;
    }

    @NotNull
    public static final Buffer.UnsafeCursor getDEFAULT__new_UnsafeCursor() {
        return f3555xfbe0c504;
    }

    public static final int leftRotate(int i, int i2) {
        return (i >>> (32 - i2)) | (i << i2);
    }

    public static final long minOf(long j, int i) {
        return Math.min(j, i);
    }

    @NotNull
    public static final Buffer.UnsafeCursor resolveDefaultParameter(@NotNull Buffer.UnsafeCursor unsafeCursor) {
        Intrinsics.checkNotNullParameter(unsafeCursor, "unsafeCursor");
        return unsafeCursor == f3555xfbe0c504 ? new Buffer.UnsafeCursor() : unsafeCursor;
    }

    public static final int reverseBytes(int i) {
        return ((i & 255) << 24) | (((-16777216) & i) >>> 24) | ((16711680 & i) >>> 8) | ((65280 & i) << 8);
    }

    public static final long rightRotate(long j, int i) {
        return (j << (64 - i)) | (j >>> i);
    }

    public static final int shl(byte b, int i) {
        return b << i;
    }

    public static final int shr(byte b, int i) {
        return b >> i;
    }

    @NotNull
    public static final String toHexString(byte b) {
        return AbstractC1197x89633db9.concatToString(new char[]{okio.internal.ByteString.getHEX_DIGIT_CHARS()[(b >> 4) & 15], okio.internal.ByteString.getHEX_DIGIT_CHARS()[b & Ascii.SI]});
    }

    public static final byte xor(byte b, byte b2) {
        return (byte) (b ^ b2);
    }

    public static final long and(byte b, long j) {
        return b & j;
    }

    public static final long minOf(int i, long j) {
        return Math.min(i, j);
    }

    public static final int resolveDefaultParameter(@NotNull ByteString byteString, int i) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        return i == f3556x3271d0aa ? byteString.size() : i;
    }

    public static final long reverseBytes(long j) {
        return ((j & 255) << 56) | (((-72057594037927936L) & j) >>> 56) | ((71776119061217280L & j) >>> 40) | ((280375465082880L & j) >>> 24) | ((1095216660480L & j) >>> 8) | ((4278190080L & j) << 8) | ((16711680 & j) << 24) | ((65280 & j) << 40);
    }

    public static final long and(int i, long j) {
        return i & j;
    }

    public static final int resolveDefaultParameter(@NotNull byte[] bArr, int i) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        return i == f3556x3271d0aa ? bArr.length : i;
    }

    public static final short reverseBytes(short s) {
        return (short) (((s & 255) << 8) | ((65280 & s) >>> 8));
    }

    @NotNull
    public static final String toHexString(int i) {
        int i2 = 0;
        if (i == 0) {
            return "0";
        }
        char[] cArr = {okio.internal.ByteString.getHEX_DIGIT_CHARS()[(i >> 28) & 15], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(i >> 24) & 15], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(i >> 20) & 15], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(i >> 16) & 15], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(i >> 12) & 15], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(i >> 8) & 15], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(i >> 4) & 15], okio.internal.ByteString.getHEX_DIGIT_CHARS()[i & 15]};
        while (i2 < 8 && cArr[i2] == '0') {
            i2++;
        }
        return AbstractC1197x89633db9.concatToString(cArr, i2, 8);
    }

    @NotNull
    public static final String toHexString(long j) {
        if (j == 0) {
            return "0";
        }
        char[] cArr = {okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j >> 60) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j >> 56) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j >> 52) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j >> 48) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j >> 44) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j >> 40) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j >> 36) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j >> 32) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j >> 28) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j >> 24) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j >> 20) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j >> 16) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j >> 12) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j >> 8) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j >> 4) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) (j & 15)]};
        int i = 0;
        while (i < 16 && cArr[i] == '0') {
            i++;
        }
        return AbstractC1197x89633db9.concatToString(cArr, i, 16);
    }
}
