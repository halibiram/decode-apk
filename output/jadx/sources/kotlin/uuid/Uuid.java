package kotlin.uuid;

import defpackage.AbstractC0613x9f5dff2a;
import defpackage.AbstractC1197x89633db9;
import java.io.Serializable;
import java.util.Comparator;
import kotlin.Deprecated;
import kotlin.DeprecatedSinceKotlin;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.ReplaceWith;
import kotlin.SinceKotlin;
import kotlin.UByteArray;
import kotlin.ULong;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@SinceKotlin(version = "2.0")
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\r\b\u0007\u0018\u0000 '2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00060\u0002j\u0002`\u0003:\u0001'J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0007¢\u0006\u0004\b\n\u0010\tJ\r\u0010\u000b\u001a\u00020\u0007¢\u0006\u0004\b\u000b\u0010\tJ\r\u0010\r\u001a\u00020\f¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0011\u001a\u00020\u000fH\u0007¢\u0006\u0004\b\u0010\u0010\u000eJ\u001a\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0004H\u0096\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0018\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0012\u001a\u00020\u0000H\u0097\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0019\u0010\u001aR \u0010\"\u001a\u00020\u001b8\u0000X\u0081\u0004¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u0012\u0004\b \u0010!\u001a\u0004\b\u001e\u0010\u001fR \u0010&\u001a\u00020\u001b8\u0000X\u0081\u0004¢\u0006\u0012\n\u0004\b#\u0010\u001d\u0012\u0004\b%\u0010!\u001a\u0004\b$\u0010\u001f¨\u0006("}, d2 = {"Lkotlin/uuid/Uuid;", "", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "writeReplace", "()Ljava/lang/Object;", "", "toString", "()Ljava/lang/String;", "toHexDashString", "toHexString", "", "toByteArray", "()[B", "Lkotlin/UByteArray;", "toUByteArray-TcUX1vc", "toUByteArray", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "compareTo", "(Lkotlin/uuid/Uuid;)I", "hashCode", "()I", "", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "J", "getMostSignificantBits", "()J", "getMostSignificantBits$annotations", "()V", "mostSignificantBits", "뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫", "getLeastSignificantBits", "getLeastSignificantBits$annotations", "leastSignificantBits", "Companion", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
@ExperimentalUuidApi
/* loaded from: classes3.dex */
public final class Uuid implements Comparable<Uuid>, Serializable {
    public static final int SIZE_BITS = 128;
    public static final int SIZE_BYTES = 16;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
    public final long mostSignificantBits;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters and from kotlin metadata */
    public final long leastSignificantBits;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public static final Uuid f1742x1378447b = new Uuid(0, 0);

    @Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001J\u001d\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u001d\u0010\n\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\b¢\u0006\u0004\b\t\u0010\u0007J\u0015\u0010\r\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u000fH\u0007¢\u0006\u0004\b\u0011\u0010\u000eJ\u0015\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0013H\u0007¢\u0006\u0004\b\u0018\u0010\u0016J\u0015\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0013¢\u0006\u0004\b\u001a\u0010\u0016J\r\u0010\u001b\u001a\u00020\u0005¢\u0006\u0004\b\u001b\u0010\u001cR*\u0010#\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u001dj\b\u0012\u0004\u0012\u00020\u0005`\u001e8FX\u0087\u0004¢\u0006\f\u0012\u0004\b!\u0010\"\u001a\u0004\b\u001f\u0010 R\u0017\u0010$\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010\u001cR\u0014\u0010(\u001a\u00020'8\u0006X\u0086T¢\u0006\u0006\n\u0004\b(\u0010)R\u0014\u0010*\u001a\u00020'8\u0006X\u0086T¢\u0006\u0006\n\u0004\b*\u0010)¨\u0006+"}, d2 = {"Lkotlin/uuid/Uuid$Companion;", "", "", "mostSignificantBits", "leastSignificantBits", "Lkotlin/uuid/Uuid;", "fromLongs", "(JJ)Lkotlin/uuid/Uuid;", "Lkotlin/ULong;", "fromULongs-eb3DHEI", "fromULongs", "", "byteArray", "fromByteArray", "([B)Lkotlin/uuid/Uuid;", "Lkotlin/UByteArray;", "ubyteArray", "fromUByteArray-GBYM_sE", "fromUByteArray", "", "uuidString", "parse", "(Ljava/lang/String;)Lkotlin/uuid/Uuid;", "hexDashString", "parseHexDash", "hexString", "parseHex", "random", "()Lkotlin/uuid/Uuid;", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "getLEXICAL_ORDER", "()Ljava/util/Comparator;", "getLEXICAL_ORDER$annotations", "()V", "LEXICAL_ORDER", "NIL", "Lkotlin/uuid/Uuid;", "getNIL", "", "SIZE_BYTES", "I", "SIZE_BITS", "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        @Deprecated(message = "Use naturalOrder<Uuid>() instead", replaceWith = @ReplaceWith(expression = "naturalOrder<Uuid>()", imports = {"kotlin.comparisons.naturalOrder"}))
        @DeprecatedSinceKotlin(warningSince = "2.1")
        public static /* synthetic */ void getLEXICAL_ORDER$annotations() {
        }

        @NotNull
        public final Uuid fromByteArray(@NotNull byte[] byteArray) {
            String joinToString$default;
            Intrinsics.checkNotNullParameter(byteArray, "byteArray");
            if (byteArray.length == 16) {
                return fromLongs(AbstractC0305xfbe0c504.getLongAt(byteArray, 0), AbstractC0305xfbe0c504.getLongAt(byteArray, 8));
            }
            StringBuilder sb = new StringBuilder("Expected exactly 16 bytes, but was ");
            joinToString$default = ArraysKt___ArraysKt.joinToString$default(byteArray, (CharSequence) null, (CharSequence) "[", (CharSequence) "]", 32, (CharSequence) null, (Function1) null, 49, (Object) null);
            sb.append(joinToString$default);
            sb.append(" of size ");
            sb.append(byteArray.length);
            throw new IllegalArgumentException(sb.toString().toString());
        }

        @NotNull
        public final Uuid fromLongs(long mostSignificantBits, long leastSignificantBits) {
            if (mostSignificantBits == 0 && leastSignificantBits == 0) {
                return getNIL();
            }
            return new Uuid(mostSignificantBits, leastSignificantBits, null);
        }

        @SinceKotlin(version = "2.1")
        @ExperimentalUnsignedTypes
        @NotNull
        /* renamed from: fromUByteArray-GBYM_sE, reason: not valid java name */
        public final Uuid m2210fromUByteArrayGBYM_sE(@NotNull byte[] ubyteArray) {
            Intrinsics.checkNotNullParameter(ubyteArray, "ubyteArray");
            return fromByteArray(ubyteArray);
        }

        @NotNull
        /* renamed from: fromULongs-eb3DHEI, reason: not valid java name */
        public final Uuid m2211fromULongseb3DHEI(long mostSignificantBits, long leastSignificantBits) {
            return fromLongs(mostSignificantBits, leastSignificantBits);
        }

        @NotNull
        public final Comparator<Uuid> getLEXICAL_ORDER() {
            return AbstractC0613x9f5dff2a.naturalOrder();
        }

        @NotNull
        public final Uuid getNIL() {
            return Uuid.f1742x1378447b;
        }

        @NotNull
        public final Uuid parse(@NotNull String uuidString) {
            Intrinsics.checkNotNullParameter(uuidString, "uuidString");
            int length = uuidString.length();
            if (length != 32) {
                if (length == 36) {
                    return AbstractC0305xfbe0c504.uuidParseHexDash(uuidString);
                }
                throw new IllegalArgumentException("Expected either a 36-char string in the standard hex-and-dash UUID format or a 32-char hexadecimal string, but was \"" + AbstractC0306x3271d0aa.access$truncateForErrorMessage(uuidString, 64) + "\" of length " + uuidString.length());
            }
            return AbstractC0305xfbe0c504.uuidParseHex(uuidString);
        }

        @NotNull
        public final Uuid parseHex(@NotNull String hexString) {
            Intrinsics.checkNotNullParameter(hexString, "hexString");
            if (hexString.length() == 32) {
                return AbstractC0305xfbe0c504.uuidParseHex(hexString);
            }
            throw new IllegalArgumentException(("Expected a 32-char hexadecimal string, but was \"" + AbstractC0306x3271d0aa.access$truncateForErrorMessage(hexString, 64) + "\" of length " + hexString.length()).toString());
        }

        @SinceKotlin(version = "2.1")
        @NotNull
        public final Uuid parseHexDash(@NotNull String hexDashString) {
            Intrinsics.checkNotNullParameter(hexDashString, "hexDashString");
            if (hexDashString.length() == 36) {
                return AbstractC0305xfbe0c504.uuidParseHexDash(hexDashString);
            }
            throw new IllegalArgumentException(("Expected a 36-char string in the standard hex-and-dash UUID format, but was \"" + AbstractC0306x3271d0aa.access$truncateForErrorMessage(hexDashString, 64) + "\" of length " + hexDashString.length()).toString());
        }

        @NotNull
        public final Uuid random() {
            return AbstractC0305xfbe0c504.secureRandomUuid();
        }
    }

    public /* synthetic */ Uuid(long j, long j2, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2);
    }

    @PublishedApi
    public static /* synthetic */ void getLeastSignificantBits$annotations() {
    }

    @PublishedApi
    public static /* synthetic */ void getMostSignificantBits$annotations() {
    }

    private final Object writeReplace() {
        return AbstractC0305xfbe0c504.serializedUuid(this);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Uuid)) {
            return false;
        }
        Uuid uuid = (Uuid) other;
        if (this.mostSignificantBits == uuid.mostSignificantBits && this.leastSignificantBits == uuid.leastSignificantBits) {
            return true;
        }
        return false;
    }

    public final long getLeastSignificantBits() {
        return this.leastSignificantBits;
    }

    public final long getMostSignificantBits() {
        return this.mostSignificantBits;
    }

    public int hashCode() {
        long j = this.mostSignificantBits ^ this.leastSignificantBits;
        return (int) (j ^ (j >>> 32));
    }

    @NotNull
    public final byte[] toByteArray() {
        byte[] bArr = new byte[16];
        AbstractC0305xfbe0c504.setLongAt(bArr, 0, this.mostSignificantBits);
        AbstractC0305xfbe0c504.setLongAt(bArr, 8, this.leastSignificantBits);
        return bArr;
    }

    @SinceKotlin(version = "2.1")
    @NotNull
    public final String toHexDashString() {
        byte[] bArr = new byte[36];
        AbstractC0305xfbe0c504.formatBytesInto(this.mostSignificantBits, bArr, 0, 0, 4);
        bArr[8] = 45;
        AbstractC0305xfbe0c504.formatBytesInto(this.mostSignificantBits, bArr, 9, 4, 6);
        bArr[13] = 45;
        AbstractC0305xfbe0c504.formatBytesInto(this.mostSignificantBits, bArr, 14, 6, 8);
        bArr[18] = 45;
        AbstractC0305xfbe0c504.formatBytesInto(this.leastSignificantBits, bArr, 19, 0, 2);
        bArr[23] = 45;
        AbstractC0305xfbe0c504.formatBytesInto(this.leastSignificantBits, bArr, 24, 2, 8);
        return AbstractC1197x89633db9.decodeToString(bArr);
    }

    @NotNull
    public final String toHexString() {
        byte[] bArr = new byte[32];
        AbstractC0305xfbe0c504.formatBytesInto(this.mostSignificantBits, bArr, 0, 0, 8);
        AbstractC0305xfbe0c504.formatBytesInto(this.leastSignificantBits, bArr, 16, 0, 8);
        return AbstractC1197x89633db9.decodeToString(bArr);
    }

    @NotNull
    public String toString() {
        return toHexDashString();
    }

    @SinceKotlin(version = "2.1")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: toUByteArray-TcUX1vc, reason: not valid java name */
    public final byte[] m2209toUByteArrayTcUX1vc() {
        return UByteArray.m1782constructorimpl(toByteArray());
    }

    public Uuid(long j, long j2) {
        this.mostSignificantBits = j;
        this.leastSignificantBits = j2;
    }

    @Override // java.lang.Comparable
    @SinceKotlin(version = "2.1")
    public int compareTo(@NotNull Uuid other) {
        Intrinsics.checkNotNullParameter(other, "other");
        long j = other.mostSignificantBits;
        long j2 = this.mostSignificantBits;
        if (j2 != j) {
            return Long.compare(ULong.m1822constructorimpl(j2) ^ Long.MIN_VALUE, Long.MIN_VALUE ^ ULong.m1822constructorimpl(other.mostSignificantBits));
        }
        return Long.compare(ULong.m1822constructorimpl(this.leastSignificantBits) ^ Long.MIN_VALUE, Long.MIN_VALUE ^ ULong.m1822constructorimpl(other.leastSignificantBits));
    }
}
