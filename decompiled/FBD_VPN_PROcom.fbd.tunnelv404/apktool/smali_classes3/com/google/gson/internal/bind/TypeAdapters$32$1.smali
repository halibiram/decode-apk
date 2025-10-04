.class Lcom/google/gson/internal/bind/TypeAdapters$32$1;
.super Lcom/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/bind/TypeAdapters$32;->create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "TT1;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gson/internal/bind/TypeAdapters$32;

.field final synthetic val$requestedType:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/bind/TypeAdapters$32;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/gson/internal/bind/TypeAdapters$32$1;->this$0:Lcom/google/gson/internal/bind/TypeAdapters$32;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/gson/internal/bind/TypeAdapters$32$1;->val$requestedType:Ljava/lang/Class;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonReader;",
            ")TT1;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    iget-object v1, p0, Lcom/google/gson/internal/bind/TypeAdapters$32$1;->this$0:Lcom/google/gson/internal/bind/TypeAdapters$32;

    .line 3
    .line 4
    iget-object v1, v1, Lcom/google/gson/internal/bind/TypeAdapters$32;->val$typeAdapter:Lcom/google/gson/TypeAdapter;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/gson/internal/bind/TypeAdapters$32$1;->val$requestedType:Ljava/lang/Class;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v2, Lcom/google/gson/JsonSyntaxException;

    .line 22
    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    new-array v5, v0, [J

    .line 31
    .line 32
    fill-array-data v5, :array_0

    .line 33
    .line 34
    .line 35
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v4, p0, Lcom/google/gson/internal/bind/TypeAdapters$32$1;->val$requestedType:Ljava/lang/Class;

    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    new-array v5, v0, [J

    .line 57
    .line 58
    fill-array-data v5, :array_1

    .line 59
    .line 60
    .line 61
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 83
    .line 84
    new-array v0, v0, [J

    .line 85
    .line 86
    fill-array-data v0, :array_2

    .line 87
    .line 88
    .line 89
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->getPreviousPath()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-direct {v2, p1}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw v2

    .line 114
    :cond_1
    :goto_0
    return-object v1

    .line 115
    :array_0
    .array-data 8
        0x7a2e5b2d9125cb8L
        0x4f7a41cf0e56da91L    # 7.422755106534581E74
        0x498a8fc53e5fc380L    # 1.8954993618742096E46
    .end array-data

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    :array_1
    .array-data 8
        -0x134a8f798af0abffL    # -4.619262172111334E215
        -0x17a26d0f80c54fd6L    # -5.397181503255994E194
        -0x66e61ae23908c477L    # -9.299045836647087E-188
    .end array-data

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    :array_2
    .array-data 8
        -0x14c9c5b74509f9caL    # -2.8545062731879E208
        0x2061f2c6907aee2cL
        -0x29435e5dcf0c30e5L    # -6.724201769728874E109
    .end array-data
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonWriter;",
            "TT1;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/gson/internal/bind/TypeAdapters$32$1;->this$0:Lcom/google/gson/internal/bind/TypeAdapters$32;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/gson/internal/bind/TypeAdapters$32;->val$typeAdapter:Lcom/google/gson/TypeAdapter;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
