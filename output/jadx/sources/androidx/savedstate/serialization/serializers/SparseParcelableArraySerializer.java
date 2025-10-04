package androidx.savedstate.serialization.serializers;

import android.os.Parcelable;
import android.util.SparseArray;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateWriter;
import androidx.savedstate.serialization.SavedStateDecoder;
import androidx.savedstate.serialization.SavedStateEncoder;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bÀ\u0002\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\u0016\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0010\u001a\u00020\u0011H\u0016R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u0012"}, d2 = {"Landroidx/savedstate/serialization/serializers/SparseParcelableArraySerializer;", "Lkotlinx/serialization/KSerializer;", "Landroid/util/SparseArray;", "Landroid/os/Parcelable;", "<init>", "()V", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "serialize", "", "encoder", "Lkotlinx/serialization/encoding/Encoder;", "value", "deserialize", "decoder", "Lkotlinx/serialization/encoding/Decoder;", "savedstate_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nBuiltInSerializer.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BuiltInSerializer.android.kt\nandroidx/savedstate/serialization/serializers/SparseParcelableArraySerializer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 SavedState.kt\nandroidx/savedstate/SavedStateKt__SavedStateKt\n+ 4 SavedStateReader.android.kt\nandroidx/savedstate/SavedStateReader\n*L\n1#1,421:1\n1#2:422\n106#3:423\n90#3:424\n732#4:425\n*S KotlinDebug\n*F\n+ 1 BuiltInSerializer.android.kt\nandroidx/savedstate/serialization/serializers/SparseParcelableArraySerializer\n*L\n368#1:423\n375#1:424\n375#1:425\n*E\n"})
/* loaded from: classes.dex */
public final class SparseParcelableArraySerializer implements KSerializer<SparseArray<Parcelable>> {

    @NotNull
    public static final SparseParcelableArraySerializer INSTANCE = new SparseParcelableArraySerializer();

    @NotNull
    private static final SerialDescriptor descriptor = SerialDescriptorsKt.buildClassSerialDescriptor$default("android.util.SparseArray<android.os.Parcelable>", new SerialDescriptor[0], null, 4, null);

    private SparseParcelableArraySerializer() {
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    @NotNull
    public SparseArray<Parcelable> deserialize(@NotNull Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        if (decoder instanceof SavedStateDecoder) {
            SavedStateDecoder savedStateDecoder = (SavedStateDecoder) decoder;
            return SavedStateReader.m752getSparseParcelableArrayimpl(SavedStateReader.m684constructorimpl(savedStateDecoder.getSavedState()), savedStateDecoder.getKey(), Reflection.getOrCreateKotlinClass(Parcelable.class));
        }
        throw new IllegalArgumentException(BuiltInSerializerKt.decoderErrorMessage(INSTANCE.getDescriptor().getSerialName(), decoder).toString());
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(@NotNull Encoder encoder, @NotNull SparseArray<Parcelable> value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        if (encoder instanceof SavedStateEncoder) {
            SavedStateEncoder savedStateEncoder = (SavedStateEncoder) encoder;
            SavedStateWriter.m803putSparseParcelableArrayimpl(SavedStateWriter.m771constructorimpl(savedStateEncoder.getSavedState()), savedStateEncoder.getKey(), value);
            return;
        }
        throw new IllegalArgumentException(BuiltInSerializerKt.encoderErrorMessage(INSTANCE.getDescriptor().getSerialName(), encoder).toString());
    }
}
