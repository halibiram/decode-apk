.class public final Lcom/google/android/gms/internal/ads/zzazw;
.super Lcom/google/android/gms/internal/ads/zzazr;
.source "SourceFile"


# instance fields
.field private zzb:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzazr;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/String;)[B
    .locals 9

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    array-length v0, p1

    .line 21
    const/4 v2, 0x4

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x1

    .line 24
    if-ne v0, v4, :cond_0

    .line 25
    .line 26
    aget-object p1, p1, v3

    .line 27
    .line 28
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazv;->zza(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    goto :goto_2

    .line 49
    :cond_0
    const/4 v5, 0x5

    .line 50
    if-ge v0, v5, :cond_2

    .line 51
    .line 52
    add-int/2addr v0, v0

    .line 53
    new-array v0, v0, [B

    .line 54
    .line 55
    const/4 v5, 0x0

    .line 56
    :goto_0
    array-length v6, p1

    .line 57
    if-ge v5, v6, :cond_1

    .line 58
    .line 59
    aget-object v6, p1, v5

    .line 60
    .line 61
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzazv;->zza(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    int-to-char v7, v6

    .line 66
    shr-int/lit8 v6, v6, 0x10

    .line 67
    .line 68
    xor-int/2addr v6, v7

    .line 69
    int-to-byte v7, v6

    .line 70
    shr-int/lit8 v6, v6, 0x8

    .line 71
    .line 72
    int-to-byte v6, v6

    .line 73
    new-array v8, v1, [B

    .line 74
    .line 75
    aput-byte v7, v8, v3

    .line 76
    .line 77
    aput-byte v6, v8, v4

    .line 78
    .line 79
    aget-byte v7, v8, v3

    .line 80
    .line 81
    add-int v8, v5, v5

    .line 82
    .line 83
    aput-byte v7, v0, v8

    .line 84
    .line 85
    add-int/2addr v8, v4

    .line 86
    aput-byte v6, v0, v8

    .line 87
    .line 88
    add-int/2addr v5, v4

    .line 89
    goto :goto_0

    .line 90
    :cond_1
    move-object p1, v0

    .line 91
    goto :goto_2

    .line 92
    :cond_2
    new-array v0, v0, [B

    .line 93
    .line 94
    const/4 v1, 0x0

    .line 95
    :goto_1
    array-length v5, p1

    .line 96
    if-ge v1, v5, :cond_1

    .line 97
    .line 98
    aget-object v5, p1, v1

    .line 99
    .line 100
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzazv;->zza(Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    and-int/lit16 v6, v5, 0xff

    .line 105
    .line 106
    shr-int/lit8 v7, v5, 0x8

    .line 107
    .line 108
    shr-int/lit8 v8, v5, 0x10

    .line 109
    .line 110
    shr-int/lit8 v5, v5, 0x18

    .line 111
    .line 112
    and-int/lit16 v7, v7, 0xff

    .line 113
    .line 114
    xor-int/2addr v6, v7

    .line 115
    and-int/lit16 v7, v8, 0xff

    .line 116
    .line 117
    xor-int/2addr v6, v7

    .line 118
    xor-int/2addr v5, v6

    .line 119
    int-to-byte v5, v5

    .line 120
    aput-byte v5, v0, v1

    .line 121
    .line 122
    add-int/2addr v1, v4

    .line 123
    goto :goto_1

    .line 124
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzazr;->zza()Ljava/security/MessageDigest;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzazw;->zzb:Ljava/security/MessageDigest;

    .line 129
    .line 130
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazr;->zza:Ljava/lang/Object;

    .line 131
    .line 132
    monitor-enter v0

    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazw;->zzb:Ljava/security/MessageDigest;

    .line 134
    .line 135
    if-nez v1, :cond_3

    .line 136
    .line 137
    new-array p1, v3, [B

    .line 138
    .line 139
    monitor-exit v0

    .line 140
    return-object p1

    .line 141
    :catchall_0
    move-exception p1

    .line 142
    goto :goto_4

    .line 143
    :cond_3
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 144
    .line 145
    .line 146
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazw;->zzb:Ljava/security/MessageDigest;

    .line 147
    .line 148
    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 149
    .line 150
    .line 151
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzazw;->zzb:Ljava/security/MessageDigest;

    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    array-length v1, p1

    .line 158
    if-le v1, v2, :cond_4

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_4
    move v2, v1

    .line 162
    :goto_3
    new-array v1, v2, [B

    .line 163
    .line 164
    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    .line 166
    .line 167
    monitor-exit v0

    .line 168
    return-object v1

    .line 169
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    throw p1

    .line 171
    :array_0
    .array-data 8
        0x54a83a4c564ea125L    # 6.624014265452484E99
        -0xa1ce07d6046af5bL    # -7.350625117031365E259
    .end array-data
.end method
