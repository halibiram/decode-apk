.class Lcom/google/common/util/concurrent/Striped$CompactStriped;
.super Lcom/google/common/util/concurrent/Striped$PowerOfTwoStriped;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Striped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompactStriped"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/Striped$PowerOfTwoStriped<",
        "T",
        "L;",
        ">;"
    }
.end annotation


# instance fields
.field private final array:[Ljava/lang/Object;


# direct methods
.method private constructor <init>(ILcom/google/common/base/Supplier;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/common/base/Supplier<",
            "T",
            "L;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Striped$PowerOfTwoStriped;-><init>(I)V

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x4

    new-array v3, v3, [J

    fill-array-data v3, :array_0

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 4
    iget p1, p0, Lcom/google/common/util/concurrent/Striped$PowerOfTwoStriped;->mask:I

    add-int/2addr p1, v2

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/util/concurrent/Striped$CompactStriped;->array:[Ljava/lang/Object;

    .line 5
    :goto_1
    iget-object p1, p0, Lcom/google/common/util/concurrent/Striped$CompactStriped;->array:[Ljava/lang/Object;

    array-length v0, p1

    if-ge v1, v0, :cond_1

    .line 6
    invoke-interface {p2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p1, v1

    add-int/2addr v1, v2

    goto :goto_1

    :cond_1
    return-void

    nop

    :array_0
    .array-data 8
        -0x5cff20cea808034fL    # -4.427459986790933E-140
        -0x76acdff3b4392a75L    # -9.490072087691933E-264
        -0x4bd3e07fc323f5ccL    # -2.2401302135959628E-57
        -0x53b28ee2f0f0aac6L    # -2.756744227132342E-95
    .end array-data
.end method

.method public synthetic constructor <init>(ILcom/google/common/base/Supplier;Lcom/google/common/util/concurrent/Striped$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/Striped$CompactStriped;-><init>(ILcom/google/common/base/Supplier;)V

    return-void
.end method


# virtual methods
.method public getAt(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)T",
            "L;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/Striped$CompactStriped;->array:[Ljava/lang/Object;

    .line 2
    .line 3
    aget-object p1, v0, p1

    .line 4
    .line 5
    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/Striped$CompactStriped;->array:[Ljava/lang/Object;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method
