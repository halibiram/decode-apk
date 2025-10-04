package kotlinx.serialization.internal;

import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\bÁ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u001f\u0010\t\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rR\u001a\u0010\u0014\u001a\u00020\u000f8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0015"}, d2 = {"Lkotlinx/serialization/internal/DurationSerializer;", "Lkotlinx/serialization/KSerializer;", "Lkotlin/time/Duration;", "Lkotlinx/serialization/encoding/Encoder;", "encoder", "value", "", "serialize-HG0u8IE", "(Lkotlinx/serialization/encoding/Encoder;J)V", "serialize", "Lkotlinx/serialization/encoding/Decoder;", "decoder", "deserialize-5sfh64U", "(Lkotlinx/serialization/encoding/Decoder;)J", "deserialize", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "kotlinx-serialization-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
@PublishedApi
/* loaded from: classes3.dex */
public final class DurationSerializer implements KSerializer<Duration> {

    @NotNull
    public static final DurationSerializer INSTANCE = new Object();

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final PrimitiveSerialDescriptor f2575xfbe0c504 = new PrimitiveSerialDescriptor("kotlin.time.Duration", PrimitiveKind.STRING.INSTANCE);

    @Override // kotlinx.serialization.DeserializationStrategy
    public /* bridge */ /* synthetic */ Object deserialize(Decoder decoder) {
        return Duration.m2087boximpl(m2383deserialize5sfh64U(decoder));
    }

    /* renamed from: deserialize-5sfh64U, reason: not valid java name */
    public long m2383deserialize5sfh64U(@NotNull Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        return Duration.INSTANCE.m2160parseIsoStringUwyO8pc(decoder.decodeString());
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    @NotNull
    public SerialDescriptor getDescriptor() {
        return f2575xfbe0c504;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        m2384serializeHG0u8IE(encoder, ((Duration) obj).getF1704xfbe0c504());
    }

    /* renamed from: serialize-HG0u8IE, reason: not valid java name */
    public void m2384serializeHG0u8IE(@NotNull Encoder encoder, long value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        encoder.encodeString(Duration.m2122toIsoStringimpl(value));
    }
}
