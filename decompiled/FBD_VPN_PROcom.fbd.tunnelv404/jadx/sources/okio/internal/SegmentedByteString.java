package okio.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okio.Buffer;
import okio.ByteString;
import okio.C1497SegmentedByteString;
import okio.Segment;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000T\n\u0002\u0010\u0015\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0005\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0002\b\u0004\u001a+\u0010\u0005\u001a\u00020\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001H\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u001b\u0010\t\u001a\u00020\u0001*\u00020\u00072\u0006\u0010\b\u001a\u00020\u0001H\u0000¢\u0006\u0004\b\t\u0010\n\u001ad\u0010\u0014\u001a\u00020\u0012*\u00020\u00072K\u0010\u0013\u001aG\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u0010\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u00120\u000bH\u0080\bø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u0015\u001a$\u0010\u0019\u001a\u00020\u0018*\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u0001H\u0080\b¢\u0006\u0004\b\u0019\u0010\u001a\u001a\u001c\u0010\u001c\u001a\u00020\u001b*\u00020\u00072\u0006\u0010\b\u001a\u00020\u0001H\u0080\b¢\u0006\u0004\b\u001c\u0010\u001d\u001a\u0014\u0010\u001e\u001a\u00020\u0001*\u00020\u0007H\u0080\b¢\u0006\u0004\b\u001e\u0010\u001f\u001a\u0014\u0010 \u001a\u00020\f*\u00020\u0007H\u0080\b¢\u0006\u0004\b \u0010!\u001a,\u0010$\u001a\u00020\u0012*\u00020\u00072\u0006\u0010#\u001a\u00020\"2\u0006\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u0001H\u0080\b¢\u0006\u0004\b$\u0010%\u001a4\u0010)\u001a\u00020(*\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00012\u0006\u0010&\u001a\u00020\u00182\u0006\u0010'\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u0001H\u0080\b¢\u0006\u0004\b)\u0010*\u001a4\u0010)\u001a\u00020(*\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00012\u0006\u0010&\u001a\u00020\f2\u0006\u0010'\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u0001H\u0080\b¢\u0006\u0004\b)\u0010+\u001a4\u0010.\u001a\u00020\u0012*\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00012\u0006\u0010,\u001a\u00020\f2\u0006\u0010-\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u0001H\u0080\b¢\u0006\u0004\b.\u0010/\u001a\u001e\u00101\u001a\u00020(*\u00020\u00072\b\u0010&\u001a\u0004\u0018\u000100H\u0080\b¢\u0006\u0004\b1\u00102\u001a\u0014\u00103\u001a\u00020\u0001*\u00020\u0007H\u0080\b¢\u0006\u0004\b3\u0010\u001f\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u00064"}, d2 = {"", "", "value", "fromIndex", "toIndex", "binarySearch", "([IIII)I", "Lokio/SegmentedByteString;", "pos", "segment", "(Lokio/SegmentedByteString;I)I", "Lkotlin/Function3;", "", "Lkotlin/ParameterName;", "name", "data", TypedValues.CycleType.S_WAVE_OFFSET, "byteCount", "", "action", "forEachSegment", "(Lokio/SegmentedByteString;Lkotlin/jvm/functions/Function3;)V", "beginIndex", "endIndex", "Lokio/ByteString;", "commonSubstring", "(Lokio/SegmentedByteString;II)Lokio/ByteString;", "", "commonInternalGet", "(Lokio/SegmentedByteString;I)B", "commonGetSize", "(Lokio/SegmentedByteString;)I", "commonToByteArray", "(Lokio/SegmentedByteString;)[B", "Lokio/Buffer;", "buffer", "commonWrite", "(Lokio/SegmentedByteString;Lokio/Buffer;II)V", "other", "otherOffset", "", "commonRangeEquals", "(Lokio/SegmentedByteString;ILokio/ByteString;II)Z", "(Lokio/SegmentedByteString;I[BII)Z", TypedValues.AttributesType.S_TARGET, "targetOffset", "commonCopyInto", "(Lokio/SegmentedByteString;I[BII)V", "", "commonEquals", "(Lokio/SegmentedByteString;Ljava/lang/Object;)Z", "commonHashCode", "okio"}, k = 2, mv = {2, 1, 0}, xi = 48)
@JvmName(name = "-SegmentedByteString")
@SourceDebugExtension({"SMAP\nSegmentedByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SegmentedByteString.kt\nokio/internal/-SegmentedByteString\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,250:1\n63#1,12:252\n85#1,14:264\n85#1,14:278\n85#1,14:292\n85#1,14:306\n63#1,12:320\n1#2:251\n*S KotlinDebug\n*F\n+ 1 SegmentedByteString.kt\nokio/internal/-SegmentedByteString\n*L\n147#1:252,12\n160#1:264,14\n182#1:278,14\n202#1:292,14\n219#1:306,14\n239#1:320,12\n*E\n"})
/* renamed from: okio.internal.-SegmentedByteString, reason: invalid class name */
/* loaded from: classes3.dex */
public final class SegmentedByteString {
    public static final int binarySearch(@NotNull int[] iArr, int i, int i2, int i3) {
        Intrinsics.checkNotNullParameter(iArr, "<this>");
        int i4 = i3 - 1;
        while (i2 <= i4) {
            int i5 = (i2 + i4) >>> 1;
            int i6 = iArr[i5];
            if (i6 < i) {
                i2 = i5 + 1;
            } else if (i6 > i) {
                i4 = i5 - 1;
            } else {
                return i5;
            }
        }
        return (-i2) - 1;
    }

    public static final void commonCopyInto(@NotNull C1497SegmentedByteString c1497SegmentedByteString, int i, @NotNull byte[] target, int i2, int i3) {
        int i4;
        Intrinsics.checkNotNullParameter(c1497SegmentedByteString, "<this>");
        Intrinsics.checkNotNullParameter(target, "target");
        long j = i3;
        okio.SegmentedByteString.checkOffsetAndCount(c1497SegmentedByteString.size(), i, j);
        okio.SegmentedByteString.checkOffsetAndCount(target.length, i2, j);
        int i5 = i3 + i;
        int segment = segment(c1497SegmentedByteString, i);
        while (i < i5) {
            if (segment == 0) {
                i4 = 0;
            } else {
                i4 = c1497SegmentedByteString.getDirectory()[segment - 1];
            }
            int i6 = c1497SegmentedByteString.getDirectory()[segment] - i4;
            int i7 = c1497SegmentedByteString.getDirectory()[c1497SegmentedByteString.getSegments().length + segment];
            int min = Math.min(i5, i6 + i4) - i;
            int i8 = (i - i4) + i7;
            ArraysKt___ArraysJvmKt.copyInto(c1497SegmentedByteString.getSegments()[segment], target, i2, i8, i8 + min);
            i2 += min;
            i += min;
            segment++;
        }
    }

    public static final boolean commonEquals(@NotNull C1497SegmentedByteString c1497SegmentedByteString, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(c1497SegmentedByteString, "<this>");
        if (obj == c1497SegmentedByteString) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            if (byteString.size() == c1497SegmentedByteString.size() && c1497SegmentedByteString.rangeEquals(0, byteString, 0, c1497SegmentedByteString.size())) {
                return true;
            }
        }
        return false;
    }

    public static final int commonGetSize(@NotNull C1497SegmentedByteString c1497SegmentedByteString) {
        Intrinsics.checkNotNullParameter(c1497SegmentedByteString, "<this>");
        return c1497SegmentedByteString.getDirectory()[c1497SegmentedByteString.getSegments().length - 1];
    }

    public static final int commonHashCode(@NotNull C1497SegmentedByteString c1497SegmentedByteString) {
        Intrinsics.checkNotNullParameter(c1497SegmentedByteString, "<this>");
        int hashCode = c1497SegmentedByteString.getHashCode();
        if (hashCode != 0) {
            return hashCode;
        }
        int length = c1497SegmentedByteString.getSegments().length;
        int i = 0;
        int i2 = 0;
        int i3 = 1;
        while (i < length) {
            int i4 = c1497SegmentedByteString.getDirectory()[length + i];
            int i5 = c1497SegmentedByteString.getDirectory()[i];
            byte[] bArr = c1497SegmentedByteString.getSegments()[i];
            int i6 = (i5 - i2) + i4;
            while (i4 < i6) {
                i3 = (i3 * 31) + bArr[i4];
                i4++;
            }
            i++;
            i2 = i5;
        }
        c1497SegmentedByteString.setHashCode$okio(i3);
        return i3;
    }

    public static final byte commonInternalGet(@NotNull C1497SegmentedByteString c1497SegmentedByteString, int i) {
        int i2;
        Intrinsics.checkNotNullParameter(c1497SegmentedByteString, "<this>");
        okio.SegmentedByteString.checkOffsetAndCount(c1497SegmentedByteString.getDirectory()[c1497SegmentedByteString.getSegments().length - 1], i, 1L);
        int segment = segment(c1497SegmentedByteString, i);
        if (segment == 0) {
            i2 = 0;
        } else {
            i2 = c1497SegmentedByteString.getDirectory()[segment - 1];
        }
        return c1497SegmentedByteString.getSegments()[segment][(i - i2) + c1497SegmentedByteString.getDirectory()[c1497SegmentedByteString.getSegments().length + segment]];
    }

    public static final boolean commonRangeEquals(@NotNull C1497SegmentedByteString c1497SegmentedByteString, int i, @NotNull ByteString other, int i2, int i3) {
        Intrinsics.checkNotNullParameter(c1497SegmentedByteString, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        if (i < 0 || i > c1497SegmentedByteString.size() - i3) {
            return false;
        }
        int i4 = i3 + i;
        int segment = segment(c1497SegmentedByteString, i);
        while (i < i4) {
            int i5 = segment == 0 ? 0 : c1497SegmentedByteString.getDirectory()[segment - 1];
            int i6 = c1497SegmentedByteString.getDirectory()[segment] - i5;
            int i7 = c1497SegmentedByteString.getDirectory()[c1497SegmentedByteString.getSegments().length + segment];
            int min = Math.min(i4, i6 + i5) - i;
            if (!other.rangeEquals(i2, c1497SegmentedByteString.getSegments()[segment], (i - i5) + i7, min)) {
                return false;
            }
            i2 += min;
            i += min;
            segment++;
        }
        return true;
    }

    @NotNull
    public static final ByteString commonSubstring(@NotNull C1497SegmentedByteString c1497SegmentedByteString, int i, int i2) {
        Intrinsics.checkNotNullParameter(c1497SegmentedByteString, "<this>");
        int resolveDefaultParameter = okio.SegmentedByteString.resolveDefaultParameter(c1497SegmentedByteString, i2);
        if (i >= 0) {
            if (resolveDefaultParameter <= c1497SegmentedByteString.size()) {
                int i3 = resolveDefaultParameter - i;
                if (i3 >= 0) {
                    if (i == 0 && resolveDefaultParameter == c1497SegmentedByteString.size()) {
                        return c1497SegmentedByteString;
                    }
                    if (i == resolveDefaultParameter) {
                        return ByteString.EMPTY;
                    }
                    int segment = segment(c1497SegmentedByteString, i);
                    int segment2 = segment(c1497SegmentedByteString, resolveDefaultParameter - 1);
                    byte[][] bArr = (byte[][]) ArraysKt___ArraysJvmKt.copyOfRange(c1497SegmentedByteString.getSegments(), segment, segment2 + 1);
                    int[] iArr = new int[bArr.length * 2];
                    int i4 = 0;
                    if (segment <= segment2) {
                        int i5 = segment;
                        int i6 = 0;
                        while (true) {
                            iArr[i6] = Math.min(c1497SegmentedByteString.getDirectory()[i5] - i, i3);
                            int i7 = i6 + 1;
                            iArr[i6 + bArr.length] = c1497SegmentedByteString.getDirectory()[c1497SegmentedByteString.getSegments().length + i5];
                            if (i5 == segment2) {
                                break;
                            }
                            i5++;
                            i6 = i7;
                        }
                    }
                    if (segment != 0) {
                        i4 = c1497SegmentedByteString.getDirectory()[segment - 1];
                    }
                    int length = bArr.length;
                    iArr[length] = (i - i4) + iArr[length];
                    return new C1497SegmentedByteString(bArr, iArr);
                }
                throw new IllegalArgumentException(AbstractC0749x8313616e.m3329x34271fae(resolveDefaultParameter, i, "endIndex=", " < beginIndex=").toString());
            }
            StringBuilder m2939xab142723 = AbstractC0362x4440ab85.m2939xab142723(resolveDefaultParameter, "endIndex=", " > length(");
            m2939xab142723.append(c1497SegmentedByteString.size());
            m2939xab142723.append(')');
            throw new IllegalArgumentException(m2939xab142723.toString().toString());
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3330x95f25580(i, "beginIndex=", " < 0").toString());
    }

    @NotNull
    public static final byte[] commonToByteArray(@NotNull C1497SegmentedByteString c1497SegmentedByteString) {
        Intrinsics.checkNotNullParameter(c1497SegmentedByteString, "<this>");
        byte[] bArr = new byte[c1497SegmentedByteString.size()];
        int length = c1497SegmentedByteString.getSegments().length;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i < length) {
            int i4 = c1497SegmentedByteString.getDirectory()[length + i];
            int i5 = c1497SegmentedByteString.getDirectory()[i];
            int i6 = i5 - i2;
            ArraysKt___ArraysJvmKt.copyInto(c1497SegmentedByteString.getSegments()[i], bArr, i3, i4, i4 + i6);
            i3 += i6;
            i++;
            i2 = i5;
        }
        return bArr;
    }

    public static final void commonWrite(@NotNull C1497SegmentedByteString c1497SegmentedByteString, @NotNull Buffer buffer, int i, int i2) {
        int i3;
        Intrinsics.checkNotNullParameter(c1497SegmentedByteString, "<this>");
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        int i4 = i + i2;
        int segment = segment(c1497SegmentedByteString, i);
        while (i < i4) {
            if (segment == 0) {
                i3 = 0;
            } else {
                i3 = c1497SegmentedByteString.getDirectory()[segment - 1];
            }
            int i5 = c1497SegmentedByteString.getDirectory()[segment] - i3;
            int i6 = c1497SegmentedByteString.getDirectory()[c1497SegmentedByteString.getSegments().length + segment];
            int min = Math.min(i4, i5 + i3) - i;
            int i7 = (i - i3) + i6;
            Segment segment2 = new Segment(c1497SegmentedByteString.getSegments()[segment], i7, i7 + min, true, false);
            Segment segment3 = buffer.head;
            if (segment3 == null) {
                segment2.prev = segment2;
                segment2.next = segment2;
                buffer.head = segment2;
            } else {
                Intrinsics.checkNotNull(segment3);
                Segment segment4 = segment3.prev;
                Intrinsics.checkNotNull(segment4);
                segment4.push(segment2);
            }
            i += min;
            segment++;
        }
        buffer.setSize$okio(buffer.size() + i2);
    }

    public static final void forEachSegment(@NotNull C1497SegmentedByteString c1497SegmentedByteString, @NotNull Function3<? super byte[], ? super Integer, ? super Integer, Unit> action) {
        Intrinsics.checkNotNullParameter(c1497SegmentedByteString, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        int length = c1497SegmentedByteString.getSegments().length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3 = c1497SegmentedByteString.getDirectory()[length + i];
            int i4 = c1497SegmentedByteString.getDirectory()[i];
            action.invoke(c1497SegmentedByteString.getSegments()[i], Integer.valueOf(i3), Integer.valueOf(i4 - i2));
            i++;
            i2 = i4;
        }
    }

    public static final int segment(@NotNull C1497SegmentedByteString c1497SegmentedByteString, int i) {
        Intrinsics.checkNotNullParameter(c1497SegmentedByteString, "<this>");
        int binarySearch = binarySearch(c1497SegmentedByteString.getDirectory(), i + 1, 0, c1497SegmentedByteString.getSegments().length);
        if (binarySearch < 0) {
            return ~binarySearch;
        }
        return binarySearch;
    }

    public static final boolean commonRangeEquals(@NotNull C1497SegmentedByteString c1497SegmentedByteString, int i, @NotNull byte[] other, int i2, int i3) {
        Intrinsics.checkNotNullParameter(c1497SegmentedByteString, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        if (i < 0 || i > c1497SegmentedByteString.size() - i3 || i2 < 0 || i2 > other.length - i3) {
            return false;
        }
        int i4 = i3 + i;
        int segment = segment(c1497SegmentedByteString, i);
        while (i < i4) {
            int i5 = segment == 0 ? 0 : c1497SegmentedByteString.getDirectory()[segment - 1];
            int i6 = c1497SegmentedByteString.getDirectory()[segment] - i5;
            int i7 = c1497SegmentedByteString.getDirectory()[c1497SegmentedByteString.getSegments().length + segment];
            int min = Math.min(i4, i6 + i5) - i;
            if (!okio.SegmentedByteString.arrayRangeEquals(c1497SegmentedByteString.getSegments()[segment], (i - i5) + i7, other, i2, min)) {
                return false;
            }
            i2 += min;
            i += min;
            segment++;
        }
        return true;
    }
}
