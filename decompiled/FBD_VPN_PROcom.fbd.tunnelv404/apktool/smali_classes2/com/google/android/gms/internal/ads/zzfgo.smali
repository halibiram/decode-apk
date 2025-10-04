.class public final Lcom/google/android/gms/internal/ads/zzfgo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/util/JsonReader;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    new-array v2, v1, [J

    .line 11
    .line 12
    const-wide v3, 0x94d8062d43324e0L

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    aput-wide v3, v2, v5

    .line 19
    .line 20
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_5

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    const v4, -0x66ca7c04

    .line 42
    .line 43
    .line 44
    if-eq v3, v4, :cond_1

    .line 45
    .line 46
    const v4, 0x2eaded

    .line 47
    .line 48
    .line 49
    if-eq v3, v4, :cond_0

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 53
    .line 54
    const/4 v4, 0x2

    .line 55
    new-array v4, v4, [J

    .line 56
    .line 57
    fill-array-data v4, :array_0

    .line 58
    .line 59
    .line 60
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_2

    .line 72
    .line 73
    const/4 v2, 0x0

    .line 74
    goto :goto_2

    .line 75
    :cond_1
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 76
    .line 77
    const/4 v4, 0x3

    .line 78
    new-array v4, v4, [J

    .line 79
    .line 80
    fill-array-data v4, :array_1

    .line 81
    .line 82
    .line 83
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_2

    .line 95
    .line 96
    const/4 v2, 0x1

    .line 97
    goto :goto_2

    .line 98
    :cond_2
    :goto_1
    const/4 v2, -0x1

    .line 99
    :goto_2
    if-eqz v2, :cond_4

    .line 100
    .line 101
    if-eq v2, v1, :cond_3

    .line 102
    .line 103
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    goto :goto_0

    .line 112
    :cond_4
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_5
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 117
    .line 118
    .line 119
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgo;->zza:Ljava/lang/String;

    .line 120
    .line 121
    return-void

    .line 122
    nop

    .line 123
    :array_0
    .array-data 8
        -0x4849414c443619bbL    # -2.6109899164093202E-40
        0x678f23c4e29bde3fL    # 6.937164889824996E190
    .end array-data

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    :array_1
    .array-data 8
        -0x7bf8170fef5d446cL
        0x77eca62523c4f63aL    # 4.729722576611003E269
        -0x23504d9d5a45b133L    # -2.9489247449585518E138
    .end array-data
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgo;->zza:Ljava/lang/String;

    return-object v0
.end method
