.class public final Lcom/google/android/gms/internal/ads/zzgwr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgfs;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgxj;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzggp;

.field private final zzc:I

.field private final zzd:[B


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzgxj;Lcom/google/android/gms/internal/ads/zzggp;I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgwr;->zza:Lcom/google/android/gms/internal/ads/zzgxj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgwr;->zzb:Lcom/google/android/gms/internal/ads/zzggp;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzgwr;->zzc:I

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgwr;->zzd:[B

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzghp;)Lcom/google/android/gms/internal/ads/zzgfs;
    .locals 10

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgwr;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgwk;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzghp;->zzc()Lcom/google/android/gms/internal/ads/zzgxr;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggb;->zza()Lcom/google/android/gms/internal/ads/zzghc;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzgxr;->zzd(Lcom/google/android/gms/internal/ads/zzghc;)[B

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzghp;->zza()Lcom/google/android/gms/internal/ads/zzghz;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzghz;->zzd()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgwk;-><init>([BI)V

    .line 26
    .line 27
    .line 28
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgxn;

    .line 29
    .line 30
    new-instance v3, Lcom/google/android/gms/internal/ads/zzgxm;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzghp;->zza()Lcom/google/android/gms/internal/ads/zzghz;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzghz;->zzf()Lcom/google/android/gms/internal/ads/zzghw;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzghp;->zzd()Lcom/google/android/gms/internal/ads/zzgxr;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggb;->zza()Lcom/google/android/gms/internal/ads/zzghc;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzgxr;->zzd(Lcom/google/android/gms/internal/ads/zzghc;)[B

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    const/4 v8, 0x2

    .line 61
    new-array v9, v8, [J

    .line 62
    .line 63
    fill-array-data v9, :array_0

    .line 64
    .line 65
    .line 66
    invoke-direct {v7, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 74
    .line 75
    .line 76
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 77
    .line 78
    new-array v7, v8, [J

    .line 79
    .line 80
    fill-array-data v7, :array_1

    .line 81
    .line 82
    .line 83
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzgxm;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzghp;->zza()Lcom/google/android/gms/internal/ads/zzghz;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzghz;->zze()I

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgxn;-><init>(Lcom/google/android/gms/internal/ads/zzgse;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzghp;->zza()Lcom/google/android/gms/internal/ads/zzghz;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzghz;->zze()I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzghp;->zzb()Lcom/google/android/gms/internal/ads/zzgxq;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxq;->zzc()[B

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/android/gms/internal/ads/zzgwr;-><init>(Lcom/google/android/gms/internal/ads/zzgxj;Lcom/google/android/gms/internal/ads/zzggp;I[B)V

    .line 125
    .line 126
    .line 127
    return-object v0

    .line 128
    nop

    .line 129
    :array_0
    .array-data 8
        0x48a70346d44af799L    # 1.0023487858892012E42
        -0x32751e398e2e08caL    # -3.538747628656759E65
    .end array-data

    .line 130
    .line 131
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
    :array_1
    .array-data 8
        -0x3eed1f69f21f6ca8L    # -309285.5135520003
        0x15b71077649495f6L    # 4.597731834106571E-204
    .end array-data
.end method


# virtual methods
.method public final zza([B[B)[B
    .locals 9

    .line 1
    const/4 v0, 0x7

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x0

    .line 4
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgwr;->zzd:[B

    .line 5
    .line 6
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzgwr;->zzc:I

    .line 7
    .line 8
    array-length v5, v3

    .line 9
    array-length v6, p1

    .line 10
    add-int/2addr v4, v5

    .line 11
    if-lt v6, v4, :cond_3

    .line 12
    .line 13
    invoke-static {v3, p1}, Lcom/google/android/gms/internal/ads/zzgpm;->zzb([B[B)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwr;->zzd:[B

    .line 20
    .line 21
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzgwr;->zzc:I

    .line 22
    .line 23
    sub-int v3, v6, v3

    .line 24
    .line 25
    array-length v0, v0

    .line 26
    invoke-static {p1, v0, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzgwr;->zzc:I

    .line 31
    .line 32
    sub-int v3, v6, v3

    .line 33
    .line 34
    invoke-static {p1, v3, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-nez p2, :cond_0

    .line 39
    .line 40
    new-array p2, v2, [B

    .line 41
    .line 42
    :cond_0
    const/16 v3, 0x8

    .line 43
    .line 44
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    array-length v5, p2

    .line 49
    int-to-long v5, v5

    .line 50
    const-wide/16 v7, 0x8

    .line 51
    .line 52
    mul-long v5, v5, v7

    .line 53
    .line 54
    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzgwr;->zzb:Lcom/google/android/gms/internal/ads/zzggp;

    .line 67
    .line 68
    new-array v5, v1, [[B

    .line 69
    .line 70
    aput-object p2, v5, v2

    .line 71
    .line 72
    const/4 p2, 0x1

    .line 73
    aput-object v0, v5, p2

    .line 74
    .line 75
    const/4 p2, 0x2

    .line 76
    aput-object v3, v5, p2

    .line 77
    .line 78
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgwp;->zzb([[B)[B

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    check-cast v4, Lcom/google/android/gms/internal/ads/zzgxn;

    .line 83
    .line 84
    invoke-virtual {v4, p2}, Lcom/google/android/gms/internal/ads/zzgxn;->zzc([B)[B

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-static {p2, p1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_1

    .line 93
    .line 94
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgwr;->zza:Lcom/google/android/gms/internal/ads/zzgxj;

    .line 95
    .line 96
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzgxj;->zza([B)[B

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    return-object p1

    .line 101
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 102
    .line 103
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 104
    .line 105
    new-array v0, v1, [J

    .line 106
    .line 107
    fill-array-data v0, :array_0

    .line 108
    .line 109
    .line 110
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p1

    .line 121
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 122
    .line 123
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 124
    .line 125
    new-array v0, v0, [J

    .line 126
    .line 127
    fill-array-data v0, :array_1

    .line 128
    .line 129
    .line 130
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw p1

    .line 141
    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 142
    .line 143
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 144
    .line 145
    new-array v0, v0, [J

    .line 146
    .line 147
    fill-array-data v0, :array_2

    .line 148
    .line 149
    .line 150
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw p1

    .line 161
    :array_0
    .array-data 8
        0x4dd1e0e1da640ddL
        0x4321eba68690b426L    # 2.522087529404947E15
        -0x3f06fd6bcee52b68L    # -102441.26198847813
    .end array-data

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
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    :array_1
    .array-data 8
        -0x63f074f91b7c8a0fL
        -0xf42f4696460688fL    # -1.1543885381473293E235
        0x2cc86b2c1a3df1abL    # 5.853193086188872E-93
        -0x164cdb3ebff8732fL    # -1.4653458439475846E201
        0x719ee3da9d6c0342L
        0x52dd1ac4814ac63aL    # 1.4821759421981206E91
        -0x7415dbb790551a9bL
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
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    :array_2
    .array-data 8
        0x31465cc20f6850adL    # 2.531326742333578E-71
        -0x436fe5375b34a07cL    # -5.58741389278449E-17
        0x291f9fef15602809L
        0x2179b9754fed0b11L
        -0xa2a3743eed7d67bL    # -4.186742913550352E259
        0x79a910127fa66eb6L    # 1.11069622648194E278
        0x6361655aeb4c72ebL    # 5.252123441039014E170
    .end array-data
.end method
