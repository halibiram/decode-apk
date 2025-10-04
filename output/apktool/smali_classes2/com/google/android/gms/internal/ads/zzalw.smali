.class public final Lcom/google/android/gms/internal/ads/zzalw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzakr;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfp;

.field private final zzb:Z

.field private final zzc:I

.field private final zzd:I

.field private final zze:Ljava/lang/String;

.field private final zzf:F

.field private final zzg:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 10

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfp;

    .line 7
    .line 8
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzfp;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzalw;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const v3, 0x3f59999a    # 0.85f

    .line 18
    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x1

    .line 22
    if-ne v2, v5, :cond_4

    .line 23
    .line 24
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, [B

    .line 29
    .line 30
    array-length v2, v2

    .line 31
    const/16 v6, 0x30

    .line 32
    .line 33
    if-eq v2, v6, :cond_0

    .line 34
    .line 35
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, [B

    .line 40
    .line 41
    array-length v2, v2

    .line 42
    const/16 v6, 0x35

    .line 43
    .line 44
    if-ne v2, v6, :cond_4

    .line 45
    .line 46
    :cond_0
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, [B

    .line 51
    .line 52
    const/16 v2, 0x18

    .line 53
    .line 54
    aget-byte v6, p1, v2

    .line 55
    .line 56
    iput v6, p0, Lcom/google/android/gms/internal/ads/zzalw;->zzc:I

    .line 57
    .line 58
    const/16 v6, 0x1a

    .line 59
    .line 60
    aget-byte v6, p1, v6

    .line 61
    .line 62
    and-int/lit16 v6, v6, 0xff

    .line 63
    .line 64
    const/16 v7, 0x1b

    .line 65
    .line 66
    aget-byte v7, p1, v7

    .line 67
    .line 68
    and-int/lit16 v7, v7, 0xff

    .line 69
    .line 70
    const/16 v8, 0x1c

    .line 71
    .line 72
    aget-byte v8, p1, v8

    .line 73
    .line 74
    and-int/lit16 v8, v8, 0xff

    .line 75
    .line 76
    const/16 v9, 0x1d

    .line 77
    .line 78
    aget-byte v9, p1, v9

    .line 79
    .line 80
    and-int/lit16 v9, v9, 0xff

    .line 81
    .line 82
    shl-int/lit8 v2, v6, 0x18

    .line 83
    .line 84
    shl-int/lit8 v6, v7, 0x10

    .line 85
    .line 86
    or-int/2addr v2, v6

    .line 87
    shl-int/lit8 v6, v8, 0x8

    .line 88
    .line 89
    or-int/2addr v2, v6

    .line 90
    or-int/2addr v2, v9

    .line 91
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzalw;->zzd:I

    .line 92
    .line 93
    array-length v2, p1

    .line 94
    add-int/lit8 v2, v2, -0x2b

    .line 95
    .line 96
    const/16 v6, 0x2b

    .line 97
    .line 98
    invoke-static {p1, v6, v2}, Lcom/google/android/gms/internal/ads/zzfy;->zzA([BII)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 103
    .line 104
    new-array v7, v1, [J

    .line 105
    .line 106
    fill-array-data v7, :array_0

    .line 107
    .line 108
    .line 109
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-eq v5, v2, :cond_1

    .line 121
    .line 122
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 123
    .line 124
    new-array v0, v0, [J

    .line 125
    .line 126
    fill-array-data v0, :array_1

    .line 127
    .line 128
    .line 129
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    goto :goto_0

    .line 137
    :cond_1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 138
    .line 139
    new-array v1, v1, [J

    .line 140
    .line 141
    fill-array-data v1, :array_2

    .line 142
    .line 143
    .line 144
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzalw;->zze:Ljava/lang/String;

    .line 152
    .line 153
    const/16 v0, 0x19

    .line 154
    .line 155
    aget-byte v0, p1, v0

    .line 156
    .line 157
    mul-int/lit8 v0, v0, 0x14

    .line 158
    .line 159
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzalw;->zzg:I

    .line 160
    .line 161
    aget-byte v1, p1, v4

    .line 162
    .line 163
    and-int/lit8 v1, v1, 0x20

    .line 164
    .line 165
    if-eqz v1, :cond_2

    .line 166
    .line 167
    const/4 v4, 0x1

    .line 168
    :cond_2
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzalw;->zzb:Z

    .line 169
    .line 170
    if-eqz v4, :cond_3

    .line 171
    .line 172
    const/16 v1, 0xa

    .line 173
    .line 174
    aget-byte v1, p1, v1

    .line 175
    .line 176
    and-int/lit16 v1, v1, 0xff

    .line 177
    .line 178
    shl-int/lit8 v1, v1, 0x8

    .line 179
    .line 180
    const/16 v2, 0xb

    .line 181
    .line 182
    aget-byte p1, p1, v2

    .line 183
    .line 184
    and-int/lit16 p1, p1, 0xff

    .line 185
    .line 186
    int-to-float v0, v0

    .line 187
    or-int/2addr p1, v1

    .line 188
    int-to-float p1, p1

    .line 189
    div-float/2addr p1, v0

    .line 190
    const v0, 0x3f733333    # 0.95f

    .line 191
    .line 192
    .line 193
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    .line 194
    .line 195
    .line 196
    move-result p1

    .line 197
    const/4 v0, 0x0

    .line 198
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzalw;->zzf:F

    .line 203
    .line 204
    return-void

    .line 205
    :cond_3
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzalw;->zzf:F

    .line 206
    .line 207
    return-void

    .line 208
    :cond_4
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzalw;->zzc:I

    .line 209
    .line 210
    const/4 p1, -0x1

    .line 211
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzalw;->zzd:I

    .line 212
    .line 213
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 214
    .line 215
    new-array v0, v0, [J

    .line 216
    .line 217
    fill-array-data v0, :array_3

    .line 218
    .line 219
    .line 220
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzalw;->zze:Ljava/lang/String;

    .line 228
    .line 229
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzalw;->zzb:Z

    .line 230
    .line 231
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzalw;->zzf:F

    .line 232
    .line 233
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzalw;->zzg:I

    .line 234
    .line 235
    return-void

    .line 236
    nop

    .line 237
    :array_0
    .array-data 8
        -0x68e1b59003818d61L
        -0x10ba6acb8199e473L    # -1.0225749980843645E228
    .end array-data

    .line 238
    :array_1
    .array-data 8
        0x1eb22dea506d4ef2L    # 8.081664788737484E-161
        -0x6e7ef3958bb3811fL
        0x3195449bba28a21L
    .end array-data

    :array_2
    .array-data 8
        -0x61bcd3f19e816896L    # -6.65858447648586E-163
        0x1d45673ffba34b3bL    # 1.134262488239198E-167
    .end array-data

    :array_3
    .array-data 8
        -0x1c36b2f5de725451L    # -4.888820795637146E172
        -0xeb79ff355a22e6dL    # -4.960148329547038E237
        0x69e3a735a0027604L    # 1.2034818417351286E202
    .end array-data
.end method

.method private static zzb(Landroid/text/SpannableStringBuilder;IIIII)V
    .locals 1

    .line 1
    if-eq p1, p2, :cond_0

    .line 2
    .line 3
    and-int/lit16 p2, p1, 0xff

    .line 4
    .line 5
    shl-int/lit8 p2, p2, 0x18

    .line 6
    .line 7
    ushr-int/lit8 p1, p1, 0x8

    .line 8
    .line 9
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 10
    .line 11
    or-int/2addr p1, p2

    .line 12
    invoke-direct {v0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 13
    .line 14
    .line 15
    or-int/lit8 p1, p5, 0x21

    .line 16
    .line 17
    invoke-virtual {p0, v0, p3, p4, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method private static zzc(Landroid/text/SpannableStringBuilder;IIIII)V
    .locals 4

    .line 1
    if-eq p1, p2, :cond_4

    .line 2
    .line 3
    or-int/lit8 p2, p5, 0x21

    .line 4
    .line 5
    and-int/lit8 p5, p1, 0x1

    .line 6
    .line 7
    and-int/lit8 v0, p1, 0x2

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz p5, :cond_2

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Landroid/text/style/StyleSpan;

    .line 16
    .line 17
    const/4 v3, 0x3

    .line 18
    invoke-direct {v0, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Landroid/text/style/StyleSpan;

    .line 26
    .line 27
    invoke-direct {v0, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 31
    .line 32
    .line 33
    :cond_1
    const/4 v2, 0x0

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    if-eqz v0, :cond_1

    .line 36
    .line 37
    new-instance v0, Landroid/text/style/StyleSpan;

    .line 38
    .line 39
    const/4 v3, 0x2

    .line 40
    invoke-direct {v0, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 44
    .line 45
    .line 46
    :goto_0
    and-int/lit8 p1, p1, 0x4

    .line 47
    .line 48
    if-nez p1, :cond_3

    .line 49
    .line 50
    if-nez p5, :cond_4

    .line 51
    .line 52
    if-nez v2, :cond_4

    .line 53
    .line 54
    new-instance p1, Landroid/text/style/StyleSpan;

    .line 55
    .line 56
    invoke-direct {p1, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_3
    new-instance p1, Landroid/text/style/UnderlineSpan;

    .line 64
    .line 65
    invoke-direct {p1}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 69
    .line 70
    .line 71
    :cond_4
    return-void
.end method


# virtual methods
.method public final zza([BIILcom/google/android/gms/internal/ads/zzakq;Lcom/google/android/gms/internal/ads/zzep;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p5

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    const/4 v4, 0x3

    .line 9
    add-int v5, v1, p3

    .line 10
    .line 11
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzalw;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 12
    .line 13
    move-object/from16 v7, p1

    .line 14
    .line 15
    invoke-virtual {v6, v7, v5}, Lcom/google/android/gms/internal/ads/zzfp;->zzI([BI)V

    .line 16
    .line 17
    .line 18
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzalw;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 19
    .line 20
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 21
    .line 22
    .line 23
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzalw;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzb()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    const/4 v6, 0x1

    .line 30
    const/4 v7, 0x0

    .line 31
    const/4 v8, 0x2

    .line 32
    if-lt v5, v8, :cond_0

    .line 33
    .line 34
    const/4 v5, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v5, 0x0

    .line 37
    :goto_0
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzek;->zzd(Z)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzq()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-nez v5, :cond_1

    .line 45
    .line 46
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 47
    .line 48
    new-array v5, v6, [J

    .line 49
    .line 50
    const-wide v9, -0x78c1dd1886913301L    # -8.704313541350333E-274

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    aput-wide v9, v5, v7

    .line 56
    .line 57
    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    goto :goto_2

    .line 65
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzd()I

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzB()Ljava/nio/charset/Charset;

    .line 70
    .line 71
    .line 72
    move-result-object v10

    .line 73
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzd()I

    .line 74
    .line 75
    .line 76
    move-result v11

    .line 77
    sub-int/2addr v11, v9

    .line 78
    if-eqz v10, :cond_2

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    sget-object v10, Lcom/google/android/gms/internal/ads/zzfwq;->zzc:Ljava/nio/charset/Charset;

    .line 82
    .line 83
    :goto_1
    sub-int/2addr v5, v11

    .line 84
    invoke-virtual {v1, v5, v10}, Lcom/google/android/gms/internal/ads/zzfp;->zzA(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-eqz v5, :cond_3

    .line 93
    .line 94
    new-instance v1, Lcom/google/android/gms/internal/ads/zzakj;

    .line 95
    .line 96
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgaa;->zzl()Lcom/google/android/gms/internal/ads/zzgaa;

    .line 97
    .line 98
    .line 99
    move-result-object v10

    .line 100
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    move-object v9, v1

    .line 106
    move-wide v11, v13

    .line 107
    invoke-direct/range {v9 .. v14}, Lcom/google/android/gms/internal/ads/zzakj;-><init>(Ljava/util/List;JJ)V

    .line 108
    .line 109
    .line 110
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzep;->zza(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_3
    new-instance v5, Landroid/text/SpannableStringBuilder;

    .line 115
    .line 116
    invoke-direct {v5, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzalw;->zzc:I

    .line 120
    .line 121
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    .line 122
    .line 123
    .line 124
    move-result v19

    .line 125
    const/high16 v20, 0xff0000

    .line 126
    .line 127
    const/16 v17, 0x0

    .line 128
    .line 129
    const/16 v18, 0x0

    .line 130
    .line 131
    move-object v15, v5

    .line 132
    move/from16 v16, v1

    .line 133
    .line 134
    invoke-static/range {v15 .. v20}, Lcom/google/android/gms/internal/ads/zzalw;->zzc(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 135
    .line 136
    .line 137
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzalw;->zzd:I

    .line 138
    .line 139
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    .line 140
    .line 141
    .line 142
    move-result v19

    .line 143
    const/16 v17, -0x1

    .line 144
    .line 145
    move/from16 v16, v1

    .line 146
    .line 147
    invoke-static/range {v15 .. v20}, Lcom/google/android/gms/internal/ads/zzalw;->zzb(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 148
    .line 149
    .line 150
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzalw;->zze:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    .line 153
    .line 154
    .line 155
    move-result v9

    .line 156
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 157
    .line 158
    new-array v11, v4, [J

    .line 159
    .line 160
    fill-array-data v11, :array_0

    .line 161
    .line 162
    .line 163
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v10

    .line 170
    if-eq v1, v10, :cond_4

    .line 171
    .line 172
    new-instance v10, Landroid/text/style/TypefaceSpan;

    .line 173
    .line 174
    invoke-direct {v10, v1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    const v1, 0xff0021

    .line 178
    .line 179
    .line 180
    invoke-virtual {v5, v10, v7, v9, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 181
    .line 182
    .line 183
    :cond_4
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzalw;->zzf:F

    .line 184
    .line 185
    :goto_3
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzalw;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 186
    .line 187
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzfp;->zzb()I

    .line 188
    .line 189
    .line 190
    move-result v10

    .line 191
    const/16 v11, 0x8

    .line 192
    .line 193
    if-lt v10, v11, :cond_d

    .line 194
    .line 195
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzfp;->zzd()I

    .line 196
    .line 197
    .line 198
    move-result v10

    .line 199
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzfp;->zzg()I

    .line 200
    .line 201
    .line 202
    move-result v9

    .line 203
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzalw;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 204
    .line 205
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzfp;->zzg()I

    .line 206
    .line 207
    .line 208
    move-result v11

    .line 209
    const v12, 0x7374796c

    .line 210
    .line 211
    .line 212
    if-ne v11, v12, :cond_b

    .line 213
    .line 214
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzalw;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 215
    .line 216
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzfp;->zzb()I

    .line 217
    .line 218
    .line 219
    move-result v11

    .line 220
    if-lt v11, v8, :cond_5

    .line 221
    .line 222
    const/4 v11, 0x1

    .line 223
    goto :goto_4

    .line 224
    :cond_5
    const/4 v11, 0x0

    .line 225
    :goto_4
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzek;->zzd(Z)V

    .line 226
    .line 227
    .line 228
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzalw;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 229
    .line 230
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzfp;->zzq()I

    .line 231
    .line 232
    .line 233
    move-result v11

    .line 234
    const/4 v12, 0x0

    .line 235
    :goto_5
    if-ge v12, v11, :cond_9

    .line 236
    .line 237
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzalw;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 238
    .line 239
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzfp;->zzb()I

    .line 240
    .line 241
    .line 242
    move-result v14

    .line 243
    const/16 v15, 0xc

    .line 244
    .line 245
    if-lt v14, v15, :cond_6

    .line 246
    .line 247
    const/4 v14, 0x1

    .line 248
    goto :goto_6

    .line 249
    :cond_6
    const/4 v14, 0x0

    .line 250
    :goto_6
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzek;->zzd(Z)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzfp;->zzq()I

    .line 254
    .line 255
    .line 256
    move-result v14

    .line 257
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzfp;->zzq()I

    .line 258
    .line 259
    .line 260
    move-result v15

    .line 261
    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/ads/zzfp;->zzL(I)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzfp;->zzm()I

    .line 265
    .line 266
    .line 267
    move-result v16

    .line 268
    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/ads/zzfp;->zzL(I)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzfp;->zzg()I

    .line 272
    .line 273
    .line 274
    move-result v13

    .line 275
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    .line 276
    .line 277
    .line 278
    move-result v7

    .line 279
    if-le v15, v7, :cond_7

    .line 280
    .line 281
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    .line 282
    .line 283
    .line 284
    move-result v7

    .line 285
    new-instance v6, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .line 289
    .line 290
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 291
    .line 292
    new-array v8, v3, [J

    .line 293
    .line 294
    fill-array-data v8, :array_1

    .line 295
    .line 296
    .line 297
    invoke-direct {v4, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v4

    .line 304
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 311
    .line 312
    new-array v8, v3, [J

    .line 313
    .line 314
    fill-array-data v8, :array_2

    .line 315
    .line 316
    .line 317
    invoke-direct {v4, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v4

    .line 324
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 331
    .line 332
    const/4 v7, 0x2

    .line 333
    new-array v8, v7, [J

    .line 334
    .line 335
    fill-array-data v8, :array_3

    .line 336
    .line 337
    .line 338
    invoke-direct {v4, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 339
    .line 340
    .line 341
    invoke-static {v4, v6}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v4

    .line 345
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 346
    .line 347
    const/4 v7, 0x3

    .line 348
    new-array v8, v7, [J

    .line 349
    .line 350
    fill-array-data v8, :array_4

    .line 351
    .line 352
    .line 353
    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v6

    .line 360
    invoke-static {v6, v4}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    .line 364
    .line 365
    .line 366
    move-result v4

    .line 367
    goto :goto_7

    .line 368
    :cond_7
    move v4, v15

    .line 369
    :goto_7
    if-lt v14, v4, :cond_8

    .line 370
    .line 371
    new-instance v6, Ljava/lang/StringBuilder;

    .line 372
    .line 373
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 374
    .line 375
    .line 376
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 377
    .line 378
    const/4 v8, 0x5

    .line 379
    new-array v8, v8, [J

    .line 380
    .line 381
    fill-array-data v8, :array_5

    .line 382
    .line 383
    .line 384
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v7

    .line 391
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 398
    .line 399
    const/4 v8, 0x3

    .line 400
    new-array v13, v8, [J

    .line 401
    .line 402
    fill-array-data v13, :array_6

    .line 403
    .line 404
    .line 405
    invoke-direct {v7, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v7

    .line 412
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 419
    .line 420
    const/4 v7, 0x2

    .line 421
    new-array v8, v7, [J

    .line 422
    .line 423
    fill-array-data v8, :array_7

    .line 424
    .line 425
    .line 426
    invoke-direct {v4, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 427
    .line 428
    .line 429
    invoke-static {v4, v6}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v4

    .line 433
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 434
    .line 435
    const/4 v7, 0x3

    .line 436
    new-array v8, v7, [J

    .line 437
    .line 438
    fill-array-data v8, :array_8

    .line 439
    .line 440
    .line 441
    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v6

    .line 448
    invoke-static {v6, v4}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    :goto_8
    const/4 v4, 0x1

    .line 452
    goto :goto_9

    .line 453
    :cond_8
    const/4 v7, 0x3

    .line 454
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzalw;->zzc:I

    .line 455
    .line 456
    const/16 v20, 0x0

    .line 457
    .line 458
    move-object v15, v5

    .line 459
    move/from16 v17, v6

    .line 460
    .line 461
    move/from16 v18, v14

    .line 462
    .line 463
    move/from16 v19, v4

    .line 464
    .line 465
    invoke-static/range {v15 .. v20}, Lcom/google/android/gms/internal/ads/zzalw;->zzc(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 466
    .line 467
    .line 468
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzalw;->zzd:I

    .line 469
    .line 470
    move/from16 v16, v13

    .line 471
    .line 472
    move/from16 v17, v6

    .line 473
    .line 474
    invoke-static/range {v15 .. v20}, Lcom/google/android/gms/internal/ads/zzalw;->zzb(Landroid/text/SpannableStringBuilder;IIIII)V

    .line 475
    .line 476
    .line 477
    goto :goto_8

    .line 478
    :goto_9
    add-int/2addr v12, v4

    .line 479
    const/4 v4, 0x3

    .line 480
    const/4 v6, 0x1

    .line 481
    const/4 v7, 0x0

    .line 482
    const/4 v8, 0x2

    .line 483
    goto/16 :goto_5

    .line 484
    .line 485
    :cond_9
    const/4 v4, 0x1

    .line 486
    const/4 v7, 0x3

    .line 487
    :cond_a
    const/4 v6, 0x2

    .line 488
    goto :goto_b

    .line 489
    :cond_b
    const/4 v4, 0x1

    .line 490
    const/4 v7, 0x3

    .line 491
    const v6, 0x74626f78

    .line 492
    .line 493
    .line 494
    if-ne v11, v6, :cond_a

    .line 495
    .line 496
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzalw;->zzb:Z

    .line 497
    .line 498
    if-eqz v6, :cond_a

    .line 499
    .line 500
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzalw;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 501
    .line 502
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzb()I

    .line 503
    .line 504
    .line 505
    move-result v1

    .line 506
    const/4 v6, 0x2

    .line 507
    if-lt v1, v6, :cond_c

    .line 508
    .line 509
    const/4 v1, 0x1

    .line 510
    goto :goto_a

    .line 511
    :cond_c
    const/4 v1, 0x0

    .line 512
    :goto_a
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzek;->zzd(Z)V

    .line 513
    .line 514
    .line 515
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzalw;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 516
    .line 517
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzq()I

    .line 518
    .line 519
    .line 520
    move-result v1

    .line 521
    int-to-float v1, v1

    .line 522
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzalw;->zzg:I

    .line 523
    .line 524
    int-to-float v8, v8

    .line 525
    div-float/2addr v1, v8

    .line 526
    const v8, 0x3f733333    # 0.95f

    .line 527
    .line 528
    .line 529
    invoke-static {v1, v8}, Ljava/lang/Math;->min(FF)F

    .line 530
    .line 531
    .line 532
    move-result v1

    .line 533
    const/4 v8, 0x0

    .line 534
    invoke-static {v8, v1}, Ljava/lang/Math;->max(FF)F

    .line 535
    .line 536
    .line 537
    move-result v1

    .line 538
    :goto_b
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzalw;->zza:Lcom/google/android/gms/internal/ads/zzfp;

    .line 539
    .line 540
    add-int/2addr v10, v9

    .line 541
    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 542
    .line 543
    .line 544
    const/4 v4, 0x3

    .line 545
    const/4 v6, 0x1

    .line 546
    const/4 v7, 0x0

    .line 547
    const/4 v8, 0x2

    .line 548
    goto/16 :goto_3

    .line 549
    .line 550
    :cond_d
    new-instance v3, Lcom/google/android/gms/internal/ads/zzea;

    .line 551
    .line 552
    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzea;-><init>()V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzea;->zzl(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/ads/zzea;

    .line 556
    .line 557
    .line 558
    const/4 v4, 0x0

    .line 559
    invoke-virtual {v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzea;->zze(FI)Lcom/google/android/gms/internal/ads/zzea;

    .line 560
    .line 561
    .line 562
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzea;->zzf(I)Lcom/google/android/gms/internal/ads/zzea;

    .line 563
    .line 564
    .line 565
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzea;->zzp()Lcom/google/android/gms/internal/ads/zzec;

    .line 566
    .line 567
    .line 568
    move-result-object v1

    .line 569
    new-instance v9, Lcom/google/android/gms/internal/ads/zzakj;

    .line 570
    .line 571
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgaa;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgaa;

    .line 572
    .line 573
    .line 574
    move-result-object v4

    .line 575
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    move-object v3, v9

    .line 581
    move-wide v5, v7

    .line 582
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzakj;-><init>(Ljava/util/List;JJ)V

    .line 583
    .line 584
    .line 585
    invoke-interface {v2, v9}, Lcom/google/android/gms/internal/ads/zzep;->zza(Ljava/lang/Object;)V

    .line 586
    .line 587
    .line 588
    return-void

    :array_0
    .array-data 8
        0x651ec53e1ac47cc6L    # 1.2469002072031356E179
        -0x300e53301956458dL    # -1.2791441601941453E77
        0x5567651c6bd4f829L    # 2.619937484028338E103
    .end array-data

    :array_1
    .array-data 8
        -0x646e625260ef2b85L    # -6.955496383773573E-176
        -0x58cc733432eb3379L    # -7.570911290915944E-120
        0x2f643da59d94268cL    # 2.1338260807887634E-80
        0x385d093115848c2L
    .end array-data

    :array_2
    .array-data 8
        0x7204161b7eab5ce8L    # 1.6742014828660516E241
        -0x13086466d6354b15L    # -8.138277980289034E216
        0x55e5602b6ca2fdcfL    # 6.128131574533215E105
        0x421fc72c199b90a1L    # 3.412138557489124E10
    .end array-data

    :array_3
    .array-data 8
        -0x6fc65ff84bd24330L
        0x2991b8151c58fbceL    # 1.886177437678255E-108
    .end array-data

    :array_4
    .array-data 8
        -0xd852d91a4d6a9e5L
        0x16f8f32d8bba3733L    # 5.215211311056071E-198
        -0x31d6b93607ac6d34L    # -3.4072680637240213E68
    .end array-data

    :array_5
    .array-data 8
        -0x771aa544a7a34b26L    # -8.278309155004785E-266
        0x1895df6546be0113L
        0x426fc41dc9ed6f80L    # 1.0914741819954844E12
        0x62dfe1c3ca6d0878L
        0x1b2202326644ea08L
    .end array-data

    :array_6
    .array-data 8
        -0x12ec5dfe2b7073beL    # -2.7071980185000786E217
        0x1ddd062e3e1fb693L    # 7.875203617891372E-165
        0x74a6a2ba15ef09faL    # 8.297731342110469E253
    .end array-data

    :array_7
    .array-data 8
        0x1a77d2f1b6847a44L
        0x6c86f4a33fbacea6L
    .end array-data

    :array_8
    .array-data 8
        -0x449695d0b857f85dL    # -1.6818093234034633E-22
        -0x66a06db54ac3202cL    # -1.8139999016916108E-186
        0x39d556eee9d4b0eeL    # 4.208490696363437E-30
    .end array-data
.end method
