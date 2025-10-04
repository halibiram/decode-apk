package kotlinx.serialization.internal;

import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.ULong;
import kotlin.ULongArray;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.ExperimentalSerializationApi;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\bÁ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\u0003J\u0013\u0010\t\u001a\u00020\u0006*\u00020\u0002H\u0014¢\u0006\u0004\b\u0007\u0010\bJ\u0013\u0010\f\u001a\u00020\u0005*\u00020\u0002H\u0014¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\u000f\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\r\u0010\u000eJ/\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0014H\u0014¢\u0006\u0004\b\u0017\u0010\u0018J'\u0010\u001f\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u001d\u0010\u001e¨\u0006 "}, d2 = {"Lkotlinx/serialization/internal/ULongArraySerializer;", "Lkotlinx/serialization/KSerializer;", "Lkotlin/ULongArray;", "Lkotlinx/serialization/internal/PrimitiveArraySerializer;", "Lkotlin/ULong;", "Lkotlinx/serialization/internal/ULongArrayBuilder;", "", "collectionSize-QwZRm1k", "([J)I", "collectionSize", "toBuilder-QwZRm1k", "([J)Lkotlinx/serialization/internal/ULongArrayBuilder;", "toBuilder", "empty-Y2RjT0g", "()[J", "empty", "Lkotlinx/serialization/encoding/CompositeDecoder;", "decoder", "index", "builder", "", "checkIndex", "", "readElement", "(Lkotlinx/serialization/encoding/CompositeDecoder;ILkotlinx/serialization/internal/ULongArrayBuilder;Z)V", "Lkotlinx/serialization/encoding/CompositeEncoder;", "encoder", "content", "size", "writeContent-0q3Fkuo", "(Lkotlinx/serialization/encoding/CompositeEncoder;[JI)V", "writeContent", "kotlinx-serialization-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
@ExperimentalSerializationApi
@ExperimentalUnsignedTypes
@PublishedApi
/* loaded from: classes3.dex */
public final class ULongArraySerializer extends PrimitiveArraySerializer<ULong, ULongArray, ULongArrayBuilder> implements KSerializer<ULongArray> {

    @NotNull
    public static final ULongArraySerializer INSTANCE = new PrimitiveArraySerializer(BuiltinSerializersKt.serializer(ULong.INSTANCE));

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public /* bridge */ /* synthetic */ int collectionSize(Object obj) {
        return m2407collectionSizeQwZRm1k(((ULongArray) obj).getStorage());
    }

    /* renamed from: collectionSize-QwZRm1k, reason: not valid java name */
    public int m2407collectionSizeQwZRm1k(@NotNull long[] collectionSize) {
        Intrinsics.checkNotNullParameter(collectionSize, "$this$collectionSize");
        return ULongArray.m1836getSizeimpl(collectionSize);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public /* bridge */ /* synthetic */ ULongArray empty() {
        return ULongArray.m1828boximpl(m2408emptyY2RjT0g());
    }

    @NotNull
    /* renamed from: empty-Y2RjT0g, reason: not valid java name */
    public long[] m2408emptyY2RjT0g() {
        return ULongArray.m1829constructorimpl(0);
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public /* bridge */ /* synthetic */ Object toBuilder(Object obj) {
        return m2409toBuilderQwZRm1k(((ULongArray) obj).getStorage());
    }

    @NotNull
    /* renamed from: toBuilder-QwZRm1k, reason: not valid java name */
    public ULongArrayBuilder m2409toBuilderQwZRm1k(@NotNull long[] toBuilder) {
        Intrinsics.checkNotNullParameter(toBuilder, "$this$toBuilder");
        return new ULongArrayBuilder(toBuilder, null);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public /* bridge */ /* synthetic */ void writeContent(CompositeEncoder compositeEncoder, ULongArray uLongArray, int i) {
        m2410writeContent0q3Fkuo(compositeEncoder, uLongArray.getStorage(), i);
    }

    /* renamed from: writeContent-0q3Fkuo, reason: not valid java name */
    public void m2410writeContent0q3Fkuo(@NotNull CompositeEncoder encoder, @NotNull long[] content, int size) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(content, "content");
        for (int i = 0; i < size; i++) {
            encoder.encodeInlineElement(getDescriptor(), i).encodeLong(ULongArray.m1835getsVKNKU(content, i));
        }
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public void readElement(@NotNull CompositeDecoder decoder, int index, @NotNull ULongArrayBuilder builder, boolean checkIndex) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        Intrinsics.checkNotNullParameter(builder, "builder");
        builder.m2405appendVKZWuLQ$kotlinx_serialization_core(ULong.m1822constructorimpl(decoder.decodeInlineElement(getDescriptor(), index).decodeLong()));
    }
}
