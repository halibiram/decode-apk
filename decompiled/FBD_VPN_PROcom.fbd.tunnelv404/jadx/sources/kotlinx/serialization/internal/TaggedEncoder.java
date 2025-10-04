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
import kotlinx.serialization.ExperimentalSerializationApi;
import kotlinx.serialization.InternalSerializationApi;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.modules.SerializersModule;
import kotlinx.serialization.modules.SerializersModuleBuildersKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0010\n\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\f\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b<\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\b'\u0018\u0000*\n\b\u0000\u0010\u0002*\u0004\u0018\u00010\u00012\u00020\u00032\u00020\u0004B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u001b\u0010\n\u001a\u00028\u0000*\u00020\u00072\u0006\u0010\t\u001a\u00020\bH$¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\u0001H\u0014¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00028\u0000H\u0014¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00028\u0000H\u0014¢\u0006\u0004\b\u0013\u0010\u0012J\u001f\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\bH\u0014¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\u0016H\u0014¢\u0006\u0004\b\u0017\u0010\u0018J\u001f\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\u0019H\u0014¢\u0006\u0004\b\u001a\u0010\u001bJ\u001f\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\u001cH\u0014¢\u0006\u0004\b\u001d\u0010\u001eJ\u001f\u0010 \u001a\u00020\u000e2\u0006\u0010\f\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\u001fH\u0014¢\u0006\u0004\b \u0010!J\u001f\u0010#\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\"H\u0014¢\u0006\u0004\b#\u0010$J\u001f\u0010&\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020%H\u0014¢\u0006\u0004\b&\u0010'J\u001f\u0010)\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020(H\u0014¢\u0006\u0004\b)\u0010*J\u001f\u0010,\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020+H\u0014¢\u0006\u0004\b,\u0010-J'\u00100\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00028\u00002\u0006\u0010.\u001a\u00020\u00072\u0006\u0010/\u001a\u00020\bH\u0014¢\u0006\u0004\b0\u00101J\u001f\u00103\u001a\u00020\u00032\u0006\u0010\f\u001a\u00028\u00002\u0006\u00102\u001a\u00020\u0007H\u0014¢\u0006\u0004\b3\u00104J\u0017\u00106\u001a\u00020\u00032\u0006\u00105\u001a\u00020\u0007H\u0016¢\u0006\u0004\b6\u00107J\u000f\u00108\u001a\u00020\u000eH\u0016¢\u0006\u0004\b8\u0010\u0006J\u000f\u00109\u001a\u00020\u000eH\u0016¢\u0006\u0004\b9\u0010\u0006J\u0015\u0010:\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020%¢\u0006\u0004\b:\u0010;J\u0015\u0010<\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u0016¢\u0006\u0004\b<\u0010=J\u0015\u0010>\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u0019¢\u0006\u0004\b>\u0010?J\u0015\u0010@\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\b¢\u0006\u0004\b@\u0010AJ\u0015\u0010B\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u001c¢\u0006\u0004\bB\u0010CJ\u0015\u0010D\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u001f¢\u0006\u0004\bD\u0010EJ\u0015\u0010F\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\"¢\u0006\u0004\bF\u0010GJ\u0015\u0010H\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020(¢\u0006\u0004\bH\u0010IJ\u0015\u0010J\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020+¢\u0006\u0004\bJ\u0010KJ\u001d\u0010L\u001a\u00020\u000e2\u0006\u0010.\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\bL\u0010MJ\u0017\u0010N\u001a\u00020\u00042\u0006\u00105\u001a\u00020\u0007H\u0016¢\u0006\u0004\bN\u0010OJ\u0015\u0010P\u001a\u00020\u000e2\u0006\u00105\u001a\u00020\u0007¢\u0006\u0004\bP\u0010QJ\u0017\u0010R\u001a\u00020\u000e2\u0006\u00105\u001a\u00020\u0007H\u0014¢\u0006\u0004\bR\u0010QJ%\u0010S\u001a\u00020\u000e2\u0006\u00105\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\r\u001a\u00020%¢\u0006\u0004\bS\u0010TJ%\u0010U\u001a\u00020\u000e2\u0006\u00105\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u0016¢\u0006\u0004\bU\u0010VJ%\u0010W\u001a\u00020\u000e2\u0006\u00105\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u0019¢\u0006\u0004\bW\u0010XJ%\u0010Y\u001a\u00020\u000e2\u0006\u00105\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\b¢\u0006\u0004\bY\u0010ZJ%\u0010[\u001a\u00020\u000e2\u0006\u00105\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u001c¢\u0006\u0004\b[\u0010\\J%\u0010]\u001a\u00020\u000e2\u0006\u00105\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u001f¢\u0006\u0004\b]\u0010^J%\u0010_\u001a\u00020\u000e2\u0006\u00105\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\"¢\u0006\u0004\b_\u0010`J%\u0010a\u001a\u00020\u000e2\u0006\u00105\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\r\u001a\u00020(¢\u0006\u0004\ba\u0010bJ%\u0010c\u001a\u00020\u000e2\u0006\u00105\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\r\u001a\u00020+¢\u0006\u0004\bc\u0010dJ\u001d\u0010e\u001a\u00020\u00032\u0006\u00105\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\be\u0010fJA\u0010j\u001a\u00020\u000e\"\n\b\u0001\u0010g*\u0004\u0018\u00010\u00012\u0006\u00105\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\b2\f\u0010i\u001a\b\u0012\u0004\u0012\u00028\u00010h2\u0006\u0010\r\u001a\u00028\u0001H\u0016¢\u0006\u0004\bj\u0010kJA\u0010l\u001a\u00020\u000e\"\b\b\u0001\u0010g*\u00020\u00012\u0006\u00105\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\b2\f\u0010i\u001a\b\u0012\u0004\u0012\u00028\u00010h2\b\u0010\r\u001a\u0004\u0018\u00018\u0001H\u0016¢\u0006\u0004\bl\u0010kJ\u0017\u0010n\u001a\u00020\u000e2\u0006\u0010m\u001a\u00028\u0000H\u0004¢\u0006\u0004\bn\u0010\u0012J\u000f\u0010o\u001a\u00028\u0000H\u0004¢\u0006\u0004\bo\u0010pR\u0014\u0010t\u001a\u00020q8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\br\u0010sR\u0014\u0010v\u001a\u00028\u00008DX\u0084\u0004¢\u0006\u0006\u001a\u0004\bu\u0010pR\u0016\u0010x\u001a\u0004\u0018\u00018\u00008DX\u0084\u0004¢\u0006\u0006\u001a\u0004\bw\u0010p¨\u0006y"}, d2 = {"Lkotlinx/serialization/internal/TaggedEncoder;", "", "Tag", "Lkotlinx/serialization/encoding/Encoder;", "Lkotlinx/serialization/encoding/CompositeEncoder;", "<init>", "()V", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "", "index", "getTag", "(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/Object;", "tag", "value", "", "encodeTaggedValue", "(Ljava/lang/Object;Ljava/lang/Object;)V", "encodeTaggedNonNullMark", "(Ljava/lang/Object;)V", "encodeTaggedNull", "encodeTaggedInt", "(Ljava/lang/Object;I)V", "", "encodeTaggedByte", "(Ljava/lang/Object;B)V", "", "encodeTaggedShort", "(Ljava/lang/Object;S)V", "", "encodeTaggedLong", "(Ljava/lang/Object;J)V", "", "encodeTaggedFloat", "(Ljava/lang/Object;F)V", "", "encodeTaggedDouble", "(Ljava/lang/Object;D)V", "", "encodeTaggedBoolean", "(Ljava/lang/Object;Z)V", "", "encodeTaggedChar", "(Ljava/lang/Object;C)V", "", "encodeTaggedString", "(Ljava/lang/Object;Ljava/lang/String;)V", "enumDescriptor", "ordinal", "encodeTaggedEnum", "(Ljava/lang/Object;Lkotlinx/serialization/descriptors/SerialDescriptor;I)V", "inlineDescriptor", "encodeTaggedInline", "(Ljava/lang/Object;Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Encoder;", "descriptor", "encodeInline", "(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Encoder;", "encodeNotNullMark", "encodeNull", "encodeBoolean", "(Z)V", "encodeByte", "(B)V", "encodeShort", "(S)V", "encodeInt", "(I)V", "encodeLong", "(J)V", "encodeFloat", "(F)V", "encodeDouble", "(D)V", "encodeChar", "(C)V", "encodeString", "(Ljava/lang/String;)V", "encodeEnum", "(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V", "beginStructure", "(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;", "endStructure", "(Lkotlinx/serialization/descriptors/SerialDescriptor;)V", "endEncode", "encodeBooleanElement", "(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V", "encodeByteElement", "(Lkotlinx/serialization/descriptors/SerialDescriptor;IB)V", "encodeShortElement", "(Lkotlinx/serialization/descriptors/SerialDescriptor;IS)V", "encodeIntElement", "(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V", "encodeLongElement", "(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V", "encodeFloatElement", "(Lkotlinx/serialization/descriptors/SerialDescriptor;IF)V", "encodeDoubleElement", "(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V", "encodeCharElement", "(Lkotlinx/serialization/descriptors/SerialDescriptor;IC)V", "encodeStringElement", "(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V", "encodeInlineElement", "(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Lkotlinx/serialization/encoding/Encoder;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/serialization/SerializationStrategy;", "serializer", "encodeSerializableElement", "(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V", "encodeNullableSerializableElement", "name", "pushTag", "popTag", "()Ljava/lang/Object;", "Lkotlinx/serialization/modules/SerializersModule;", "getSerializersModule", "()Lkotlinx/serialization/modules/SerializersModule;", "serializersModule", "getCurrentTag", "currentTag", "getCurrentTagOrNull", "currentTagOrNull", "kotlinx-serialization-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
@InternalSerializationApi
@SourceDebugExtension({"SMAP\nTagged.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tagged.kt\nkotlinx/serialization/internal/TaggedEncoder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,342:1\n1#2:343\n*E\n"})
/* loaded from: classes3.dex */
public abstract class TaggedEncoder<Tag> implements Encoder, CompositeEncoder {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final ArrayList f2649xfbe0c504 = new ArrayList();

    @Override // kotlinx.serialization.encoding.Encoder
    @NotNull
    public CompositeEncoder beginCollection(@NotNull SerialDescriptor serialDescriptor, int i) {
        return Encoder.DefaultImpls.beginCollection(this, serialDescriptor, i);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    @NotNull
    public CompositeEncoder beginStructure(@NotNull SerialDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return this;
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void encodeBoolean(boolean value) {
        encodeTaggedBoolean(popTag(), value);
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void encodeBooleanElement(@NotNull SerialDescriptor descriptor, int index, boolean value) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        encodeTaggedBoolean(getTag(descriptor, index), value);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void encodeByte(byte value) {
        encodeTaggedByte(popTag(), value);
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void encodeByteElement(@NotNull SerialDescriptor descriptor, int index, byte value) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        encodeTaggedByte(getTag(descriptor, index), value);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void encodeChar(char value) {
        encodeTaggedChar(popTag(), value);
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void encodeCharElement(@NotNull SerialDescriptor descriptor, int index, char value) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        encodeTaggedChar(getTag(descriptor, index), value);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void encodeDouble(double value) {
        encodeTaggedDouble(popTag(), value);
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void encodeDoubleElement(@NotNull SerialDescriptor descriptor, int index, double value) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        encodeTaggedDouble(getTag(descriptor, index), value);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void encodeEnum(@NotNull SerialDescriptor enumDescriptor, int index) {
        Intrinsics.checkNotNullParameter(enumDescriptor, "enumDescriptor");
        encodeTaggedEnum(popTag(), enumDescriptor, index);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void encodeFloat(float value) {
        encodeTaggedFloat(popTag(), value);
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void encodeFloatElement(@NotNull SerialDescriptor descriptor, int index, float value) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        encodeTaggedFloat(getTag(descriptor, index), value);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    @NotNull
    public Encoder encodeInline(@NotNull SerialDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return encodeTaggedInline(popTag(), descriptor);
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    @NotNull
    public final Encoder encodeInlineElement(@NotNull SerialDescriptor descriptor, int index) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return encodeTaggedInline(getTag(descriptor, index), descriptor.getElementDescriptor(index));
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void encodeInt(int value) {
        encodeTaggedInt(popTag(), value);
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void encodeIntElement(@NotNull SerialDescriptor descriptor, int index, int value) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        encodeTaggedInt(getTag(descriptor, index), value);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void encodeLong(long value) {
        encodeTaggedLong(popTag(), value);
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void encodeLongElement(@NotNull SerialDescriptor descriptor, int index, long value) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        encodeTaggedLong(getTag(descriptor, index), value);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void encodeNotNullMark() {
        encodeTaggedNonNullMark(getCurrentTag());
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void encodeNull() {
        encodeTaggedNull(popTag());
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public <T> void encodeNullableSerializableElement(@NotNull SerialDescriptor descriptor, int index, @NotNull SerializationStrategy<? super T> serializer, @Nullable T value) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        pushTag(getTag(descriptor, index));
        encodeNullableSerializableValue(serializer, value);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    @ExperimentalSerializationApi
    public <T> void encodeNullableSerializableValue(@NotNull SerializationStrategy<? super T> serializationStrategy, @Nullable T t) {
        Encoder.DefaultImpls.encodeNullableSerializableValue(this, serializationStrategy, t);
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public <T> void encodeSerializableElement(@NotNull SerialDescriptor descriptor, int index, @NotNull SerializationStrategy<? super T> serializer, T value) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        pushTag(getTag(descriptor, index));
        encodeSerializableValue(serializer, value);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public <T> void encodeSerializableValue(@NotNull SerializationStrategy<? super T> serializationStrategy, T t) {
        Encoder.DefaultImpls.encodeSerializableValue(this, serializationStrategy, t);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void encodeShort(short value) {
        encodeTaggedShort(popTag(), value);
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void encodeShortElement(@NotNull SerialDescriptor descriptor, int index, short value) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        encodeTaggedShort(getTag(descriptor, index), value);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public final void encodeString(@NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        encodeTaggedString(popTag(), value);
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void encodeStringElement(@NotNull SerialDescriptor descriptor, int index, @NotNull String value) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(value, "value");
        encodeTaggedString(getTag(descriptor, index), value);
    }

    public void encodeTaggedBoolean(Tag tag, boolean value) {
        encodeTaggedValue(tag, Boolean.valueOf(value));
    }

    public void encodeTaggedByte(Tag tag, byte value) {
        encodeTaggedValue(tag, Byte.valueOf(value));
    }

    public void encodeTaggedChar(Tag tag, char value) {
        encodeTaggedValue(tag, Character.valueOf(value));
    }

    public void encodeTaggedDouble(Tag tag, double value) {
        encodeTaggedValue(tag, Double.valueOf(value));
    }

    public void encodeTaggedEnum(Tag tag, @NotNull SerialDescriptor enumDescriptor, int ordinal) {
        Intrinsics.checkNotNullParameter(enumDescriptor, "enumDescriptor");
        encodeTaggedValue(tag, Integer.valueOf(ordinal));
    }

    public void encodeTaggedFloat(Tag tag, float value) {
        encodeTaggedValue(tag, Float.valueOf(value));
    }

    @NotNull
    public Encoder encodeTaggedInline(Tag tag, @NotNull SerialDescriptor inlineDescriptor) {
        Intrinsics.checkNotNullParameter(inlineDescriptor, "inlineDescriptor");
        pushTag(tag);
        return this;
    }

    public void encodeTaggedInt(Tag tag, int value) {
        encodeTaggedValue(tag, Integer.valueOf(value));
    }

    public void encodeTaggedLong(Tag tag, long value) {
        encodeTaggedValue(tag, Long.valueOf(value));
    }

    public void encodeTaggedNonNullMark(Tag tag) {
    }

    public void encodeTaggedNull(Tag tag) {
        throw new SerializationException("null is not supported");
    }

    public void encodeTaggedShort(Tag tag, short value) {
        encodeTaggedValue(tag, Short.valueOf(value));
    }

    public void encodeTaggedString(Tag tag, @NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        encodeTaggedValue(tag, value);
    }

    public void encodeTaggedValue(Tag tag, @NotNull Object value) {
        Intrinsics.checkNotNullParameter(value, "value");
        throw new SerializationException("Non-serializable " + Reflection.getOrCreateKotlinClass(value.getClass()) + " is not supported by " + Reflection.getOrCreateKotlinClass(getClass()) + " encoder");
    }

    public void endEncode(@NotNull SerialDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void endStructure(@NotNull SerialDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        if (!this.f2649xfbe0c504.isEmpty()) {
            popTag();
        }
        endEncode(descriptor);
    }

    public final Tag getCurrentTag() {
        return (Tag) CollectionsKt___CollectionsKt.last((List) this.f2649xfbe0c504);
    }

    @Nullable
    public final Tag getCurrentTagOrNull() {
        return (Tag) CollectionsKt___CollectionsKt.lastOrNull((List) this.f2649xfbe0c504);
    }

    @Override // kotlinx.serialization.encoding.Encoder, kotlinx.serialization.encoding.CompositeEncoder
    @NotNull
    public SerializersModule getSerializersModule() {
        return SerializersModuleBuildersKt.EmptySerializersModule();
    }

    public abstract Tag getTag(@NotNull SerialDescriptor serialDescriptor, int i);

    public final Tag popTag() {
        ArrayList arrayList = this.f2649xfbe0c504;
        if (!arrayList.isEmpty()) {
            return (Tag) arrayList.remove(CollectionsKt__CollectionsKt.getLastIndex(arrayList));
        }
        throw new SerializationException("No tag in stack for requested element");
    }

    public final void pushTag(Tag name) {
        this.f2649xfbe0c504.add(name);
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    @ExperimentalSerializationApi
    public boolean shouldEncodeElementDefault(@NotNull SerialDescriptor serialDescriptor, int i) {
        return CompositeEncoder.DefaultImpls.shouldEncodeElementDefault(this, serialDescriptor, i);
    }
}
