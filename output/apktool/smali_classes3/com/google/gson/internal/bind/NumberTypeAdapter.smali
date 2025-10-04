.class public final Lcom/google/gson/internal/bind/NumberTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final LAZILY_PARSED_NUMBER_FACTORY:Lcom/google/gson/TypeAdapterFactory;


# instance fields
.field private final toNumberStrategy:Lcom/google/gson/ToNumberStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/gson/ToNumberPolicy;->LAZILY_PARSED_NUMBER:Lcom/google/gson/ToNumberPolicy;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/gson/internal/bind/NumberTypeAdapter;->newFactory(Lcom/google/gson/ToNumberStrategy;)Lcom/google/gson/TypeAdapterFactory;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/gson/internal/bind/NumberTypeAdapter;->LAZILY_PARSED_NUMBER_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Lcom/google/gson/ToNumberStrategy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/gson/internal/bind/NumberTypeAdapter;->toNumberStrategy:Lcom/google/gson/ToNumberStrategy;

    .line 5
    .line 6
    return-void
.end method

.method public static getFactory(Lcom/google/gson/ToNumberStrategy;)Lcom/google/gson/TypeAdapterFactory;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/gson/ToNumberPolicy;->LAZILY_PARSED_NUMBER:Lcom/google/gson/ToNumberPolicy;

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lcom/google/gson/internal/bind/NumberTypeAdapter;->LAZILY_PARSED_NUMBER_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-static {p0}, Lcom/google/gson/internal/bind/NumberTypeAdapter;->newFactory(Lcom/google/gson/ToNumberStrategy;)Lcom/google/gson/TypeAdapterFactory;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method private static newFactory(Lcom/google/gson/ToNumberStrategy;)Lcom/google/gson/TypeAdapterFactory;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/gson/internal/bind/NumberTypeAdapter;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/gson/internal/bind/NumberTypeAdapter;-><init>(Lcom/google/gson/ToNumberStrategy;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Lcom/google/gson/internal/bind/NumberTypeAdapter$1;

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/google/gson/internal/bind/NumberTypeAdapter$1;-><init>(Lcom/google/gson/internal/bind/NumberTypeAdapter;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Number;
    .locals 6

    const/4 v0, 0x3

    .line 2
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/google/gson/internal/bind/NumberTypeAdapter$2;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    if-ne v2, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v2, Lcom/google/gson/JsonSyntaxException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v5, 0x4

    new-array v5, v5, [J

    fill-array-data v5, :array_0

    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/gson/internal/bind/NumberTypeAdapter;->toNumberStrategy:Lcom/google/gson/ToNumberStrategy;

    invoke-interface {v0, p1}, Lcom/google/gson/ToNumberStrategy;->readNumber(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    const/4 p1, 0x0

    return-object p1

    :array_0
    .array-data 8
        0x34f791d30ea84abaL    # 1.5379899059819412E-53
        0x6a905cd925d6d3fcL    # 2.052067870260623E205
        0x528ac6fb86264a0bL    # 4.261427612806717E89
        -0x3776b041c3ef9491L    # -2.7561779005885016E41
    .end array-data

    :array_1
    .array-data 8
        -0x1fe114f629cc3d1bL    # -1.0363604976241068E155
        0x3e42af147687621aL    # 8.700371715543183E-9
        -0x279ab8a566828714L    # -6.707396009436162E117
    .end array-data
.end method

.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/NumberTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V
    .locals 0

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/bind/NumberTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V

    return-void
.end method
