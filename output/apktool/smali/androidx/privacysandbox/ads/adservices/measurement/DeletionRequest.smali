.class public final Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x21
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Builder;,
        Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0010\u0008\u0007\u0018\u0000 \"2\u00020\u0001:\u0002#\"BK\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005\u0012\u000e\u0008\u0002\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u000e\u0008\u0002\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001a\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u0096\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u000fR\u0017\u0010\u0004\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0017\u001a\u0004\u0008\u0019\u0010\u000fR\u0017\u0010\u0006\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR\u0017\u0010\u0007\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u001a\u001a\u0004\u0008\u001d\u0010\u001cR\u001d\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u001e\u001a\u0004\u0008\u001f\u0010 R\u001d\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u001e\u001a\u0004\u0008!\u0010 \u00a8\u0006$"
    }
    d2 = {
        "Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;",
        "",
        "",
        "deletionMode",
        "matchBehavior",
        "j$/time/Instant",
        "start",
        "end",
        "",
        "Landroid/net/Uri;",
        "domainUris",
        "originUris",
        "<init>",
        "(IILj$/time/Instant;Lj$/time/Instant;Ljava/util/List;Ljava/util/List;)V",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "",
        "toString",
        "()Ljava/lang/String;",
        "I",
        "getDeletionMode",
        "getMatchBehavior",
        "Lj$/time/Instant;",
        "getStart",
        "()Lj$/time/Instant;",
        "getEnd",
        "Ljava/util/List;",
        "getDomainUris",
        "()Ljava/util/List;",
        "getOriginUris",
        "Companion",
        "Builder",
        "ads-adservices_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DELETION_MODE_ALL:I = 0x0

.field public static final DELETION_MODE_EXCLUDE_INTERNAL_DATA:I = 0x1

.field public static final MATCH_BEHAVIOR_DELETE:I = 0x0

.field public static final MATCH_BEHAVIOR_PRESERVE:I = 0x1


# instance fields
.field private final deletionMode:I

.field private final domainUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final end:Lj$/time/Instant;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final matchBehavior:I

.field private final originUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final start:Lj$/time/Instant;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->Companion:Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest$Companion;

    return-void
.end method

.method public constructor <init>(IILj$/time/Instant;Lj$/time/Instant;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p3    # Lj$/time/Instant;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lj$/time/Instant;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lj$/time/Instant;",
            "Lj$/time/Instant;",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const-string v0, "start"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "end"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "domainUris"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "originUris"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->deletionMode:I

    .line 3
    iput p2, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->matchBehavior:I

    .line 4
    iput-object p3, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->start:Lj$/time/Instant;

    .line 5
    iput-object p4, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->end:Lj$/time/Instant;

    .line 6
    iput-object p5, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->domainUris:Ljava/util/List;

    .line 7
    iput-object p6, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->originUris:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(IILj$/time/Instant;Lj$/time/Instant;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_0

    .line 8
    sget-object p3, Lj$/time/Instant;->MIN:Lj$/time/Instant;

    const-string p8, "MIN"

    invoke-static {p3, p8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p7, 0x8

    if-eqz p3, :cond_1

    .line 9
    sget-object p4, Lj$/time/Instant;->MAX:Lj$/time/Instant;

    const-string p3, "MAX"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    move-object v4, p4

    and-int/lit8 p3, p7, 0x10

    if-eqz p3, :cond_2

    .line 10
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p5

    :cond_2
    move-object v5, p5

    and-int/lit8 p3, p7, 0x20

    if-eqz p3, :cond_3

    .line 11
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p6

    :cond_3
    move-object v6, p6

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 12
    invoke-direct/range {v0 .. v6}, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;-><init>(IILj$/time/Instant;Lj$/time/Instant;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    iget v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->deletionMode:I

    .line 12
    .line 13
    check-cast p1, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;

    .line 14
    .line 15
    iget v3, p1, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->deletionMode:I

    .line 16
    .line 17
    if-ne v1, v3, :cond_2

    .line 18
    .line 19
    new-instance v1, Ljava/util/HashSet;

    .line 20
    .line 21
    iget-object v3, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->domainUris:Ljava/util/List;

    .line 22
    .line 23
    check-cast v3, Ljava/util/Collection;

    .line 24
    .line 25
    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 26
    .line 27
    .line 28
    new-instance v3, Ljava/util/HashSet;

    .line 29
    .line 30
    iget-object v4, p1, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->domainUris:Ljava/util/List;

    .line 31
    .line 32
    check-cast v4, Ljava/util/Collection;

    .line 33
    .line 34
    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    new-instance v1, Ljava/util/HashSet;

    .line 44
    .line 45
    iget-object v3, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->originUris:Ljava/util/List;

    .line 46
    .line 47
    check-cast v3, Ljava/util/Collection;

    .line 48
    .line 49
    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 50
    .line 51
    .line 52
    new-instance v3, Ljava/util/HashSet;

    .line 53
    .line 54
    iget-object v4, p1, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->originUris:Ljava/util/List;

    .line 55
    .line 56
    check-cast v4, Ljava/util/Collection;

    .line 57
    .line 58
    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 59
    .line 60
    .line 61
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->start:Lj$/time/Instant;

    .line 68
    .line 69
    iget-object v3, p1, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->start:Lj$/time/Instant;

    .line 70
    .line 71
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_2

    .line 76
    .line 77
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->end:Lj$/time/Instant;

    .line 78
    .line 79
    iget-object v3, p1, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->end:Lj$/time/Instant;

    .line 80
    .line 81
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_2

    .line 86
    .line 87
    iget v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->matchBehavior:I

    .line 88
    .line 89
    iget p1, p1, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->matchBehavior:I

    .line 90
    .line 91
    if-ne v1, p1, :cond_2

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    const/4 v0, 0x0

    .line 95
    :goto_0
    return v0
.end method

.method public final getDeletionMode()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->deletionMode:I

    .line 2
    .line 3
    return v0
.end method

.method public final getDomainUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->domainUris:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEnd()Lj$/time/Instant;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->end:Lj$/time/Instant;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMatchBehavior()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->matchBehavior:I

    .line 2
    .line 3
    return v0
.end method

.method public final getOriginUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->originUris:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStart()Lj$/time/Instant;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->start:Lj$/time/Instant;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->deletionMode:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->domainUris:Ljava/util/List;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/2addr v1, v0

    .line 12
    mul-int/lit8 v1, v1, 0x1f

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->originUris:Ljava/util/List;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    add-int/2addr v0, v1

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->start:Lj$/time/Instant;

    .line 24
    .line 25
    invoke-virtual {v1}, Lj$/time/Instant;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    add-int/2addr v1, v0

    .line 30
    mul-int/lit8 v1, v1, 0x1f

    .line 31
    .line 32
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->end:Lj$/time/Instant;

    .line 33
    .line 34
    invoke-virtual {v0}, Lj$/time/Instant;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    add-int/2addr v0, v1

    .line 39
    mul-int/lit8 v0, v0, 0x1f

    .line 40
    .line 41
    iget v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->matchBehavior:I

    .line 42
    .line 43
    add-int/2addr v0, v1

    .line 44
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->deletionMode:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "DELETION_MODE_ALL"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "DELETION_MODE_EXCLUDE_INTERNAL_DATA"

    .line 9
    .line 10
    :goto_0
    iget v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->matchBehavior:I

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    const-string v1, "MATCH_BEHAVIOR_DELETE"

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    const-string v1, "MATCH_BEHAVIOR_PRESERVE"

    .line 18
    .line 19
    :goto_1
    const-string v2, "DeletionRequest { DeletionMode="

    .line 20
    .line 21
    const-string v3, ", MatchBehavior="

    .line 22
    .line 23
    const-string v4, ", Start="

    .line 24
    .line 25
    invoke-static {v2, v0, v3, v1, v4}, L뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡;->뎬둘듸돸뒹듽뎽됨뎨땄뎽듼돤땠땩땐뎡땍됩땔딝뎹듼됴딄듔딟뒤땪뎡듸돴뎰뎽땳됩돰땠돠땵땬땸딀됐땦뒵뒝됫딟땔땻뒵딸둑땯땪땧돛뎸땋땝뎨딀땔도딃땋든뒘뒙도돸딅땵됩됴땐돰둑뒾땸돷땵뒉땨땸땁둠뒷듰돵땐땝뒹둬땜듟땄됨드돴둥듐둡뒻뎻뎹둬땪딟땩둣땰땵땡땻딹땸땳딄딽뒈땪딹뒘뎡땥뒾땭뎡(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->start:Lj$/time/Instant;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, ", End="

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->end:Lj$/time/Instant;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ", DomainUris="

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->domainUris:Ljava/util/List;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ", OriginUris="

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/DeletionRequest;->originUris:Ljava/util/List;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, " }"

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    return-object v0
.end method
