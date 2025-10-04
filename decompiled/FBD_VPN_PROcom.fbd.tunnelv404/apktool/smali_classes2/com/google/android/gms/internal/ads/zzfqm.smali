.class public final Lcom/google/android/gms/internal/ads/zzfqm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final zza:[B
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field protected static final zzb:[B
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final zzc:[B

.field private final zzd:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x20

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/gms/internal/ads/zzfqm;->zza:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfqm;->zzb:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x3dt
        0x7at
        0x12t
        0x23t
        0x1t
        -0x66t
        -0x5dt
        -0x63t
        -0x62t
        -0x60t
        -0x1dt
        0x43t
        0x6at
        -0x49t
        -0x40t
        -0x77t
        0x6bt
        -0x5t
        0x4ft
        -0x4at
        0x79t
        -0xct
        -0x22t
        0x5ft
        -0x19t
        -0x3et
        0x3ft
        0x32t
        0x6ct
        -0x71t
        -0x67t
        0x4at
    .end array-data

    :array_1
    .array-data 1
        -0x6et
        -0xdt
        -0x22t
        0x46t
        -0x53t
        0x2bt
        0x61t
        0x15t
        -0x2ct
        0x10t
        -0x36t
        -0x7dt
        -0x1ct
        -0x39t
        -0x7dt
        -0x7ft
        -0x7t
        0x11t
        0x66t
        -0x45t
        0x74t
        -0x79t
        -0x4ft
        0x2bt
        -0xdt
        0x78t
        0x3at
        0x37t
        -0x1dt
        -0x6ct
        0x5ft
        0x53t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfqm;->zzb:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqm;->zzc:[B

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfqm;->zza:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfqm;->zzd:[B

    return-void
.end method


# virtual methods
.method public final zza(Ljava/io/File;)Z
    .locals 5

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x2

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzapg;->zza(Ljava/lang/String;)[[Ljava/security/cert/X509Certificate;

    .line 8
    .line 9
    .line 10
    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzapd; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    array-length v2, p1

    .line 12
    const/4 v3, 0x1

    .line 13
    if-ne v2, v3, :cond_3

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    aget-object p1, p1, v0

    .line 17
    .line 18
    aget-object p1, p1, v0

    .line 19
    .line 20
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    new-array v4, v1, [J

    .line 23
    .line 24
    fill-array-data v4, :array_0

    .line 25
    .line 26
    .line 27
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v2, p1}, Ljava/security/MessageDigest;->digest([B)[B

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfqm;->zzd:[B

    .line 47
    .line 48
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_2

    .line 53
    .line 54
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    new-array v1, v1, [J

    .line 57
    .line 58
    fill-array-data v1, :array_1

    .line 59
    .line 60
    .line 61
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-nez v1, :cond_1

    .line 75
    .line 76
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfqm;->zzc:[B

    .line 77
    .line 78
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_0

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    return v0

    .line 86
    :cond_1
    const/4 v3, 0x0

    .line 87
    :cond_2
    :goto_0
    return v3

    .line 88
    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 89
    .line 90
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 91
    .line 92
    new-array v0, v0, [J

    .line 93
    .line 94
    fill-array-data v0, :array_2

    .line 95
    .line 96
    .line 97
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p1

    .line 108
    :catch_0
    move-exception p1

    .line 109
    goto :goto_1

    .line 110
    :catch_1
    move-exception p1

    .line 111
    :goto_1
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 112
    .line 113
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 114
    .line 115
    new-array v0, v0, [J

    .line 116
    .line 117
    fill-array-data v0, :array_3

    .line 118
    .line 119
    .line 120
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-direct {v1, v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    .line 129
    .line 130
    throw v1

    .line 131
    :catch_2
    move-exception p1

    .line 132
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 133
    .line 134
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 135
    .line 136
    const/4 v2, 0x4

    .line 137
    new-array v2, v2, [J

    .line 138
    .line 139
    fill-array-data v2, :array_4

    .line 140
    .line 141
    .line 142
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    .line 151
    .line 152
    throw v0

    .line 153
    :array_0
    .array-data 8
        0x4fe3cf8b311fecd9L    # 7.168513706106314E76
        -0x783b6c4bad5a765L    # -2.390939383053316E272
    .end array-data

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    :array_1
    .array-data 8
        -0x6d19254ed011cceeL
        0x7ecf1d18eb8b953bL    # 6.667711219779193E302
    .end array-data

    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    :array_2
    .array-data 8
        -0x23d7b86a297ddc26L    # -8.823687682405777E135
        -0x4d818d17b4a38249L    # -1.8070574044893665E-65
        -0x687165fa1454ba61L    # -3.275048280850844E-195
        0x38293c3f55d4ba21L    # 3.7080001599815965E-38
        -0x736e48e1e551f5bbL    # -3.958878460844751E-248
    .end array-data

    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    :array_3
    .array-data 8
        0x24fbd6a110b153c5L    # 1.568794600010714E-130
        -0x818ae61be51be0dL    # -3.849751760974913E269
        0x4cd275464af51f28L    # 1.1864411709684252E62
        0x302d76c9544c43d6L    # 1.272280763531349E-76
        0x2c1026146ab0ceb8L    # 1.890080412880107E-96
    .end array-data

    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    :array_4
    .array-data 8
        -0x1bcd7ef5d6f37f3eL    # -4.576616906401103E174
        0x49b0f57e9dd6f18aL    # 9.681856476488938E46
        -0x4fea11fa96e9a24dL    # -4.734729764806166E-77
        0x4865143b32cca9e6L    # 5.738257312884533E40
    .end array-data
.end method
