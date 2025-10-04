.class public final Lcom/google/android/gms/internal/ads/zzgmg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Ljava/lang/ThreadLocal;


# instance fields
.field private final zzb:Ljavax/crypto/SecretKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgmf;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgmf;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgmg;->zza:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x2

    .line 5
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgmv;->zza(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    array-length v0, p1

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgxo;->zza(I)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    new-array p2, p2, [J

    .line 18
    .line 19
    fill-array-data p2, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v0, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    .line 30
    .line 31
    invoke-direct {v0, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmg;->zzb:Ljavax/crypto/SecretKey;

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 38
    .line 39
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    const/16 v0, 0xb

    .line 42
    .line 43
    new-array v0, v0, [J

    .line 44
    .line 45
    fill-array-data v0, :array_1

    .line 46
    .line 47
    .line 48
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :array_0
    .array-data 8
        -0x3916d591c4b066e0L
        -0x81f34082740b2a9L    # -2.773009836740412E269
    .end array-data

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    :array_1
    .array-data 8
        0x4fd8f6112987f727L    # 4.5161084773193666E76
        -0x3cd036c7d7835f39L    # -4.4734836563190755E15
        0x7b98ce60caae8f76L    # 2.360779899760514E287
        -0x2bd1ecb7fb237856L    # -3.2120244324913976E97
        -0x61267ecbfe8cb162L    # -4.535263569516353E-160
        0x79e0c78d14f4f826L
        0x3d9ac77c0542b5f4L    # 6.0888933497606744E-12
        -0x7758add02ccabff3L    # -5.650434052094433E-267
        0x45357d25b12be6fbL    # 2.597843331834818E25
        -0x163a5310df1e60dL    # -7.595581697385202E301
        -0x2d61ed0d69f8f013L    # -9.572163845615884E89
    .end array-data
.end method


# virtual methods
.method public final zza([B[B[B)[B
    .locals 7

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    array-length v2, p1

    .line 4
    const/16 v3, 0xc

    .line 5
    .line 6
    if-ne v2, v3, :cond_3

    .line 7
    .line 8
    array-length v2, p2

    .line 9
    const/16 v4, 0x1c

    .line 10
    .line 11
    if-lt v2, v4, :cond_2

    .line 12
    .line 13
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    const/4 v5, 0x0

    .line 18
    invoke-static {p2, v5, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_1

    .line 27
    .line 28
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    new-array v1, v1, [J

    .line 31
    .line 32
    fill-array-data v1, :array_0

    .line 33
    .line 34
    .line 35
    invoke-direct {v4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 47
    .line 48
    new-array v0, v0, [J

    .line 49
    .line 50
    fill-array-data v0, :array_1

    .line 51
    .line 52
    .line 53
    invoke-direct {v4, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v1, v0}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    new-instance v0, Ljavax/crypto/spec/GCMParameterSpec;

    .line 64
    .line 65
    const/16 v1, 0x80

    .line 66
    .line 67
    invoke-direct {v0, v1, p1, v5, v3}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[BII)V

    .line 68
    .line 69
    .line 70
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgmg;->zza:Ljava/lang/ThreadLocal;

    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Ljavax/crypto/Cipher;

    .line 77
    .line 78
    const/4 v4, 0x2

    .line 79
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzgmg;->zzb:Ljavax/crypto/SecretKey;

    .line 80
    .line 81
    invoke-virtual {v1, v4, v5, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 82
    .line 83
    .line 84
    if-eqz p3, :cond_0

    .line 85
    .line 86
    array-length v0, p3

    .line 87
    if-eqz v0, :cond_0

    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Ljavax/crypto/Cipher;

    .line 94
    .line 95
    invoke-virtual {v0, p3}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 96
    .line 97
    .line 98
    :cond_0
    add-int/lit8 v2, v2, -0xc

    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    check-cast p1, Ljavax/crypto/Cipher;

    .line 105
    .line 106
    invoke-virtual {p1, p2, v3, v2}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    return-object p1

    .line 111
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 112
    .line 113
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 114
    .line 115
    const/4 p3, 0x5

    .line 116
    new-array p3, p3, [J

    .line 117
    .line 118
    fill-array-data p3, :array_2

    .line 119
    .line 120
    .line 121
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw p1

    .line 132
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 133
    .line 134
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 135
    .line 136
    new-array p3, v0, [J

    .line 137
    .line 138
    fill-array-data p3, :array_3

    .line 139
    .line 140
    .line 141
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw p1

    .line 152
    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 153
    .line 154
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 155
    .line 156
    new-array p3, v1, [J

    .line 157
    .line 158
    fill-array-data p3, :array_4

    .line 159
    .line 160
    .line 161
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    throw p1

    .line 172
    nop

    .line 173
    :array_0
    .array-data 8
        -0x8d0e96de0746834L
        0x400ed1a022aaa301L    # 3.852356215317173
        -0x13726d45edfb9de2L    # -7.964610407665182E214
    .end array-data

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
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    :array_1
    .array-data 8
        0x29765c94deae25e2L    # 5.950937066666981E-109
        -0x297df04c4cbcbb79L    # -5.302227016219641E108
        0x3d2ba58188fc3d36L    # 4.911006321384147E-14
        -0x687950a91537202cL
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
    .line 206
    .line 207
    .line 208
    .line 209
    :array_2
    .array-data 8
        0x2ccb3cb6150cb11eL    # 6.528795485582006E-93
        -0x4a122f8a972c142bL    # -6.3749268998840465E-49
        0x3e0eef30dde3d58cL    # 9.003077691173027E-10
        0x5405dbf740e99c1cL    # 5.8363820680595675E96
        0x4da6a119d0f89611L    # 1.19157173016201E66
    .end array-data

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
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    :array_3
    .array-data 8
        -0xf837f998e5c7b49L    # -7.07987079681477E233
        -0x796a909210d79c6L
        -0x5d3f4d3287446ab7L    # -2.73872322167191E-141
        0xe18a0c3a6dbaa2dL    # 9.233627812779907E-241
    .end array-data

    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    :array_4
    .array-data 8
        -0x2385f68b941b637bL    # -3.0279441517711994E137
        -0x5f76ef6b6950e9e4L
        0x50038f0511e5f8beL    # 2.8309242382768125E77
    .end array-data
.end method
