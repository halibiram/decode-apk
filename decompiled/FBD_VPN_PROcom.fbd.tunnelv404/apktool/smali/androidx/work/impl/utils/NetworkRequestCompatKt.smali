.class public final Landroidx/work/impl/utils/NetworkRequestCompatKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038G\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\"\u0015\u0010\u0006\u001a\u00020\u0001*\u00020\u00038G\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0005\u00a8\u0006\u0008"
    }
    d2 = {
        "defaultCapabilities",
        "",
        "capabilitiesCompat",
        "Landroid/net/NetworkRequest;",
        "getCapabilitiesCompat",
        "(Landroid/net/NetworkRequest;)[I",
        "transportTypesCompat",
        "getTransportTypesCompat",
        "work-runtime_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNetworkRequestCompat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetworkRequestCompat.kt\nandroidx/work/impl/utils/NetworkRequestCompatKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,177:1\n3819#2:178\n4337#2,2:179\n3819#2:181\n4337#2,2:182\n*S KotlinDebug\n*F\n+ 1 NetworkRequestCompat.kt\nandroidx/work/impl/utils/NetworkRequestCompatKt\n*L\n54#1:178\n54#1:179,2\n96#1:181\n96#1:182,2\n*E\n"
    }
.end annotation


# static fields
.field private static final defaultCapabilities:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    const/16 v1, 0xe

    .line 4
    .line 5
    const/16 v2, 0xd

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [I

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Landroidx/work/impl/utils/NetworkRequestCompatKt;->defaultCapabilities:[I

    .line 12
    .line 13
    return-void
.end method

.method public static final synthetic access$getDefaultCapabilities$p()[I
    .locals 1

    .line 1
    sget-object v0, Landroidx/work/impl/utils/NetworkRequestCompatKt;->defaultCapabilities:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getCapabilitiesCompat(Landroid/net/NetworkRequest;)[I
    .locals 6
    .param p0    # Landroid/net/NetworkRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1c
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/16 v0, 0x1e

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "<this>"

    .line 5
    .line 6
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v3, 0x1f

    .line 12
    .line 13
    if-lt v2, v3, :cond_0

    .line 14
    .line 15
    sget-object v0, Landroidx/work/impl/utils/NetworkRequest31;->INSTANCE:Landroidx/work/impl/utils/NetworkRequest31;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Landroidx/work/impl/utils/NetworkRequest31;->capabilities(Landroid/net/NetworkRequest;)[I

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    new-array v2, v0, [I

    .line 23
    .line 24
    fill-array-data v2, :array_0

    .line 25
    .line 26
    .line 27
    new-instance v3, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    :goto_0
    if-ge v1, v0, :cond_2

    .line 33
    .line 34
    aget v4, v2, v1

    .line 35
    .line 36
    sget-object v5, Landroidx/work/impl/utils/NetworkRequest28;->INSTANCE:Landroidx/work/impl/utils/NetworkRequest28;

    .line 37
    .line 38
    invoke-virtual {v5, p0, v4}, Landroidx/work/impl/utils/NetworkRequest28;->hasCapability$work_runtime_release(Landroid/net/NetworkRequest;I)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_1

    .line 43
    .line 44
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    invoke-static {v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    :goto_1
    return-object p0

    .line 59
    :array_0
    .array-data 4
        0x11
        0x5
        0x2
        0xa
        0x1d
        0x13
        0x3
        0x20
        0x7
        0x4
        0xc
        0x24
        0x17
        0x0
        0x21
        0x14
        0xb
        0xd
        0x12
        0x15
        0xf
        0x23
        0x22
        0x8
        0x1
        0x19
        0xe
        0x10
        0x6
        0x9
    .end array-data
.end method

.method public static final getTransportTypesCompat(Landroid/net/NetworkRequest;)[I
    .locals 6
    .param p0    # Landroid/net/NetworkRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1c
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0xa

    .line 3
    .line 4
    const-string v2, "<this>"

    .line 5
    .line 6
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v3, 0x1f

    .line 12
    .line 13
    if-lt v2, v3, :cond_0

    .line 14
    .line 15
    sget-object v0, Landroidx/work/impl/utils/NetworkRequest31;->INSTANCE:Landroidx/work/impl/utils/NetworkRequest31;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Landroidx/work/impl/utils/NetworkRequest31;->transportTypes(Landroid/net/NetworkRequest;)[I

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    new-array v2, v1, [I

    .line 23
    .line 24
    fill-array-data v2, :array_0

    .line 25
    .line 26
    .line 27
    new-instance v3, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    :goto_0
    if-ge v0, v1, :cond_2

    .line 33
    .line 34
    aget v4, v2, v0

    .line 35
    .line 36
    sget-object v5, Landroidx/work/impl/utils/NetworkRequest28;->INSTANCE:Landroidx/work/impl/utils/NetworkRequest28;

    .line 37
    .line 38
    invoke-virtual {v5, p0, v4}, Landroidx/work/impl/utils/NetworkRequest28;->hasTransport$work_runtime_release(Landroid/net/NetworkRequest;I)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_1

    .line 43
    .line 44
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    invoke-static {v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    :goto_1
    return-object p0

    .line 59
    :array_0
    .array-data 4
        0x2
        0x0
        0x3
        0x6
        0xa
        0x9
        0x8
        0x4
        0x1
        0x5
    .end array-data
.end method
