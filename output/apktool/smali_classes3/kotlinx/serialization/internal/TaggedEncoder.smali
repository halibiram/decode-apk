.class public abstract Lkotlinx/serialization/internal/TaggedEncoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/encoding/Encoder;
.implements Lkotlinx/serialization/encoding/CompositeEncoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Tag:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/encoding/Encoder;",
        "Lkotlinx/serialization/encoding/CompositeEncoder;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0005\n\u0002\u0008\u0002\n\u0002\u0010\n\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008<\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\'\u0018\u0000*\n\u0008\u0000\u0010\u0002*\u0004\u0018\u00010\u00012\u00020\u00032\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001b\u0010\n\u001a\u00028\u0000*\u00020\u00072\u0006\u0010\t\u001a\u00020\u0008H$\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000c\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\u0001H\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u000c\u001a\u00028\u0000H\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u000c\u001a\u00028\u0000H\u0014\u00a2\u0006\u0004\u0008\u0013\u0010\u0012J\u001f\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u000c\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001f\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u000c\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\u0016H\u0014\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u001f\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u000c\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\u0019H\u0014\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u001f\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u000c\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\u001cH\u0014\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u001f\u0010 \u001a\u00020\u000e2\u0006\u0010\u000c\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\u001fH\u0014\u00a2\u0006\u0004\u0008 \u0010!J\u001f\u0010#\u001a\u00020\u000e2\u0006\u0010\u000c\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\"H\u0014\u00a2\u0006\u0004\u0008#\u0010$J\u001f\u0010&\u001a\u00020\u000e2\u0006\u0010\u000c\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020%H\u0014\u00a2\u0006\u0004\u0008&\u0010\'J\u001f\u0010)\u001a\u00020\u000e2\u0006\u0010\u000c\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020(H\u0014\u00a2\u0006\u0004\u0008)\u0010*J\u001f\u0010,\u001a\u00020\u000e2\u0006\u0010\u000c\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020+H\u0014\u00a2\u0006\u0004\u0008,\u0010-J\'\u00100\u001a\u00020\u000e2\u0006\u0010\u000c\u001a\u00028\u00002\u0006\u0010.\u001a\u00020\u00072\u0006\u0010/\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u00080\u00101J\u001f\u00103\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00028\u00002\u0006\u00102\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u00083\u00104J\u0017\u00106\u001a\u00020\u00032\u0006\u00105\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u00086\u00107J\u000f\u00108\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u00088\u0010\u0006J\u000f\u00109\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u00089\u0010\u0006J\u0015\u0010:\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020%\u00a2\u0006\u0004\u0008:\u0010;J\u0015\u0010<\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u0016\u00a2\u0006\u0004\u0008<\u0010=J\u0015\u0010>\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u0019\u00a2\u0006\u0004\u0008>\u0010?J\u0015\u0010@\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u0008\u00a2\u0006\u0004\u0008@\u0010AJ\u0015\u0010B\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u001c\u00a2\u0006\u0004\u0008B\u0010CJ\u0015\u0010D\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u001f\u00a2\u0006\u0004\u0008D\u0010EJ\u0015\u0010F\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\"\u00a2\u0006\u0004\u0008F\u0010GJ\u0015\u0010H\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020(\u00a2\u0006\u0004\u0008H\u0010IJ\u0015\u0010J\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020+\u00a2\u0006\u0004\u0008J\u0010KJ\u001d\u0010L\u001a\u00020\u000e2\u0006\u0010.\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008L\u0010MJ\u0017\u0010N\u001a\u00020\u00042\u0006\u00105\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008N\u0010OJ\u0015\u0010P\u001a\u00020\u000e2\u0006\u00105\u001a\u00020\u0007\u00a2\u0006\u0004\u0008P\u0010QJ\u0017\u0010R\u001a\u00020\u000e2\u0006\u00105\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008R\u0010QJ%\u0010S\u001a\u00020\u000e2\u0006\u00105\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020%\u00a2\u0006\u0004\u0008S\u0010TJ%\u0010U\u001a\u00020\u000e2\u0006\u00105\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u0016\u00a2\u0006\u0004\u0008U\u0010VJ%\u0010W\u001a\u00020\u000e2\u0006\u00105\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u0019\u00a2\u0006\u0004\u0008W\u0010XJ%\u0010Y\u001a\u00020\u000e2\u0006\u00105\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u0008\u00a2\u0006\u0004\u0008Y\u0010ZJ%\u0010[\u001a\u00020\u000e2\u0006\u00105\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u001c\u00a2\u0006\u0004\u0008[\u0010\\J%\u0010]\u001a\u00020\u000e2\u0006\u00105\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u001f\u00a2\u0006\u0004\u0008]\u0010^J%\u0010_\u001a\u00020\u000e2\u0006\u00105\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\"\u00a2\u0006\u0004\u0008_\u0010`J%\u0010a\u001a\u00020\u000e2\u0006\u00105\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020(\u00a2\u0006\u0004\u0008a\u0010bJ%\u0010c\u001a\u00020\u000e2\u0006\u00105\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020+\u00a2\u0006\u0004\u0008c\u0010dJ\u001d\u0010e\u001a\u00020\u00032\u0006\u00105\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008e\u0010fJA\u0010j\u001a\u00020\u000e\"\n\u0008\u0001\u0010g*\u0004\u0018\u00010\u00012\u0006\u00105\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00082\u000c\u0010i\u001a\u0008\u0012\u0004\u0012\u00028\u00010h2\u0006\u0010\r\u001a\u00028\u0001H\u0016\u00a2\u0006\u0004\u0008j\u0010kJA\u0010l\u001a\u00020\u000e\"\u0008\u0008\u0001\u0010g*\u00020\u00012\u0006\u00105\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00082\u000c\u0010i\u001a\u0008\u0012\u0004\u0012\u00028\u00010h2\u0008\u0010\r\u001a\u0004\u0018\u00018\u0001H\u0016\u00a2\u0006\u0004\u0008l\u0010kJ\u0017\u0010n\u001a\u00020\u000e2\u0006\u0010m\u001a\u00028\u0000H\u0004\u00a2\u0006\u0004\u0008n\u0010\u0012J\u000f\u0010o\u001a\u00028\u0000H\u0004\u00a2\u0006\u0004\u0008o\u0010pR\u0014\u0010t\u001a\u00020q8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008r\u0010sR\u0014\u0010v\u001a\u00028\u00008DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008u\u0010pR\u0016\u0010x\u001a\u0004\u0018\u00018\u00008DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008w\u0010p\u00a8\u0006y"
    }
    d2 = {
        "Lkotlinx/serialization/internal/TaggedEncoder;",
        "",
        "Tag",
        "Lkotlinx/serialization/encoding/Encoder;",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "<init>",
        "()V",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "",
        "index",
        "getTag",
        "(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/Object;",
        "tag",
        "value",
        "",
        "encodeTaggedValue",
        "(Ljava/lang/Object;Ljava/lang/Object;)V",
        "encodeTaggedNonNullMark",
        "(Ljava/lang/Object;)V",
        "encodeTaggedNull",
        "encodeTaggedInt",
        "(Ljava/lang/Object;I)V",
        "",
        "encodeTaggedByte",
        "(Ljava/lang/Object;B)V",
        "",
        "encodeTaggedShort",
        "(Ljava/lang/Object;S)V",
        "",
        "encodeTaggedLong",
        "(Ljava/lang/Object;J)V",
        "",
        "encodeTaggedFloat",
        "(Ljava/lang/Object;F)V",
        "",
        "encodeTaggedDouble",
        "(Ljava/lang/Object;D)V",
        "",
        "encodeTaggedBoolean",
        "(Ljava/lang/Object;Z)V",
        "",
        "encodeTaggedChar",
        "(Ljava/lang/Object;C)V",
        "",
        "encodeTaggedString",
        "(Ljava/lang/Object;Ljava/lang/String;)V",
        "enumDescriptor",
        "ordinal",
        "encodeTaggedEnum",
        "(Ljava/lang/Object;Lkotlinx/serialization/descriptors/SerialDescriptor;I)V",
        "inlineDescriptor",
        "encodeTaggedInline",
        "(Ljava/lang/Object;Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Encoder;",
        "descriptor",
        "encodeInline",
        "(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Encoder;",
        "encodeNotNullMark",
        "encodeNull",
        "encodeBoolean",
        "(Z)V",
        "encodeByte",
        "(B)V",
        "encodeShort",
        "(S)V",
        "encodeInt",
        "(I)V",
        "encodeLong",
        "(J)V",
        "encodeFloat",
        "(F)V",
        "encodeDouble",
        "(D)V",
        "encodeChar",
        "(C)V",
        "encodeString",
        "(Ljava/lang/String;)V",
        "encodeEnum",
        "(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V",
        "beginStructure",
        "(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;",
        "endStructure",
        "(Lkotlinx/serialization/descriptors/SerialDescriptor;)V",
        "endEncode",
        "encodeBooleanElement",
        "(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V",
        "encodeByteElement",
        "(Lkotlinx/serialization/descriptors/SerialDescriptor;IB)V",
        "encodeShortElement",
        "(Lkotlinx/serialization/descriptors/SerialDescriptor;IS)V",
        "encodeIntElement",
        "(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V",
        "encodeLongElement",
        "(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V",
        "encodeFloatElement",
        "(Lkotlinx/serialization/descriptors/SerialDescriptor;IF)V",
        "encodeDoubleElement",
        "(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V",
        "encodeCharElement",
        "(Lkotlinx/serialization/descriptors/SerialDescriptor;IC)V",
        "encodeStringElement",
        "(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V",
        "encodeInlineElement",
        "(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Lkotlinx/serialization/encoding/Encoder;",
        "T",
        "Lkotlinx/serialization/SerializationStrategy;",
        "serializer",
        "encodeSerializableElement",
        "(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V",
        "encodeNullableSerializableElement",
        "name",
        "pushTag",
        "popTag",
        "()Ljava/lang/Object;",
        "Lkotlinx/serialization/modules/SerializersModule;",
        "getSerializersModule",
        "()Lkotlinx/serialization/modules/SerializersModule;",
        "serializersModule",
        "getCurrentTag",
        "currentTag",
        "getCurrentTagOrNull",
        "currentTagOrNull",
        "kotlinx-serialization-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTagged.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tagged.kt\nkotlinx/serialization/internal/TaggedEncoder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,342:1\n1#2:343\n*E\n"
    }
.end annotation

.annotation runtime Lkotlinx/serialization/InternalSerializationApi;
.end annotation


# instance fields
.field public final 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lkotlinx/serialization/internal/TaggedEncoder;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public beginCollection(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Lkotlinx/serialization/encoding/CompositeEncoder;
    .locals 0
    .param p1    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lkotlinx/serialization/encoding/Encoder$DefaultImpls;->beginCollection(Lkotlinx/serialization/encoding/Encoder;Lkotlinx/serialization/descriptors/SerialDescriptor;I)Lkotlinx/serialization/encoding/CompositeEncoder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;
    .locals 1
    .param p1    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final encodeBoolean(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/internal/TaggedEncoder;->popTag()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/internal/TaggedEncoder;->encodeTaggedBoolean(Ljava/lang/Object;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V
    .locals 1
    .param p1    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedEncoder;->getTag(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1, p3}, Lkotlinx/serialization/internal/TaggedEncoder;->encodeTaggedBoolean(Ljava/lang/Object;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final encodeByte(B)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/internal/TaggedEncoder;->popTag()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/internal/TaggedEncoder;->encodeTaggedByte(Ljava/lang/Object;B)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final encodeByteElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IB)V
    .locals 1
    .param p1    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedEncoder;->getTag(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1, p3}, Lkotlinx/serialization/internal/TaggedEncoder;->encodeTaggedByte(Ljava/lang/Object;B)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final encodeChar(C)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/internal/TaggedEncoder;->popTag()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/internal/TaggedEncoder;->encodeTaggedChar(Ljava/lang/Object;C)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final encodeCharElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IC)V
    .locals 1
    .param p1    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedEncoder;->getTag(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1, p3}, Lkotlinx/serialization/internal/TaggedEncoder;->encodeTaggedChar(Ljava/lang/Object;C)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final encodeDouble(D)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/internal/TaggedEncoder;->popTag()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0, p1, p2}, Lkotlinx/serialization/internal/TaggedEncoder;->encodeTaggedDouble(Ljava/lang/Object;D)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final encodeDoubleElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V
    .locals 1
    .param p1    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedEncoder;->getTag(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1, p3, p4}, Lkotlinx/serialization/internal/TaggedEncoder;->encodeTaggedDouble(Ljava/lang/Object;D)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final encodeEnum(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V
    .locals 1
    .param p1    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "enumDescriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lkotlinx/serialization/internal/TaggedEncoder;->popTag()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0, v0, p1, p2}, Lkotlinx/serialization/internal/TaggedEncoder;->encodeTaggedEnum(Ljava/lang/Object;Lkotlinx/serialization/descriptors/SerialDescriptor;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final encodeFloat(F)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/internal/TaggedEncoder;->popTag()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/internal/TaggedEncoder;->encodeTaggedFloat(Ljava/lang/Object;F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final encodeFloatElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IF)V
    .locals 1
    .param p1    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedEncoder;->getTag(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1, p3}, Lkotlinx/serialization/internal/TaggedEncoder;->encodeTaggedFloat(Ljava/lang/Object;F)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public encodeInline(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Encoder;
    .locals 1
    .param p1    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lkotlinx/serialization/internal/TaggedEncoder;->popTag()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/internal/TaggedEncoder;->encodeTaggedInline(Ljava/lang/Object;Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Encoder;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public final encodeInlineElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Lkotlinx/serialization/encoding/Encoder;
    .locals 1
    .param p1    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedEncoder;->getTag(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/internal/TaggedEncoder;->encodeTaggedInline(Ljava/lang/Object;Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Encoder;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public final encodeInt(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/internal/TaggedEncoder;->popTag()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/internal/TaggedEncoder;->encodeTaggedInt(Ljava/lang/Object;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V
    .locals 1
    .param p1    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedEncoder;->getTag(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1, p3}, Lkotlinx/serialization/internal/TaggedEncoder;->encodeTaggedInt(Ljava/lang/Object;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final encodeLong(J)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/internal/TaggedEncoder;->popTag()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0, p1, p2}, Lkotlinx/serialization/internal/TaggedEncoder;->encodeTaggedLong(Ljava/lang/Object;J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V
    .locals 1
    .param p1    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedEncoder;->getTag(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1, p3, p4}, Lkotlinx/serialization/internal/TaggedEncoder;->encodeTaggedLong(Ljava/lang/Object;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public encodeNotNullMark()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/internal/TaggedEncoder;->getCurrentTag()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lkotlinx/serialization/internal/TaggedEncoder;->encodeTaggedNonNullMark(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public encodeNull()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/internal/TaggedEncoder;->popTag()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lkotlinx/serialization/internal/TaggedEncoder;->encodeTaggedNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlinx/serialization/SerializationStrategy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;",
            "I",
            "Lkotlinx/serialization/SerializationStrategy<",
            "-TT;>;TT;)V"
        }
    .end annotation

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "serializer"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedEncoder;->getTag(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/TaggedEncoder;->pushTag(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p3, p4}, Lkotlinx/serialization/internal/TaggedEncoder;->encodeNullableSerializableValue(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public encodeNullableSerializableValue(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lkotlinx/serialization/SerializationStrategy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/SerializationStrategy<",
            "-TT;>;TT;)V"
        }
    .end annotation

    .annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lkotlinx/serialization/encoding/Encoder$DefaultImpls;->encodeNullableSerializableValue(Lkotlinx/serialization/encoding/Encoder;Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlinx/serialization/SerializationStrategy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;",
            "I",
            "Lkotlinx/serialization/SerializationStrategy<",
            "-TT;>;TT;)V"
        }
    .end annotation

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "serializer"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedEncoder;->getTag(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/TaggedEncoder;->pushTag(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p3, p4}, Lkotlinx/serialization/internal/TaggedEncoder;->encodeSerializableValue(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public encodeSerializableValue(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lkotlinx/serialization/SerializationStrategy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/SerializationStrategy<",
            "-TT;>;TT;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lkotlinx/serialization/encoding/Encoder$DefaultImpls;->encodeSerializableValue(Lkotlinx/serialization/encoding/Encoder;Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final encodeShort(S)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/internal/TaggedEncoder;->popTag()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/internal/TaggedEncoder;->encodeTaggedShort(Ljava/lang/Object;S)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final encodeShortElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IS)V
    .locals 1
    .param p1    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedEncoder;->getTag(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1, p3}, Lkotlinx/serialization/internal/TaggedEncoder;->encodeTaggedShort(Ljava/lang/Object;S)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final encodeString(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lkotlinx/serialization/internal/TaggedEncoder;->popTag()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/internal/TaggedEncoder;->encodeTaggedString(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V
    .locals 1
    .param p1    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "value"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedEncoder;->getTag(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1, p3}, Lkotlinx/serialization/internal/TaggedEncoder;->encodeTaggedString(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public encodeTaggedBoolean(Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;Z)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedEncoder;->encodeTaggedValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public encodeTaggedByte(Ljava/lang/Object;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;B)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedEncoder;->encodeTaggedValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public encodeTaggedChar(Ljava/lang/Object;C)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;C)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedEncoder;->encodeTaggedValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public encodeTaggedDouble(Ljava/lang/Object;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;D)V"
        }
    .end annotation

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedEncoder;->encodeTaggedValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public encodeTaggedEnum(Ljava/lang/Object;Lkotlinx/serialization/descriptors/SerialDescriptor;I)V
    .locals 1
    .param p2    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;",
            "I)V"
        }
    .end annotation

    .line 1
    const-string v0, "enumDescriptor"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedEncoder;->encodeTaggedValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public encodeTaggedFloat(Ljava/lang/Object;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;F)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedEncoder;->encodeTaggedValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public encodeTaggedInline(Ljava/lang/Object;Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Encoder;
    .locals 1
    .param p2    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;",
            ")",
            "Lkotlinx/serialization/encoding/Encoder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "inlineDescriptor"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/TaggedEncoder;->pushTag(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public encodeTaggedInt(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;I)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedEncoder;->encodeTaggedValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public encodeTaggedLong(Ljava/lang/Object;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;J)V"
        }
    .end annotation

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedEncoder;->encodeTaggedValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public encodeTaggedNonNullMark(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;)V"
        }
    .end annotation

    return-void
.end method

.method public encodeTaggedNull(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;)V"
        }
    .end annotation

    .line 1
    new-instance p1, Lkotlinx/serialization/SerializationException;

    .line 2
    .line 3
    const-string v0, "null is not supported"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public encodeTaggedShort(Ljava/lang/Object;S)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;S)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedEncoder;->encodeTaggedValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public encodeTaggedString(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/TaggedEncoder;->encodeTaggedValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public encodeTaggedValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    const-string p1, "value"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lkotlinx/serialization/SerializationException;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "Non-serializable "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p2, " is not supported by "

    .line 27
    .line 28
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p2, " encoder"

    .line 43
    .line 44
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-direct {p1, p2}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1
.end method

.method public endEncode(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 1
    .param p1    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 1
    .param p1    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lkotlinx/serialization/internal/TaggedEncoder;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lkotlinx/serialization/internal/TaggedEncoder;->popTag()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/TaggedEncoder;->endEncode(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final getCurrentTag()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTag;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/internal/TaggedEncoder;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getCurrentTagOrNull()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTag;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/internal/TaggedEncoder;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lkotlinx/serialization/modules/SerializersModuleBuildersKt;->EmptySerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public abstract getTag(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/Object;
    .param p1    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;",
            "I)TTag;"
        }
    .end annotation
.end method

.method public final popTag()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTag;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/internal/TaggedEncoder;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    new-instance v0, Lkotlinx/serialization/SerializationException;

    .line 19
    .line 20
    const-string v1, "No tag in stack for requested element"

    .line 21
    .line 22
    invoke-direct {v0, v1}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v0
.end method

.method public final pushTag(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTag;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/internal/TaggedEncoder;->뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z
    .locals 0
    .param p1    # Lkotlinx/serialization/descriptors/SerialDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lkotlinx/serialization/encoding/CompositeEncoder$DefaultImpls;->shouldEncodeElementDefault(Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
