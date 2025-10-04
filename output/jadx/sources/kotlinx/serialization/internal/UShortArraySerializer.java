package kotlinx.serialization.internal;

import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.UShort;
import kotlin.UShortArray;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.ExperimentalSerializationApi;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\bÁ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\u0003J\u0013\u0010\t\u001a\u00020\u0006*\u00020\u0002H\u0014¢\u0006\u0004\b\u0007\u0010\bJ\u0013\u0010\f\u001a\u00020\u0005*\u00020\u0002H\u0014¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\u000f\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\r\u0010\u000eJ/\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0014H\u0014¢\u0006\u0004\b\u0017\u0010\u0018J'\u0010\u001f\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u001d\u0010\u001e¨\u0006 "}, d2 = {"Lkotlinx/serialization/internal/UShortArraySerializer;", "Lkotlinx/serialization/KSerializer;", "Lkotlin/UShortArray;", "Lkotlinx/serialization/internal/PrimitiveArraySerializer;", "Lkotlin/UShort;", "Lkotlinx/serialization/internal/UShortArrayBuilder;", "", "collectionSize-rL5Bavg", "([S)I", "collectionSize", "toBuilder-rL5Bavg", "([S)Lkotlinx/serialization/internal/UShortArrayBuilder;", "toBuilder", "empty-amswpOA", "()[S", "empty", "Lkotlinx/serialization/encoding/CompositeDecoder;", "decoder", "index", "builder", "", "checkIndex", "", "readElement", "(Lkotlinx/serialization/encoding/CompositeDecoder;ILkotlinx/serialization/internal/UShortArrayBuilder;Z)V", "Lkotlinx/serialization/encoding/CompositeEncoder;", "encoder", "content", "size", "writeContent-eny0XGE", "(Lkotlinx/serialization/encoding/CompositeEncoder;[SI)V", "writeContent", "kotlinx-serialization-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
@ExperimentalSerializationApi
@ExperimentalUnsignedTypes
@PublishedApi
/* loaded from: classes3.dex */
public final class UShortArraySerializer extends PrimitiveArraySerializer<UShort, UShortArray, UShortArrayBuilder> implements KSerializer<UShortArray> {

    @NotNull
    public static final UShortArraySerializer INSTANCE = new PrimitiveArraySerializer(BuiltinSerializersKt.serializer(UShort.INSTANCE));

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public /* bridge */ /* synthetic */ int collectionSize(Object obj) {
        return m2415collectionSizerL5Bavg(((UShortArray) obj).getStorage());
    }

    /* renamed from: collectionSize-rL5Bavg, reason: not valid java name */
    public int m2415collectionSizerL5Bavg(@NotNull short[] collectionSize) {
        Intrinsics.checkNotNullParameter(collectionSize, "$this$collectionSize");
        return UShortArray.m1860getSizeimpl(collectionSize);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public /* bridge */ /* synthetic */ UShortArray empty() {
        return UShortArray.m1852boximpl(m2416emptyamswpOA());
    }

    @NotNull
    /* renamed from: empty-amswpOA, reason: not valid java name */
    public short[] m2416emptyamswpOA() {
        return UShortArray.m1853constructorimpl(0);
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public /* bridge */ /* synthetic */ Object toBuilder(Object obj) {
        return m2417toBuilderrL5Bavg(((UShortArray) obj).getStorage());
    }

    @NotNull
    /* renamed from: toBuilder-rL5Bavg, reason: not valid java name */
    public UShortArrayBuilder m2417toBuilderrL5Bavg(@NotNull short[] toBuilder) {
        Intrinsics.checkNotNullParameter(toBuilder, "$this$toBuilder");
        return new UShortArrayBuilder(toBuilder, null);
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public /* bridge */ /* synthetic */ void writeContent(CompositeEncoder compositeEncoder, UShortArray uShortArray, int i) {
        m2418writeContenteny0XGE(compositeEncoder, uShortArray.getStorage(), i);
    }

    /* renamed from: writeContent-eny0XGE, reason: not valid java name */
    public void m2418writeContenteny0XGE(@NotNull CompositeEncoder encoder, @NotNull short[] content, int size) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(content, "content");
        for (int i = 0; i < size; i++) {
            encoder.encodeInlineElement(getDescriptor(), i).encodeShort(UShortArray.m1859getMh2AYeg(content, i));
        }
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public void readElement(@NotNull CompositeDecoder decoder, int index, @NotNull UShortArrayBuilder builder, boolean checkIndex) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        Intrinsics.checkNotNullParameter(builder, "builder");
        builder.m2413appendxj2QHRw$kotlinx_serialization_core(UShort.m1846constructorimpl(decoder.decodeInlineElement(getDescriptor(), index).decodeShort()));
    }
}
