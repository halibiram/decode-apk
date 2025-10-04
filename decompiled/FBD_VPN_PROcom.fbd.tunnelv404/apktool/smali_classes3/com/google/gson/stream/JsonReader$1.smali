.class Lcom/google/gson/stream/JsonReader$1;
.super Lcom/google/gson/internal/JsonReaderInternalAccess;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/stream/JsonReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/gson/internal/JsonReaderInternalAccess;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public promoteNameToValue(Lcom/google/gson/stream/JsonReader;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/google/gson/internal/bind/JsonTreeReader;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/google/gson/internal/bind/JsonTreeReader;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/google/gson/internal/bind/JsonTreeReader;->promoteNameToValue()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget v0, p1, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    :cond_1
    const/16 v1, 0xd

    .line 20
    .line 21
    if-ne v0, v1, :cond_2

    .line 22
    .line 23
    const/16 v0, 0x9

    .line 24
    .line 25
    iput v0, p1, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const/16 v1, 0xc

    .line 29
    .line 30
    if-ne v0, v1, :cond_3

    .line 31
    .line 32
    const/16 v0, 0x8

    .line 33
    .line 34
    iput v0, p1, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    const/16 v1, 0xe

    .line 38
    .line 39
    if-ne v0, v1, :cond_4

    .line 40
    .line 41
    const/16 v0, 0xa

    .line 42
    .line 43
    iput v0, p1, Lcom/google/gson/stream/JsonReader;->peeked:I

    .line 44
    .line 45
    :goto_0
    return-void

    .line 46
    :cond_4
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 47
    .line 48
    const/4 v1, 0x2

    .line 49
    new-array v1, v1, [J

    .line 50
    .line 51
    fill-array-data v1, :array_0

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {p1, v0}, Lcom/google/gson/stream/JsonReader;->access$000(Lcom/google/gson/stream/JsonReader;Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    throw p1

    .line 66
    nop

    .line 67
    :array_0
    .array-data 8
        0x7dfa9006120746b4L    # 6.948741852868018E298
        0x1eab0d8f3a0b9a1aL    # 6.013221846886597E-161
    .end array-data
.end method
