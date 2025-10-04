.class abstract Lcom/google/android/gms/internal/ads/zzgmk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgmi;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgmi;


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgmv;->zza(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgmk;->zza([BI)Lcom/google/android/gms/internal/ads/zzgmi;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmk;->zza:Lcom/google/android/gms/internal/ads/zzgmi;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzgmk;->zza([BI)Lcom/google/android/gms/internal/ads/zzgmi;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgmk;->zzb:Lcom/google/android/gms/internal/ads/zzgmi;

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 26
    .line 27
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 28
    .line 29
    const/4 v1, 0x7

    .line 30
    new-array v1, v1, [J

    .line 31
    .line 32
    fill-array-data v1, :array_0

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    nop

    .line 47
    :array_0
    .array-data 8
        0x7685ef7346947945L    # 8.633976339741977E262
        -0x18f123a92c6c3c63L    # -2.6855489837786554E188
        -0x74abacbd9886c53eL    # -4.331708065089967E-254
        -0x1e621c1ff9acf662L    # -1.6809143762585506E162
        0x24d3be4b360f9cf8L
        0x1f0c648c0d3d7d14L    # 4.039056652877745E-159
        -0x4051032858079a94L    # -0.060522784475504604
    .end array-data
.end method


# virtual methods
.method public abstract zza([BI)Lcom/google/android/gms/internal/ads/zzgmi;
.end method

.method public final zzb(Ljava/nio/ByteBuffer;[B[B)[B
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x10

    .line 6
    .line 7
    if-lt v0, v1, :cond_4

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    new-array v2, v1, [B

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    add-int/lit8 v3, v3, -0x10

    .line 20
    .line 21
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    add-int/lit8 v3, v3, -0x10

    .line 35
    .line 36
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 37
    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    if-nez p3, :cond_0

    .line 41
    .line 42
    new-array p3, v3, [B

    .line 43
    .line 44
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzgmk;->zzb:Lcom/google/android/gms/internal/ads/zzgmi;

    .line 45
    .line 46
    invoke-virtual {v4, p2, v3}, Lcom/google/android/gms/internal/ads/zzgmi;->zzc([BI)Ljava/nio/ByteBuffer;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const/16 v4, 0x20

    .line 51
    .line 52
    new-array v4, v4, [B

    .line 53
    .line 54
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 55
    .line 56
    .line 57
    array-length v3, p3

    .line 58
    and-int/lit8 v5, v3, 0xf

    .line 59
    .line 60
    if-nez v5, :cond_1

    .line 61
    .line 62
    move v6, v3

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    add-int/lit8 v6, v3, 0x10

    .line 65
    .line 66
    sub-int/2addr v6, v5

    .line 67
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    rem-int/lit8 v7, v5, 0x10

    .line 72
    .line 73
    if-nez v7, :cond_2

    .line 74
    .line 75
    move v8, v5

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    add-int/lit8 v8, v5, 0x10

    .line 78
    .line 79
    sub-int/2addr v8, v7

    .line 80
    :goto_1
    add-int/2addr v8, v6

    .line 81
    add-int/2addr v1, v8

    .line 82
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 87
    .line 88
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v1, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 102
    .line 103
    .line 104
    int-to-long v6, v3

    .line 105
    invoke-virtual {v1, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 106
    .line 107
    .line 108
    int-to-long v5, v5

    .line 109
    invoke-virtual {v1, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 113
    .line 114
    .line 115
    move-result-object p3

    .line 116
    invoke-static {v4, p3}, Lcom/google/android/gms/internal/ads/zzgmn;->zza([B[B)[B

    .line 117
    .line 118
    .line 119
    move-result-object p3

    .line 120
    invoke-static {p3, v2}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    .line 121
    .line 122
    .line 123
    move-result p3
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    if-eqz p3, :cond_3

    .line 125
    .line 126
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 127
    .line 128
    .line 129
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzgmk;->zza:Lcom/google/android/gms/internal/ads/zzgmi;

    .line 130
    .line 131
    invoke-virtual {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzgmi;->zzd([BLjava/nio/ByteBuffer;)[B

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    return-object p1

    .line 136
    :cond_3
    :try_start_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 137
    .line 138
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 139
    .line 140
    const/4 p3, 0x3

    .line 141
    new-array p3, p3, [J

    .line 142
    .line 143
    fill-array-data p3, :array_0

    .line 144
    .line 145
    .line 146
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw p1
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 157
    :catch_0
    move-exception p1

    .line 158
    new-instance p2, Ljavax/crypto/AEADBadTagException;

    .line 159
    .line 160
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-direct {p2, p1}, Ljavax/crypto/AEADBadTagException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw p2

    .line 168
    :cond_4
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 169
    .line 170
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 171
    .line 172
    const/4 p3, 0x4

    .line 173
    new-array p3, p3, [J

    .line 174
    .line 175
    fill-array-data p3, :array_1

    .line 176
    .line 177
    .line 178
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw p1

    .line 189
    :array_0
    .array-data 8
        -0x2484f79ff3d84894L    # -4.796978637176506E132
        0x670b9f2829e56175L    # 2.4036864493222176E188
        0x3360ef1cd0fa08cdL    # 3.293148402752427E-61
    .end array-data

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
    .line 202
    .line 203
    .line 204
    .line 205
    :array_1
    .array-data 8
        0x235bfcc1945eb6abL
        0x69885f631e67d9dbL    # 2.3320030012570466E200
        -0x4156f65d2320a1bL    # -8.090088440453067E288
        0x13159453bbf79297L    # 9.780984031373226E-217
    .end array-data
.end method
