.class public final Lkotlin/ranges/ULongProgression$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/ranges/ULongProgression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001J%\u0010\n\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lkotlin/ranges/ULongProgression$Companion;",
        "",
        "Lkotlin/ULong;",
        "rangeStart",
        "rangeEnd",
        "",
        "step",
        "Lkotlin/ranges/ULongProgression;",
        "fromClosedRange-7ftBX0g",
        "(JJJ)Lkotlin/ranges/ULongProgression;",
        "fromClosedRange",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final fromClosedRange-7ftBX0g(JJJ)Lkotlin/ranges/ULongProgression;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v8, Lkotlin/ranges/ULongProgression;

    .line 2
    .line 3
    const/4 v7, 0x0

    .line 4
    move-object v0, v8

    .line 5
    move-wide v1, p1

    .line 6
    move-wide v3, p3

    .line 7
    move-wide v5, p5

    .line 8
    invoke-direct/range {v0 .. v7}, Lkotlin/ranges/ULongProgression;-><init>(JJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    .line 10
    .line 11
    return-object v8
.end method
