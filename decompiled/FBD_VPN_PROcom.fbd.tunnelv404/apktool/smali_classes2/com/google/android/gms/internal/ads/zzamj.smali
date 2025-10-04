.class public final Lcom/google/android/gms/internal/ads/zzamj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x3

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzamj;->zza:Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 8
        -0x1015818fde886ba0L    # -1.2853830226403054E231
        -0x59fc3019ca0ed7e6L
        0x6e32121e3bd9cafL
    .end array-data
.end method

.method public static zza(Ljava/lang/String;)F
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    add-int/lit8 v0, v0, -0x1

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    const/high16 v0, 0x42c80000    # 100.0f

    .line 38
    .line 39
    div-float/2addr p0, v0

    .line 40
    return p0

    .line 41
    :cond_0
    new-instance p0, Ljava/lang/NumberFormatException;

    .line 42
    .line 43
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    const/4 v1, 0x5

    .line 46
    new-array v1, v1, [J

    .line 47
    .line 48
    fill-array-data v1, :array_1

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0

    .line 62
    nop

    .line 63
    :array_0
    .array-data 8
        -0x55a7c29c5d6ee90eL
        -0x19a5239e5a8f6902L    # -1.1413460721636908E185
    .end array-data

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    :array_1
    .array-data 8
        -0x1f04d678c64d4670L    # -1.4917051338382255E159
        0x2bbe5ecd720f69d3L    # 5.554063282487002E-98
        -0x5d933ef473576bbdL    # -7.368711993839421E-143
        0x623f921b8fc8a3d6L    # 1.8180352826387941E165
        0x29f75a12d292979cL
    .end array-data
.end method

.method public static zzb(Ljava/lang/String;)J
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    sget v1, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 3
    .line 4
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    new-array v3, v2, [J

    .line 8
    .line 9
    fill-array-data v3, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const/4 v1, 0x0

    .line 24
    aget-object v3, p0, v1

    .line 25
    .line 26
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    new-array v5, v2, [J

    .line 29
    .line 30
    fill-array-data v5, :array_1

    .line 31
    .line 32
    .line 33
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const/4 v5, -0x1

    .line 41
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    array-length v4, v3

    .line 46
    const-wide/16 v5, 0x0

    .line 47
    .line 48
    :goto_0
    if-ge v1, v4, :cond_0

    .line 49
    .line 50
    aget-object v7, v3, v1

    .line 51
    .line 52
    const-wide/16 v8, 0x3c

    .line 53
    .line 54
    mul-long v5, v5, v8

    .line 55
    .line 56
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 57
    .line 58
    .line 59
    move-result-wide v7

    .line 60
    add-long/2addr v5, v7

    .line 61
    add-int/2addr v1, v0

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const-wide/16 v3, 0x3e8

    .line 64
    .line 65
    mul-long v5, v5, v3

    .line 66
    .line 67
    array-length v1, p0

    .line 68
    if-ne v1, v2, :cond_1

    .line 69
    .line 70
    aget-object p0, p0, v0

    .line 71
    .line 72
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 73
    .line 74
    .line 75
    move-result-wide v0

    .line 76
    add-long/2addr v5, v0

    .line 77
    :cond_1
    mul-long v5, v5, v3

    .line 78
    .line 79
    return-wide v5

    .line 80
    nop

    .line 81
    :array_0
    .array-data 8
        0xd1616d4b2b2f2e5L
        -0x3e47781fc2e6d733L    # -4.115579490982788E8
    .end array-data

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    :array_1
    .array-data 8
        0x79b235c562ce3eb6L    # 1.6140128388775074E278
        -0xf73c2714a6d96d5L    # -1.4030023441221812E234
    .end array-data
.end method
