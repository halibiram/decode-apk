.class final Lcom/google/common/primitives/Shorts$ShortConverter;
.super Lcom/google/common/base/Converter;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Shorts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShortConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/base/Converter<",
        "Ljava/lang/String;",
        "Ljava/lang/Short;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/common/primitives/Shorts$ShortConverter;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/primitives/Shorts$ShortConverter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/common/primitives/Shorts$ShortConverter;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/common/primitives/Shorts$ShortConverter;->INSTANCE:Lcom/google/common/primitives/Shorts$ShortConverter;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/base/Converter;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/primitives/Shorts$ShortConverter;->INSTANCE:Lcom/google/common/primitives/Shorts$ShortConverter;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public bridge synthetic doBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Shorts$ShortConverter;->doBackward(Ljava/lang/Short;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public doBackward(Ljava/lang/Short;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Short;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic doForward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Shorts$ShortConverter;->doForward(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public doForward(Ljava/lang/String;)Ljava/lang/Short;
    .locals 0

    .line 2
    invoke-static {p1}, Ljava/lang/Short;->decode(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0

    .line 17
    :array_0
    .array-data 8
        -0x6e7a2e8cf838543fL
        0x4f7452b3b8ba002aL    # 5.745236764869732E74
        0x4a714f7de44d4d73L    # 4.047895293852181E50
        0x434daee5a51634bL
    .end array-data
.end method
