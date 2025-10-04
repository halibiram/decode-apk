package kotlinx.serialization.internal;

import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\bÁ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J \u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0002H\u0096\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u0018\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0096\u0001¢\u0006\u0004\b\n\u0010\u000bR\u0014\u0010\u000f\u001a\u00020\f8\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lkotlinx/serialization/internal/UnitSerializer;", "Lkotlinx/serialization/KSerializer;", "", "Lkotlinx/serialization/encoding/Encoder;", "encoder", "value", "serialize", "(Lkotlinx/serialization/encoding/Encoder;Lkotlin/Unit;)V", "Lkotlinx/serialization/encoding/Decoder;", "decoder", "deserialize", "(Lkotlinx/serialization/encoding/Decoder;)V", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "kotlinx-serialization-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
@PublishedApi
/* loaded from: classes3.dex */
public final class UnitSerializer implements KSerializer<Unit> {

    @NotNull
    public static final UnitSerializer INSTANCE = new UnitSerializer();

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ ObjectSerializer f2667xfbe0c504 = new ObjectSerializer("kotlin.Unit", Unit.INSTANCE);

    /* renamed from: deserialize, reason: collision with other method in class */
    public void m2421deserialize(@NotNull Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        this.f2667xfbe0c504.deserialize(decoder);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    @NotNull
    public SerialDescriptor getDescriptor() {
        return this.f2667xfbe0c504.getDescriptor();
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(@NotNull Encoder encoder, @NotNull Unit value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        this.f2667xfbe0c504.serialize(encoder, value);
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public /* bridge */ /* synthetic */ Object deserialize(Decoder decoder) {
        m2421deserialize(decoder);
        return Unit.INSTANCE;
    }
}
