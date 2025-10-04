.class public final synthetic Lcom/google/android/gms/internal/ads/zzcdx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcea;


# instance fields
.field public final synthetic zza:[B


# direct methods
.method public synthetic constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdx;->zza:[B

    return-void
.end method


# virtual methods
.method public final zza(Landroid/util/JsonWriter;)V
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    sget v1, Lcom/google/android/gms/internal/ads/zzceb;->zza:I

    .line 3
    .line 4
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    new-array v3, v2, [J

    .line 8
    .line 9
    fill-array-data v3, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p1, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdx;->zza:[B

    .line 27
    .line 28
    array-length v3, v1

    .line 29
    invoke-static {v1}, Lcom/google/android/gms/common/util/Base64Utils;->encode([B)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/16 v4, 0x2710

    .line 34
    .line 35
    if-ge v3, v4, :cond_0

    .line 36
    .line 37
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    new-array v2, v2, [J

    .line 40
    .line 41
    fill-array-data v2, :array_1

    .line 42
    .line 43
    .line 44
    invoke-direct {v4, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {p1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcdv;->zze(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 66
    .line 67
    new-array v4, v0, [J

    .line 68
    .line 69
    fill-array-data v4, :array_2

    .line 70
    .line 71
    .line 72
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {p1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v2, v1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 84
    .line 85
    .line 86
    :cond_1
    :goto_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 87
    .line 88
    new-array v0, v0, [J

    .line 89
    .line 90
    fill-array-data v0, :array_3

    .line 91
    .line 92
    .line 93
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    int-to-long v1, v3

    .line 105
    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    nop

    .line 113
    :array_0
    .array-data 8
        -0x308240678c11b801L    # -8.409745368262449E74
        0x2df6e6b232f78221L    # 2.878052306538856E-87
    .end array-data

    .line 114
    .line 115
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
    :array_1
    .array-data 8
        -0x605b0617642cbd94L    # -3.055618914858304E-156
        -0x2ed947a33f0f3c8eL    # -8.620655931937605E82
    .end array-data

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
    .line 136
    .line 137
    :array_2
    .array-data 8
        0x5a230c92623e0aa5L    # 1.6118434516327735E126
        0x2e97f78d9f16c192L
        0x6e4f3a883e479a77L    # 2.2576670527025711E223
    .end array-data

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
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    :array_3
    .array-data 8
        -0x5e7b9536ee4c1850L    # -3.193499372647082E-147
        0x736661b0708f007aL    # 7.824517201563462E247
        -0x467614770c28104cL    # -1.5974469371510904E-31
    .end array-data
.end method
