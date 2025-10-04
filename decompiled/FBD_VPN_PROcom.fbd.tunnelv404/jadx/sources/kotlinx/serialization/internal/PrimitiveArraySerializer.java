package kotlinx.serialization.internal;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.PrimitiveArrayBuilder;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010(\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b!\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u0002*\u000e\b\u0002\u0010\u0004*\b\u0012\u0004\u0012\u00028\u00010\u00032\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u0005B\u0017\b\u0000\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006¢\u0006\u0004\b\b\u0010\tJ\u0013\u0010\u000b\u001a\u00020\n*\u00028\u0002H\u0004¢\u0006\u0004\b\u000b\u0010\fJ\u0013\u0010\r\u001a\u00028\u0001*\u00028\u0002H\u0004¢\u0006\u0004\b\r\u0010\u000eJ\u001b\u0010\u0011\u001a\u00020\u0010*\u00028\u00022\u0006\u0010\u000f\u001a\u00020\nH\u0004¢\u0006\u0004\b\u0011\u0010\u0012J\u0019\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u0013*\u00028\u0001H\u0004¢\u0006\u0004\b\u0014\u0010\u0015J#\u0010\u0018\u001a\u00020\u0010*\u00028\u00022\u0006\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00028\u0000H\u0004¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00028\u0002H\u0004¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00028\u0001H$¢\u0006\u0004\b\u001c\u0010\u001dJ/\u0010\"\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0016\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00028\u00022\u0006\u0010!\u001a\u00020 H$¢\u0006\u0004\b\"\u0010#J'\u0010'\u001a\u00020\u00102\u0006\u0010%\u001a\u00020$2\u0006\u0010&\u001a\u00028\u00012\u0006\u0010\u000f\u001a\u00020\nH$¢\u0006\u0004\b'\u0010(J\u001d\u0010+\u001a\u00020\u00102\u0006\u0010%\u001a\u00020)2\u0006\u0010*\u001a\u00028\u0001¢\u0006\u0004\b+\u0010,J\u0015\u0010.\u001a\u00028\u00012\u0006\u0010\u001f\u001a\u00020-¢\u0006\u0004\b.\u0010/R\u0017\u00105\u001a\u0002008\u0006¢\u0006\f\n\u0004\b1\u00102\u001a\u0004\b3\u00104¨\u00066"}, d2 = {"Lkotlinx/serialization/internal/PrimitiveArraySerializer;", "Element", "Array", "Lkotlinx/serialization/internal/PrimitiveArrayBuilder;", "Builder", "Lkotlinx/serialization/internal/CollectionLikeSerializer;", "Lkotlinx/serialization/KSerializer;", "primitiveSerializer", "<init>", "(Lkotlinx/serialization/KSerializer;)V", "", "builderSize", "(Lkotlinx/serialization/internal/PrimitiveArrayBuilder;)I", "toResult", "(Lkotlinx/serialization/internal/PrimitiveArrayBuilder;)Ljava/lang/Object;", "size", "", "checkCapacity", "(Lkotlinx/serialization/internal/PrimitiveArrayBuilder;I)V", "", "collectionIterator", "(Ljava/lang/Object;)Ljava/util/Iterator;", "index", "element", "insert", "(Lkotlinx/serialization/internal/PrimitiveArrayBuilder;ILjava/lang/Object;)V", "builder", "()Lkotlinx/serialization/internal/PrimitiveArrayBuilder;", "empty", "()Ljava/lang/Object;", "Lkotlinx/serialization/encoding/CompositeDecoder;", "decoder", "", "checkIndex", "readElement", "(Lkotlinx/serialization/encoding/CompositeDecoder;ILkotlinx/serialization/internal/PrimitiveArrayBuilder;Z)V", "Lkotlinx/serialization/encoding/CompositeEncoder;", "encoder", "content", "writeContent", "(Lkotlinx/serialization/encoding/CompositeEncoder;Ljava/lang/Object;I)V", "Lkotlinx/serialization/encoding/Encoder;", "value", "serialize", "(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V", "Lkotlinx/serialization/encoding/Decoder;", "deserialize", "(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "getDescriptor", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "kotlinx-serialization-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
@PublishedApi
@SourceDebugExtension({"SMAP\nCollectionSerializers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CollectionSerializers.kt\nkotlinx/serialization/internal/PrimitiveArraySerializer\n+ 2 Encoding.kt\nkotlinx/serialization/encoding/EncodingKt\n*L\n1#1,283:1\n488#2,4:284\n*S KotlinDebug\n*F\n+ 1 CollectionSerializers.kt\nkotlinx/serialization/internal/PrimitiveArraySerializer\n*L\n174#1:284,4\n*E\n"})
/* loaded from: classes3.dex */
public abstract class PrimitiveArraySerializer<Element, Array, Builder extends PrimitiveArrayBuilder<Array>> extends CollectionLikeSerializer<Element, Array, Builder> {

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final PrimitiveArrayDescriptor f2634x3271d0aa;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PrimitiveArraySerializer(@NotNull KSerializer<Element> primitiveSerializer) {
        super(primitiveSerializer, null);
        Intrinsics.checkNotNullParameter(primitiveSerializer, "primitiveSerializer");
        this.f2634x3271d0aa = new PrimitiveArrayDescriptor(primitiveSerializer.getDescriptor());
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    @NotNull
    public final Iterator<Element> collectionIterator(Array array) {
        throw new IllegalStateException("This method lead to boxing and must not be used, use writeContents instead");
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer, kotlinx.serialization.DeserializationStrategy
    public final Array deserialize(@NotNull Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        return merge(decoder, null);
    }

    public abstract Array empty();

    @Override // kotlinx.serialization.internal.CollectionLikeSerializer, kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    @NotNull
    public final SerialDescriptor getDescriptor() {
        return this.f2634x3271d0aa;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.CollectionLikeSerializer
    public /* bridge */ /* synthetic */ void insert(Object obj, int i, Object obj2) {
        insert((PrimitiveArraySerializer<Element, Array, Builder>) obj, i, (int) obj2);
    }

    public abstract void readElement(@NotNull CompositeDecoder decoder, int index, @NotNull Builder builder, boolean checkIndex);

    @Override // kotlinx.serialization.internal.CollectionLikeSerializer, kotlinx.serialization.internal.AbstractCollectionSerializer, kotlinx.serialization.SerializationStrategy
    public final void serialize(@NotNull Encoder encoder, Array value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        int collectionSize = collectionSize(value);
        PrimitiveArrayDescriptor primitiveArrayDescriptor = this.f2634x3271d0aa;
        CompositeEncoder beginCollection = encoder.beginCollection(primitiveArrayDescriptor, collectionSize);
        writeContent(beginCollection, value, collectionSize);
        beginCollection.endStructure(primitiveArrayDescriptor);
    }

    public abstract void writeContent(@NotNull CompositeEncoder encoder, Array content, int size);

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    @NotNull
    public final Builder builder() {
        return (Builder) toBuilder(empty());
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final int builderSize(@NotNull Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        return builder.getPosition();
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final void checkCapacity(@NotNull Builder builder, int i) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        builder.ensureCapacity$kotlinx_serialization_core(i);
    }

    public final void insert(@NotNull Builder builder, int i, Element element) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        throw new IllegalStateException("This method lead to boxing and must not be used, use Builder.append instead");
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public final Array toResult(@NotNull Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        return (Array) builder.build$kotlinx_serialization_core();
    }
}
