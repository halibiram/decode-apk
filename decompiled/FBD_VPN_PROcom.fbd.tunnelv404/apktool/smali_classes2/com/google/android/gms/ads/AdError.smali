.class public Lcom/google/android/gms/ads/AdError;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final UNDEFINED_DOMAIN:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private final zza:I

.field private final zzb:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final zzc:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final zzd:Lcom/google/android/gms/ads/AdError;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x3

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/ads/AdError;->UNDEFINED_DOMAIN:Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        0xc6d7b9cc341ac3aL
        0x23a824a01b33ffbdL    # 6.487605594661369E-137
        -0xf0de0dbe8650d4bL    # -1.1523760499580405E236
    .end array-data
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/AdError;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/AdError;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/ads/AdError;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/ads/AdError;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/ads/AdError;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/AdError;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/ads/AdError;->zzd:Lcom/google/android/gms/ads/AdError;

    return-void
.end method


# virtual methods
.method public getCause()Lcom/google/android/gms/ads/AdError;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/AdError;->zzd:Lcom/google/android/gms/ads/AdError;

    return-object v0
.end method

.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/AdError;->zza:I

    return v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/AdError;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/AdError;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdError;->zzb()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/4 v1, 0x5

    .line 14
    new-array v1, v1, [J

    .line 15
    .line 16
    fill-array-data v1, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    return-object v0

    .line 27
    :array_0
    .array-data 8
        -0x2b1776a9079739f0L    # -1.0733488181649684E101
        -0x75f4ab23d96d113fL
        -0x37c699e3fc012999L    # -8.642785893943098E39
        -0x3f57e68ad688bc6fL    # -3084.728831984518
        0x474d1c58cfbcd494L    # 3.0230310547278492E35
    .end array-data
.end method

.method public final zza()Lcom/google/android/gms/ads/internal/client/zze;
    .locals 13
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/AdError;->zzd:Lcom/google/android/gms/ads/AdError;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    move-object v11, v0

    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-object v4, v0, Lcom/google/android/gms/ads/AdError;->zzc:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v3, v0, Lcom/google/android/gms/ads/AdError;->zzb:Ljava/lang/String;

    .line 11
    .line 12
    iget v2, v0, Lcom/google/android/gms/ads/AdError;->zza:I

    .line 13
    .line 14
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zze;

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x0

    .line 18
    move-object v1, v0

    .line 19
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/ads/internal/client/zze;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;Landroid/os/IBinder;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :goto_1
    iget v8, p0, Lcom/google/android/gms/ads/AdError;->zza:I

    .line 24
    .line 25
    iget-object v9, p0, Lcom/google/android/gms/ads/AdError;->zzb:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v10, p0, Lcom/google/android/gms/ads/AdError;->zzc:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zze;

    .line 30
    .line 31
    const/4 v12, 0x0

    .line 32
    move-object v7, v0

    .line 33
    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/ads/internal/client/zze;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;Landroid/os/IBinder;)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method public zzb()Lorg/json/JSONObject;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    new-array v3, v2, [J

    .line 10
    .line 11
    fill-array-data v3, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget v3, p0, Lcom/google/android/gms/ads/AdError;->zza:I

    .line 22
    .line 23
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    new-array v3, v2, [J

    .line 29
    .line 30
    fill-array-data v3, :array_1

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget-object v3, p0, Lcom/google/android/gms/ads/AdError;->zzb:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    new-array v3, v2, [J

    .line 48
    .line 49
    fill-array-data v3, :array_2

    .line 50
    .line 51
    .line 52
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iget-object v3, p0, Lcom/google/android/gms/ads/AdError;->zzc:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lcom/google/android/gms/ads/AdError;->zzd:Lcom/google/android/gms/ads/AdError;

    .line 65
    .line 66
    if-nez v1, :cond_0

    .line 67
    .line 68
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    new-array v3, v2, [J

    .line 71
    .line 72
    fill-array-data v3, :array_3

    .line 73
    .line 74
    .line 75
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 83
    .line 84
    new-array v2, v2, [J

    .line 85
    .line 86
    fill-array-data v2, :array_4

    .line 87
    .line 88
    .line 89
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 101
    .line 102
    new-array v2, v2, [J

    .line 103
    .line 104
    fill-array-data v2, :array_5

    .line 105
    .line 106
    .line 107
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdError;->zzb()Lorg/json/JSONObject;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    .line 120
    .line 121
    :goto_0
    return-object v0

    .line 122
    nop

    .line 123
    :array_0
    .array-data 8
        -0x69c5b78ba98a25e4L    # -1.341276343314429E-201
        -0x290c7447ada62579L    # -7.34465594232627E110
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
        0x6e2abc0f16d63c8dL    # 4.8319294967577225E222
        -0x5976b0aa8cfa0e6dL    # -4.785884024560387E-123
    .end array-data

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
        0x7e139e2bd44a0524L    # 2.052802916016418E299
        -0x4d73df1b5e80965bL    # -3.3386996171404513E-65
    .end array-data

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    :array_3
    .array-data 8
        0x75d19b70fe4cfabbL    # 3.383969201760874E259
        -0x170718c69f28e187L    # -4.653853045603668E197
    .end array-data

    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    :array_4
    .array-data 8
        0x132d8c42c0ca6d7cL
        -0x712b96fa1666075bL    # -3.1343801956761E-237
    .end array-data

    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    :array_5
    .array-data 8
        0x7892140cf6e7dd3cL    # 6.112434610605743E272
        -0x6dbfef259e173dc7L    # -8.88907181783664E-221
    .end array-data
.end method
