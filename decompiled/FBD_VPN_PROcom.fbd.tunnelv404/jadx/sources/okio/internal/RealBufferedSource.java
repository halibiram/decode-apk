package okio.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.AbstractC0749x8313616e;
import java.io.EOFException;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Typography;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio;
import okio.Options;
import okio.PeekSource;
import okio.SegmentedByteString;
import okio.Sink;
import okio.Timeout;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000h\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0005\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\n\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001d\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0001H\u0080\b\u001a\r\u0010\u0006\u001a\u00020\u0007*\u00020\u0002H\u0080\b\u001a\u0015\u0010\b\u001a\u00020\t*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0001H\u0080\b\u001a\u0015\u0010\n\u001a\u00020\u0007*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0001H\u0080\b\u001a\r\u0010\u000b\u001a\u00020\f*\u00020\u0002H\u0080\b\u001a\r\u0010\r\u001a\u00020\u000e*\u00020\u0002H\u0080\b\u001a\u0015\u0010\r\u001a\u00020\u000e*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0001H\u0080\b\u001a\u0015\u0010\u000f\u001a\u00020\u0010*\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0012H\u0080\b\u001a\r\u0010\u0013\u001a\u00020\u0014*\u00020\u0002H\u0080\b\u001a\u0015\u0010\u0013\u001a\u00020\u0014*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0001H\u0080\b\u001a\u0015\u0010\u0015\u001a\u00020\t*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0014H\u0080\b\u001a%\u0010\u0000\u001a\u00020\u0010*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u0010H\u0080\b\u001a\u001d\u0010\u0015\u001a\u00020\t*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0001H\u0080\b\u001a\u0015\u0010\u0017\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0018H\u0080\b\u001a\r\u0010\u0019\u001a\u00020\u001a*\u00020\u0002H\u0080\b\u001a\u0015\u0010\u0019\u001a\u00020\u001a*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0001H\u0080\b\u001a\u000f\u0010\u001b\u001a\u0004\u0018\u00010\u001a*\u00020\u0002H\u0080\b\u001a\u0015\u0010\u001c\u001a\u00020\u001a*\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u0001H\u0080\b\u001a\r\u0010\u001e\u001a\u00020\u0010*\u00020\u0002H\u0080\b\u001a\r\u0010\u001f\u001a\u00020 *\u00020\u0002H\u0080\b\u001a\r\u0010!\u001a\u00020 *\u00020\u0002H\u0080\b\u001a\r\u0010\"\u001a\u00020\u0010*\u00020\u0002H\u0080\b\u001a\r\u0010#\u001a\u00020\u0010*\u00020\u0002H\u0080\b\u001a\r\u0010$\u001a\u00020\u0001*\u00020\u0002H\u0080\b\u001a\r\u0010%\u001a\u00020\u0001*\u00020\u0002H\u0080\b\u001a\r\u0010&\u001a\u00020\u0001*\u00020\u0002H\u0080\b\u001a\r\u0010'\u001a\u00020\u0001*\u00020\u0002H\u0080\b\u001a\u0015\u0010(\u001a\u00020\t*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0001H\u0080\b\u001a%\u0010)\u001a\u00020\u0001*\u00020\u00022\u0006\u0010*\u001a\u00020\f2\u0006\u0010+\u001a\u00020\u00012\u0006\u0010,\u001a\u00020\u0001H\u0080\b\u001a\u001d\u0010)\u001a\u00020\u0001*\u00020\u00022\u0006\u0010-\u001a\u00020\u000e2\u0006\u0010+\u001a\u00020\u0001H\u0080\b\u001a\u001d\u0010.\u001a\u00020\u0001*\u00020\u00022\u0006\u0010/\u001a\u00020\u000e2\u0006\u0010+\u001a\u00020\u0001H\u0080\b\u001a-\u00100\u001a\u00020\u0007*\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u00012\u0006\u0010-\u001a\u00020\u000e2\u0006\u00101\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u0010H\u0080\b\u001a\r\u00102\u001a\u000203*\u00020\u0002H\u0080\b\u001a\r\u00104\u001a\u00020\t*\u00020\u0002H\u0080\b\u001a\r\u00105\u001a\u000206*\u00020\u0002H\u0080\b\u001a\r\u00107\u001a\u00020\u001a*\u00020\u0002H\u0080\b¨\u00068"}, d2 = {"commonRead", "", "Lokio/RealBufferedSource;", "sink", "Lokio/Buffer;", "byteCount", "commonExhausted", "", "commonRequire", "", "commonRequest", "commonReadByte", "", "commonReadByteString", "Lokio/ByteString;", "commonSelect", "", "options", "Lokio/Options;", "commonReadByteArray", "", "commonReadFully", TypedValues.CycleType.S_WAVE_OFFSET, "commonReadAll", "Lokio/Sink;", "commonReadUtf8", "", "commonReadUtf8Line", "commonReadUtf8LineStrict", "limit", "commonReadUtf8CodePoint", "commonReadShort", "", "commonReadShortLe", "commonReadInt", "commonReadIntLe", "commonReadLong", "commonReadLongLe", "commonReadDecimalLong", "commonReadHexadecimalUnsignedLong", "commonSkip", "commonIndexOf", "b", "fromIndex", "toIndex", "bytes", "commonIndexOfElement", "targetBytes", "commonRangeEquals", "bytesOffset", "commonPeek", "Lokio/BufferedSource;", "commonClose", "commonTimeout", "Lokio/Timeout;", "commonToString", "okio"}, k = 2, mv = {2, 1, 0}, xi = 48)
@JvmName(name = "-RealBufferedSource")
@SourceDebugExtension({"SMAP\nRealBufferedSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealBufferedSource.kt\nokio/internal/-RealBufferedSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 RealBufferedSource.kt\nokio/RealBufferedSource\n+ 4 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,404:1\n1#2:405\n63#3:406\n63#3:407\n63#3:408\n63#3:409\n63#3:410\n63#3:411\n63#3:412\n63#3:413\n63#3:414\n63#3:415\n63#3:416\n63#3:417\n63#3:418\n63#3:419\n63#3:420\n63#3:421\n63#3:422\n63#3:423\n63#3:424\n63#3:425\n63#3:426\n63#3:427\n63#3:428\n63#3:430\n63#3:431\n63#3:432\n63#3:433\n63#3:434\n63#3:435\n63#3:436\n63#3:437\n63#3:438\n63#3:439\n63#3:440\n63#3:441\n63#3:442\n63#3:443\n63#3:444\n63#3:445\n63#3:446\n63#3:447\n63#3:448\n63#3:449\n63#3:451\n63#3:452\n63#3:453\n63#3:454\n63#3:455\n63#3:456\n63#3:457\n63#3:458\n63#3:459\n63#3:460\n63#3:461\n63#3:462\n63#3:463\n63#3:464\n63#3:465\n63#3:466\n63#3:467\n63#3:468\n63#3:469\n63#3:470\n63#3:471\n63#3:472\n63#3:473\n63#3:474\n63#3:475\n63#3:476\n63#3:477\n88#4:429\n88#4:450\n*S KotlinDebug\n*F\n+ 1 RealBufferedSource.kt\nokio/internal/-RealBufferedSource\n*L\n41#1:406\n43#1:407\n47#1:408\n48#1:409\n53#1:410\n63#1:411\n64#1:412\n71#1:413\n75#1:414\n76#1:415\n81#1:416\n88#1:417\n95#1:418\n100#1:419\n108#1:420\n109#1:421\n114#1:422\n123#1:423\n124#1:424\n131#1:425\n137#1:426\n139#1:427\n143#1:428\n144#1:430\n152#1:431\n156#1:432\n161#1:433\n162#1:434\n165#1:435\n168#1:436\n169#1:437\n170#1:438\n176#1:439\n177#1:440\n182#1:441\n189#1:442\n190#1:443\n195#1:444\n203#1:445\n205#1:446\n206#1:447\n208#1:448\n211#1:449\n213#1:451\n221#1:452\n228#1:453\n233#1:454\n238#1:455\n243#1:456\n248#1:457\n253#1:458\n258#1:459\n266#1:460\n277#1:461\n285#1:462\n299#1:463\n306#1:464\n309#1:465\n310#1:466\n321#1:467\n326#1:468\n327#1:469\n340#1:470\n343#1:471\n344#1:472\n356#1:473\n359#1:474\n360#1:475\n385#1:476\n398#1:477\n143#1:429\n211#1:450\n*E\n"})
/* renamed from: okio.internal.-RealBufferedSource, reason: invalid class name */
/* loaded from: classes3.dex */
public final class RealBufferedSource {
    public static final void commonClose(@NotNull okio.RealBufferedSource realBufferedSource) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        if (realBufferedSource.closed) {
            return;
        }
        realBufferedSource.closed = true;
        realBufferedSource.source.close();
        realBufferedSource.bufferField.clear();
    }

    public static final boolean commonExhausted(@NotNull okio.RealBufferedSource realBufferedSource) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        if (!realBufferedSource.closed) {
            if (realBufferedSource.bufferField.exhausted() && realBufferedSource.source.read(realBufferedSource.bufferField, 8192L) == -1) {
                return true;
            }
            return false;
        }
        throw new IllegalStateException("closed");
    }

    public static final long commonIndexOf(@NotNull okio.RealBufferedSource realBufferedSource, byte b, long j, long j2) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        if (realBufferedSource.closed) {
            throw new IllegalStateException("closed");
        }
        if (0 > j || j > j2) {
            throw new IllegalArgumentException(("fromIndex=" + j + " toIndex=" + j2).toString());
        }
        while (j < j2) {
            long indexOf = realBufferedSource.bufferField.indexOf(b, j, j2);
            if (indexOf == -1) {
                long size = realBufferedSource.bufferField.size();
                if (size >= j2 || realBufferedSource.source.read(realBufferedSource.bufferField, 8192L) == -1) {
                    break;
                }
                j = Math.max(j, size);
            } else {
                return indexOf;
            }
        }
        return -1L;
    }

    public static final long commonIndexOfElement(@NotNull okio.RealBufferedSource realBufferedSource, @NotNull ByteString targetBytes, long j) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        Intrinsics.checkNotNullParameter(targetBytes, "targetBytes");
        if (realBufferedSource.closed) {
            throw new IllegalStateException("closed");
        }
        while (true) {
            long indexOfElement = realBufferedSource.bufferField.indexOfElement(targetBytes, j);
            if (indexOfElement != -1) {
                return indexOfElement;
            }
            long size = realBufferedSource.bufferField.size();
            if (realBufferedSource.source.read(realBufferedSource.bufferField, 8192L) == -1) {
                return -1L;
            }
            j = Math.max(j, size);
        }
    }

    @NotNull
    public static final BufferedSource commonPeek(@NotNull okio.RealBufferedSource realBufferedSource) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        return Okio.buffer(new PeekSource(realBufferedSource));
    }

    public static final boolean commonRangeEquals(@NotNull okio.RealBufferedSource realBufferedSource, long j, @NotNull ByteString bytes, int i, int i2) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        if (!realBufferedSource.closed) {
            if (j < 0 || i < 0 || i2 < 0 || bytes.size() - i < i2) {
                return false;
            }
            for (int i3 = 0; i3 < i2; i3++) {
                long j2 = i3 + j;
                if (!realBufferedSource.request(1 + j2) || realBufferedSource.bufferField.getByte(j2) != bytes.getByte(i + i3)) {
                    return false;
                }
            }
            return true;
        }
        throw new IllegalStateException("closed");
    }

    public static final long commonRead(@NotNull okio.RealBufferedSource realBufferedSource, @NotNull Buffer sink, long j) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (j >= 0) {
            if (!realBufferedSource.closed) {
                if (realBufferedSource.bufferField.size() == 0) {
                    if (j == 0) {
                        return 0L;
                    }
                    if (realBufferedSource.source.read(realBufferedSource.bufferField, 8192L) == -1) {
                        return -1L;
                    }
                }
                return realBufferedSource.bufferField.read(sink, Math.min(j, realBufferedSource.bufferField.size()));
            }
            throw new IllegalStateException("closed");
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3337xab142723("byteCount < 0: ", j).toString());
    }

    public static final long commonReadAll(@NotNull okio.RealBufferedSource realBufferedSource, @NotNull Sink sink) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        Intrinsics.checkNotNullParameter(sink, "sink");
        long j = 0;
        while (realBufferedSource.source.read(realBufferedSource.bufferField, 8192L) != -1) {
            long completeSegmentByteCount = realBufferedSource.bufferField.completeSegmentByteCount();
            if (completeSegmentByteCount > 0) {
                j += completeSegmentByteCount;
                sink.write(realBufferedSource.bufferField, completeSegmentByteCount);
            }
        }
        if (realBufferedSource.bufferField.size() > 0) {
            long size = j + realBufferedSource.bufferField.size();
            Buffer buffer = realBufferedSource.bufferField;
            sink.write(buffer, buffer.size());
            return size;
        }
        return j;
    }

    public static final byte commonReadByte(@NotNull okio.RealBufferedSource realBufferedSource) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        realBufferedSource.require(1L);
        return realBufferedSource.bufferField.readByte();
    }

    @NotNull
    public static final byte[] commonReadByteArray(@NotNull okio.RealBufferedSource realBufferedSource, long j) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        realBufferedSource.require(j);
        return realBufferedSource.bufferField.readByteArray(j);
    }

    @NotNull
    public static final ByteString commonReadByteString(@NotNull okio.RealBufferedSource realBufferedSource, long j) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        realBufferedSource.require(j);
        return realBufferedSource.bufferField.readByteString(j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x002e, code lost:
    
        if (r4 == 0) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0031, code lost:
    
        r0 = new java.lang.StringBuilder("Expected a digit or '-' but was 0x");
        r1 = java.lang.Integer.toString(r8, kotlin.text.AbstractC0298xfbe0c504.checkRadix(16));
        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, "toString(...)");
        r0.append(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0053, code lost:
    
        throw new java.lang.NumberFormatException(r0.toString());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final long commonReadDecimalLong(@NotNull okio.RealBufferedSource realBufferedSource) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        realBufferedSource.require(1L);
        long j = 0;
        while (true) {
            long j2 = j + 1;
            if (!realBufferedSource.request(j2)) {
                break;
            }
            byte b = realBufferedSource.bufferField.getByte(j);
            if ((b < 48 || b > 57) && !(j == 0 && b == 45)) {
                break;
            }
            j = j2;
        }
        return realBufferedSource.bufferField.readDecimalLong();
    }

    public static final void commonReadFully(@NotNull okio.RealBufferedSource realBufferedSource, @NotNull byte[] sink) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        Intrinsics.checkNotNullParameter(sink, "sink");
        try {
            realBufferedSource.require(sink.length);
            realBufferedSource.bufferField.readFully(sink);
        } catch (EOFException e) {
            int i = 0;
            while (realBufferedSource.bufferField.size() > 0) {
                Buffer buffer = realBufferedSource.bufferField;
                int read = buffer.read(sink, i, (int) buffer.size());
                if (read == -1) {
                    throw new AssertionError();
                }
                i += read;
            }
            throw e;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0036, code lost:
    
        if (r0 == 0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0039, code lost:
    
        r0 = new java.lang.StringBuilder("Expected leading [0-9a-fA-F] character but was 0x");
        r1 = java.lang.Integer.toString(r2, kotlin.text.AbstractC0298xfbe0c504.checkRadix(16));
        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, "toString(...)");
        r0.append(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x005b, code lost:
    
        throw new java.lang.NumberFormatException(r0.toString());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final long commonReadHexadecimalUnsignedLong(@NotNull okio.RealBufferedSource realBufferedSource) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        realBufferedSource.require(1L);
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (!realBufferedSource.request(i2)) {
                break;
            }
            byte b = realBufferedSource.bufferField.getByte(i);
            if ((b < 48 || b > 57) && ((b < 97 || b > 102) && (b < 65 || b > 70))) {
                break;
            }
            i = i2;
        }
        return realBufferedSource.bufferField.readHexadecimalUnsignedLong();
    }

    public static final int commonReadInt(@NotNull okio.RealBufferedSource realBufferedSource) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        realBufferedSource.require(4L);
        return realBufferedSource.bufferField.readInt();
    }

    public static final int commonReadIntLe(@NotNull okio.RealBufferedSource realBufferedSource) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        realBufferedSource.require(4L);
        return realBufferedSource.bufferField.readIntLe();
    }

    public static final long commonReadLong(@NotNull okio.RealBufferedSource realBufferedSource) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        realBufferedSource.require(8L);
        return realBufferedSource.bufferField.readLong();
    }

    public static final long commonReadLongLe(@NotNull okio.RealBufferedSource realBufferedSource) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        realBufferedSource.require(8L);
        return realBufferedSource.bufferField.readLongLe();
    }

    public static final short commonReadShort(@NotNull okio.RealBufferedSource realBufferedSource) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        realBufferedSource.require(2L);
        return realBufferedSource.bufferField.readShort();
    }

    public static final short commonReadShortLe(@NotNull okio.RealBufferedSource realBufferedSource) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        realBufferedSource.require(2L);
        return realBufferedSource.bufferField.readShortLe();
    }

    @NotNull
    public static final String commonReadUtf8(@NotNull okio.RealBufferedSource realBufferedSource, long j) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        realBufferedSource.require(j);
        return realBufferedSource.bufferField.readUtf8(j);
    }

    public static final int commonReadUtf8CodePoint(@NotNull okio.RealBufferedSource realBufferedSource) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        realBufferedSource.require(1L);
        byte b = realBufferedSource.bufferField.getByte(0L);
        if ((b & 224) == 192) {
            realBufferedSource.require(2L);
        } else if ((b & 240) == 224) {
            realBufferedSource.require(3L);
        } else if ((b & 248) == 240) {
            realBufferedSource.require(4L);
        }
        return realBufferedSource.bufferField.readUtf8CodePoint();
    }

    @Nullable
    public static final String commonReadUtf8Line(@NotNull okio.RealBufferedSource realBufferedSource) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        long indexOf = realBufferedSource.indexOf((byte) 10);
        if (indexOf == -1) {
            if (realBufferedSource.bufferField.size() != 0) {
                return realBufferedSource.readUtf8(realBufferedSource.bufferField.size());
            }
            return null;
        }
        return Buffer.readUtf8Line(realBufferedSource.bufferField, indexOf);
    }

    @NotNull
    public static final String commonReadUtf8LineStrict(@NotNull okio.RealBufferedSource realBufferedSource, long j) {
        long j2;
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        if (j >= 0) {
            if (j == Long.MAX_VALUE) {
                j2 = Long.MAX_VALUE;
            } else {
                j2 = j + 1;
            }
            long indexOf = realBufferedSource.indexOf((byte) 10, 0L, j2);
            if (indexOf != -1) {
                return Buffer.readUtf8Line(realBufferedSource.bufferField, indexOf);
            }
            if (j2 < Long.MAX_VALUE && realBufferedSource.request(j2) && realBufferedSource.bufferField.getByte(j2 - 1) == 13 && realBufferedSource.request(1 + j2) && realBufferedSource.bufferField.getByte(j2) == 10) {
                return Buffer.readUtf8Line(realBufferedSource.bufferField, j2);
            }
            Buffer buffer = new Buffer();
            Buffer buffer2 = realBufferedSource.bufferField;
            buffer2.copyTo(buffer, 0L, Math.min(32, buffer2.size()));
            throw new EOFException("\\n not found: limit=" + Math.min(realBufferedSource.bufferField.size(), j) + " content=" + buffer.readByteString().hex() + Typography.ellipsis);
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3337xab142723("limit < 0: ", j).toString());
    }

    public static final boolean commonRequest(@NotNull okio.RealBufferedSource realBufferedSource, long j) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        if (j >= 0) {
            if (realBufferedSource.closed) {
                throw new IllegalStateException("closed");
            }
            while (realBufferedSource.bufferField.size() < j) {
                if (realBufferedSource.source.read(realBufferedSource.bufferField, 8192L) == -1) {
                    return false;
                }
            }
            return true;
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3337xab142723("byteCount < 0: ", j).toString());
    }

    public static final void commonRequire(@NotNull okio.RealBufferedSource realBufferedSource, long j) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        if (realBufferedSource.request(j)) {
        } else {
            throw new EOFException();
        }
    }

    public static final int commonSelect(@NotNull okio.RealBufferedSource realBufferedSource, @NotNull Options options) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        Intrinsics.checkNotNullParameter(options, "options");
        if (realBufferedSource.closed) {
            throw new IllegalStateException("closed");
        }
        do {
            int selectPrefix = Buffer.selectPrefix(realBufferedSource.bufferField, options, true);
            if (selectPrefix != -2) {
                if (selectPrefix == -1) {
                    return -1;
                }
                realBufferedSource.bufferField.skip(options.getByteStrings()[selectPrefix].size());
                return selectPrefix;
            }
        } while (realBufferedSource.source.read(realBufferedSource.bufferField, 8192L) != -1);
        return -1;
    }

    public static final void commonSkip(@NotNull okio.RealBufferedSource realBufferedSource, long j) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        if (!realBufferedSource.closed) {
            while (j > 0) {
                if (realBufferedSource.bufferField.size() == 0 && realBufferedSource.source.read(realBufferedSource.bufferField, 8192L) == -1) {
                    throw new EOFException();
                }
                long min = Math.min(j, realBufferedSource.bufferField.size());
                realBufferedSource.bufferField.skip(min);
                j -= min;
            }
            return;
        }
        throw new IllegalStateException("closed");
    }

    @NotNull
    public static final Timeout commonTimeout(@NotNull okio.RealBufferedSource realBufferedSource) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        return realBufferedSource.source.getF3090xfbe0c504();
    }

    @NotNull
    public static final String commonToString(@NotNull okio.RealBufferedSource realBufferedSource) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        return "buffer(" + realBufferedSource.source + ')';
    }

    @NotNull
    public static final byte[] commonReadByteArray(@NotNull okio.RealBufferedSource realBufferedSource) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        realBufferedSource.bufferField.writeAll(realBufferedSource.source);
        return realBufferedSource.bufferField.readByteArray();
    }

    @NotNull
    public static final ByteString commonReadByteString(@NotNull okio.RealBufferedSource realBufferedSource) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        realBufferedSource.bufferField.writeAll(realBufferedSource.source);
        return realBufferedSource.bufferField.readByteString();
    }

    @NotNull
    public static final String commonReadUtf8(@NotNull okio.RealBufferedSource realBufferedSource) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        realBufferedSource.bufferField.writeAll(realBufferedSource.source);
        return realBufferedSource.bufferField.readUtf8();
    }

    public static final void commonReadFully(@NotNull okio.RealBufferedSource realBufferedSource, @NotNull Buffer sink, long j) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        Intrinsics.checkNotNullParameter(sink, "sink");
        try {
            realBufferedSource.require(j);
            realBufferedSource.bufferField.readFully(sink, j);
        } catch (EOFException e) {
            sink.writeAll(realBufferedSource.bufferField);
            throw e;
        }
    }

    public static final long commonIndexOf(@NotNull okio.RealBufferedSource realBufferedSource, @NotNull ByteString bytes, long j) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        if (realBufferedSource.closed) {
            throw new IllegalStateException("closed");
        }
        while (true) {
            long indexOf = realBufferedSource.bufferField.indexOf(bytes, j);
            if (indexOf != -1) {
                return indexOf;
            }
            long size = realBufferedSource.bufferField.size();
            if (realBufferedSource.source.read(realBufferedSource.bufferField, 8192L) == -1) {
                return -1L;
            }
            j = Math.max(j, (size - bytes.size()) + 1);
        }
    }

    public static final int commonRead(@NotNull okio.RealBufferedSource realBufferedSource, @NotNull byte[] sink, int i, int i2) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        Intrinsics.checkNotNullParameter(sink, "sink");
        long j = i2;
        SegmentedByteString.checkOffsetAndCount(sink.length, i, j);
        if (realBufferedSource.bufferField.size() == 0) {
            if (i2 == 0) {
                return 0;
            }
            if (realBufferedSource.source.read(realBufferedSource.bufferField, 8192L) == -1) {
                return -1;
            }
        }
        return realBufferedSource.bufferField.read(sink, i, (int) Math.min(j, realBufferedSource.bufferField.size()));
    }
}
