package kotlinx.serialization.internal;

import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.UByte;
import kotlin.UByteArray;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.ExperimentalSerializationApi;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\bÁ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\u0003J\u0013\u0010\t\u001a\u00020\u0006*\u00020\u0002H\u0014¢\u0006\u0004\b\u0007\u0010\bJ\u0013\u0010\f\u001a\u00020\u0005*\u00020\u0002H\u0014¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\u000f\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\r\u0010\u000eJ/\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0014H\u0014¢\u0006\u0004\b\u0017\u0010\u0018J'\u0010\u001f\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u001d\u0010\u001e¨\u0006 "}, d2 = {"Lkotlinx/serialization/internal/UByteArraySerializer;", "Lkotlinx/serialization/KSerializer;", "Lkotlin/UByteArray;", "Lkotlinx/serialization/internal/PrimitiveArraySerializer;", "Lkotlin/UByte;", "Lkotlinx/serialization/internal/UByteArrayBuilder;", "", "collectionSize-GBYM_sE", "([B)I", "collectionSize", "toBuilder-GBYM_sE", "([B)Lkotlinx/serialization/internal/UByteArrayBuilder;", "toBuilder", "empty-TcUX1vc", "()[B", "empty", "Lkotlinx/serialization/encoding/CompositeDecoder;", "decoder", "index", "builder", "", "checkIndex", "", "readElement", "(Lkotlinx/serialization/encoding/CompositeDecoder;ILkotlinx/serialization/internal/UByteArrayBuilder;Z)V", "Lkotlinx/serialization/encoding/CompositeEncoder;", "encoder", "content", "size", "writeContent-Coi6ktg", "(Lkotlinx/serialization/encoding/CompositeEncoder;[BI)V", "writeContent", "kotlinx-serialization-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
@ExperimentalSerializationApi
@ExperimentalUnsignedTypes
@PublishedApi
/* loaded from: classes3.dex */
public final class UByteArraySerializer extends PrimitiveArraySerializer<UByte, UByteArray, UByteArrayBuilder> implements KSerializer<UByteArray> {

    @NotNull
    public static final UByteArraySerializer INSTANCE = new PrimitiveArraySerializer(BuiltinSerializersKt.serializer(UByte.INSTANCE));

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public /* bridge */ /* synthetic */ int collectionSize(Object obj) {
        return m2391collectionSizeGBYM_sE(((UByteArray) obj).getStorage());
    }

    /* renamed from: collectionSize-GBYM_sE, reason: not valid java name */
    public int m2391collectionSizeGBYM_sE(@NotNull byte[] collectionSize) {
        Intrinsics.checkNotNullParameter(collectionSize, "$this$collectionSize");
        return UByteArray.m1788getSizeimpl(collectionSize);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public /* bridge */ /* synthetic */ UByteArray empty() {
        return UByteArray.m1780boximpl(m2392emptyTcUX1vc());
    }

    @NotNull
    /* renamed from: empty-TcUX1vc, reason: not valid java name */
    public byte[] m2392emptyTcUX1vc() {
        return UByteArray.m1781constructorimpl(0);
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public /* bridge */ /* synthetic */ Object toBuilder(Object obj) {
        return m2393toBuilderGBYM_sE(((UByteArray) obj).getStorage());
    }

    @NotNull
    /* renamed from: toBuilder-GBYM_sE, reason: not valid java name */
    public UByteArrayBuilder m2393toBuilderGBYM_sE(@NotNull byte[] toBuilder) {
        Intrinsics.checkNotNullParameter(toBuilder, "$this$toBuilder");
        return new UByteArrayBuilder(toBuilder, null);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public /* bridge */ /* synthetic */ void writeContent(CompositeEncoder compositeEncoder, UByteArray uByteArray, int i) {
        m2394writeContentCoi6ktg(compositeEncoder, uByteArray.getStorage(), i);
    }

    /* renamed from: writeContent-Coi6ktg, reason: not valid java name */
    public void m2394writeContentCoi6ktg(@NotNull CompositeEncoder encoder, @NotNull byte[] content, int size) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(content, "content");
        for (int i = 0; i < size; i++) {
            encoder.encodeInlineElement(getDescriptor(), i).encodeByte(UByteArray.m1787getw2LRezQ(content, i));
        }
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public void readElement(@NotNull CompositeDecoder decoder, int index, @NotNull UByteArrayBuilder builder, boolean checkIndex) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        Intrinsics.checkNotNullParameter(builder, "builder");
        builder.m2389append7apg3OU$kotlinx_serialization_core(UByte.m1774constructorimpl(decoder.decodeInlineElement(getDescriptor(), index).decodeByte()));
    }
}
