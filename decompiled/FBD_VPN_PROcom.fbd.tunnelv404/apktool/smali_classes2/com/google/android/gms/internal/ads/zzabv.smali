.class public final Lcom/google/android/gms/internal/ads/zzabv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:[I

.field private static final zzc:[I

.field private static final zzd:[I

.field private static final zze:[I

.field private static final zzf:[I

.field private static final zzg:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x2

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzabv;->zzb:[I

    const v0, 0xac44

    const/16 v1, 0x7d00

    const v2, 0xbb80

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzabv;->zzc:[I

    const/16 v0, 0x5622

    const/16 v1, 0x3e80

    const/16 v2, 0x5dc0

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzabv;->zzd:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzabv;->zze:[I

    const/16 v0, 0x13

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzabv;->zzf:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/gms/internal/ads/zzabv;->zzg:[I

    return-void

    :array_0
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
    .end array-data

    :array_1
    .array-data 4
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
        0x180
        0x1c0
        0x200
        0x240
        0x280
    .end array-data

    :array_2
    .array-data 4
        0x45
        0x57
        0x68
        0x79
        0x8b
        0xae
        0xd0
        0xf3
        0x116
        0x15c
        0x1a1
        0x1e7
        0x22d
        0x2b8
        0x343
        0x3cf
        0x45a
        0x4e5
        0x571
    .end array-data
.end method

.method public static zza(Ljava/nio/ByteBuffer;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, 0x5

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    and-int/lit16 v0, v0, 0xf8

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    shr-int/2addr v0, v1

    .line 15
    const/16 v2, 0xa

    .line 16
    .line 17
    if-le v0, v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    add-int/lit8 v0, v0, 0x4

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    and-int/lit16 v0, v0, 0xc0

    .line 30
    .line 31
    shr-int/lit8 v0, v0, 0x6

    .line 32
    .line 33
    if-ne v0, v1, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    add-int/lit8 v0, v0, 0x4

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    and-int/lit8 p0, p0, 0x30

    .line 47
    .line 48
    shr-int/lit8 v1, p0, 0x4

    .line 49
    .line 50
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzabv;->zzb:[I

    .line 51
    .line 52
    aget p0, p0, v1

    .line 53
    .line 54
    mul-int/lit16 p0, p0, 0x100

    .line 55
    .line 56
    return p0

    .line 57
    :cond_1
    const/16 p0, 0x600

    .line 58
    .line 59
    return p0
.end method

.method public static zzb([B)I
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x6

    .line 3
    if-ge v0, v1, :cond_0

    .line 4
    .line 5
    const/4 p0, -0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 v0, 0x5

    .line 8
    aget-byte v0, p0, v0

    .line 9
    .line 10
    and-int/lit16 v0, v0, 0xf8

    .line 11
    .line 12
    const/4 v2, 0x3

    .line 13
    shr-int/2addr v0, v2

    .line 14
    const/16 v3, 0xa

    .line 15
    .line 16
    if-le v0, v3, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    aget-byte v0, p0, v0

    .line 20
    .line 21
    and-int/lit8 v0, v0, 0x7

    .line 22
    .line 23
    aget-byte p0, p0, v2

    .line 24
    .line 25
    shl-int/lit8 v0, v0, 0x8

    .line 26
    .line 27
    and-int/lit16 p0, p0, 0xff

    .line 28
    .line 29
    or-int/2addr p0, v0

    .line 30
    add-int/lit8 p0, p0, 0x1

    .line 31
    .line 32
    add-int/2addr p0, p0

    .line 33
    return p0

    .line 34
    :cond_1
    const/4 v0, 0x4

    .line 35
    aget-byte p0, p0, v0

    .line 36
    .line 37
    and-int/lit16 v0, p0, 0xc0

    .line 38
    .line 39
    shr-int/2addr v0, v1

    .line 40
    and-int/lit8 p0, p0, 0x3f

    .line 41
    .line 42
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzabv;->zzf(II)I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    return p0
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzfp;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzae;)Lcom/google/android/gms/internal/ads/zzam;
    .locals 6
    .param p3    # Lcom/google/android/gms/internal/ads/zzae;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfo;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzfo;->zzi(Lcom/google/android/gms/internal/ads/zzfp;)V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    sget-object v2, Lcom/google/android/gms/internal/ads/zzabv;->zzc:[I

    .line 15
    .line 16
    aget v1, v2, v1

    .line 17
    .line 18
    const/16 v2, 0x8

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 21
    .line 22
    .line 23
    sget-object v2, Lcom/google/android/gms/internal/ads/zzabv;->zze:[I

    .line 24
    .line 25
    const/4 v3, 0x3

    .line 26
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    aget v2, v2, v4

    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_0

    .line 38
    .line 39
    add-int/2addr v2, v4

    .line 40
    :cond_0
    const/4 v4, 0x5

    .line 41
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    sget-object v5, Lcom/google/android/gms/internal/ads/zzabv;->zzf:[I

    .line 46
    .line 47
    aget v4, v5, v4

    .line 48
    .line 49
    mul-int/lit16 v4, v4, 0x3e8

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfo;->zze()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfo;->zzb()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 59
    .line 60
    .line 61
    new-instance p0, Lcom/google/android/gms/internal/ads/zzak;

    .line 62
    .line 63
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzak;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzak;->zzK(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    .line 67
    .line 68
    .line 69
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    new-array v0, v3, [J

    .line 72
    .line 73
    fill-array-data v0, :array_0

    .line 74
    .line 75
    .line 76
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzak;->zzW(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzak;->zzy(I)Lcom/google/android/gms/internal/ads/zzak;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzak;->zzX(I)Lcom/google/android/gms/internal/ads/zzak;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzak;->zzE(Lcom/google/android/gms/internal/ads/zzae;)Lcom/google/android/gms/internal/ads/zzak;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzak;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzak;->zzx(I)Lcom/google/android/gms/internal/ads/zzak;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzak;->zzR(I)Lcom/google/android/gms/internal/ads/zzak;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    return-object p0

    .line 109
    :array_0
    .array-data 8
        0x127bd84b68efbbdaL
        0x389db33ba7c958b9L    # 5.58597342096153E-36
        0x6a35c955e1ef60bL
    .end array-data
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzfp;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzae;)Lcom/google/android/gms/internal/ads/zzam;
    .locals 9
    .param p3    # Lcom/google/android/gms/internal/ads/zzae;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfo;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzfo;->zzi(Lcom/google/android/gms/internal/ads/zzfp;)V

    .line 7
    .line 8
    .line 9
    const/16 v1, 0xd

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    mul-int/lit16 v1, v1, 0x3e8

    .line 16
    .line 17
    const/4 v2, 0x3

    .line 18
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 19
    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    sget-object v5, Lcom/google/android/gms/internal/ads/zzabv;->zzc:[I

    .line 27
    .line 28
    aget v4, v5, v4

    .line 29
    .line 30
    const/16 v5, 0xa

    .line 31
    .line 32
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 33
    .line 34
    .line 35
    sget-object v5, Lcom/google/android/gms/internal/ads/zzabv;->zze:[I

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    aget v5, v5, v6

    .line 42
    .line 43
    const/4 v6, 0x1

    .line 44
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    if-eqz v7, :cond_0

    .line 49
    .line 50
    add-int/2addr v5, v6

    .line 51
    :cond_0
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 52
    .line 53
    .line 54
    const/4 v7, 0x4

    .line 55
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 60
    .line 61
    .line 62
    if-lez v7, :cond_2

    .line 63
    .line 64
    const/4 v7, 0x6

    .line 65
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-eqz v7, :cond_1

    .line 73
    .line 74
    add-int/2addr v5, v3

    .line 75
    :cond_1
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 76
    .line 77
    .line 78
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfo;->zza()I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 83
    .line 84
    new-array v8, v2, [J

    .line 85
    .line 86
    fill-array-data v8, :array_0

    .line 87
    .line 88
    .line 89
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    const/4 v8, 0x7

    .line 97
    if-le v3, v8, :cond_3

    .line 98
    .line 99
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_3

    .line 107
    .line 108
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 109
    .line 110
    new-array v2, v2, [J

    .line 111
    .line 112
    fill-array-data v2, :array_1

    .line 113
    .line 114
    .line 115
    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfo;->zze()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfo;->zzb()I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfp;->zzK(I)V

    .line 130
    .line 131
    .line 132
    new-instance p0, Lcom/google/android/gms/internal/ads/zzak;

    .line 133
    .line 134
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzak;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzak;->zzK(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/ads/zzak;->zzW(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/ads/zzak;->zzy(I)Lcom/google/android/gms/internal/ads/zzak;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzak;->zzX(I)Lcom/google/android/gms/internal/ads/zzak;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzak;->zzE(Lcom/google/android/gms/internal/ads/zzae;)Lcom/google/android/gms/internal/ads/zzak;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzak;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzak;->zzR(I)Lcom/google/android/gms/internal/ads/zzak;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    return-object p0

    .line 163
    :array_0
    .array-data 8
        0x4c028db3812779edL    # 1.455779178666773E58
        0x535aeb91a129d78cL    # 3.5095934280562E93
        -0x5b584f9c337a86e7L    # -4.17175752803739E-132
    .end array-data

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
    .line 178
    .line 179
    :array_1
    .array-data 8
        -0x6f98f7c05febd9f3L
        -0xb9af5d0cf5b8927L    # -4.820450490161704E252
        -0x6076da7af542eb2L
    .end array-data
.end method

.method public static zze(Lcom/google/android/gms/internal/ads/zzfo;)Lcom/google/android/gms/internal/ads/zzabu;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfo;->zzc()I

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    const/16 v4, 0x28

    .line 11
    .line 12
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x5

    .line 16
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfo;->zzk(I)V

    .line 21
    .line 22
    .line 23
    const/4 v3, -0x1

    .line 24
    const/16 v6, 0x8

    .line 25
    .line 26
    const/4 v7, 0x6

    .line 27
    const/4 v8, 0x3

    .line 28
    const/4 v9, 0x1

    .line 29
    const/4 v10, 0x2

    .line 30
    const/16 v11, 0xa

    .line 31
    .line 32
    if-le v5, v11, :cond_2d

    .line 33
    .line 34
    const/16 v5, 0x10

    .line 35
    .line 36
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 40
    .line 41
    .line 42
    move-result v12

    .line 43
    if-eqz v12, :cond_2

    .line 44
    .line 45
    if-eq v12, v9, :cond_1

    .line 46
    .line 47
    if-eq v12, v10, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 v3, 0x2

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 v3, 0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const/4 v3, 0x0

    .line 55
    :goto_0
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 56
    .line 57
    .line 58
    const/16 v12, 0xb

    .line 59
    .line 60
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 61
    .line 62
    .line 63
    move-result v12

    .line 64
    add-int/2addr v12, v9

    .line 65
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 66
    .line 67
    .line 68
    move-result v14

    .line 69
    if-ne v14, v8, :cond_3

    .line 70
    .line 71
    sget-object v15, Lcom/google/android/gms/internal/ads/zzabv;->zzd:[I

    .line 72
    .line 73
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 74
    .line 75
    .line 76
    move-result v16

    .line 77
    aget v15, v15, v16

    .line 78
    .line 79
    const/4 v13, 0x6

    .line 80
    const/16 v16, 0x3

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 84
    .line 85
    .line 86
    move-result v15

    .line 87
    sget-object v16, Lcom/google/android/gms/internal/ads/zzabv;->zzb:[I

    .line 88
    .line 89
    aget v16, v16, v15

    .line 90
    .line 91
    sget-object v17, Lcom/google/android/gms/internal/ads/zzabv;->zzc:[I

    .line 92
    .line 93
    aget v17, v17, v14

    .line 94
    .line 95
    move/from16 v13, v16

    .line 96
    .line 97
    move/from16 v16, v15

    .line 98
    .line 99
    move/from16 v15, v17

    .line 100
    .line 101
    :goto_1
    add-int/2addr v12, v12

    .line 102
    mul-int/lit8 v1, v13, 0x20

    .line 103
    .line 104
    mul-int v18, v12, v15

    .line 105
    .line 106
    div-int v18, v18, v1

    .line 107
    .line 108
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfo;->zzo()Z

    .line 113
    .line 114
    .line 115
    move-result v19

    .line 116
    sget-object v20, Lcom/google/android/gms/internal/ads/zzabv;->zze:[I

    .line 117
    .line 118
    aget v20, v20, v1

    .line 119
    .line 120
    add-int v20, v20, v19

    .line 121
    .line 122
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfo;->zzo()Z

    .line 126
    .line 127
    .line 128
    move-result v11

    .line 129
    if-eqz v11, :cond_4

    .line 130
    .line 131
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 132
    .line 133
    .line 134
    :cond_4
    if-nez v1, :cond_6

    .line 135
    .line 136
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfo;->zzo()Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-eqz v1, :cond_5

    .line 144
    .line 145
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 146
    .line 147
    .line 148
    :cond_5
    const/4 v1, 0x0

    .line 149
    const/4 v11, 0x0

    .line 150
    goto :goto_2

    .line 151
    :cond_6
    move v11, v1

    .line 152
    :goto_2
    if-ne v3, v9, :cond_8

    .line 153
    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfo;->zzo()Z

    .line 155
    .line 156
    .line 157
    move-result v21

    .line 158
    if-eqz v21, :cond_7

    .line 159
    .line 160
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 161
    .line 162
    .line 163
    :cond_7
    const/4 v5, 0x1

    .line 164
    goto :goto_3

    .line 165
    :cond_8
    move v5, v3

    .line 166
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfo;->zzo()Z

    .line 167
    .line 168
    .line 169
    move-result v21

    .line 170
    if-eqz v21, :cond_22

    .line 171
    .line 172
    if-le v1, v10, :cond_9

    .line 173
    .line 174
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 175
    .line 176
    .line 177
    :cond_9
    and-int/lit8 v21, v1, 0x1

    .line 178
    .line 179
    if-eqz v21, :cond_a

    .line 180
    .line 181
    if-le v1, v10, :cond_a

    .line 182
    .line 183
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 184
    .line 185
    .line 186
    :cond_a
    and-int/lit8 v21, v1, 0x4

    .line 187
    .line 188
    if-eqz v21, :cond_b

    .line 189
    .line 190
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 191
    .line 192
    .line 193
    :cond_b
    if-eqz v19, :cond_c

    .line 194
    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfo;->zzo()Z

    .line 196
    .line 197
    .line 198
    move-result v19

    .line 199
    if-eqz v19, :cond_c

    .line 200
    .line 201
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 202
    .line 203
    .line 204
    :cond_c
    if-nez v5, :cond_22

    .line 205
    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfo;->zzo()Z

    .line 207
    .line 208
    .line 209
    move-result v5

    .line 210
    if-eqz v5, :cond_d

    .line 211
    .line 212
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 213
    .line 214
    .line 215
    :cond_d
    if-nez v1, :cond_e

    .line 216
    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfo;->zzo()Z

    .line 218
    .line 219
    .line 220
    move-result v5

    .line 221
    if-eqz v5, :cond_e

    .line 222
    .line 223
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 224
    .line 225
    .line 226
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfo;->zzo()Z

    .line 227
    .line 228
    .line 229
    move-result v5

    .line 230
    if-eqz v5, :cond_f

    .line 231
    .line 232
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 233
    .line 234
    .line 235
    :cond_f
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 236
    .line 237
    .line 238
    move-result v5

    .line 239
    if-ne v5, v9, :cond_10

    .line 240
    .line 241
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 242
    .line 243
    .line 244
    goto/16 :goto_4

    .line 245
    .line 246
    :cond_10
    if-ne v5, v10, :cond_11

    .line 247
    .line 248
    const/16 v5, 0xc

    .line 249
    .line 250
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 251
    .line 252
    .line 253
    goto/16 :goto_4

    .line 254
    .line 255
    :cond_11
    if-ne v5, v8, :cond_1c

    .line 256
    .line 257
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 258
    .line 259
    .line 260
    move-result v5

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfo;->zzo()Z

    .line 262
    .line 263
    .line 264
    move-result v19

    .line 265
    if-eqz v19, :cond_1a

    .line 266
    .line 267
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 268
    .line 269
    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfo;->zzo()Z

    .line 271
    .line 272
    .line 273
    move-result v19

    .line 274
    if-eqz v19, :cond_12

    .line 275
    .line 276
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 277
    .line 278
    .line 279
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfo;->zzo()Z

    .line 280
    .line 281
    .line 282
    move-result v19

    .line 283
    if-eqz v19, :cond_13

    .line 284
    .line 285
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 286
    .line 287
    .line 288
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfo;->zzo()Z

    .line 289
    .line 290
    .line 291
    move-result v19

    .line 292
    if-eqz v19, :cond_14

    .line 293
    .line 294
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 295
    .line 296
    .line 297
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfo;->zzo()Z

    .line 298
    .line 299
    .line 300
    move-result v19

    .line 301
    if-eqz v19, :cond_15

    .line 302
    .line 303
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 304
    .line 305
    .line 306
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfo;->zzo()Z

    .line 307
    .line 308
    .line 309
    move-result v19

    .line 310
    if-eqz v19, :cond_16

    .line 311
    .line 312
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 313
    .line 314
    .line 315
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfo;->zzo()Z

    .line 316
    .line 317
    .line 318
    move-result v19

    .line 319
    if-eqz v19, :cond_17

    .line 320
    .line 321
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 322
    .line 323
    .line 324
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfo;->zzo()Z

    .line 325
    .line 326
    .line 327
    move-result v19

    .line 328
    if-eqz v19, :cond_18

    .line 329
    .line 330
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 331
    .line 332
    .line 333
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfo;->zzo()Z

    .line 334
    .line 335
    .line 336
    move-result v19

    .line 337
    if-eqz v19, :cond_1a

    .line 338
    .line 339
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfo;->zzo()Z

    .line 340
    .line 341
    .line 342
    move-result v19

    .line 343
    if-eqz v19, :cond_19

    .line 344
    .line 345
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 346
    .line 347
    .line 348
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfo;->zzo()Z

    .line 349
    .line 350
    .line 351
    move-result v19

    .line 352
    if-eqz v19, :cond_1a

    .line 353
    .line 354
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 355
    .line 356
    .line 357
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfo;->zzo()Z

    .line 358
    .line 359
    .line 360
    move-result v19

    .line 361
    if-eqz v19, :cond_1b

    .line 362
    .line 363
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 364
    .line 365
    .line 366
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfo;->zzo()Z

    .line 367
    .line 368
    .line 369
    move-result v19

    .line 370
    if-eqz v19, :cond_1b

    .line 371
    .line 372
    const/4 v8, 0x7

    .line 373
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 374
    .line 375
    .line 376
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfo;->zzo()Z

    .line 377
    .line 378
    .line 379
    move-result v8

    .line 380
    if-eqz v8, :cond_1b

    .line 381
    .line 382
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 383
    .line 384
    .line 385
    :cond_1b
    add-int/2addr v5, v10

    .line 386
    mul-int/lit8 v5, v5, 0x8

    .line 387
    .line 388
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 389
    .line 390
    .line 391
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfo;->zze()V

    .line 392
    .line 393
    .line 394
    :cond_1c
    :goto_4
    if-ge v1, v10, :cond_1e

    .line 395
    .line 396
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfo;->zzo()Z

    .line 397
    .line 398
    .line 399
    move-result v5

    .line 400
    const/16 v8, 0xe

    .line 401
    .line 402
    if-eqz v5, :cond_1d

    .line 403
    .line 404
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 405
    .line 406
    .line 407
    :cond_1d
    if-nez v11, :cond_1e

    .line 408
    .line 409
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfo;->zzo()Z

    .line 410
    .line 411
    .line 412
    move-result v5

    .line 413
    if-eqz v5, :cond_1e

    .line 414
    .line 415
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 416
    .line 417
    .line 418
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfo;->zzo()Z

    .line 419
    .line 420
    .line 421
    move-result v5

    .line 422
    if-eqz v5, :cond_21

    .line 423
    .line 424
    if-nez v16, :cond_1f

    .line 425
    .line 426
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 427
    .line 428
    .line 429
    const/4 v5, 0x0

    .line 430
    :goto_5
    const/4 v8, 0x0

    .line 431
    goto :goto_7

    .line 432
    :cond_1f
    const/4 v5, 0x0

    .line 433
    :goto_6
    if-ge v5, v13, :cond_21

    .line 434
    .line 435
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfo;->zzo()Z

    .line 436
    .line 437
    .line 438
    move-result v8

    .line 439
    if-eqz v8, :cond_20

    .line 440
    .line 441
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 442
    .line 443
    .line 444
    :cond_20
    add-int/2addr v5, v9

    .line 445
    goto :goto_6

    .line 446
    :cond_21
    move/from16 v5, v16

    .line 447
    .line 448
    goto :goto_5

    .line 449
    :cond_22
    move v8, v5

    .line 450
    move/from16 v5, v16

    .line 451
    .line 452
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfo;->zzo()Z

    .line 453
    .line 454
    .line 455
    move-result v11

    .line 456
    if-eqz v11, :cond_27

    .line 457
    .line 458
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 459
    .line 460
    .line 461
    if-ne v1, v10, :cond_23

    .line 462
    .line 463
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 464
    .line 465
    .line 466
    const/4 v1, 0x2

    .line 467
    :cond_23
    if-lt v1, v7, :cond_24

    .line 468
    .line 469
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 470
    .line 471
    .line 472
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfo;->zzo()Z

    .line 473
    .line 474
    .line 475
    move-result v2

    .line 476
    if-eqz v2, :cond_25

    .line 477
    .line 478
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 479
    .line 480
    .line 481
    :cond_25
    if-nez v1, :cond_26

    .line 482
    .line 483
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfo;->zzo()Z

    .line 484
    .line 485
    .line 486
    move-result v1

    .line 487
    if-eqz v1, :cond_26

    .line 488
    .line 489
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 490
    .line 491
    .line 492
    :cond_26
    const/4 v1, 0x3

    .line 493
    if-ge v14, v1, :cond_28

    .line 494
    .line 495
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfo;->zzl()V

    .line 496
    .line 497
    .line 498
    goto :goto_8

    .line 499
    :cond_27
    const/4 v1, 0x3

    .line 500
    :cond_28
    :goto_8
    if-nez v8, :cond_29

    .line 501
    .line 502
    if-eq v5, v1, :cond_29

    .line 503
    .line 504
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfo;->zzl()V

    .line 505
    .line 506
    .line 507
    :cond_29
    if-ne v8, v10, :cond_2b

    .line 508
    .line 509
    if-eq v5, v1, :cond_2a

    .line 510
    .line 511
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfo;->zzo()Z

    .line 512
    .line 513
    .line 514
    move-result v2

    .line 515
    if-eqz v2, :cond_2b

    .line 516
    .line 517
    :cond_2a
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 518
    .line 519
    .line 520
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfo;->zzo()Z

    .line 521
    .line 522
    .line 523
    move-result v2

    .line 524
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 525
    .line 526
    new-array v5, v1, [J

    .line 527
    .line 528
    fill-array-data v5, :array_0

    .line 529
    .line 530
    .line 531
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v4

    .line 538
    if-eqz v2, :cond_2c

    .line 539
    .line 540
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 541
    .line 542
    .line 543
    move-result v2

    .line 544
    if-ne v2, v9, :cond_2c

    .line 545
    .line 546
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 547
    .line 548
    .line 549
    move-result v0

    .line 550
    if-ne v0, v9, :cond_2c

    .line 551
    .line 552
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 553
    .line 554
    new-array v1, v1, [J

    .line 555
    .line 556
    fill-array-data v1, :array_1

    .line 557
    .line 558
    .line 559
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v4

    .line 566
    :cond_2c
    mul-int/lit16 v13, v13, 0x100

    .line 567
    .line 568
    move/from16 v23, v3

    .line 569
    .line 570
    move-object/from16 v22, v4

    .line 571
    .line 572
    move/from16 v26, v12

    .line 573
    .line 574
    move/from16 v27, v13

    .line 575
    .line 576
    move/from16 v25, v15

    .line 577
    .line 578
    move/from16 v28, v18

    .line 579
    .line 580
    move/from16 v24, v20

    .line 581
    .line 582
    goto/16 :goto_b

    .line 583
    .line 584
    :cond_2d
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 588
    .line 589
    .line 590
    move-result v1

    .line 591
    const/4 v4, 0x3

    .line 592
    if-ne v1, v4, :cond_2e

    .line 593
    .line 594
    const/4 v5, 0x0

    .line 595
    move-object v4, v5

    .line 596
    goto :goto_9

    .line 597
    :cond_2e
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 598
    .line 599
    new-array v8, v4, [J

    .line 600
    .line 601
    fill-array-data v8, :array_2

    .line 602
    .line 603
    .line 604
    invoke-direct {v5, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 605
    .line 606
    .line 607
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v4

    .line 611
    :goto_9
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 612
    .line 613
    .line 614
    move-result v5

    .line 615
    div-int/lit8 v7, v5, 0x2

    .line 616
    .line 617
    sget-object v8, Lcom/google/android/gms/internal/ads/zzabv;->zzf:[I

    .line 618
    .line 619
    aget v7, v8, v7

    .line 620
    .line 621
    mul-int/lit16 v7, v7, 0x3e8

    .line 622
    .line 623
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/ads/zzabv;->zzf(II)I

    .line 624
    .line 625
    .line 626
    move-result v12

    .line 627
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 628
    .line 629
    .line 630
    const/4 v5, 0x3

    .line 631
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(I)I

    .line 632
    .line 633
    .line 634
    move-result v6

    .line 635
    and-int/lit8 v5, v6, 0x1

    .line 636
    .line 637
    if-eqz v5, :cond_2f

    .line 638
    .line 639
    if-eq v6, v9, :cond_2f

    .line 640
    .line 641
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 642
    .line 643
    .line 644
    :cond_2f
    and-int/2addr v2, v6

    .line 645
    if-eqz v2, :cond_30

    .line 646
    .line 647
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 648
    .line 649
    .line 650
    :cond_30
    if-ne v6, v10, :cond_31

    .line 651
    .line 652
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzfo;->zzm(I)V

    .line 653
    .line 654
    .line 655
    :cond_31
    const/4 v2, 0x3

    .line 656
    if-ge v1, v2, :cond_32

    .line 657
    .line 658
    sget-object v2, Lcom/google/android/gms/internal/ads/zzabv;->zzc:[I

    .line 659
    .line 660
    aget v1, v2, v1

    .line 661
    .line 662
    move v15, v1

    .line 663
    goto :goto_a

    .line 664
    :cond_32
    const/4 v15, -0x1

    .line 665
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfo;->zzo()Z

    .line 666
    .line 667
    .line 668
    move-result v0

    .line 669
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabv;->zze:[I

    .line 670
    .line 671
    aget v1, v1, v6

    .line 672
    .line 673
    add-int v20, v1, v0

    .line 674
    .line 675
    const/16 v13, 0x600

    .line 676
    .line 677
    move-object/from16 v22, v4

    .line 678
    .line 679
    move/from16 v28, v7

    .line 680
    .line 681
    move/from16 v26, v12

    .line 682
    .line 683
    move/from16 v25, v15

    .line 684
    .line 685
    move/from16 v24, v20

    .line 686
    .line 687
    const/16 v23, -0x1

    .line 688
    .line 689
    const/16 v27, 0x600

    .line 690
    .line 691
    :goto_b
    new-instance v0, Lcom/google/android/gms/internal/ads/zzabu;

    .line 692
    .line 693
    const/16 v29, 0x0

    .line 694
    .line 695
    move-object/from16 v21, v0

    .line 696
    .line 697
    invoke-direct/range {v21 .. v29}, Lcom/google/android/gms/internal/ads/zzabu;-><init>(Ljava/lang/String;IIIIIILcom/google/android/gms/internal/ads/zzabt;)V

    .line 698
    .line 699
    .line 700
    return-object v0

    .line 701
    :array_0
    .array-data 8
        0x19fc44e58f84aec3L
        -0x5dacef8b9bfe2e95L
        -0x195ef885d63d220fL    # -2.315483969592571E186
    .end array-data

    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    :array_1
    .array-data 8
        -0x5c50e1e710e7e58fL    # -8.361758653516608E-137
        0x1b303ecf1babab63L
        0x61dedfcd359e3404L    # 2.7780095347541278E163
    .end array-data

    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    :array_2
    .array-data 8
        0x1e65ec1c6f36f2fbL    # 3.045500241301728E-162
        0x75ec99ce6dda4ecfL    # 1.0993716898575704E260
        0x9c5971c86ac7498L
    .end array-data
.end method

.method private static zzf(II)I
    .locals 2

    if-ltz p0, :cond_3

    const/4 v0, 0x3

    if-ge p0, v0, :cond_3

    if-ltz p1, :cond_3

    shr-int/lit8 v0, p1, 0x1

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabv;->zzc:[I

    aget p0, v1, p0

    const v1, 0xac44

    if-ne p0, v1, :cond_1

    sget-object p0, Lcom/google/android/gms/internal/ads/zzabv;->zzg:[I

    aget p0, p0, v0

    and-int/lit8 p1, p1, 0x1

    add-int/2addr p0, p1

    add-int/2addr p0, p0

    return p0

    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabv;->zzf:[I

    aget p1, p1, v0

    const/16 v0, 0x7d00

    if-ne p0, v0, :cond_2

    mul-int/lit8 p1, p1, 0x6

    return p1

    :cond_2
    mul-int/lit8 p1, p1, 0x4

    return p1

    :cond_3
    :goto_0
    const/4 p0, -0x1

    return p0
.end method
