.class abstract Lcom/google/common/util/concurrent/Striped$PowerOfTwoStriped;
.super Lcom/google/common/util/concurrent/Striped;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Striped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PowerOfTwoStriped"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/Striped<",
        "T",
        "L;",
        ">;"
    }
.end annotation


# instance fields
.field final mask:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Striped;-><init>(Lcom/google/common/util/concurrent/Striped$1;)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-lez p1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v3, 0x4

    .line 14
    new-array v3, v3, [J

    .line 15
    .line 16
    fill-array-data v3, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    const/high16 v1, 0x40000000    # 2.0f

    .line 30
    .line 31
    if-le p1, v1, :cond_1

    .line 32
    .line 33
    const/4 p1, -0x1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-static {p1}, Lcom/google/common/util/concurrent/Striped;->access$200(I)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    sub-int/2addr p1, v0

    .line 40
    :goto_1
    iput p1, p0, Lcom/google/common/util/concurrent/Striped$PowerOfTwoStriped;->mask:I

    .line 41
    .line 42
    return-void

    .line 43
    :array_0
    .array-data 8
        -0x36dabf6ecbb9496eL    # -2.369701229494994E44
        -0x39fb26d2e2bcad80L    # -2.0647200465861324E29
        -0x3ce28c6de8be3b65L    # -2.0724614043036548E15
        -0x70bf9083c6e33d12L
    .end array-data
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")T",
            "L;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/Striped$PowerOfTwoStriped;->indexFor(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/Striped;->getAt(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final indexFor(Ljava/lang/Object;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Lcom/google/common/util/concurrent/Striped;->access$300(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget v0, p0, Lcom/google/common/util/concurrent/Striped$PowerOfTwoStriped;->mask:I

    .line 10
    .line 11
    and-int/2addr p1, v0

    .line 12
    return p1
.end method
