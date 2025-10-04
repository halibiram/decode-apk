.class public final Lcom/google/android/gms/internal/ads/zzgci;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgcg;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgcg;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgci;->zza:Ljava/io/OutputStream;

    .line 7
    .line 8
    return-void
.end method

.method public static zza(Ljava/io/InputStream;J)Ljava/io/InputStream;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgch;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgch;-><init>(Ljava/io/InputStream;J)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static zzb(Ljava/io/InputStream;)[B
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    .line 5
    .line 6
    const/16 v1, 0x14

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    add-int/2addr v2, v2

    .line 17
    const/16 v3, 0x80

    .line 18
    .line 19
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/16 v3, 0x2000

    .line 24
    .line 25
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, 0x0

    .line 30
    :goto_0
    const/4 v4, -0x1

    .line 31
    const v5, 0x7ffffff7

    .line 32
    .line 33
    .line 34
    if-ge v3, v5, :cond_3

    .line 35
    .line 36
    sub-int/2addr v5, v3

    .line 37
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    new-array v6, v5, [B

    .line 42
    .line 43
    invoke-virtual {v0, v6}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    const/4 v7, 0x0

    .line 47
    :goto_1
    if-ge v7, v5, :cond_1

    .line 48
    .line 49
    sub-int v8, v5, v7

    .line 50
    .line 51
    invoke-virtual {p0, v6, v7, v8}, Ljava/io/InputStream;->read([BII)I

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    if-ne v8, v4, :cond_0

    .line 56
    .line 57
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzgci;->zzc(Ljava/util/Queue;I)[B

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    goto :goto_3

    .line 62
    :cond_0
    add-int/2addr v7, v8

    .line 63
    add-int/2addr v3, v8

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    const/16 v4, 0x1000

    .line 66
    .line 67
    if-ge v2, v4, :cond_2

    .line 68
    .line 69
    const/4 v4, 0x4

    .line 70
    goto :goto_2

    .line 71
    :cond_2
    const/4 v4, 0x2

    .line 72
    :goto_2
    int-to-long v5, v2

    .line 73
    int-to-long v7, v4

    .line 74
    mul-long v5, v5, v7

    .line 75
    .line 76
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzgcu;->zzc(J)I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    goto :goto_0

    .line 81
    :cond_3
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    if-ne p0, v4, :cond_4

    .line 86
    .line 87
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ads/zzgci;->zzc(Ljava/util/Queue;I)[B

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    :goto_3
    return-object p0

    .line 92
    :cond_4
    new-instance p0, Ljava/lang/OutOfMemoryError;

    .line 93
    .line 94
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 95
    .line 96
    const/4 v1, 0x7

    .line 97
    new-array v1, v1, [J

    .line 98
    .line 99
    fill-array-data v1, :array_0

    .line 100
    .line 101
    .line 102
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-direct {p0, v0}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p0

    .line 113
    :array_0
    .array-data 8
        0x5484daafa52e76beL    # 1.4254205411030205E99
        -0x664c23f341a20a56L    # -7.302852010393449E-185
        0x2da156ddbb84ac92L    # 6.809627741790978E-89
        -0x730f52711e62c5d4L
        -0x3d8e240ae56ad3abL    # -1.2272754793787708E12
        -0x2f86af8b731e43cfL    # -4.6899090966550015E79
        -0x5805ac94e2eda76L
    .end array-data
.end method

.method private static zzc(Ljava/util/Queue;I)[B
    .locals 6

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    new-array p0, v1, [B

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    invoke-interface {p0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, [B

    .line 16
    .line 17
    array-length v2, v0

    .line 18
    if-ne v2, p1, :cond_1

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_1
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sub-int v2, p1, v2

    .line 26
    .line 27
    :goto_0
    if-lez v2, :cond_2

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, [B

    .line 34
    .line 35
    array-length v4, v3

    .line 36
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    sub-int v5, p1, v2

    .line 41
    .line 42
    invoke-static {v3, v1, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    .line 44
    .line 45
    sub-int/2addr v2, v4

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    return-object v0
.end method
