package androidx.savedstate.serialization.serializers;

import android.util.Size;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateWriter;
import androidx.savedstate.serialization.SavedStateDecoder;
import androidx.savedstate.serialization.SavedStateEncoder;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0011"}, d2 = {"Landroidx/savedstate/serialization/serializers/SizeSerializer;", "Lkotlinx/serialization/KSerializer;", "Landroid/util/Size;", "<init>", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "savedstate_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nBuiltInSerializer.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BuiltInSerializer.android.kt\nandroidx/savedstate/serialization/serializers/SizeSerializer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 SavedState.kt\nandroidx/savedstate/SavedStateKt__SavedStateKt\n*L\n1#1,421:1\n1#2:422\n106#3:423\n90#3:424\n*S KotlinDebug\n*F\n+ 1 BuiltInSerializer.android.kt\nandroidx/savedstate/serialization/serializers/SizeSerializer\n*L\n59#1:423\n66#1:424\n*E\n"})
/* loaded from: classes.dex */
public final class SizeSerializer implements KSerializer<Size> {

    @NotNull
    public static final SizeSerializer INSTANCE = new SizeSerializer();

    @NotNull
    private static final SerialDescriptor descriptor = SerialDescriptorsKt.buildClassSerialDescriptor$default("android.util.Size", new SerialDescriptor[0], null, 4, null);

    private SizeSerializer() {
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    @NotNull
    public Size deserialize(@NotNull Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        if (decoder instanceof SavedStateDecoder) {
            SavedStateDecoder savedStateDecoder = (SavedStateDecoder) decoder;
            return SavedStateReader.m747getSizeimpl(SavedStateReader.m684constructorimpl(savedStateDecoder.getSavedState()), savedStateDecoder.getKey());
        }
        throw new IllegalArgumentException(BuiltInSerializerKt.decoderErrorMessage(INSTANCE.getDescriptor().getSerialName(), decoder).toString());
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(@NotNull Encoder encoder, @NotNull Size value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        if (encoder instanceof SavedStateEncoder) {
            SavedStateEncoder savedStateEncoder = (SavedStateEncoder) encoder;
            SavedStateWriter.m801putSizeimpl(SavedStateWriter.m771constructorimpl(savedStateEncoder.getSavedState()), savedStateEncoder.getKey(), value);
            return;
        }
        throw new IllegalArgumentException(BuiltInSerializerKt.encoderErrorMessage(INSTANCE.getDescriptor().getSerialName(), encoder).toString());
    }
}
