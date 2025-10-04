.class public final Lcom/google/android/gms/internal/ads/zzgix;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzgji;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zzb:Lcom/google/android/gms/internal/ads/zzgxr;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zzc:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgix;->zza:Lcom/google/android/gms/internal/ads/zzgji;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgix;->zzb:Lcom/google/android/gms/internal/ads/zzgxr;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgix;->zzc:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgiw;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgix;->zza:Lcom/google/android/gms/internal/ads/zzgji;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgix;->zzb:Lcom/google/android/gms/internal/ads/zzgxr;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgix;->zzc:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgix;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgix;->zzc:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgxr;)Lcom/google/android/gms/internal/ads/zzgix;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgix;->zzb:Lcom/google/android/gms/internal/ads/zzgxr;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzgji;)Lcom/google/android/gms/internal/ads/zzgix;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgix;->zza:Lcom/google/android/gms/internal/ads/zzgji;

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzgiz;
    .locals 7

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgix;->zza:Lcom/google/android/gms/internal/ads/zzgji;

    .line 4
    .line 5
    if-eqz v1, :cond_8

    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgix;->zzb:Lcom/google/android/gms/internal/ads/zzgxr;

    .line 8
    .line 9
    if-eqz v2, :cond_8

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgji;->zzb()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgxr;->zza()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-ne v3, v2, :cond_7

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgji;->zza()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgix;->zzc:Ljava/lang/Integer;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 33
    .line 34
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    new-array v0, v0, [J

    .line 37
    .line 38
    fill-array-data v0, :array_0

    .line 39
    .line 40
    .line 41
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v1

    .line 52
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgix;->zza:Lcom/google/android/gms/internal/ads/zzgji;

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgji;->zza()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_3

    .line 59
    .line 60
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgix;->zzc:Ljava/lang/Integer;

    .line 61
    .line 62
    if-nez v1, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 66
    .line 67
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 68
    .line 69
    new-array v0, v0, [J

    .line 70
    .line 71
    fill-array-data v0, :array_1

    .line 72
    .line 73
    .line 74
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw v1

    .line 85
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgix;->zza:Lcom/google/android/gms/internal/ads/zzgji;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgji;->zzd()Lcom/google/android/gms/internal/ads/zzgjg;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgjg;->zzc:Lcom/google/android/gms/internal/ads/zzgjg;

    .line 92
    .line 93
    const/4 v2, 0x0

    .line 94
    if-ne v0, v1, :cond_4

    .line 95
    .line 96
    new-array v0, v2, [B

    .line 97
    .line 98
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgxq;->zzb([B)Lcom/google/android/gms/internal/ads/zzgxq;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    :goto_2
    move-object v4, v0

    .line 103
    goto :goto_3

    .line 104
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgix;->zza:Lcom/google/android/gms/internal/ads/zzgji;

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgji;->zzd()Lcom/google/android/gms/internal/ads/zzgjg;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgjg;->zzb:Lcom/google/android/gms/internal/ads/zzgjg;

    .line 111
    .line 112
    const/4 v3, 0x5

    .line 113
    if-ne v0, v1, :cond_5

    .line 114
    .line 115
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgix;->zzc:Ljava/lang/Integer;

    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgxq;->zzb([B)Lcom/google/android/gms/internal/ads/zzgxq;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    goto :goto_2

    .line 142
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgix;->zza:Lcom/google/android/gms/internal/ads/zzgji;

    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgji;->zzd()Lcom/google/android/gms/internal/ads/zzgjg;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgjg;->zza:Lcom/google/android/gms/internal/ads/zzgjg;

    .line 149
    .line 150
    if-ne v0, v1, :cond_6

    .line 151
    .line 152
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    const/4 v1, 0x1

    .line 157
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgix;->zzc:Ljava/lang/Integer;

    .line 162
    .line 163
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgxq;->zzb([B)Lcom/google/android/gms/internal/ads/zzgxq;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    goto :goto_2

    .line 180
    :goto_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgiz;

    .line 181
    .line 182
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgix;->zza:Lcom/google/android/gms/internal/ads/zzgji;

    .line 183
    .line 184
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgix;->zzb:Lcom/google/android/gms/internal/ads/zzgxr;

    .line 185
    .line 186
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzgix;->zzc:Ljava/lang/Integer;

    .line 187
    .line 188
    const/4 v6, 0x0

    .line 189
    move-object v1, v0

    .line 190
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgiz;-><init>(Lcom/google/android/gms/internal/ads/zzgji;Lcom/google/android/gms/internal/ads/zzgxr;Lcom/google/android/gms/internal/ads/zzgxq;Ljava/lang/Integer;Lcom/google/android/gms/internal/ads/zzgiy;)V

    .line 191
    .line 192
    .line 193
    return-object v0

    .line 194
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 195
    .line 196
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgix;->zza:Lcom/google/android/gms/internal/ads/zzgji;

    .line 197
    .line 198
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgji;->zzd()Lcom/google/android/gms/internal/ads/zzgjg;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 207
    .line 208
    const/4 v3, 0x6

    .line 209
    new-array v3, v3, [J

    .line 210
    .line 211
    fill-array-data v3, :array_2

    .line 212
    .line 213
    .line 214
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw v0

    .line 229
    :cond_7
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 230
    .line 231
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 232
    .line 233
    const/4 v2, 0x4

    .line 234
    new-array v2, v2, [J

    .line 235
    .line 236
    fill-array-data v2, :array_3

    .line 237
    .line 238
    .line 239
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    throw v0

    .line 250
    :cond_8
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 251
    .line 252
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 253
    .line 254
    const/16 v2, 0x8

    .line 255
    .line 256
    new-array v2, v2, [J

    .line 257
    .line 258
    fill-array-data v2, :array_4

    .line 259
    .line 260
    .line 261
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    throw v0

    .line 272
    nop

    .line 273
    :array_0
    .array-data 8
        -0x33524568e8f79b4aL    # -2.388622446081103E61
        0x4b6cbbd096053f67L    # 2.2017096413630542E55
        -0x66000d01509869aaL
        0x26a1833280781f02L
        -0x422f03090f46f978L    # -6.180250424332819E-11
        -0x6f318fe24caf8852L
        0x7fcb2507626b17f9L    # 3.812323440400958E307
        -0x2887f2fe2d597e9bL    # -2.3135989447973432E113
        -0x3abb41feacf94198L    # -5.01515809069208E25
        -0x467ded351eaac8eL
        -0x5dafea1b8b38ba36L    # -2.061090693907886E-143
    .end array-data

    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    :array_1
    .array-data 8
        0x47bf87cc166eda0dL    # 4.191116733412027E37
        0x727a3e5e6d4d6ab7L    # 2.7998862807937718E243
        -0x4414d5c6b40483e0L    # -4.6019192925274124E-20
        -0x3e37d7d71fa69b52L    # -8.10570176698385E8
        -0x47420c4990158580L    # -2.2533382245407733E-35
        -0x4069e8947baf8a5fL    # -0.021573715163062727
        0x163a958339aa98aaL
        -0x489d9055a35ac40bL    # -6.613659983866109E-42
        0x1cec2b2c1858f37fL    # 2.332482283961199E-169
        0x4867ce60da5a658cL    # 6.480654636431162E40
        0x31edadb5bc503b73L    # 3.440121131542322E-68
    .end array-data

    :array_2
    .array-data 8
        0x19df992b28f444f7L    # 4.647790929324716E-184
        -0xd43d41b87652dc9L    # -4.808900304688283E244
        0x4ce951599aaa1d77L    # 3.2547274747686773E62
        -0x6c92eac2db76cbd8L
        0x13f61ab2101f2729L
        -0x362dad8be4e82fd3L    # -4.184024369022151E47
    .end array-data

    :array_3
    .array-data 8
        -0x1998276b0b58371fL    # -2.0264845969505833E185
        -0x20b34868925b5be2L    # -1.175030792191816E151
        0x6a6d99fdc4c85038L    # 4.640461878633074E204
        0x24981fab792ef9b9L
    .end array-data

    :array_4
    .array-data 8
        0x1f4efa2090c8cf57L    # 7.050703855542558E-158
        0x5b6f7b882009291cL    # 2.7933024251313984E132
        -0x32b3396c90c28dfbL    # -2.3675262191128408E64
        0xaf7f1807ef02e6bL
        0x1599793fb653a520L
        0x2cfc6d5a3e9e1a6eL    # 5.451233473301339E-92
        0x762802e4a296ed98L    # 1.4767329100018183E261
        0x15d8487b2a8ea9b9L
    .end array-data
.end method
