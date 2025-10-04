.class public final Lkotlin/io/encoding/Base64$Default;
.super Lkotlin/io/encoding/Base64;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/io/encoding/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Default"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0005\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0003\u001a\u00020\u00028\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\u0007\u001a\u00020\u00018\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\nR\u0017\u0010\u000b\u001a\u00020\u00018\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0008\u001a\u0004\u0008\u000c\u0010\nR\u0014\u0010\u000e\u001a\u00020\r8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u000fR\u0014\u0010\u0011\u001a\u00020\r8\u0000X\u0080T\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\r8\u0000X\u0080T\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00138\u0000X\u0080T\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\r8\u0000X\u0080T\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u000fR\u0014\u0010\u0017\u001a\u00020\r8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u000f\u00a8\u0006\u0018"
    }
    d2 = {
        "Lkotlin/io/encoding/Base64$Default;",
        "Lkotlin/io/encoding/Base64;",
        "",
        "mimeLineSeparatorSymbols",
        "[B",
        "getMimeLineSeparatorSymbols$kotlin_stdlib",
        "()[B",
        "UrlSafe",
        "Lkotlin/io/encoding/Base64;",
        "getUrlSafe",
        "()Lkotlin/io/encoding/Base64;",
        "Mime",
        "getMime",
        "",
        "bitsPerByte",
        "I",
        "bitsPerSymbol",
        "bytesPerGroup",
        "symbolsPerGroup",
        "",
        "padSymbol",
        "B",
        "mimeLineLength",
        "mimeGroupsPerLine",
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
    .locals 2

    .line 1
    sget-object p1, Lkotlin/io/encoding/Base64$PaddingOption;->PRESENT:Lkotlin/io/encoding/Base64$PaddingOption;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, v1, v1, p1, v0}, Lkotlin/io/encoding/Base64;-><init>(ZZLkotlin/io/encoding/Base64$PaddingOption;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getMime()Lkotlin/io/encoding/Base64;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/io/encoding/Base64;->access$getMime$cp()Lkotlin/io/encoding/Base64;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getMimeLineSeparatorSymbols$kotlin_stdlib()[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/io/encoding/Base64;->access$getMimeLineSeparatorSymbols$cp()[B

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getUrlSafe()Lkotlin/io/encoding/Base64;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/io/encoding/Base64;->access$getUrlSafe$cp()Lkotlin/io/encoding/Base64;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
