.class public final Lkotlin/io/ConsoleKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u001a\u000f\u0010\u0001\u001a\u00020\u0000H\u0007\u00a2\u0006\u0004\u0008\u0001\u0010\u0002\u001a\u0011\u0010\u0003\u001a\u0004\u0018\u00010\u0000H\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0002\u001a\u000f\u0010\u0004\u001a\u0004\u0018\u00010\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0002\u00a8\u0006\u0005"
    }
    d2 = {
        "",
        "readln",
        "()Ljava/lang/String;",
        "readlnOrNull",
        "readLine",
        "kotlin-stdlib"
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
    name = "ConsoleKt"
.end annotation


# direct methods
.method public static final readLine()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lkotlin/io/LineReader;->INSTANCE:Lkotlin/io/LineReader;

    .line 2
    .line 3
    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    .line 4
    .line 5
    const-string v2, "in"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v3, "defaultCharset(...)"

    .line 15
    .line 16
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lkotlin/io/LineReader;->readLine(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method public static final readln()Ljava/lang/String;
    .locals 2
    .annotation build Lkotlin/SinceKotlin;
        version = "1.6"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/io/ConsoleKt;->readlnOrNull()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    new-instance v0, Lkotlin/io/ReadAfterEOFException;

    .line 9
    .line 10
    const-string v1, "EOF has already been reached"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lkotlin/io/ReadAfterEOFException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method public static final readlnOrNull()Ljava/lang/String;
    .locals 1
    .annotation build Lkotlin/SinceKotlin;
        version = "1.6"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/io/ConsoleKt;->readLine()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
