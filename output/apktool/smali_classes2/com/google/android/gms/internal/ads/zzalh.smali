.class public final Lcom/google/android/gms/internal/ads/zzalh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzakr;


# static fields
.field private static final zza:Ljava/util/regex/Pattern;


# instance fields
.field private final zzb:Z

.field private final zzc:Lcom/google/android/gms/internal/ads/zzalg;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfp;

.field private zze:Ljava/util/Map;

.field private zzf:F

.field private zzg:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x5

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzalh;->zza:Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 8
        0xb32484a900875c8L
        -0x974bdb6dcc1ff46L    # -1.072938952375023E263
        0x2e23d63ad31abe22L    # 1.9943603717147603E-86
        -0x72b50388a7d600ddL
        -0x1f6289f1fccf9b50L    # -2.5280605324889586E157
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzalh;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x800001

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzalh;->zzf:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzalh;->zzg:F

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzalh;->zzd:Lcom/google/android/gms/internal/ads/zzfp;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzalh;->zzb:Z

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfy;->zzz([B)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x2

    new-array v3, v3, [J

    fill-array-data v3, :array_0

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzek;->zzd(Z)V

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzalg;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzalg;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzalh;->zzc:Lcom/google/android/gms/internal/ads/zzalg;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfp;

    .line 8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzfp;-><init>([B)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzfwq;->zzc:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzalh;->zze(Lcom/google/android/gms/internal/ads/zzfp;Ljava/nio/charset/Charset;)V

    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzalh;->zzb:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalh;->zzc:Lcom/google/android/gms/internal/ads/zzalg;

    return-void

    nop

    :array_0
    .array-data 8
        0x6e4ab699e451d233L    # 1.9312305077767376E223
        0x5cccbe222b57a452L    # 1.0696352694662478E139
    .end array-data
.end method

.method private static zzb(I)F
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const p0, -0x800001

    return p0

    :cond_0
    const p0, 0x3f733333    # 0.95f

    return p0

    :cond_1
    const/high16 p0, 0x3f000000    # 0.5f

    return p0

    :cond_2
    const p0, 0x3d4ccccd    # 0.05f

    return p0
.end method

.method private static zzc(JLjava/util/List;Ljava/util/List;)I
    .locals 4

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    if-ltz v0, :cond_2

    .line 8
    .line 9
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/lang/Long;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    cmp-long v3, v1, p0

    .line 20
    .line 21
    if-nez v3, :cond_1

    .line 22
    .line 23
    return v0

    .line 24
    :cond_1
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/Long;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    cmp-long v3, v1, p0

    .line 35
    .line 36
    if-gez v3, :cond_0

    .line 37
    .line 38
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 v0, 0x0

    .line 42
    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-interface {p2, v0, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    if-nez v0, :cond_3

    .line 50
    .line 51
    new-instance p0, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    add-int/lit8 p0, v0, -0x1

    .line 58
    .line 59
    new-instance p1, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    check-cast p0, Ljava/util/Collection;

    .line 66
    .line 67
    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 68
    .line 69
    .line 70
    move-object p0, p1

    .line 71
    :goto_1
    invoke-interface {p3, v0, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    return v0
.end method

.method private static zzd(Ljava/lang/String;)J
    .locals 10

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzalh;->zza:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    return-wide v0

    .line 23
    :cond_0
    const/4 v0, 0x1

    .line 24
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget v1, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 29
    .line 30
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    const-wide v2, 0xd693a400L

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    mul-long v0, v0, v2

    .line 40
    .line 41
    const/4 v2, 0x2

    .line 42
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 47
    .line 48
    .line 49
    move-result-wide v2

    .line 50
    const-wide/32 v4, 0x3938700

    .line 51
    .line 52
    .line 53
    mul-long v2, v2, v4

    .line 54
    .line 55
    const/4 v4, 0x3

    .line 56
    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v4

    .line 64
    const-wide/32 v6, 0xf4240

    .line 65
    .line 66
    .line 67
    mul-long v4, v4, v6

    .line 68
    .line 69
    const/4 v6, 0x4

    .line 70
    invoke-virtual {p0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 75
    .line 76
    .line 77
    move-result-wide v6

    .line 78
    const-wide/16 v8, 0x2710

    .line 79
    .line 80
    mul-long v6, v6, v8

    .line 81
    .line 82
    add-long/2addr v0, v2

    .line 83
    add-long/2addr v0, v4

    .line 84
    add-long/2addr v0, v6

    .line 85
    return-wide v0
.end method

.method private final zze(Lcom/google/android/gms/internal/ads/zzfp;Ljava/nio/charset/Charset;)V
    .locals 9

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfp;->zzy(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    if-eqz v2, :cond_e

    .line 8
    .line 9
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    new-array v4, v0, [J

    .line 12
    .line 13
    fill-array-data v4, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/16 v4, 0x5b

    .line 28
    .line 29
    if-eqz v3, :cond_6

    .line 30
    .line 31
    :cond_1
    :goto_1
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfp;->zzy(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzb()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Ljava/nio/charset/Charset;)C

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eq v3, v4, :cond_0

    .line 48
    .line 49
    :cond_2
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 50
    .line 51
    new-array v5, v1, [J

    .line 52
    .line 53
    fill-array-data v5, :array_1

    .line 54
    .line 55
    .line 56
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    array-length v3, v2

    .line 68
    if-ne v3, v1, :cond_1

    .line 69
    .line 70
    const/4 v3, 0x0

    .line 71
    aget-object v5, v2, v3

    .line 72
    .line 73
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzfwk;->zza(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    const/4 v7, 0x1

    .line 86
    packed-switch v6, :pswitch_data_0

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :pswitch_0
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 91
    .line 92
    new-array v6, v1, [J

    .line 93
    .line 94
    fill-array-data v6, :array_2

    .line 95
    .line 96
    .line 97
    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-eqz v3, :cond_3

    .line 109
    .line 110
    const/4 v3, 0x1

    .line 111
    goto :goto_3

    .line 112
    :pswitch_1
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 113
    .line 114
    new-array v8, v1, [J

    .line 115
    .line 116
    fill-array-data v8, :array_3

    .line 117
    .line 118
    .line 119
    invoke-direct {v6, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    if-eqz v5, :cond_3

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :cond_3
    :goto_2
    const/4 v3, -0x1

    .line 134
    :goto_3
    if-eqz v3, :cond_5

    .line 135
    .line 136
    if-eq v3, v7, :cond_4

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_4
    :try_start_0
    aget-object v2, v2, v7

    .line 140
    .line 141
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzalh;->zzg:F

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :catch_0
    nop

    .line 153
    goto :goto_1

    .line 154
    :cond_5
    aget-object v2, v2, v7

    .line 155
    .line 156
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzalh;->zzf:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .line 166
    goto/16 :goto_1

    .line 167
    .line 168
    :cond_6
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 169
    .line 170
    new-array v5, v0, [J

    .line 171
    .line 172
    fill-array-data v5, :array_4

    .line 173
    .line 174
    .line 175
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    if-eqz v3, :cond_c

    .line 187
    .line 188
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 189
    .line 190
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 191
    .line 192
    .line 193
    const/4 v3, 0x0

    .line 194
    :cond_7
    :goto_4
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfp;->zzy(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    if-eqz v5, :cond_b

    .line 199
    .line 200
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzb()I

    .line 201
    .line 202
    .line 203
    move-result v6

    .line 204
    if-eqz v6, :cond_8

    .line 205
    .line 206
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Ljava/nio/charset/Charset;)C

    .line 207
    .line 208
    .line 209
    move-result v6

    .line 210
    if-eq v6, v4, :cond_b

    .line 211
    .line 212
    :cond_8
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 213
    .line 214
    new-array v7, v1, [J

    .line 215
    .line 216
    fill-array-data v7, :array_5

    .line 217
    .line 218
    .line 219
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 227
    .line 228
    .line 229
    move-result v6

    .line 230
    if-eqz v6, :cond_9

    .line 231
    .line 232
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzali;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzali;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    goto :goto_4

    .line 237
    :cond_9
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 238
    .line 239
    new-array v7, v1, [J

    .line 240
    .line 241
    fill-array-data v7, :array_6

    .line 242
    .line 243
    .line 244
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v6

    .line 251
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 252
    .line 253
    .line 254
    move-result v6

    .line 255
    if-eqz v6, :cond_7

    .line 256
    .line 257
    if-nez v3, :cond_a

    .line 258
    .line 259
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 260
    .line 261
    const/4 v7, 0x7

    .line 262
    new-array v7, v7, [J

    .line 263
    .line 264
    fill-array-data v7, :array_7

    .line 265
    .line 266
    .line 267
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v6

    .line 274
    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 279
    .line 280
    new-array v7, v0, [J

    .line 281
    .line 282
    fill-array-data v7, :array_8

    .line 283
    .line 284
    .line 285
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v6

    .line 292
    invoke-static {v6, v5}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    goto :goto_4

    .line 296
    :cond_a
    invoke-static {v5, v3}, Lcom/google/android/gms/internal/ads/zzalk;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzali;)Lcom/google/android/gms/internal/ads/zzalk;

    .line 297
    .line 298
    .line 299
    move-result-object v5

    .line 300
    if-eqz v5, :cond_7

    .line 301
    .line 302
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/zzalk;->zza:Ljava/lang/String;

    .line 303
    .line 304
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    goto :goto_4

    .line 308
    :cond_b
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzalh;->zze:Ljava/util/Map;

    .line 309
    .line 310
    goto/16 :goto_0

    .line 311
    .line 312
    :cond_c
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 313
    .line 314
    new-array v4, v0, [J

    .line 315
    .line 316
    fill-array-data v4, :array_9

    .line 317
    .line 318
    .line 319
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 327
    .line 328
    .line 329
    move-result v3

    .line 330
    if-eqz v3, :cond_d

    .line 331
    .line 332
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 333
    .line 334
    new-array v3, v0, [J

    .line 335
    .line 336
    fill-array-data v3, :array_a

    .line 337
    .line 338
    .line 339
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 347
    .line 348
    const/4 v4, 0x5

    .line 349
    new-array v4, v4, [J

    .line 350
    .line 351
    fill-array-data v4, :array_b

    .line 352
    .line 353
    .line 354
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v3

    .line 361
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzff;->zze(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    goto/16 :goto_0

    .line 365
    .line 366
    :cond_d
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 367
    .line 368
    new-array v4, v1, [J

    .line 369
    .line 370
    fill-array-data v4, :array_c

    .line 371
    .line 372
    .line 373
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v3

    .line 380
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 381
    .line 382
    .line 383
    move-result v2

    .line 384
    if-eqz v2, :cond_0

    .line 385
    .line 386
    :cond_e
    return-void

    .line 387
    :pswitch_data_0
    .packed-switch 0x70092d0c
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    :array_0
    .array-data 8
        -0x60cabfd711023ae4L    # -2.418432601805405E-158
        -0x15a108d9aebe1854L    # -2.4271363284780858E204
        0x2a563ea56553f132L
    .end array-data

    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    :array_1
    .array-data 8
        0x17967e8f877f5d72L    # 4.814783895195498E-195
        -0x7a8cbf6831a8f172L
    .end array-data

    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    :array_2
    .array-data 8
        -0x11d08b245b950a74L    # -5.685345834035775E222
        0x3878772fd6cad622L    # 1.1503657476975675E-36
    .end array-data

    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    :array_3
    .array-data 8
        0x83855dcb96aba83L
        -0x22214196f16fe8a5L    # -1.4995997430025815E144
    .end array-data

    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    :array_4
    .array-data 8
        0x570fc059e77a2ea4L    # 2.3862223616866417E111
        -0xe85c83bdee71f9bL    # -4.268088667402856E238
        -0x1a9345821ef6b646L
    .end array-data

    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    :array_5
    .array-data 8
        -0x15b2dc3049b09764L    # -1.1420232952654388E204
        0x2e99305ad0209e7eL    # 3.241530993415634E-84
    .end array-data

    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    :array_6
    .array-data 8
        -0x4d284e8663146b84L    # -8.999238945903759E-64
        -0x3ca876c8c16c25bdL    # -2.6499179321714956E16
    .end array-data

    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    :array_7
    .array-data 8
        -0x35a8e5942c35814aL    # -1.350615041919449E50
        -0x2d878c28c5ac5db8L    # -1.9457276581973408E89
        0x2689b95764729f92L
        0x744e8de861aa2d3bL    # 1.7500848768130998E252
        0x49af0656415e6a4eL    # 8.856001613358679E46
        0x26cc3cd1a6d14102L    # 8.543171944028096E-122
        -0x561898a1b27554f4L    # -7.972189346594283E-107
    .end array-data

    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    :array_8
    .array-data 8
        -0x5e43b1b71ec63750L    # -3.541910174333409E-146
        0x3acafdfa11927e01L    # 1.7443233848537E-25
        0x454aab8b4b55963eL    # 6.4484331008774865E25
    .end array-data

    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    :array_9
    .array-data 8
        0x13f857932a6cc601L
        0x6331b76eab3ba024L    # 6.6861527662813E169
        0x60a64bef736b71baL    # 3.8265450457613976E157
    .end array-data

    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    :array_a
    .array-data 8
        0x131fa5019bd39bc8L
        0x17cd0364e11deb53L
        -0x3218602a4d041876L    # -1.9903479326676387E67
    .end array-data

    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    :array_b
    .array-data 8
        0x6c668484de1fb71cL    # 1.5161076711248114E214
        -0x5a6a9f5c531ede2dL    # -1.233612357497193E-127
        0x3a34947bd2d126f7L    # 2.5975630058341794E-28
        -0x2010362858c908feL    # -1.331916843256527E154
        0x90856ace50e058dL
    .end array-data

    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    :array_c
    .array-data 8
        0x142b0125a6b0ab4aL
        0x75cb6afe8377a2f6L    # 2.6347608514612967E259
    .end array-data
.end method


# virtual methods
.method public final zza([BIILcom/google/android/gms/internal/ads/zzakq;Lcom/google/android/gms/internal/ads/zzep;)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v2, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x3

    .line 1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    add-int v9, v1, p3

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzalh;->zzd:Lcom/google/android/gms/internal/ads/zzfp;

    move-object/from16 v11, p1

    .line 3
    invoke-virtual {v10, v11, v9}, Lcom/google/android/gms/internal/ads/zzfp;->zzI([BI)V

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzalh;->zzd:Lcom/google/android/gms/internal/ads/zzfp;

    .line 4
    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzalh;->zzd:Lcom/google/android/gms/internal/ads/zzfp;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzB()Ljava/nio/charset/Charset;

    move-result-object v1

    if-nez v1, :cond_0

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfwq;->zzc:Ljava/nio/charset/Charset;

    :cond_0
    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzalh;->zzb:Z

    if-nez v9, :cond_1

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzalh;->zzd:Lcom/google/android/gms/internal/ads/zzfp;

    .line 7
    invoke-direct {v0, v9, v1}, Lcom/google/android/gms/internal/ads/zzalh;->zze(Lcom/google/android/gms/internal/ads/zzfp;Ljava/nio/charset/Charset;)V

    :cond_1
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzalh;->zzd:Lcom/google/android/gms/internal/ads/zzfp;

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzalh;->zzb:Z

    if-eqz v10, :cond_2

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzalh;->zzc:Lcom/google/android/gms/internal/ads/zzalg;

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    .line 8
    :goto_0
    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/ads/zzfp;->zzy(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, -0x1

    if-eqz v12, :cond_17

    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v5, [J

    fill-array-data v11, :array_0

    invoke-direct {v15, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    .line 9
    invoke-virtual {v12, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 10
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzalg;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzalg;

    move-result-object v10

    goto :goto_0

    :cond_3
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v6, [J

    fill-array-data v15, :array_1

    invoke-direct {v11, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    .line 11
    invoke-virtual {v12, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    if-nez v10, :cond_5

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v13, 0x7

    new-array v13, v13, [J

    fill-array-data v13, :array_2

    invoke-direct {v11, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    new-array v13, v6, [J

    fill-array-data v13, :array_3

    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v12

    .line 12
    invoke-static {v12, v11}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    move-object/from16 v18, v1

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    const/4 v10, 0x4

    const/4 v11, 0x3

    goto/16 :goto_c

    :cond_5
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v15, v6, [J

    fill-array-data v15, :array_4

    invoke-direct {v11, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    .line 13
    invoke-virtual {v12, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzek;->zzd(Z)V

    const/16 v11, 0x9

    .line 14
    invoke-virtual {v12, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v5, [J

    fill-array-data v3, :array_5

    invoke-direct {v15, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    iget v15, v10, Lcom/google/android/gms/internal/ads/zzalg;->zze:I

    invoke-virtual {v11, v3, v15}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 15
    array-length v11, v3

    iget v15, v10, Lcom/google/android/gms/internal/ads/zzalg;->zze:I

    if-eq v11, v15, :cond_6

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v11, 0x8

    new-array v11, v11, [J

    fill-array-data v11, :array_6

    invoke-direct {v3, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v12, v6, [J

    fill-array-data v12, :array_7

    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    .line 16
    invoke-static {v11, v3}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget v11, v10, Lcom/google/android/gms/internal/ads/zzalg;->zza:I

    .line 17
    aget-object v11, v3, v11

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzalh;->zzd(Ljava/lang/String;)J

    move-result-wide v14

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v11, v14, v16

    if-nez v11, :cond_7

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v11, v2, [J

    fill-array-data v11, :array_8

    invoke-direct {v3, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    new-array v12, v6, [J

    fill-array-data v12, :array_9

    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v11

    .line 18
    invoke-static {v11, v3}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    iget v11, v10, Lcom/google/android/gms/internal/ads/zzalg;->zzb:I

    .line 19
    aget-object v11, v3, v11

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzalh;->zzd(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v11, v4, v16

    if-nez v11, :cond_8

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_a

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v6, [J

    fill-array-data v5, :array_b

    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    .line 20
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzalh;->zze:Ljava/util/Map;

    if-eqz v11, :cond_9

    iget v12, v10, Lcom/google/android/gms/internal/ads/zzalg;->zzc:I

    if-eq v12, v13, :cond_9

    .line 21
    aget-object v12, v3, v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/ads/zzalk;

    goto :goto_2

    :cond_9
    const/4 v11, 0x0

    :goto_2
    iget v12, v10, Lcom/google/android/gms/internal/ads/zzalg;->zzd:I

    .line 22
    aget-object v3, v3, v12

    .line 23
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzalj;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzalj;

    move-result-object v12

    .line 24
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzalj;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v13, 0x2

    new-array v6, v13, [J

    fill-array-data v6, :array_c

    invoke-direct {v2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    move-object/from16 v18, v1

    new-array v1, v13, [J

    fill-array-data v1, :array_d

    invoke-direct {v6, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v13, [J

    fill-array-data v3, :array_e

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v13, [J

    fill-array-data v6, :array_f

    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    .line 26
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v13, [J

    fill-array-data v3, :array_10

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v13, [J

    fill-array-data v6, :array_11

    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    .line 27
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzalh;->zzf:F

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzalh;->zzg:F

    new-instance v6, Landroid/text/SpannableString;

    .line 28
    invoke-direct {v6, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzea;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzea;-><init>()V

    .line 29
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzea;->zzl(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/ads/zzea;

    if-eqz v11, :cond_11

    iget-object v13, v11, Lcom/google/android/gms/internal/ads/zzalk;->zzc:Ljava/lang/Integer;

    if-eqz v13, :cond_a

    .line 30
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 31
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-direct {v0, v13}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 32
    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v13

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    const/4 v9, 0x0

    const/16 v10, 0x21

    .line 33
    invoke-virtual {v6, v0, v9, v13, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    :cond_a
    move-object/from16 v19, v9

    move-object/from16 v20, v10

    const/4 v9, 0x0

    const/16 v10, 0x21

    :goto_3
    iget v0, v11, Lcom/google/android/gms/internal/ads/zzalk;->zzj:I

    const/4 v13, 0x3

    if-ne v0, v13, :cond_b

    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzalk;->zzd:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 34
    new-instance v13, Landroid/text/style/BackgroundColorSpan;

    .line 35
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v13, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 36
    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v0

    .line 37
    invoke-virtual {v6, v13, v9, v0, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_b
    iget v0, v11, Lcom/google/android/gms/internal/ads/zzalk;->zze:F

    const v9, -0x800001

    cmpl-float v10, v0, v9

    if-eqz v10, :cond_c

    cmpl-float v10, v3, v9

    if-eqz v10, :cond_c

    div-float/2addr v0, v3

    const/4 v9, 0x1

    .line 38
    invoke-virtual {v1, v0, v9}, Lcom/google/android/gms/internal/ads/zzea;->zzn(FI)Lcom/google/android/gms/internal/ads/zzea;

    :cond_c
    iget-boolean v0, v11, Lcom/google/android/gms/internal/ads/zzalk;->zzf:Z

    if-eqz v0, :cond_e

    iget-boolean v0, v11, Lcom/google/android/gms/internal/ads/zzalk;->zzg:Z

    if-eqz v0, :cond_d

    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v9, 0x3

    .line 39
    invoke-direct {v0, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 40
    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v9

    const/4 v10, 0x0

    const/16 v13, 0x21

    .line 41
    invoke-virtual {v6, v0, v10, v9, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    :cond_d
    const/4 v10, 0x0

    const/16 v13, 0x21

    .line 42
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v9, 0x1

    .line 43
    invoke-direct {v0, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 44
    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v9

    .line 45
    invoke-virtual {v6, v0, v10, v9, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    :cond_e
    const/4 v10, 0x0

    const/16 v13, 0x21

    iget-boolean v0, v11, Lcom/google/android/gms/internal/ads/zzalk;->zzg:Z

    if-eqz v0, :cond_f

    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v9, 0x2

    .line 46
    invoke-direct {v0, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 47
    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v9

    .line 48
    invoke-virtual {v6, v0, v10, v9, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 49
    :cond_f
    :goto_4
    iget-boolean v0, v11, Lcom/google/android/gms/internal/ads/zzalk;->zzh:Z

    if-eqz v0, :cond_10

    .line 50
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 51
    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v9

    .line 52
    invoke-virtual {v6, v0, v10, v9, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_10
    iget-boolean v0, v11, Lcom/google/android/gms/internal/ads/zzalk;->zzi:Z

    if-eqz v0, :cond_12

    .line 53
    new-instance v0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    .line 54
    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v9

    .line 55
    invoke-virtual {v6, v0, v10, v9, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_5

    :cond_11
    move-object/from16 v19, v9

    move-object/from16 v20, v10

    :cond_12
    :goto_5
    iget v0, v12, Lcom/google/android/gms/internal/ads/zzalj;->zza:I

    const/4 v6, -0x1

    if-eq v0, v6, :cond_13

    move v13, v0

    goto :goto_6

    :cond_13
    if-eqz v11, :cond_14

    .line 56
    iget v13, v11, Lcom/google/android/gms/internal/ads/zzalk;->zzb:I

    goto :goto_6

    :cond_14
    const/4 v13, -0x1

    :goto_6
    packed-switch v13, :pswitch_data_0

    .line 57
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v9, 0x4

    new-array v10, v9, [J

    fill-array-data v10, :array_12

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    invoke-static {v6, v0, v13}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v0

    .line 60
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v9, 0x3

    new-array v10, v9, [J

    fill-array-data v10, :array_13

    invoke-direct {v6, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_7

    .line 61
    :pswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_7

    :pswitch_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_7

    :pswitch_4
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 62
    :goto_7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzea;->zzm(Landroid/text/Layout$Alignment;)Lcom/google/android/gms/internal/ads/zzea;

    const/high16 v0, -0x80000000

    packed-switch v13, :pswitch_data_1

    :pswitch_5
    new-instance v6, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v10, 0x4

    new-array v11, v10, [J

    fill-array-data v11, :array_14

    invoke-direct {v9, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 64
    invoke-static {v9, v6, v13}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v6

    .line 65
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v10, 0x3

    new-array v11, v10, [J

    fill-array-data v11, :array_15

    invoke-direct {v9, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v6}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :pswitch_6
    const/high16 v6, -0x80000000

    goto :goto_8

    :pswitch_7
    const/4 v6, 0x2

    goto :goto_8

    :pswitch_8
    const/4 v6, 0x1

    goto :goto_8

    :pswitch_9
    const/4 v6, 0x0

    .line 66
    :goto_8
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzea;->zzi(I)Lcom/google/android/gms/internal/ads/zzea;

    packed-switch v13, :pswitch_data_2

    :pswitch_a
    new-instance v6, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v10, 0x4

    new-array v11, v10, [J

    fill-array-data v11, :array_16

    invoke-direct {v9, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 68
    invoke-static {v9, v6, v13}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v6

    .line 69
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v11, 0x3

    new-array v13, v11, [J

    fill-array-data v13, :array_17

    invoke-direct {v9, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v6}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :pswitch_b
    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v0, 0x0

    goto :goto_9

    :pswitch_c
    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v0, 0x1

    goto :goto_9

    :pswitch_d
    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v0, 0x2

    goto :goto_9

    :pswitch_e
    const/4 v10, 0x4

    const/4 v11, 0x3

    .line 70
    :goto_9
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzea;->zzf(I)Lcom/google/android/gms/internal/ads/zzea;

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzalj;->zzb:Landroid/graphics/PointF;

    if-eqz v0, :cond_15

    const v6, -0x800001

    cmpl-float v9, v3, v6

    if-eqz v9, :cond_15

    cmpl-float v6, v2, v6

    if-eqz v6, :cond_15

    .line 71
    iget v0, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzea;->zzh(F)Lcom/google/android/gms/internal/ads/zzea;

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzalj;->zzb:Landroid/graphics/PointF;

    .line 72
    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v3

    const/4 v9, 0x0

    invoke-virtual {v1, v0, v9}, Lcom/google/android/gms/internal/ads/zzea;->zze(FI)Lcom/google/android/gms/internal/ads/zzea;

    goto :goto_a

    :cond_15
    const/4 v9, 0x0

    .line 73
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzea;->zzb()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzalh;->zzb(I)F

    move-result v0

    .line 74
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzea;->zzh(F)Lcom/google/android/gms/internal/ads/zzea;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzea;->zza()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzalh;->zzb(I)F

    move-result v0

    .line 75
    invoke-virtual {v1, v0, v9}, Lcom/google/android/gms/internal/ads/zzea;->zze(FI)Lcom/google/android/gms/internal/ads/zzea;

    .line 76
    :goto_a
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzea;->zzp()Lcom/google/android/gms/internal/ads/zzec;

    move-result-object v0

    .line 77
    invoke-static {v14, v15, v8, v7}, Lcom/google/android/gms/internal/ads/zzalh;->zzc(JLjava/util/List;Ljava/util/List;)I

    move-result v1

    .line 78
    invoke-static {v4, v5, v8, v7}, Lcom/google/android/gms/internal/ads/zzalh;->zzc(JLjava/util/List;Ljava/util/List;)I

    move-result v2

    :goto_b
    if-ge v1, v2, :cond_16

    .line 79
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    add-int/2addr v1, v3

    goto :goto_b

    :cond_16
    :goto_c
    const/4 v2, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    const/4 v5, 0x2

    const/4 v6, 0x3

    goto/16 :goto_0

    :cond_17
    const/4 v9, 0x0

    const/4 v0, 0x0

    .line 80
    :goto_d
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 81
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/util/List;

    .line 82
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    if-eqz v0, :cond_18

    move-object/from16 v3, p5

    const/4 v1, 0x1

    const/4 v2, -0x1

    goto :goto_e

    :cond_18
    const/4 v0, 0x0

    .line 83
    :cond_19
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, -0x1

    add-int/2addr v1, v2

    if-eq v0, v1, :cond_1a

    .line 84
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const/4 v1, 0x1

    add-int/lit8 v4, v0, 0x1

    .line 85
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v14, v3, v5

    new-instance v1, Lcom/google/android/gms/internal/ads/zzakj;

    move-object v10, v1

    .line 86
    invoke-direct/range {v10 .. v15}, Lcom/google/android/gms/internal/ads/zzakj;-><init>(Ljava/util/List;JJ)V

    move-object/from16 v3, p5

    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/ads/zzep;->zza(Ljava/lang/Object;)V

    const/4 v1, 0x1

    :goto_e
    add-int/2addr v0, v1

    goto :goto_d

    .line 87
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 88
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1b
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_e
        :pswitch_a
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch

    :array_0
    .array-data 8
        0x28ac106f874d30eL
        -0x5f55cb9654876b69L    # -2.501681411212908E-151
    .end array-data

    :array_1
    .array-data 8
        0x114d803c9f44c8c0L    # 2.490628137258237E-225
        0x37317b6984b1519fL    # 7.839235270533386E-43
        0x3f280fb509cca9c4L    # 1.8357357921534704E-4
    .end array-data

    :array_2
    .array-data 8
        0x4c0524780c548dbcL    # 1.6589169025565484E58
        -0x47ed9a8137b80cc5L    # -1.3515588510774403E-38
        -0x2d4196fb99e70b2eL    # -3.8716699408976695E90
        -0x27012955d712852eL    # -4.977050030654163E120
        -0x12e760eda3a9c417L    # -3.3950734184474405E217
        0xaf0cbab4a01ca24L    # 5.592921999738016E-256
        0x78e67ebcf90976eeL    # 2.433847907276848E274
    .end array-data

    :array_3
    .array-data 8
        -0x4771c41b39b3abc3L    # -2.8431878945214692E-36
        0x203eec3e1e4c605dL
        0x7115cd90ed408e2eL    # 5.5459087263701625E236
    .end array-data

    :array_4
    .array-data 8
        0x6fdb386d9a7534fL
        0x7495f03f5d26354aL    # 4.0210793241793194E253
        0x29c1a0d7150cf7e1L
    .end array-data

    :array_5
    .array-data 8
        -0x24403abfafbb9d1fL    # -9.020327674246585E133
        -0x462f42198cc12f2bL    # -3.301737410456348E-30
    .end array-data

    :array_6
    .array-data 8
        -0x235d26a3b0f0afc0L    # -1.7536294646099478E138
        -0x106c3d93945ad03eL    # -2.995793926046189E229
        -0x353b81a55f944e6L
        -0x303606c4021a5e0bL    # -2.349636036359117E76
        0x4af6d98d54f1bcf5L    # 1.367860790202895E53
        -0x6a940ecf65a07cf3L
        0x47ec1ad3fe70c26L
        -0x799fc8a325c0df65L    # -5.717480932284236E-278
    .end array-data

    :array_7
    .array-data 8
        0x13b6898cd992b16L
        -0x5c02bab91be93f0aL    # -2.516945298693828E-135
        -0x230ce247d5740c72L    # -5.691111624292975E139
    .end array-data

    :array_8
    .array-data 8
        -0x4a89f4b1677ca8d6L    # -3.682429647707729E-51
        -0x29fac0c804dfaf27L    # -2.43649228606052E106
        -0x76a26f59f4b29bf4L
        0x40581c272475eacfL    # 96.43988906398157
        -0x24a6b226719a8f82L    # -1.1225586190035533E132
    .end array-data

    :array_9
    .array-data 8
        -0x4299b06c0f541997L    # -6.341125281645228E-13
        0x69638b8ce5aa559eL    # 4.675256623792917E199
        -0x2891a3540dc043a1L    # -1.4603560310068168E113
    .end array-data

    :array_a
    .array-data 8
        -0x698c521c8eefec17L
        -0x2b949676c12d12aaL    # -4.684176926707199E98
        0x316d152924f1f87dL    # 1.3168161361427078E-70
        -0x7d9c66ec95d88aa0L    # -3.745803481099914E-297
        0x2ef9ec601bf188e7L    # 2.135070293290098E-82
    .end array-data

    :array_b
    .array-data 8
        -0x473ff0630a012704L    # -2.416589002714159E-35
        0x65a154c749d62c28L    # 3.5957971364513655E181
        -0x4812c13b4f4cc294L    # -2.6857464195317398E-39
    .end array-data

    :array_c
    .array-data 8
        -0x4e5a37e6d7548614L    # -1.5779798908406807E-69
        0x7d771eb817e2a675L    # 2.3625636378912023E296
    .end array-data

    :array_d
    .array-data 8
        0x354ac855f51350c7L    # 5.5924598049161836E-52
        0x33204ab49a6ea4f8L    # 1.9801608223352682E-62
    .end array-data

    :array_e
    .array-data 8
        -0x1fdf44e3573246faL    # -1.1216238745692349E155
        0x3e930892964a37e4L    # 2.836210540112874E-7
    .end array-data

    :array_f
    .array-data 8
        0x3467d123631b64d7L    # 3.0354067490209947E-56
        0x2d57114cc68bf787L    # 2.831022380098756E-90
    .end array-data

    :array_10
    .array-data 8
        -0x7063df94f8a6323L    # -5.57374070827978E274
        0x2425b5d2ffccd9b0L    # 1.493470980348687E-134
    .end array-data

    :array_11
    .array-data 8
        0x51b57901dd663821L    # 4.1714316609393026E85
        0x2a2b1be810eae190L    # 1.4774921602537E-105
    .end array-data

    :array_12
    .array-data 8
        -0x29d7091b4167e493L    # -1.1451176151107151E107
        -0x354fe18d8fac07a2L    # -6.030809085573476E51
        -0x10af6828f12752f3L    # -1.5723344236187803E228
        0x3438614d5d1b8349L    # 3.883971895652851E-57
    .end array-data

    :array_13
    .array-data 8
        0x56d0a275b4b009a3L    # 1.5626834609235288E110
        0x1b670c8de3dbe9b9L
        -0x4b70dc57784c05dcL    # -1.58744804862019E-55
    .end array-data

    :array_14
    .array-data 8
        -0x439dd85e46758062L    # -7.873394416533127E-18
        -0x3c2a5393c94507cdL    # -6.2469686124463258E18
        0x3167055b77aca31bL    # 1.0423506320096876E-70
        0x19671af037083798L    # 2.655112632691406E-186
    .end array-data

    :array_15
    .array-data 8
        -0x220c969649051ffL
        -0x7f947a18da98dcf7L
        0x75b98dcb002a6f9eL    # 1.2278155205609068E259
    .end array-data

    :array_16
    .array-data 8
        0x4168bee45ef524acL    # 1.2973858967424713E7
        0x3bece0b3fd1cb2efL    # 4.892080530327861E-20
        0x4ce8d54798b2d88dL    # 3.192423301792751E62
        -0x24162b667f511d01L    # -5.867057460854936E134
    .end array-data

    :array_17
    .array-data 8
        0x16076113f695c604L
        0x5fee8f1d982097d3L    # 1.2804056568901501E154
        -0x25af8823a2048870L    # -1.1147679805661386E127
    .end array-data
.end method
