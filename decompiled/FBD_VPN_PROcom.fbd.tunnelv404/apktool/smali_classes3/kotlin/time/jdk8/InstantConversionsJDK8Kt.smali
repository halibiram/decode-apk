.class public final Lkotlin/time/jdk8/InstantConversionsJDK8Kt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u001a\u0013\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u001a\u0013\u0010\u0004\u001a\u00020\u0000*\u00020\u0001H\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lkotlin/time/Instant;",
        "j$/time/Instant",
        "toJavaInstant",
        "(Lkotlin/time/Instant;)Lj$/time/Instant;",
        "toKotlinInstant",
        "(Lj$/time/Instant;)Lkotlin/time/Instant;",
        "kotlin-stdlib-jdk8"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/JvmName;
    name = "InstantConversionsJDK8Kt"
.end annotation


# direct methods
.method public static final toJavaInstant(Lkotlin/time/Instant;)Lj$/time/Instant;
    .locals 4
    .param p0    # Lkotlin/time/Instant;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "2.1"
    .end annotation

    .annotation build Lkotlin/time/ExperimentalTime;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lkotlin/time/Instant;->getEpochSeconds()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-virtual {p0}, Lkotlin/time/Instant;->getNanosecondsOfSecond()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    int-to-long v2, p0

    .line 15
    invoke-static {v0, v1, v2, v3}, Lj$/time/Instant;->ofEpochSecond(JJ)Lj$/time/Instant;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string v0, "ofEpochSecond(...)"

    .line 20
    .line 21
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object p0
.end method

.method public static final toKotlinInstant(Lj$/time/Instant;)Lkotlin/time/Instant;
    .locals 3
    .param p0    # Lj$/time/Instant;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "2.1"
    .end annotation

    .annotation build Lkotlin/time/ExperimentalTime;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lkotlin/time/Instant;->Companion:Lkotlin/time/Instant$Companion;

    .line 7
    .line 8
    invoke-virtual {p0}, Lj$/time/Instant;->getEpochSecond()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    invoke-virtual {p0}, Lj$/time/Instant;->getNano()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    invoke-virtual {v0, v1, v2, p0}, Lkotlin/time/Instant$Companion;->fromEpochSeconds(JI)Lkotlin/time/Instant;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method
