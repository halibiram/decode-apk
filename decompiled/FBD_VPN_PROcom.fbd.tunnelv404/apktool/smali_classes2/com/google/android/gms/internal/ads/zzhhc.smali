.class public final Lcom/google/android/gms/internal/ads/zzhhc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhhm;
.implements Lcom/google/android/gms/internal/ads/zzhgx;


# static fields
.field private static final zza:Ljava/lang/Object;


# instance fields
.field private volatile zzb:Lcom/google/android/gms/internal/ads/zzhhm;

.field private volatile zzc:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhhc;->zza:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzhhm;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhhc;->zza:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhhc;->zzc:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhhc;->zzb:Lcom/google/android/gms/internal/ads/zzhhm;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzhhm;)Lcom/google/android/gms/internal/ads/zzhgx;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzhgx;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lcom/google/android/gms/internal/ads/zzhgx;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhhc;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzhhc;-><init>(Lcom/google/android/gms/internal/ads/zzhhm;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzhhm;)Lcom/google/android/gms/internal/ads/zzhhm;
    .locals 1

    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzhhc;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhhc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzhhc;-><init>(Lcom/google/android/gms/internal/ads/zzhhm;)V

    return-object v0
.end method


# virtual methods
.method public final zzb()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhhc;->zzc:Ljava/lang/Object;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzhhc;->zza:Ljava/lang/Object;

    .line 4
    .line 5
    if-ne v0, v1, :cond_3

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhhc;->zzc:Ljava/lang/Object;

    .line 9
    .line 10
    if-ne v0, v1, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhhc;->zzb:Lcom/google/android/gms/internal/ads/zzhhm;

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhhu;->zzb()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhhc;->zzc:Ljava/lang/Object;

    .line 19
    .line 20
    if-eq v2, v1, :cond_1

    .line 21
    .line 22
    if-ne v2, v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    const/16 v5, 0xa

    .line 35
    .line 36
    new-array v5, v5, [J

    .line 37
    .line 38
    fill-array-data v5, :array_0

    .line 39
    .line 40
    .line 41
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    const/4 v4, 0x2

    .line 57
    new-array v4, v4, [J

    .line 58
    .line 59
    fill-array-data v4, :array_1

    .line 60
    .line 61
    .line 62
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 76
    .line 77
    const/4 v2, 0x7

    .line 78
    new-array v2, v2, [J

    .line 79
    .line 80
    fill-array-data v2, :array_2

    .line 81
    .line 82
    .line 83
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw v1

    .line 101
    :catchall_0
    move-exception v0

    .line 102
    goto :goto_1

    .line 103
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhhc;->zzc:Ljava/lang/Object;

    .line 104
    .line 105
    const/4 v1, 0x0

    .line 106
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhhc;->zzb:Lcom/google/android/gms/internal/ads/zzhhm;

    .line 107
    .line 108
    :cond_2
    monitor-exit p0

    .line 109
    goto :goto_2

    .line 110
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    throw v0

    .line 112
    :cond_3
    :goto_2
    return-object v0

    .line 113
    :array_0
    .array-data 8
        0x41ed74cbc42200bfL    # 3.953548833062591E9
        -0x307a89532674263L    # -9.716338775469556E293
        0xe67dae0730a2230L    # 2.862019879023063E-239
        -0x518accce6bc7f394L    # -6.820505848307591E-85
        0x2602de60f4226196L    # 1.393711983922549E-125
        -0x1967a87281c3401dL    # -1.654907198590978E186
        -0x6d8776976548ae7bL
        0x6e9489ee5070f14eL    # 4.751510495263997E224
        0x79286b3143757b1aL    # 4.227162594303371E275
        0x4ef29c1a2dde69d3L    # 2.055039086579517E72
    .end array-data

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
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
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    :array_1
    .array-data 8
        -0x4473892e3faf5d22L    # -7.534394607299624E-22
        0x1c8fcae6449c0f15L
    .end array-data

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    :array_2
    .array-data 8
        0x6f86552facdb6018L    # 1.6929693338783245E229
        0x1ee29d25d448683aL    # 6.619858687069096E-160
        -0x6996a087db4cfcfbL
        -0x5beae95409a2a7a3L    # -7.253521562793466E-135
        0x1c18d9ec75f7b44fL    # 2.511950027940434E-173
        0x1524ecfa90a852bL
        0x364884017ff9e03eL    # 3.354857396058745E-47
    .end array-data
.end method
