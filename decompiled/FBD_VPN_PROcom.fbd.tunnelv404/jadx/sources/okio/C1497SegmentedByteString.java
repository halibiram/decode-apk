package okio;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0005\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\u0000\n\u0002\b\r\b\u0000\u0018\u00002\u00020\u0001B\u001f\b\u0000\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0013\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0001H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0001H\u0016¢\u0006\u0004\b\u0016\u0010\u0015J\u0017\u0010\u001a\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u000eH\u0010¢\u0006\u0004\b\u0018\u0010\u0019J\u001f\u0010\u001e\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u0001H\u0010¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u001f\u0010\u0012J#\u0010#\u001a\u00020\u00012\b\b\u0002\u0010!\u001a\u00020 2\b\b\u0002\u0010\"\u001a\u00020 H\u0016¢\u0006\u0004\b#\u0010$J\u0017\u0010)\u001a\u00020&2\u0006\u0010%\u001a\u00020 H\u0010¢\u0006\u0004\b'\u0010(J\u000f\u0010,\u001a\u00020 H\u0010¢\u0006\u0004\b*\u0010+J\u000f\u0010-\u001a\u00020\u0003H\u0016¢\u0006\u0004\b-\u0010.J\u000f\u00100\u001a\u00020/H\u0016¢\u0006\u0004\b0\u00101J\u0017\u00105\u001a\u0002042\u0006\u00103\u001a\u000202H\u0016¢\u0006\u0004\b5\u00106J'\u00105\u001a\u0002042\u0006\u00108\u001a\u0002072\u0006\u00109\u001a\u00020 2\u0006\u0010:\u001a\u00020 H\u0010¢\u0006\u0004\b;\u0010<J/\u0010@\u001a\u00020?2\u0006\u00109\u001a\u00020 2\u0006\u0010=\u001a\u00020\u00012\u0006\u0010>\u001a\u00020 2\u0006\u0010:\u001a\u00020 H\u0016¢\u0006\u0004\b@\u0010AJ/\u0010@\u001a\u00020?2\u0006\u00109\u001a\u00020 2\u0006\u0010=\u001a\u00020\u00032\u0006\u0010>\u001a\u00020 2\u0006\u0010:\u001a\u00020 H\u0016¢\u0006\u0004\b@\u0010BJ3\u0010E\u001a\u0002042\b\b\u0002\u00109\u001a\u00020 2\u0006\u0010C\u001a\u00020\u00032\b\b\u0002\u0010D\u001a\u00020 2\u0006\u0010:\u001a\u00020 H\u0016¢\u0006\u0004\bE\u0010FJ!\u0010H\u001a\u00020 2\u0006\u0010=\u001a\u00020\u00032\b\b\u0002\u0010G\u001a\u00020 H\u0016¢\u0006\u0004\bH\u0010IJ!\u0010J\u001a\u00020 2\u0006\u0010=\u001a\u00020\u00032\b\b\u0002\u0010G\u001a\u00020 H\u0016¢\u0006\u0004\bJ\u0010IJ\u000f\u0010L\u001a\u00020\u0003H\u0010¢\u0006\u0004\bK\u0010.J\u001a\u0010N\u001a\u00020?2\b\u0010=\u001a\u0004\u0018\u00010MH\u0096\u0002¢\u0006\u0004\bN\u0010OJ\u000f\u0010P\u001a\u00020 H\u0016¢\u0006\u0004\bP\u0010+J\u000f\u0010Q\u001a\u00020\u000eH\u0016¢\u0006\u0004\bQ\u0010\u0012R \u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0000X\u0080\u0004¢\u0006\f\n\u0004\bR\u0010S\u001a\u0004\bT\u0010UR\u001a\u0010\u0006\u001a\u00020\u00058\u0000X\u0080\u0004¢\u0006\f\n\u0004\bV\u0010W\u001a\u0004\bX\u0010Y¨\u0006Z"}, d2 = {"Lokio/SegmentedByteString;", "Lokio/ByteString;", "", "", "segments", "", "directory", "<init>", "([[B[I)V", "Ljava/lang/Object;", "writeReplace", "()Ljava/lang/Object;", "Ljava/nio/charset/Charset;", "charset", "", TypedValues.Custom.S_STRING, "(Ljava/nio/charset/Charset;)Ljava/lang/String;", "base64", "()Ljava/lang/String;", "hex", "toAsciiLowercase", "()Lokio/ByteString;", "toAsciiUppercase", "algorithm", "digest$okio", "(Ljava/lang/String;)Lokio/ByteString;", "digest", "key", "hmac$okio", "(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;", "hmac", "base64Url", "", "beginIndex", "endIndex", "substring", "(II)Lokio/ByteString;", "pos", "", "internalGet$okio", "(I)B", "internalGet", "getSize$okio", "()I", "getSize", "toByteArray", "()[B", "Ljava/nio/ByteBuffer;", "asByteBuffer", "()Ljava/nio/ByteBuffer;", "Ljava/io/OutputStream;", "out", "", "write", "(Ljava/io/OutputStream;)V", "Lokio/Buffer;", "buffer", TypedValues.CycleType.S_WAVE_OFFSET, "byteCount", "write$okio", "(Lokio/Buffer;II)V", "other", "otherOffset", "", "rangeEquals", "(ILokio/ByteString;II)Z", "(I[BII)Z", TypedValues.AttributesType.S_TARGET, "targetOffset", "copyInto", "(I[BII)V", "fromIndex", "indexOf", "([BI)I", "lastIndexOf", "internalArray$okio", "internalArray", "", "equals", "(Ljava/lang/Object;)Z", "hashCode", "toString", "뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨", "[[B", "getSegments$okio", "()[[B", "뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨", "[I", "getDirectory$okio", "()[I", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSegmentedByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SegmentedByteString.kt\nokio/SegmentedByteString\n+ 2 SegmentedByteString.kt\nokio/internal/-SegmentedByteString\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,140:1\n63#2,12:141\n63#2,12:153\n104#2,2:165\n106#2,26:168\n135#2,5:194\n142#2:199\n145#2,3:200\n63#2,8:203\n148#2,8:211\n71#2,4:219\n156#2:223\n63#2,12:224\n160#2:236\n85#2,10:237\n161#2,9:247\n95#2,4:256\n170#2,2:260\n179#2,4:262\n85#2,10:266\n183#2,3:276\n95#2,4:279\n186#2:283\n195#2,8:284\n85#2,10:292\n203#2,3:302\n95#2,4:305\n206#2:309\n215#2,5:310\n85#2,10:315\n220#2,3:325\n95#2,4:328\n223#2:332\n226#2,4:333\n234#2,6:337\n63#2,8:343\n240#2,7:351\n71#2,4:358\n247#2,2:362\n1#3:167\n*S KotlinDebug\n*F\n+ 1 SegmentedByteString.kt\nokio/SegmentedByteString\n*L\n54#1:141,12\n66#1:153,12\n78#1:165,2\n78#1:168,26\n80#1:194,5\n82#1:199\n84#1:200,3\n84#1:203,8\n84#1:211,8\n84#1:219,4\n84#1:223\n90#1:224,12\n96#1:236\n96#1:237,10\n96#1:247,9\n96#1:256,4\n96#1:260,2\n103#1:262,4\n103#1:266,10\n103#1:276,3\n103#1:279,4\n103#1:283\n110#1:284,8\n110#1:292,10\n110#1:302,3\n110#1:305,4\n110#1:309\n117#1:310,5\n117#1:315,10\n117#1:325,3\n117#1:328,4\n117#1:332\n131#1:333,4\n133#1:337,6\n133#1:343,8\n133#1:351,7\n133#1:358,4\n133#1:362,2\n78#1:167\n*E\n"})
/* renamed from: okio.SegmentedByteString, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C1497SegmentedByteString extends ByteString {

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters and from kotlin metadata */
    public final transient byte[][] segments;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters and from kotlin metadata */
    public final transient int[] directory;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1497SegmentedByteString(@NotNull byte[][] segments, @NotNull int[] directory) {
        super(ByteString.EMPTY.getData());
        Intrinsics.checkNotNullParameter(segments, "segments");
        Intrinsics.checkNotNullParameter(directory, "directory");
        this.segments = segments;
        this.directory = directory;
    }

    private final Object writeReplace() {
        ByteString m2672xfbe0c504 = m2672xfbe0c504();
        Intrinsics.checkNotNull(m2672xfbe0c504, "null cannot be cast to non-null type java.lang.Object");
        return m2672xfbe0c504;
    }

    @Override // okio.ByteString
    @NotNull
    public ByteBuffer asByteBuffer() {
        ByteBuffer asReadOnlyBuffer = ByteBuffer.wrap(toByteArray()).asReadOnlyBuffer();
        Intrinsics.checkNotNullExpressionValue(asReadOnlyBuffer, "asReadOnlyBuffer(...)");
        return asReadOnlyBuffer;
    }

    @Override // okio.ByteString
    @NotNull
    public String base64() {
        return m2672xfbe0c504().base64();
    }

    @Override // okio.ByteString
    @NotNull
    public String base64Url() {
        return m2672xfbe0c504().base64Url();
    }

    @Override // okio.ByteString
    public void copyInto(int offset, @NotNull byte[] target, int targetOffset, int byteCount) {
        int i;
        Intrinsics.checkNotNullParameter(target, "target");
        long j = byteCount;
        SegmentedByteString.checkOffsetAndCount(size(), offset, j);
        SegmentedByteString.checkOffsetAndCount(target.length, targetOffset, j);
        int i2 = byteCount + offset;
        int segment = okio.internal.SegmentedByteString.segment(this, offset);
        while (offset < i2) {
            if (segment == 0) {
                i = 0;
            } else {
                i = getDirectory()[segment - 1];
            }
            int i3 = getDirectory()[segment] - i;
            int i4 = getDirectory()[getSegments().length + segment];
            int min = Math.min(i2, i3 + i) - offset;
            int i5 = (offset - i) + i4;
            ArraysKt___ArraysJvmKt.copyInto(getSegments()[segment], target, targetOffset, i5, i5 + min);
            targetOffset += min;
            offset += min;
            segment++;
        }
    }

    @Override // okio.ByteString
    @NotNull
    public ByteString digest$okio(@NotNull String algorithm) {
        Intrinsics.checkNotNullParameter(algorithm, "algorithm");
        MessageDigest messageDigest = MessageDigest.getInstance(algorithm);
        int length = getSegments().length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3 = getDirectory()[length + i];
            int i4 = getDirectory()[i];
            messageDigest.update(getSegments()[i], i3, i4 - i2);
            i++;
            i2 = i4;
        }
        byte[] digest = messageDigest.digest();
        Intrinsics.checkNotNull(digest);
        return new ByteString(digest);
    }

    @Override // okio.ByteString
    public boolean equals(@Nullable Object other) {
        if (other == this) {
            return true;
        }
        if (other instanceof ByteString) {
            ByteString byteString = (ByteString) other;
            if (byteString.size() == size() && rangeEquals(0, byteString, 0, size())) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    /* renamed from: getDirectory$okio, reason: from getter */
    public final int[] getDirectory() {
        return this.directory;
    }

    @NotNull
    /* renamed from: getSegments$okio, reason: from getter */
    public final byte[][] getSegments() {
        return this.segments;
    }

    @Override // okio.ByteString
    public int getSize$okio() {
        return getDirectory()[getSegments().length - 1];
    }

    @Override // okio.ByteString
    public int hashCode() {
        int hashCode = getHashCode();
        if (hashCode == 0) {
            int length = getSegments().length;
            int i = 0;
            int i2 = 1;
            int i3 = 0;
            while (i < length) {
                int i4 = getDirectory()[length + i];
                int i5 = getDirectory()[i];
                byte[] bArr = getSegments()[i];
                int i6 = (i5 - i3) + i4;
                while (i4 < i6) {
                    i2 = (i2 * 31) + bArr[i4];
                    i4++;
                }
                i++;
                i3 = i5;
            }
            setHashCode$okio(i2);
            return i2;
        }
        return hashCode;
    }

    @Override // okio.ByteString
    @NotNull
    public String hex() {
        return m2672xfbe0c504().hex();
    }

    @Override // okio.ByteString
    @NotNull
    public ByteString hmac$okio(@NotNull String algorithm, @NotNull ByteString key) {
        Intrinsics.checkNotNullParameter(algorithm, "algorithm");
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            Mac mac = Mac.getInstance(algorithm);
            mac.init(new SecretKeySpec(key.toByteArray(), algorithm));
            int length = getSegments().length;
            int i = 0;
            int i2 = 0;
            while (i < length) {
                int i3 = getDirectory()[length + i];
                int i4 = getDirectory()[i];
                mac.update(getSegments()[i], i3, i4 - i2);
                i++;
                i2 = i4;
            }
            byte[] doFinal = mac.doFinal();
            Intrinsics.checkNotNullExpressionValue(doFinal, "doFinal(...)");
            return new ByteString(doFinal);
        } catch (InvalidKeyException e) {
            throw new IllegalArgumentException(e);
        }
    }

    @Override // okio.ByteString
    public int indexOf(@NotNull byte[] other, int fromIndex) {
        Intrinsics.checkNotNullParameter(other, "other");
        return m2672xfbe0c504().indexOf(other, fromIndex);
    }

    @Override // okio.ByteString
    @NotNull
    public byte[] internalArray$okio() {
        return toByteArray();
    }

    @Override // okio.ByteString
    public byte internalGet$okio(int pos) {
        int i;
        SegmentedByteString.checkOffsetAndCount(getDirectory()[getSegments().length - 1], pos, 1L);
        int segment = okio.internal.SegmentedByteString.segment(this, pos);
        if (segment == 0) {
            i = 0;
        } else {
            i = getDirectory()[segment - 1];
        }
        return getSegments()[segment][(pos - i) + getDirectory()[getSegments().length + segment]];
    }

    @Override // okio.ByteString
    public int lastIndexOf(@NotNull byte[] other, int fromIndex) {
        Intrinsics.checkNotNullParameter(other, "other");
        return m2672xfbe0c504().lastIndexOf(other, fromIndex);
    }

    @Override // okio.ByteString
    public boolean rangeEquals(int offset, @NotNull ByteString other, int otherOffset, int byteCount) {
        Intrinsics.checkNotNullParameter(other, "other");
        if (offset < 0 || offset > size() - byteCount) {
            return false;
        }
        int i = byteCount + offset;
        int segment = okio.internal.SegmentedByteString.segment(this, offset);
        while (offset < i) {
            int i2 = segment == 0 ? 0 : getDirectory()[segment - 1];
            int i3 = getDirectory()[segment] - i2;
            int i4 = getDirectory()[getSegments().length + segment];
            int min = Math.min(i, i3 + i2) - offset;
            if (!other.rangeEquals(otherOffset, getSegments()[segment], (offset - i2) + i4, min)) {
                return false;
            }
            otherOffset += min;
            offset += min;
            segment++;
        }
        return true;
    }

    @Override // okio.ByteString
    @NotNull
    public String string(@NotNull Charset charset) {
        Intrinsics.checkNotNullParameter(charset, "charset");
        return m2672xfbe0c504().string(charset);
    }

    @Override // okio.ByteString
    @NotNull
    public ByteString substring(int beginIndex, int endIndex) {
        int resolveDefaultParameter = SegmentedByteString.resolveDefaultParameter(this, endIndex);
        if (beginIndex >= 0) {
            if (resolveDefaultParameter <= size()) {
                int i = resolveDefaultParameter - beginIndex;
                if (i >= 0) {
                    if (beginIndex == 0 && resolveDefaultParameter == size()) {
                        return this;
                    }
                    if (beginIndex == resolveDefaultParameter) {
                        return ByteString.EMPTY;
                    }
                    int segment = okio.internal.SegmentedByteString.segment(this, beginIndex);
                    int segment2 = okio.internal.SegmentedByteString.segment(this, resolveDefaultParameter - 1);
                    byte[][] bArr = (byte[][]) ArraysKt___ArraysJvmKt.copyOfRange(getSegments(), segment, segment2 + 1);
                    int[] iArr = new int[bArr.length * 2];
                    int i2 = 0;
                    if (segment <= segment2) {
                        int i3 = segment;
                        int i4 = 0;
                        while (true) {
                            iArr[i4] = Math.min(getDirectory()[i3] - beginIndex, i);
                            int i5 = i4 + 1;
                            iArr[i4 + bArr.length] = getDirectory()[getSegments().length + i3];
                            if (i3 == segment2) {
                                break;
                            }
                            i3++;
                            i4 = i5;
                        }
                    }
                    if (segment != 0) {
                        i2 = getDirectory()[segment - 1];
                    }
                    int length = bArr.length;
                    iArr[length] = (beginIndex - i2) + iArr[length];
                    return new C1497SegmentedByteString(bArr, iArr);
                }
                throw new IllegalArgumentException(AbstractC0749x8313616e.m3329x34271fae(resolveDefaultParameter, beginIndex, "endIndex=", " < beginIndex=").toString());
            }
            StringBuilder m2939xab142723 = AbstractC0362x4440ab85.m2939xab142723(resolveDefaultParameter, "endIndex=", " > length(");
            m2939xab142723.append(size());
            m2939xab142723.append(')');
            throw new IllegalArgumentException(m2939xab142723.toString().toString());
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3330x95f25580(beginIndex, "beginIndex=", " < 0").toString());
    }

    @Override // okio.ByteString
    @NotNull
    public ByteString toAsciiLowercase() {
        return m2672xfbe0c504().toAsciiLowercase();
    }

    @Override // okio.ByteString
    @NotNull
    public ByteString toAsciiUppercase() {
        return m2672xfbe0c504().toAsciiUppercase();
    }

    @Override // okio.ByteString
    @NotNull
    public byte[] toByteArray() {
        byte[] bArr = new byte[size()];
        int length = getSegments().length;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i < length) {
            int i4 = getDirectory()[length + i];
            int i5 = getDirectory()[i];
            int i6 = i5 - i2;
            ArraysKt___ArraysJvmKt.copyInto(getSegments()[i], bArr, i3, i4, i4 + i6);
            i3 += i6;
            i++;
            i2 = i5;
        }
        return bArr;
    }

    @Override // okio.ByteString
    @NotNull
    public String toString() {
        return m2672xfbe0c504().toString();
    }

    @Override // okio.ByteString
    public void write(@NotNull OutputStream out) {
        Intrinsics.checkNotNullParameter(out, "out");
        int length = getSegments().length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3 = getDirectory()[length + i];
            int i4 = getDirectory()[i];
            out.write(getSegments()[i], i3, i4 - i2);
            i++;
            i2 = i4;
        }
    }

    @Override // okio.ByteString
    public void write$okio(@NotNull Buffer buffer, int offset, int byteCount) {
        int i;
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        int i2 = offset + byteCount;
        int segment = okio.internal.SegmentedByteString.segment(this, offset);
        while (offset < i2) {
            if (segment == 0) {
                i = 0;
            } else {
                i = getDirectory()[segment - 1];
            }
            int i3 = getDirectory()[segment] - i;
            int i4 = getDirectory()[getSegments().length + segment];
            int min = Math.min(i2, i3 + i) - offset;
            int i5 = (offset - i) + i4;
            Segment segment2 = new Segment(getSegments()[segment], i5, i5 + min, true, false);
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
            offset += min;
            segment++;
        }
        buffer.setSize$okio(buffer.size() + byteCount);
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final ByteString m2672xfbe0c504() {
        return new ByteString(toByteArray());
    }

    @Override // okio.ByteString
    public boolean rangeEquals(int offset, @NotNull byte[] other, int otherOffset, int byteCount) {
        Intrinsics.checkNotNullParameter(other, "other");
        if (offset < 0 || offset > size() - byteCount || otherOffset < 0 || otherOffset > other.length - byteCount) {
            return false;
        }
        int i = byteCount + offset;
        int segment = okio.internal.SegmentedByteString.segment(this, offset);
        while (offset < i) {
            int i2 = segment == 0 ? 0 : getDirectory()[segment - 1];
            int i3 = getDirectory()[segment] - i2;
            int i4 = getDirectory()[getSegments().length + segment];
            int min = Math.min(i, i3 + i2) - offset;
            if (!SegmentedByteString.arrayRangeEquals(getSegments()[segment], (offset - i2) + i4, other, otherOffset, min)) {
                return false;
            }
            otherOffset += min;
            offset += min;
            segment++;
        }
        return true;
    }
}
