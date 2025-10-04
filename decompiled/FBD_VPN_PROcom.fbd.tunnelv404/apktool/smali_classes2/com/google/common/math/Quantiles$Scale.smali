.class public final Lcom/google/common/math/Quantiles$Scale;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/Quantiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Scale"
.end annotation


# instance fields
.field private final scale:I


# direct methods
.method private constructor <init>(I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x5

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 4
    iput p1, p0, Lcom/google/common/math/Quantiles$Scale;->scale:I

    return-void

    nop

    :array_0
    .array-data 8
        0x3b69e3d9d7c04c24L    # 1.713259314802354E-22
        0x5c5f3b39ec1630d7L    # 9.080062584827571E136
        -0x13d015887e885aa7L    # -1.3430551827633386E213
        -0x7e682594f688324bL    # -5.5653299457395E-301
        -0x7f836107531ca83eL
    .end array-data
.end method

.method public synthetic constructor <init>(ILcom/google/common/math/Quantiles$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/math/Quantiles$Scale;-><init>(I)V

    return-void
.end method


# virtual methods
.method public index(I)Lcom/google/common/math/Quantiles$ScaleAndIndex;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/math/Quantiles$ScaleAndIndex;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/common/math/Quantiles$Scale;->scale:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, p1, v2}, Lcom/google/common/math/Quantiles$ScaleAndIndex;-><init>(IILcom/google/common/math/Quantiles$1;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public indexes(Ljava/util/Collection;)Lcom/google/common/math/Quantiles$ScaleAndIndexes;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/common/math/Quantiles$ScaleAndIndexes;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;

    iget v1, p0, Lcom/google/common/math/Quantiles$Scale;->scale:I

    invoke-static {p1}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/google/common/math/Quantiles$ScaleAndIndexes;-><init>(I[ILcom/google/common/math/Quantiles$1;)V

    return-object v0
.end method

.method public varargs indexes([I)Lcom/google/common/math/Quantiles$ScaleAndIndexes;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/math/Quantiles$ScaleAndIndexes;

    iget v1, p0, Lcom/google/common/math/Quantiles$Scale;->scale:I

    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/google/common/math/Quantiles$ScaleAndIndexes;-><init>(I[ILcom/google/common/math/Quantiles$1;)V

    return-object v0
.end method
