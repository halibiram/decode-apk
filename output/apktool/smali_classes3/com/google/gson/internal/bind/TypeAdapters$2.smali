.class Lcom/google/gson/internal/bind/TypeAdapters$2;
.super Lcom/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Ljava/util/BitSet;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$2;->read(Lcom/google/gson/stream/JsonReader;)Ljava/util/BitSet;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/util/BitSet;
    .locals 9

    const/4 v0, 0x5

    const/4 v1, 0x3

    const/4 v2, 0x1

    .line 2
    new-instance v3, Ljava/util/BitSet;

    invoke-direct {v3}, Ljava/util/BitSet;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    .line 4
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 5
    :goto_0
    sget-object v7, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-eq v4, v7, :cond_5

    .line 6
    sget-object v7, Lcom/google/gson/internal/bind/TypeAdapters$33;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v2, :cond_1

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1

    if-ne v7, v1, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v4

    goto :goto_1

    .line 8
    :cond_0
    new-instance v2, Lcom/google/gson/JsonSyntaxException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    invoke-direct {v5, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    if-ne v4, v2, :cond_4

    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_3

    .line 11
    invoke-virtual {v3, v6}, Ljava/util/BitSet;->set(I)V

    :cond_3
    add-int/2addr v6, v2

    .line 12
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v4

    goto :goto_0

    .line 13
    :cond_4
    new-instance v1, Lcom/google/gson/JsonSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v5, 0x4

    new-array v5, v5, [J

    fill-array-data v5, :array_2

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_3

    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->getPreviousPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 15
    :cond_5
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endArray()V

    return-object v3

    :array_0
    .array-data 8
        -0x7f3dc3943cc8e078L
        -0xb35d8dae6e1b4bdL
        -0x20b23b800347e1e6L    # -1.2180113751759615E151
        0x2495536077c11dceL
        0x2146cd4f8dc02d21L    # 2.229076611958932E-148
    .end array-data

    :array_1
    .array-data 8
        0x657c2686cc6ebfbeL    # 7.300682164401001E180
        0x77ffb696aa476e7dL    # 1.0471205869087846E270
        -0x59cf7f852f5b4c92L    # -9.75113279185657E-125
    .end array-data

    :array_2
    .array-data 8
        0x5d8e72ce7ae7eb29L    # 4.6412326980043804E142
        -0x37806fdd36a1850dL    # -1.7184548525256222E41
        -0x560af574a590c082L    # -1.433480594566742E-106
        0x1ab3ca4653e6f652L    # 4.769264095454836E-180
    .end array-data

    :array_3
    .array-data 8
        -0x1f9560dcba74994dL    # -2.855501824037535E156
        -0x770ce30e9bce183aL
        -0x2863f10e43301d05L    # -1.0796448338176309E114
        -0x3211c5612e2b4bbeL    # -2.546787023582895E67
        -0x2570509891768f9aL    # -1.7158694558627259E128
    .end array-data
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/util/BitSet;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters$2;->write(Lcom/google/gson/stream/JsonWriter;Ljava/util/BitSet;)V

    return-void
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/util/BitSet;)V
    .locals 4

    .line 2
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;

    .line 3
    invoke-virtual {p2}, Ljava/util/BitSet;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    invoke-virtual {p2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    int-to-long v2, v2

    .line 5
    invoke-virtual {p1, v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method
