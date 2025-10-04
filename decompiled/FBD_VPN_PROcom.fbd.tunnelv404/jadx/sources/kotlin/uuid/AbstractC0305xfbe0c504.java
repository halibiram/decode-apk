package kotlin.uuid;

import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC1113x7ae08f01;
import java.nio.BufferOverflowException;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.SecureRandom;
import java.util.UUID;
import kotlin.SinceKotlin;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* renamed from: kotlin.uuid.뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract class AbstractC0305xfbe0c504 {
    @ExperimentalUuidApi
    public static final void formatBytesInto(long j, @NotNull byte[] dst, int i, int i2, int i3) {
        Intrinsics.checkNotNullParameter(dst, "dst");
        AbstractC0306x3271d0aa.formatBytesIntoCommonImpl(j, dst, i, i2, i3);
    }

    @ExperimentalUuidApi
    public static final long getLongAt(@NotNull byte[] bArr, int i) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        return AbstractC0306x3271d0aa.getLongAtCommonImpl(bArr, i);
    }

    @SinceKotlin(version = "2.0")
    @ExperimentalUuidApi
    @NotNull
    public static final Uuid getUuid(@NotNull ByteBuffer byteBuffer) {
        Intrinsics.checkNotNullParameter(byteBuffer, "<this>");
        if (byteBuffer.position() + 15 < byteBuffer.limit()) {
            long j = byteBuffer.getLong();
            long j2 = byteBuffer.getLong();
            if (Intrinsics.areEqual(byteBuffer.order(), ByteOrder.LITTLE_ENDIAN)) {
                j = Long.reverseBytes(j);
                j2 = Long.reverseBytes(j2);
            }
            return Uuid.INSTANCE.fromLongs(j, j2);
        }
        throw new BufferUnderflowException();
    }

    @SinceKotlin(version = "2.0")
    @ExperimentalUuidApi
    @NotNull
    public static final ByteBuffer putUuid(@NotNull ByteBuffer byteBuffer, @NotNull Uuid uuid) {
        ByteBuffer putLong;
        Intrinsics.checkNotNullParameter(byteBuffer, "<this>");
        Intrinsics.checkNotNullParameter(uuid, "uuid");
        long mostSignificantBits = uuid.getMostSignificantBits();
        long leastSignificantBits = uuid.getLeastSignificantBits();
        if (byteBuffer.position() + 15 < byteBuffer.limit()) {
            if (Intrinsics.areEqual(byteBuffer.order(), ByteOrder.BIG_ENDIAN)) {
                byteBuffer.putLong(mostSignificantBits);
                putLong = byteBuffer.putLong(leastSignificantBits);
            } else {
                byteBuffer.putLong(Long.reverseBytes(mostSignificantBits));
                putLong = byteBuffer.putLong(Long.reverseBytes(leastSignificantBits));
            }
            Intrinsics.checkNotNullExpressionValue(putLong, "toLongs(...)");
            return putLong;
        }
        throw new BufferOverflowException();
    }

    public static final long reverseBytes(long j) {
        return Long.reverseBytes(j);
    }

    @ExperimentalUuidApi
    @NotNull
    public static final Uuid secureRandomUuid() {
        byte[] bArr = new byte[16];
        SecureRandom secureRandom = AbstractC1113x7ae08f01.f5415xfbe0c504;
        AbstractC1113x7ae08f01.f5415xfbe0c504.nextBytes(bArr);
        return AbstractC0306x3271d0aa.uuidFromRandomBytes(bArr);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [kotlin.uuid.뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, java.lang.Object] */
    @ExperimentalUuidApi
    @NotNull
    public static final Object serializedUuid(@NotNull Uuid uuid) {
        Intrinsics.checkNotNullParameter(uuid, "uuid");
        long mostSignificantBits = uuid.getMostSignificantBits();
        long leastSignificantBits = uuid.getLeastSignificantBits();
        ?? obj = new Object();
        obj.f1745xfbe0c504 = mostSignificantBits;
        obj.f1746x3271d0aa = leastSignificantBits;
        return obj;
    }

    @ExperimentalUuidApi
    public static final void setLongAt(@NotNull byte[] bArr, int i, long j) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        AbstractC0306x3271d0aa.setLongAtCommonImpl(bArr, i, j);
    }

    @SinceKotlin(version = "2.0")
    @ExperimentalUuidApi
    @NotNull
    public static final UUID toJavaUuid(@NotNull Uuid uuid) {
        Intrinsics.checkNotNullParameter(uuid, "<this>");
        return new UUID(uuid.getMostSignificantBits(), uuid.getLeastSignificantBits());
    }

    @SinceKotlin(version = "2.0")
    @ExperimentalUuidApi
    @NotNull
    public static final Uuid toKotlinUuid(@NotNull UUID uuid) {
        Intrinsics.checkNotNullParameter(uuid, "<this>");
        return Uuid.INSTANCE.fromLongs(uuid.getMostSignificantBits(), uuid.getLeastSignificantBits());
    }

    @ExperimentalUuidApi
    @NotNull
    public static final Uuid uuidParseHex(@NotNull String hexString) {
        Intrinsics.checkNotNullParameter(hexString, "hexString");
        return AbstractC0306x3271d0aa.uuidParseHexCommonImpl(hexString);
    }

    @ExperimentalUuidApi
    @NotNull
    public static final Uuid uuidParseHexDash(@NotNull String hexDashString) {
        Intrinsics.checkNotNullParameter(hexDashString, "hexDashString");
        return AbstractC0306x3271d0aa.uuidParseHexDashCommonImpl(hexDashString);
    }

    @SinceKotlin(version = "2.0")
    @ExperimentalUuidApi
    @NotNull
    public static final Uuid getUuid(@NotNull ByteBuffer byteBuffer, int i) {
        Intrinsics.checkNotNullParameter(byteBuffer, "<this>");
        if (i >= 0) {
            if (i + 15 < byteBuffer.limit()) {
                long j = byteBuffer.getLong(i);
                long j2 = byteBuffer.getLong(i + 8);
                if (Intrinsics.areEqual(byteBuffer.order(), ByteOrder.LITTLE_ENDIAN)) {
                    j = Long.reverseBytes(j);
                    j2 = Long.reverseBytes(j2);
                }
                return Uuid.INSTANCE.fromLongs(j, j2);
            }
            StringBuilder m2939xab142723 = AbstractC0362x4440ab85.m2939xab142723(i, "Not enough bytes to read a uuid at index: ", ", with limit: ");
            m2939xab142723.append(byteBuffer.limit());
            m2939xab142723.append(' ');
            throw new IndexOutOfBoundsException(m2939xab142723.toString());
        }
        throw new IndexOutOfBoundsException(AbstractC0362x4440ab85.m2929x9738a56c(i, "Negative index: "));
    }

    @SinceKotlin(version = "2.0")
    @ExperimentalUuidApi
    @NotNull
    public static final ByteBuffer putUuid(@NotNull ByteBuffer byteBuffer, int i, @NotNull Uuid uuid) {
        ByteBuffer putLong;
        Intrinsics.checkNotNullParameter(byteBuffer, "<this>");
        Intrinsics.checkNotNullParameter(uuid, "uuid");
        long mostSignificantBits = uuid.getMostSignificantBits();
        long leastSignificantBits = uuid.getLeastSignificantBits();
        if (i >= 0) {
            if (i + 15 < byteBuffer.limit()) {
                if (Intrinsics.areEqual(byteBuffer.order(), ByteOrder.BIG_ENDIAN)) {
                    byteBuffer.putLong(i, mostSignificantBits);
                    putLong = byteBuffer.putLong(i + 8, leastSignificantBits);
                } else {
                    byteBuffer.putLong(i, Long.reverseBytes(mostSignificantBits));
                    putLong = byteBuffer.putLong(i + 8, Long.reverseBytes(leastSignificantBits));
                }
                Intrinsics.checkNotNullExpressionValue(putLong, "toLongs(...)");
                return putLong;
            }
            StringBuilder m2939xab142723 = AbstractC0362x4440ab85.m2939xab142723(i, "Not enough capacity to write a uuid at index: ", ", with limit: ");
            m2939xab142723.append(byteBuffer.limit());
            m2939xab142723.append(' ');
            throw new IndexOutOfBoundsException(m2939xab142723.toString());
        }
        throw new IndexOutOfBoundsException(AbstractC0362x4440ab85.m2929x9738a56c(i, "Negative index: "));
    }
}
