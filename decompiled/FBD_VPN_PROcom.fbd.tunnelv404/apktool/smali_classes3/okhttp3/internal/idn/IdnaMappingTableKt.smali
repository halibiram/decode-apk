.class public final Lokhttp3/internal/idn/IdnaMappingTableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u001a0\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u0005H\u0086\u0008\u00f8\u0001\u0000\u001a\u0014\u0010\u0006\u001a\u00020\u0001*\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0001H\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\t"
    }
    d2 = {
        "binarySearch",
        "",
        "position",
        "limit",
        "compare",
        "Lkotlin/Function1;",
        "read14BitInt",
        "",
        "index",
        "okhttp"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final binarySearch(IILkotlin/jvm/functions/Function1;)I
    .locals 2
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 1
    const-string v0, "compare"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    add-int/lit8 p1, p1, -0x1

    .line 7
    .line 8
    :goto_0
    if-gt p0, p1, :cond_2

    .line 9
    .line 10
    add-int v0, p0, p1

    .line 11
    .line 12
    div-int/lit8 v0, v0, 0x2

    .line 13
    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/Number;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-gez v1, :cond_0

    .line 29
    .line 30
    add-int/lit8 p1, v0, -0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    if-lez v1, :cond_1

    .line 34
    .line 35
    add-int/lit8 p0, v0, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return v0

    .line 39
    :cond_2
    neg-int p0, p0

    .line 40
    add-int/lit8 p0, p0, -0x1

    .line 41
    .line 42
    return p0
.end method

.method public static final read14BitInt(Ljava/lang/String;I)I
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    add-int/lit8 p1, p1, 0x1

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    shl-int/lit8 p1, v0, 0x7

    .line 17
    .line 18
    add-int/2addr p1, p0

    .line 19
    return p1
.end method
