package kotlinx.serialization.internal;

import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.ExperimentalSerializationApi;
import kotlinx.serialization.InternalSerializationApi;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.modules.SerializersModule;
import kotlinx.serialization.modules.SerializersModuleBuildersKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0002\b\u0003\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0010\n\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\f\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b \n\u0002\u0010\u0002\n\u0002\b!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\b'\u0018\u0000*\n\b\u0000\u0010\u0002*\u0004\u0018\u00010\u00012\u00020\u00032\u00020\u0004B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u001b\u0010\n\u001a\u00028\u0000*\u00020\u00072\u0006\u0010\t\u001a\u00020\bH$¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\r\u001a\u00020\u00012\u0006\u0010\f\u001a\u00028\u0000H\u0014¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00028\u0000H\u0014¢\u0006\u0004\b\u0010\u0010\u0011J\u0019\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\f\u001a\u00028\u0000H\u0014¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00028\u0000H\u0014¢\u0006\u0004\b\u0015\u0010\u0011J\u0017\u0010\u0017\u001a\u00020\u00162\u0006\u0010\f\u001a\u00028\u0000H\u0014¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001a\u001a\u00020\u00192\u0006\u0010\f\u001a\u00028\u0000H\u0014¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001c\u001a\u00020\b2\u0006\u0010\f\u001a\u00028\u0000H\u0014¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\f\u001a\u00028\u0000H\u0014¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010\"\u001a\u00020!2\u0006\u0010\f\u001a\u00028\u0000H\u0014¢\u0006\u0004\b\"\u0010#J\u0017\u0010%\u001a\u00020$2\u0006\u0010\f\u001a\u00028\u0000H\u0014¢\u0006\u0004\b%\u0010&J\u0017\u0010(\u001a\u00020'2\u0006\u0010\f\u001a\u00028\u0000H\u0014¢\u0006\u0004\b(\u0010)J\u0017\u0010+\u001a\u00020*2\u0006\u0010\f\u001a\u00028\u0000H\u0014¢\u0006\u0004\b+\u0010,J\u001f\u0010.\u001a\u00020\b2\u0006\u0010\f\u001a\u00028\u00002\u0006\u0010-\u001a\u00020\u0007H\u0014¢\u0006\u0004\b.\u0010/J\u001f\u00101\u001a\u00020\u00032\u0006\u0010\f\u001a\u00028\u00002\u0006\u00100\u001a\u00020\u0007H\u0014¢\u0006\u0004\b1\u00102J3\u00107\u001a\u00028\u0001\"\n\b\u0001\u00103*\u0004\u0018\u00010\u00012\f\u00105\u001a\b\u0012\u0004\u0012\u00028\u0001042\b\u00106\u001a\u0004\u0018\u00018\u0001H\u0014¢\u0006\u0004\b7\u00108J\u0017\u0010:\u001a\u00020\u00032\u0006\u00109\u001a\u00020\u0007H\u0016¢\u0006\u0004\b:\u0010;J\u000f\u0010<\u001a\u00020\u000fH\u0016¢\u0006\u0004\b<\u0010=J\u000f\u0010>\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b>\u0010?J\r\u0010@\u001a\u00020\u000f¢\u0006\u0004\b@\u0010=J\r\u0010A\u001a\u00020\u0016¢\u0006\u0004\bA\u0010BJ\r\u0010C\u001a\u00020\u0019¢\u0006\u0004\bC\u0010DJ\r\u0010E\u001a\u00020\b¢\u0006\u0004\bE\u0010FJ\r\u0010G\u001a\u00020\u001e¢\u0006\u0004\bG\u0010HJ\r\u0010I\u001a\u00020!¢\u0006\u0004\bI\u0010JJ\r\u0010K\u001a\u00020$¢\u0006\u0004\bK\u0010LJ\r\u0010M\u001a\u00020'¢\u0006\u0004\bM\u0010NJ\r\u0010O\u001a\u00020*¢\u0006\u0004\bO\u0010PJ\u0015\u0010Q\u001a\u00020\b2\u0006\u0010-\u001a\u00020\u0007¢\u0006\u0004\bQ\u0010RJ\u0017\u0010S\u001a\u00020\u00042\u0006\u00109\u001a\u00020\u0007H\u0016¢\u0006\u0004\bS\u0010TJ\u0017\u0010V\u001a\u00020U2\u0006\u00109\u001a\u00020\u0007H\u0016¢\u0006\u0004\bV\u0010WJ\u001d\u0010X\u001a\u00020\u000f2\u0006\u00109\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\bX\u0010YJ\u001d\u0010Z\u001a\u00020\u00162\u0006\u00109\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\bZ\u0010[J\u001d\u0010\\\u001a\u00020\u00192\u0006\u00109\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\\\u0010]J\u001d\u0010^\u001a\u00020\b2\u0006\u00109\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b^\u0010_J\u001d\u0010`\u001a\u00020\u001e2\u0006\u00109\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b`\u0010aJ\u001d\u0010b\u001a\u00020!2\u0006\u00109\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\bb\u0010cJ\u001d\u0010d\u001a\u00020$2\u0006\u00109\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\bd\u0010eJ\u001d\u0010f\u001a\u00020'2\u0006\u00109\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\bf\u0010gJ\u001d\u0010h\u001a\u00020*2\u0006\u00109\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\bh\u0010iJ\u001d\u0010j\u001a\u00020\u00032\u0006\u00109\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\bj\u0010kJA\u0010l\u001a\u00028\u0001\"\n\b\u0001\u00103*\u0004\u0018\u00010\u00012\u0006\u00109\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\b2\f\u00105\u001a\b\u0012\u0004\u0012\u00028\u0001042\b\u00106\u001a\u0004\u0018\u00018\u0001¢\u0006\u0004\bl\u0010mJC\u0010n\u001a\u0004\u0018\u00018\u0001\"\b\b\u0001\u00103*\u00020\u00012\u0006\u00109\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\b2\u000e\u00105\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u0001042\b\u00106\u001a\u0004\u0018\u00018\u0001¢\u0006\u0004\bn\u0010mJ\u0017\u0010p\u001a\u00020U2\u0006\u0010o\u001a\u00028\u0000H\u0004¢\u0006\u0004\bp\u0010qJ\u001d\u0010s\u001a\u00020U2\f\u0010r\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000H\u0004¢\u0006\u0004\bs\u0010tJ\u000f\u0010u\u001a\u00028\u0000H\u0004¢\u0006\u0004\bu\u0010vR*\u0010}\u001a\u0012\u0012\u0004\u0012\u00028\u00000wj\b\u0012\u0004\u0012\u00028\u0000`x8\u0000X\u0080\u0004¢\u0006\f\n\u0004\by\u0010z\u001a\u0004\b{\u0010|R\u0016\u0010\u0081\u0001\u001a\u00020~8VX\u0096\u0004¢\u0006\u0007\u001a\u0005\b\u007f\u0010\u0080\u0001R\u0016\u0010\u0083\u0001\u001a\u00028\u00008DX\u0084\u0004¢\u0006\u0007\u001a\u0005\b\u0082\u0001\u0010vR\u0018\u0010\u0085\u0001\u001a\u0004\u0018\u00018\u00008DX\u0084\u0004¢\u0006\u0007\u001a\u0005\b\u0084\u0001\u0010v¨\u0006\u0086\u0001"}, d2 = {"Lkotlinx/serialization/internal/TaggedDecoder;", "", "Tag", "Lkotlinx/serialization/encoding/Decoder;", "Lkotlinx/serialization/encoding/CompositeDecoder;", "<init>", "()V", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "", "index", "getTag", "(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/Object;", "tag", "decodeTaggedValue", "(Ljava/lang/Object;)Ljava/lang/Object;", "", "decodeTaggedNotNullMark", "(Ljava/lang/Object;)Z", "", "decodeTaggedNull", "(Ljava/lang/Object;)Ljava/lang/Void;", "decodeTaggedBoolean", "", "decodeTaggedByte", "(Ljava/lang/Object;)B", "", "decodeTaggedShort", "(Ljava/lang/Object;)S", "decodeTaggedInt", "(Ljava/lang/Object;)I", "", "decodeTaggedLong", "(Ljava/lang/Object;)J", "", "decodeTaggedFloat", "(Ljava/lang/Object;)F", "", "decodeTaggedDouble", "(Ljava/lang/Object;)D", "", "decodeTaggedChar", "(Ljava/lang/Object;)C", "", "decodeTaggedString", "(Ljava/lang/Object;)Ljava/lang/String;", "enumDescriptor", "decodeTaggedEnum", "(Ljava/lang/Object;Lkotlinx/serialization/descriptors/SerialDescriptor;)I", "inlineDescriptor", "decodeTaggedInline", "(Ljava/lang/Object;Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/serialization/DeserializationStrategy;", "deserializer", "previousValue", "decodeSerializableValue", "(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;", "descriptor", "decodeInline", "(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;", "decodeNotNullMark", "()Z", "decodeNull", "()Ljava/lang/Void;", "decodeBoolean", "decodeByte", "()B", "decodeShort", "()S", "decodeInt", "()I", "decodeLong", "()J", "decodeFloat", "()F", "decodeDouble", "()D", "decodeChar", "()C", "decodeString", "()Ljava/lang/String;", "decodeEnum", "(Lkotlinx/serialization/descriptors/SerialDescriptor;)I", "beginStructure", "(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;", "", "endStructure", "(Lkotlinx/serialization/descriptors/SerialDescriptor;)V", "decodeBooleanElement", "(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z", "decodeByteElement", "(Lkotlinx/serialization/descriptors/SerialDescriptor;I)B", "decodeShortElement", "(Lkotlinx/serialization/descriptors/SerialDescriptor;I)S", "decodeIntElement", "(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I", "decodeLongElement", "(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J", "decodeFloatElement", "(Lkotlinx/serialization/descriptors/SerialDescriptor;I)F", "decodeDoubleElement", "(Lkotlinx/serialization/descriptors/SerialDescriptor;I)D", "decodeCharElement", "(Lkotlinx/serialization/descriptors/SerialDescriptor;I)C", "decodeStringElement", "(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;", "decodeInlineElement", "(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Lkotlinx/serialization/encoding/Decoder;", "decodeSerializableElement", "(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;", "decodeNullableSerializableElement", "name", "pushTag", "(Ljava/lang/Object;)V", "other", "copyTagsTo", "(Lkotlinx/serialization/internal/TaggedDecoder;)V", "popTag", "()Ljava/lang/Object;", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "Ljava/util/ArrayList;", "getTagStack$kotlinx_serialization_core", "()Ljava/util/ArrayList;", "tagStack", "Lkotlinx/serialization/modules/SerializersModule;", "getSerializersModule", "()Lkotlinx/serialization/modules/SerializersModule;", "serializersModule", "getCurrentTag", "currentTag", "getCurrentTagOrNull", "currentTagOrNull", "kotlinx-serialization-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
@InternalSerializationApi
@SourceDebugExtension({"SMAP\nTagged.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tagged.kt\nkotlinx/serialization/internal/TaggedDecoder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Decoding.kt\nkotlinx/serialization/encoding/DecodingKt\n*L\n1#1,342:1\n1#2:343\n270#3,2:344\n*S KotlinDebug\n*F\n+ 1 Tagged.kt\nkotlinx/serialization/internal/TaggedDecoder\n*L\n287#1:344,2\n*E\n"})
/* loaded from: classes3.dex */
public abstract class TaggedDecoder<Tag> implements Decoder, CompositeDecoder {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
    public final ArrayList tagStack = new ArrayList();

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public boolean f2648x3271d0aa;

    @Override // kotlinx.serialization.encoding.Decoder
    @NotNull
    public CompositeDecoder beginStructure(@NotNull SerialDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return this;
    }

    public final void copyTagsTo(@NotNull TaggedDecoder<Tag> other) {
        Intrinsics.checkNotNullParameter(other, "other");
        other.tagStack.addAll(this.tagStack);
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final boolean decodeBoolean() {
        return decodeTaggedBoolean(popTag());
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final boolean decodeBooleanElement(@NotNull SerialDescriptor descriptor, int index) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return decodeTaggedBoolean(getTag(descriptor, index));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final byte decodeByte() {
        return decodeTaggedByte(popTag());
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final byte decodeByteElement(@NotNull SerialDescriptor descriptor, int index) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return decodeTaggedByte(getTag(descriptor, index));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final char decodeChar() {
        return decodeTaggedChar(popTag());
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final char decodeCharElement(@NotNull SerialDescriptor descriptor, int index) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return decodeTaggedChar(getTag(descriptor, index));
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public int decodeCollectionSize(@NotNull SerialDescriptor serialDescriptor) {
        return CompositeDecoder.DefaultImpls.decodeCollectionSize(this, serialDescriptor);
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final double decodeDouble() {
        return decodeTaggedDouble(popTag());
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final double decodeDoubleElement(@NotNull SerialDescriptor descriptor, int index) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return decodeTaggedDouble(getTag(descriptor, index));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final int decodeEnum(@NotNull SerialDescriptor enumDescriptor) {
        Intrinsics.checkNotNullParameter(enumDescriptor, "enumDescriptor");
        return decodeTaggedEnum(popTag(), enumDescriptor);
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final float decodeFloat() {
        return decodeTaggedFloat(popTag());
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final float decodeFloatElement(@NotNull SerialDescriptor descriptor, int index) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return decodeTaggedFloat(getTag(descriptor, index));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    @NotNull
    public Decoder decodeInline(@NotNull SerialDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return decodeTaggedInline(popTag(), descriptor);
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    @NotNull
    public final Decoder decodeInlineElement(@NotNull SerialDescriptor descriptor, int index) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return decodeTaggedInline(getTag(descriptor, index), descriptor.getElementDescriptor(index));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final int decodeInt() {
        return decodeTaggedInt(popTag());
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final int decodeIntElement(@NotNull SerialDescriptor descriptor, int index) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return decodeTaggedInt(getTag(descriptor, index));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final long decodeLong() {
        return decodeTaggedLong(popTag());
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final long decodeLongElement(@NotNull SerialDescriptor descriptor, int index) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return decodeTaggedLong(getTag(descriptor, index));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public boolean decodeNotNullMark() {
        Tag currentTagOrNull = getCurrentTagOrNull();
        if (currentTagOrNull == null) {
            return false;
        }
        return decodeTaggedNotNullMark(currentTagOrNull);
    }

    @Override // kotlinx.serialization.encoding.Decoder
    @Nullable
    public final Void decodeNull() {
        return null;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    @Nullable
    public final <T> T decodeNullableSerializableElement(@NotNull SerialDescriptor descriptor, int index, @NotNull DeserializationStrategy<? extends T> deserializer, @Nullable T previousValue) {
        T t;
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(deserializer, "deserializer");
        pushTag(getTag(descriptor, index));
        if (!deserializer.getDescriptor().isNullable() && !decodeNotNullMark()) {
            t = (T) decodeNull();
        } else {
            t = (T) decodeSerializableValue(deserializer, previousValue);
        }
        if (!this.f2648x3271d0aa) {
            popTag();
        }
        this.f2648x3271d0aa = false;
        return t;
    }

    @Override // kotlinx.serialization.encoding.Decoder
    @ExperimentalSerializationApi
    @Nullable
    public <T> T decodeNullableSerializableValue(@NotNull DeserializationStrategy<? extends T> deserializationStrategy) {
        return (T) Decoder.DefaultImpls.decodeNullableSerializableValue(this, deserializationStrategy);
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    @ExperimentalSerializationApi
    public boolean decodeSequentially() {
        return CompositeDecoder.DefaultImpls.decodeSequentially(this);
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final <T> T decodeSerializableElement(@NotNull SerialDescriptor descriptor, int index, @NotNull DeserializationStrategy<? extends T> deserializer, @Nullable T previousValue) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(deserializer, "deserializer");
        pushTag(getTag(descriptor, index));
        T t = (T) decodeSerializableValue(deserializer, previousValue);
        if (!this.f2648x3271d0aa) {
            popTag();
        }
        this.f2648x3271d0aa = false;
        return t;
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public <T> T decodeSerializableValue(@NotNull DeserializationStrategy<? extends T> deserializationStrategy) {
        return (T) Decoder.DefaultImpls.decodeSerializableValue(this, deserializationStrategy);
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final short decodeShort() {
        return decodeTaggedShort(popTag());
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final short decodeShortElement(@NotNull SerialDescriptor descriptor, int index) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return decodeTaggedShort(getTag(descriptor, index));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    @NotNull
    public final String decodeString() {
        return decodeTaggedString(popTag());
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    @NotNull
    public final String decodeStringElement(@NotNull SerialDescriptor descriptor, int index) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return decodeTaggedString(getTag(descriptor, index));
    }

    public boolean decodeTaggedBoolean(Tag tag) {
        Object decodeTaggedValue = decodeTaggedValue(tag);
        Intrinsics.checkNotNull(decodeTaggedValue, "null cannot be cast to non-null type kotlin.Boolean");
        return ((Boolean) decodeTaggedValue).booleanValue();
    }

    public byte decodeTaggedByte(Tag tag) {
        Object decodeTaggedValue = decodeTaggedValue(tag);
        Intrinsics.checkNotNull(decodeTaggedValue, "null cannot be cast to non-null type kotlin.Byte");
        return ((Byte) decodeTaggedValue).byteValue();
    }

    public char decodeTaggedChar(Tag tag) {
        Object decodeTaggedValue = decodeTaggedValue(tag);
        Intrinsics.checkNotNull(decodeTaggedValue, "null cannot be cast to non-null type kotlin.Char");
        return ((Character) decodeTaggedValue).charValue();
    }

    public double decodeTaggedDouble(Tag tag) {
        Object decodeTaggedValue = decodeTaggedValue(tag);
        Intrinsics.checkNotNull(decodeTaggedValue, "null cannot be cast to non-null type kotlin.Double");
        return ((Double) decodeTaggedValue).doubleValue();
    }

    public int decodeTaggedEnum(Tag tag, @NotNull SerialDescriptor enumDescriptor) {
        Intrinsics.checkNotNullParameter(enumDescriptor, "enumDescriptor");
        Object decodeTaggedValue = decodeTaggedValue(tag);
        Intrinsics.checkNotNull(decodeTaggedValue, "null cannot be cast to non-null type kotlin.Int");
        return ((Integer) decodeTaggedValue).intValue();
    }

    public float decodeTaggedFloat(Tag tag) {
        Object decodeTaggedValue = decodeTaggedValue(tag);
        Intrinsics.checkNotNull(decodeTaggedValue, "null cannot be cast to non-null type kotlin.Float");
        return ((Float) decodeTaggedValue).floatValue();
    }

    @NotNull
    public Decoder decodeTaggedInline(Tag tag, @NotNull SerialDescriptor inlineDescriptor) {
        Intrinsics.checkNotNullParameter(inlineDescriptor, "inlineDescriptor");
        pushTag(tag);
        return this;
    }

    public int decodeTaggedInt(Tag tag) {
        Object decodeTaggedValue = decodeTaggedValue(tag);
        Intrinsics.checkNotNull(decodeTaggedValue, "null cannot be cast to non-null type kotlin.Int");
        return ((Integer) decodeTaggedValue).intValue();
    }

    public long decodeTaggedLong(Tag tag) {
        Object decodeTaggedValue = decodeTaggedValue(tag);
        Intrinsics.checkNotNull(decodeTaggedValue, "null cannot be cast to non-null type kotlin.Long");
        return ((Long) decodeTaggedValue).longValue();
    }

    public boolean decodeTaggedNotNullMark(Tag tag) {
        return true;
    }

    @Nullable
    public Void decodeTaggedNull(Tag tag) {
        return null;
    }

    public short decodeTaggedShort(Tag tag) {
        Object decodeTaggedValue = decodeTaggedValue(tag);
        Intrinsics.checkNotNull(decodeTaggedValue, "null cannot be cast to non-null type kotlin.Short");
        return ((Short) decodeTaggedValue).shortValue();
    }

    @NotNull
    public String decodeTaggedString(Tag tag) {
        Object decodeTaggedValue = decodeTaggedValue(tag);
        Intrinsics.checkNotNull(decodeTaggedValue, "null cannot be cast to non-null type kotlin.String");
        return (String) decodeTaggedValue;
    }

    @NotNull
    public Object decodeTaggedValue(Tag tag) {
        throw new SerializationException(Reflection.getOrCreateKotlinClass(getClass()) + " can't retrieve untyped values");
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public void endStructure(@NotNull SerialDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
    }

    public final Tag getCurrentTag() {
        return (Tag) CollectionsKt___CollectionsKt.last((List) this.tagStack);
    }

    @Nullable
    public final Tag getCurrentTagOrNull() {
        return (Tag) CollectionsKt___CollectionsKt.lastOrNull((List) this.tagStack);
    }

    @Override // kotlinx.serialization.encoding.Decoder, kotlinx.serialization.encoding.CompositeDecoder
    @NotNull
    public SerializersModule getSerializersModule() {
        return SerializersModuleBuildersKt.EmptySerializersModule();
    }

    public abstract Tag getTag(@NotNull SerialDescriptor serialDescriptor, int i);

    @NotNull
    public final ArrayList<Tag> getTagStack$kotlinx_serialization_core() {
        return this.tagStack;
    }

    public final Tag popTag() {
        ArrayList arrayList = this.tagStack;
        Tag tag = (Tag) arrayList.remove(CollectionsKt__CollectionsKt.getLastIndex(arrayList));
        this.f2648x3271d0aa = true;
        return tag;
    }

    public final void pushTag(Tag name) {
        this.tagStack.add(name);
    }

    public <T> T decodeSerializableValue(@NotNull DeserializationStrategy<? extends T> deserializer, @Nullable T previousValue) {
        Intrinsics.checkNotNullParameter(deserializer, "deserializer");
        return (T) decodeSerializableValue(deserializer);
    }
}
