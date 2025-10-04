.class final Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UnsafeOptInUsageError"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/savedstate/serialization/serializers/SparseArraySerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SparseArraySurrogate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate$$serializer;,
        Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0003\u0018\u0000 \u001b*\u0004\u0008\u0001\u0010\u00012\u00020\u0002:\u0002\u001a\u001bB#\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008B;\u0008\u0010\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u000e\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0004\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\u0007\u0010\u000cJE\u0010\u0010\u001a\u00020\u0011\"\n\u0008\u0002\u0010\u0001*\u0004\u0018\u00010\u00022\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u00002\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u0018H\u0001\u00a2\u0006\u0002\u0008\u0019R\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000e\u00a8\u0006\u001c"
    }
    d2 = {
        "Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;",
        "T",
        "",
        "keys",
        "",
        "",
        "values",
        "<init>",
        "(Ljava/util/List;Ljava/util/List;)V",
        "seen0",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/util/List;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "getKeys",
        "()Ljava/util/List;",
        "getValues",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "typeSerial0",
        "Lkotlinx/serialization/KSerializer;",
        "write$Self$savedstate_release",
        "$serializer",
        "Companion",
        "savedstate_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field private static final $cachedDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final $childSerializers:[Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/Lazy<",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    new-instance v2, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate$Companion;

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-direct {v2, v3}, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 7
    .line 8
    .line 9
    sput-object v2, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;->Companion:Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate$Companion;

    .line 10
    .line 11
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 12
    .line 13
    new-instance v4, Landroidx/savedstate/serialization/serializers/뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸;

    .line 14
    .line 15
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {v2, v4}, L딄뒘듰둡땨돸된땀도땡딄듽땩됨돴뒬돛땁됨듸도듽땳돝뒀땡듟둡될들뒼땟딹뒋땀듐둡딞딨둔땅딅딤땜듬뎨땔됨뒀땪뎹뒻땠딜딝딨땀딤땸됐따땄딹따돼땄딸돝둣디두뒘땡딨둘땟돳돼뒼땬둘뒉돛딅듐땦돷둘딎됴뒻땣뒨땱뒻땳돨딤딟뎨땄땲듔듸딻땔땜듔딸딸뒙땅뒹땰듽뒛딟뒈땨땧땦뎹땸디딞땍됩뎽됩돤;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    new-array v4, v1, [Lkotlin/Lazy;

    .line 23
    .line 24
    aput-object v2, v4, v0

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    aput-object v3, v4, v2

    .line 28
    .line 29
    sput-object v4, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;->$childSerializers:[Lkotlin/Lazy;

    .line 30
    .line 31
    new-instance v2, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 32
    .line 33
    const-string v4, "androidx.savedstate.serialization.serializers.SparseArraySerializer.SparseArraySurrogate"

    .line 34
    .line 35
    invoke-direct {v2, v4, v3, v1}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    .line 36
    .line 37
    .line 38
    const-string v1, "keys"

    .line 39
    .line 40
    invoke-virtual {v2, v1, v0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    const-string v1, "values"

    .line 44
    .line 45
    invoke-virtual {v2, v1, v0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    .line 46
    .line 47
    .line 48
    sput-object v2, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;->$cachedDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 49
    .line 50
    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p4, :cond_0

    .line 1
    sget-object p4, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;->$cachedDescriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;->keys:Ljava/util/List;

    iput-object p3, p0, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;->values:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "keys"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;->keys:Ljava/util/List;

    iput-object p2, p0, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;->values:Ljava/util/List;

    return-void
.end method

.method private static final synthetic _childSerializers$_anonymous_()Lkotlinx/serialization/KSerializer;
    .locals 2

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;->$childSerializers:[Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic write$Self$savedstate_release(Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/KSerializer;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;->$childSerializers:[Lkotlin/Lazy;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    .line 11
    .line 12
    iget-object v2, p0, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;->keys:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    .line 18
    .line 19
    invoke-direct {v0, p3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;->values:Ljava/util/List;

    .line 23
    .line 24
    const/4 p3, 0x1

    .line 25
    invoke-interface {p1, p2, p3, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸()Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;->_childSerializers$_anonymous_()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;->keys:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/savedstate/serialization/serializers/SparseArraySerializer$SparseArraySurrogate;->values:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method
