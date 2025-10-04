.class public final Lcom/google/android/gms/internal/ads/zzem;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:[B

.field private static final zzc:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    sput-object v2, Lcom/google/android/gms/internal/ads/zzem;->zzb:[B

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    const-wide v3, -0x320aa83676ff5cb9L    # -3.596274725899056E67

    aput-wide v3, v1, v0

    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x2

    new-array v3, v2, [J

    fill-array-data v3, :array_1

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_2

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v2, [J

    fill-array-data v2, :array_3

    invoke-direct {v4, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v3, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzem;->zzc:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 8
        0x1179d50731a9d3fL
        0x7e8b5055bc947596L    # 3.658372577664025E301
    .end array-data

    :array_2
    .array-data 8
        0x78dd37d8d59b6c3cL    # 1.5806249075160319E274
        0x512608d65b91c5beL    # 8.36050355247651E82
    .end array-data

    :array_3
    .array-data 8
        -0x24f0e77184d0d2f3L    # -4.3109363168069768E130
        0x7e203994e66cfb2dL    # 3.395537169647875E299
    .end array-data
.end method

.method public static zza(III)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    const/4 v0, 0x3

    .line 14
    new-array v0, v0, [Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    aput-object p0, v0, v1

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    aput-object p1, v0, p0

    .line 21
    .line 22
    const/4 p0, 0x2

    .line 23
    aput-object p2, v0, p0

    .line 24
    .line 25
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    const/4 p1, 0x4

    .line 28
    new-array p1, p1, [J

    .line 29
    .line 30
    fill-array-data p1, :array_0

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :array_0
    .array-data 8
        -0x39e5c08bd88c6829L    # -5.198925506723256E29
        0x343a89a677a2e8a5L    # 4.227698937913181E-57
        0x1ccc8d385c5f11dfL    # 5.910490676391857E-170
        -0x5d40a71fc3cf5b20L
    .end array-data
.end method

.method public static zzb(IZII[II)Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x0

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    sget-object v4, Lcom/google/android/gms/internal/ads/zzem;->zzc:[Ljava/lang/String;

    .line 7
    .line 8
    aget-object p0, v4, p0

    .line 9
    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    const/4 v4, 0x1

    .line 19
    if-eq v4, p1, :cond_0

    .line 20
    .line 21
    const/16 p1, 0x4c

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/16 p1, 0x48

    .line 25
    .line 26
    :goto_0
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object p5

    .line 34
    const/4 v5, 0x5

    .line 35
    new-array v5, v5, [Ljava/lang/Object;

    .line 36
    .line 37
    aput-object p0, v5, v2

    .line 38
    .line 39
    aput-object p2, v5, v4

    .line 40
    .line 41
    aput-object p3, v5, v1

    .line 42
    .line 43
    const/4 p0, 0x3

    .line 44
    aput-object p1, v5, p0

    .line 45
    .line 46
    aput-object p5, v5, v0

    .line 47
    .line 48
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 49
    .line 50
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    new-array p2, v0, [J

    .line 53
    .line 54
    fill-array-data p2, :array_0

    .line 55
    .line 56
    .line 57
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p0, p1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const/4 p0, 0x6

    .line 72
    :goto_1
    if-lez p0, :cond_1

    .line 73
    .line 74
    add-int/lit8 p1, p0, -0x1

    .line 75
    .line 76
    aget p2, p4, p1

    .line 77
    .line 78
    if-nez p2, :cond_1

    .line 79
    .line 80
    move p0, p1

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    const/4 p1, 0x0

    .line 83
    :goto_2
    if-ge p1, p0, :cond_2

    .line 84
    .line 85
    aget p2, p4, p1

    .line 86
    .line 87
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    new-array p3, v4, [Ljava/lang/Object;

    .line 92
    .line 93
    aput-object p2, p3, v2

    .line 94
    .line 95
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 96
    .line 97
    new-array p5, v1, [J

    .line 98
    .line 99
    fill-array-data p5, :array_1

    .line 100
    .line 101
    .line 102
    invoke-direct {p2, p5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    add-int/2addr p1, v4

    .line 117
    goto :goto_2

    .line 118
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    return-object p0

    .line 123
    :array_0
    .array-data 8
        -0x7b05f8708b929903L    # -1.094033150701218E-284
        -0x10668db50d2381c7L    # -3.8580159688117433E229
        0x41d478c59fcdf3b7L    # 1.3738369272180002E9
        0x5bc620041cf85d28L    # 1.2563556556897736E134
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
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    :array_1
    .array-data 8
        0x45a28a3692f82d20L    # 2.8689098293943623E27
        0x122b44254d91dca8L
    .end array-data
.end method

.method public static zzc([BII)[B
    .locals 4

    .line 1
    add-int/lit8 v0, p2, 0x4

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    sget-object v1, Lcom/google/android/gms/internal/ads/zzem;->zzb:[B

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x4

    .line 9
    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0, p1, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method
