package kotlinx.serialization.encoding;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.ExperimentalSerializationApi;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.modules.SerializersModule;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0001\n\u0002\b\u0002\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\n\n\u0000\n\u0002\u0010\f\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\b\u0010\u0006\u001a\u00020\u0007H'J\n\u0010\b\u001a\u0004\u0018\u00010\tH'J\b\u0010\n\u001a\u00020\u0007H&J\b\u0010\u000b\u001a\u00020\fH&J\b\u0010\r\u001a\u00020\u000eH&J\b\u0010\u000f\u001a\u00020\u0010H&J\b\u0010\u0011\u001a\u00020\u0012H&J\b\u0010\u0013\u001a\u00020\u0014H&J\b\u0010\u0015\u001a\u00020\u0016H&J\b\u0010\u0017\u001a\u00020\u0018H&J\b\u0010\u0019\u001a\u00020\u001aH&J\u0010\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\u001dH&J\u0010\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u001dH&J\u0010\u0010 \u001a\u00020!2\u0006\u0010\u001f\u001a\u00020\u001dH&J'\u0010\"\u001a\u0002H#\"\n\b\u0000\u0010#*\u0004\u0018\u00010\u00012\f\u0010$\u001a\b\u0012\u0004\u0012\u0002H#0%H\u0016¢\u0006\u0002\u0010&J)\u0010'\u001a\u0004\u0018\u0001H#\"\b\b\u0000\u0010#*\u00020\u00012\u000e\u0010$\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H#0%H\u0017¢\u0006\u0002\u0010&R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006("}, d2 = {"Lkotlinx/serialization/encoding/Decoder;", "", "serializersModule", "Lkotlinx/serialization/modules/SerializersModule;", "getSerializersModule", "()Lkotlinx/serialization/modules/SerializersModule;", "decodeNotNullMark", "", "decodeNull", "", "decodeBoolean", "decodeByte", "", "decodeShort", "", "decodeChar", "", "decodeInt", "", "decodeLong", "", "decodeFloat", "", "decodeDouble", "", "decodeString", "", "decodeEnum", "enumDescriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "decodeInline", "descriptor", "beginStructure", "Lkotlinx/serialization/encoding/CompositeDecoder;", "decodeSerializableValue", ExifInterface.GPS_DIRECTION_TRUE, "deserializer", "Lkotlinx/serialization/DeserializationStrategy;", "(Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;", "decodeNullableSerializableValue", "kotlinx-serialization-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes3.dex */
public interface Decoder {

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nDecoding.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Decoding.kt\nkotlinx/serialization/encoding/Decoder$DefaultImpls\n+ 2 Decoding.kt\nkotlinx/serialization/encoding/DecodingKt\n*L\n1#1,575:1\n270#2,2:576\n*S KotlinDebug\n*F\n+ 1 Decoding.kt\nkotlinx/serialization/encoding/Decoder$DefaultImpls\n*L\n263#1:576,2\n*E\n"})
    /* loaded from: classes3.dex */
    public static final class DefaultImpls {
        @ExperimentalSerializationApi
        @Nullable
        public static <T> T decodeNullableSerializableValue(@NotNull Decoder decoder, @NotNull DeserializationStrategy<? extends T> deserializer) {
            Intrinsics.checkNotNullParameter(deserializer, "deserializer");
            if (!deserializer.getDescriptor().isNullable() && !decoder.decodeNotNullMark()) {
                return (T) decoder.decodeNull();
            }
            return (T) decoder.decodeSerializableValue(deserializer);
        }

        public static <T> T decodeSerializableValue(@NotNull Decoder decoder, @NotNull DeserializationStrategy<? extends T> deserializer) {
            Intrinsics.checkNotNullParameter(deserializer, "deserializer");
            return deserializer.deserialize(decoder);
        }
    }

    @NotNull
    CompositeDecoder beginStructure(@NotNull SerialDescriptor descriptor);

    boolean decodeBoolean();

    byte decodeByte();

    char decodeChar();

    double decodeDouble();

    int decodeEnum(@NotNull SerialDescriptor enumDescriptor);

    float decodeFloat();

    @NotNull
    Decoder decodeInline(@NotNull SerialDescriptor descriptor);

    int decodeInt();

    long decodeLong();

    @ExperimentalSerializationApi
    boolean decodeNotNullMark();

    @ExperimentalSerializationApi
    @Nullable
    Void decodeNull();

    @ExperimentalSerializationApi
    @Nullable
    <T> T decodeNullableSerializableValue(@NotNull DeserializationStrategy<? extends T> deserializer);

    <T> T decodeSerializableValue(@NotNull DeserializationStrategy<? extends T> deserializer);

    short decodeShort();

    @NotNull
    String decodeString();

    @NotNull
    SerializersModule getSerializersModule();
}
