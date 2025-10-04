.class public final Lkotlin/time/Instant$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/time/Instant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\r\n\u0002\u0008\r\u0008\u0086\u0003\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0015\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001f\u0010\u000b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00052\u0008\u0008\u0002\u0010\n\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001d\u0010\u000b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000b\u0010\u000eJ\u0015\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0014\u001a\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0004R\u0011\u0010\u0016\u001a\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0004R\u001a\u0010\u0017\u001a\u00020\u00028\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u0004R\u001a\u0010\u001a\u001a\u00020\u00028\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u0018\u001a\u0004\u0008\u001b\u0010\u0004\u00a8\u0006\u001c"
    }
    d2 = {
        "Lkotlin/time/Instant$Companion;",
        "",
        "Lkotlin/time/Instant;",
        "now",
        "()Lkotlin/time/Instant;",
        "",
        "epochMilliseconds",
        "fromEpochMilliseconds",
        "(J)Lkotlin/time/Instant;",
        "epochSeconds",
        "nanosecondAdjustment",
        "fromEpochSeconds",
        "(JJ)Lkotlin/time/Instant;",
        "",
        "(JI)Lkotlin/time/Instant;",
        "",
        "input",
        "parse",
        "(Ljava/lang/CharSequence;)Lkotlin/time/Instant;",
        "getDISTANT_PAST",
        "DISTANT_PAST",
        "getDISTANT_FUTURE",
        "DISTANT_FUTURE",
        "MIN",
        "Lkotlin/time/Instant;",
        "getMIN$kotlin_stdlib",
        "MAX",
        "getMAX$kotlin_stdlib",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nInstant.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Instant.kt\nkotlin/time/Instant$Companion\n+ 2 Instant.kt\nkotlin/time/InstantKt\n*L\n1#1,799:1\n721#2,6:800\n*S KotlinDebug\n*F\n+ 1 Instant.kt\nkotlin/time/Instant$Companion\n*L\n308#1:800,6\n*E\n"
    }
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

.method public static synthetic fromEpochSeconds$default(Lkotlin/time/Instant$Companion;JJILjava/lang/Object;)Lkotlin/time/Instant;
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x2

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const-wide/16 p3, 0x0

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlin/time/Instant$Companion;->fromEpochSeconds(JJ)Lkotlin/time/Instant;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method


# virtual methods
.method public final fromEpochMilliseconds(J)Lkotlin/time/Instant;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-wide/16 v0, 0x3e8

    .line 2
    .line 3
    div-long v2, p1, v0

    .line 4
    .line 5
    xor-long v4, p1, v0

    .line 6
    .line 7
    const-wide/16 v6, 0x0

    .line 8
    .line 9
    cmp-long v8, v4, v6

    .line 10
    .line 11
    if-gez v8, :cond_0

    .line 12
    .line 13
    mul-long v4, v2, v0

    .line 14
    .line 15
    cmp-long v6, v4, p1

    .line 16
    .line 17
    if-eqz v6, :cond_0

    .line 18
    .line 19
    const-wide/16 v4, -0x1

    .line 20
    .line 21
    add-long/2addr v2, v4

    .line 22
    :cond_0
    rem-long/2addr p1, v0

    .line 23
    xor-long v4, p1, v0

    .line 24
    .line 25
    neg-long v6, p1

    .line 26
    or-long/2addr v6, p1

    .line 27
    and-long/2addr v4, v6

    .line 28
    const/16 v6, 0x3f

    .line 29
    .line 30
    shr-long/2addr v4, v6

    .line 31
    and-long/2addr v0, v4

    .line 32
    add-long/2addr p1, v0

    .line 33
    const v0, 0xf4240

    .line 34
    .line 35
    .line 36
    int-to-long v0, v0

    .line 37
    mul-long p1, p1, v0

    .line 38
    .line 39
    long-to-int p2, p1

    .line 40
    const-wide v0, -0x701cefeb9bec00L

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    cmp-long p1, v2, v0

    .line 46
    .line 47
    if-gez p1, :cond_1

    .line 48
    .line 49
    invoke-virtual {p0}, Lkotlin/time/Instant$Companion;->getMIN$kotlin_stdlib()Lkotlin/time/Instant;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const-wide v0, 0x701cd2fa9578ffL

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    cmp-long p1, v2, v0

    .line 60
    .line 61
    if-lez p1, :cond_2

    .line 62
    .line 63
    invoke-virtual {p0}, Lkotlin/time/Instant$Companion;->getMAX$kotlin_stdlib()Lkotlin/time/Instant;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p0, v2, v3, p2}, Lkotlin/time/Instant$Companion;->fromEpochSeconds(JI)Lkotlin/time/Instant;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    :goto_0
    return-object p1
.end method

.method public final fromEpochSeconds(JI)Lkotlin/time/Instant;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    int-to-long v0, p3

    .line 7
    invoke-virtual {p0, p1, p2, v0, v1}, Lkotlin/time/Instant$Companion;->fromEpochSeconds(JJ)Lkotlin/time/Instant;

    move-result-object p1

    return-object p1
.end method

.method public final fromEpochSeconds(JJ)Lkotlin/time/Instant;
    .locals 11
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-wide/32 v0, 0x3b9aca00

    .line 1
    div-long v2, p3, v0

    xor-long v4, p3, v0

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-gez v8, :cond_0

    mul-long v4, v2, v0

    cmp-long v8, v4, p3

    if-eqz v8, :cond_0

    const-wide/16 v4, -0x1

    add-long/2addr v2, v4

    :cond_0
    add-long v4, p1, v2

    xor-long v8, p1, v4

    cmp-long v10, v8, v6

    if-gez v10, :cond_2

    xor-long/2addr v2, p1

    cmp-long v8, v2, v6

    if-ltz v8, :cond_2

    cmp-long p3, p1, v6

    .line 2
    sget-object p1, Lkotlin/time/Instant;->Companion:Lkotlin/time/Instant$Companion;

    if-lez p3, :cond_1

    invoke-virtual {p1}, Lkotlin/time/Instant$Companion;->getMAX$kotlin_stdlib()Lkotlin/time/Instant;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lkotlin/time/Instant$Companion;->getMIN$kotlin_stdlib()Lkotlin/time/Instant;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_2
    const-wide p1, -0x701cefeb9bec00L

    cmp-long v2, v4, p1

    if-gez v2, :cond_3

    .line 3
    invoke-virtual {p0}, Lkotlin/time/Instant$Companion;->getMIN$kotlin_stdlib()Lkotlin/time/Instant;

    move-result-object p1

    goto :goto_1

    :cond_3
    const-wide p1, 0x701cd2fa9578ffL

    cmp-long v2, v4, p1

    if-lez v2, :cond_4

    .line 4
    invoke-virtual {p0}, Lkotlin/time/Instant$Companion;->getMAX$kotlin_stdlib()Lkotlin/time/Instant;

    move-result-object p1

    goto :goto_1

    .line 5
    :cond_4
    rem-long/2addr p3, v0

    xor-long p1, p3, v0

    neg-long v2, p3

    or-long/2addr v2, p3

    and-long/2addr p1, v2

    const/16 v2, 0x3f

    shr-long/2addr p1, v2

    and-long/2addr p1, v0

    add-long/2addr p3, p1

    long-to-int p1, p3

    .line 6
    new-instance p2, Lkotlin/time/Instant;

    invoke-direct {p2, v4, v5, p1}, Lkotlin/time/Instant;-><init>(JI)V

    move-object p1, p2

    :goto_1
    return-object p1
.end method

.method public final getDISTANT_FUTURE()Lkotlin/time/Instant;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-wide v0, 0x2d044a2eb00L

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {p0, v0, v1, v2}, Lkotlin/time/Instant$Companion;->fromEpochSeconds(JI)Lkotlin/time/Instant;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final getDISTANT_PAST()Lkotlin/time/Instant;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-wide v0, -0x2ed378be301L

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    const v2, 0x3b9ac9ff

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, v1, v2}, Lkotlin/time/Instant$Companion;->fromEpochSeconds(JI)Lkotlin/time/Instant;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final getMAX$kotlin_stdlib()Lkotlin/time/Instant;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/time/Instant;->access$getMAX$cp()Lkotlin/time/Instant;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getMIN$kotlin_stdlib()Lkotlin/time/Instant;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/time/Instant;->access$getMIN$cp()Lkotlin/time/Instant;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final now()Lkotlin/time/Instant;
    .locals 3
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Use Clock.System.now() instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Clock.System.now()"
            imports = {
                "kotlin.time.Clock"
            }
        .end subannotation
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lkotlin/NotImplementedError;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {v0, v1, v2, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public final parse(Ljava/lang/CharSequence;)Lkotlin/time/Instant;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "input"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lkotlin/time/InstantKt;->access$parseIso(Ljava/lang/CharSequence;)Lkotlin/time/Instant;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method
