.class public final Lcom/google/android/gms/internal/ads/zzfou;
.super Lcom/google/android/gms/internal/ads/zzfox;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/ads/zzfou;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfou;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfou;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfou;->zzb:Lcom/google/android/gms/internal/ads/zzfou;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfox;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzfou;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfou;->zzb:Lcom/google/android/gms/internal/ads/zzfou;

    return-object v0
.end method


# virtual methods
.method public final zzb(Z)V
    .locals 8

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfov;->zza()Lcom/google/android/gms/internal/ads/zzfov;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfov;->zzc()Ljava/util/Collection;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_2

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lcom/google/android/gms/internal/ads/zzfoh;

    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfoh;->zzg()Lcom/google/android/gms/internal/ads/zzfpi;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfpi;->zzl()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    if-eq v1, p1, :cond_1

    .line 38
    .line 39
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    new-array v5, v0, [J

    .line 42
    .line 43
    fill-array-data v5, :array_0

    .line 44
    .line 45
    .line 46
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    new-array v5, v0, [J

    .line 57
    .line 58
    fill-array-data v5, :array_1

    .line 59
    .line 60
    .line 61
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfpb;->zza()Lcom/google/android/gms/internal/ads/zzfpb;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfpi;->zza()Landroid/webkit/WebView;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    new-array v6, v1, [Ljava/lang/Object;

    .line 77
    .line 78
    const/4 v7, 0x0

    .line 79
    aput-object v4, v6, v7

    .line 80
    .line 81
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 82
    .line 83
    const/4 v7, 0x2

    .line 84
    new-array v7, v7, [J

    .line 85
    .line 86
    fill-array-data v7, :array_2

    .line 87
    .line 88
    .line 89
    invoke-direct {v4, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-virtual {v5, v3, v4, v6}, Lcom/google/android/gms/internal/ads/zzfpb;->zzb(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    return-void

    .line 101
    :array_0
    .array-data 8
        -0x18078cd1abcb5ba1L    # -6.971958374369194E192
        -0x7696463c48f06aabL
        -0x663f6e297ce310d9L
    .end array-data

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    :array_1
    .array-data 8
        -0x51fb3e105dfe14f1L    # -5.217321763114115E-87
        0x494e0f2b1faf6fc8L    # 1.3406874290073194E45
        -0x5493fa04b28909c4L    # -1.601517689866715E-99
    .end array-data

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
    :array_2
    .array-data 8
        -0x42105b20c629a234L    # -2.3024062944268193E-10
        -0x579518b90aedc76L    # -1.646861362638251E282
    .end array-data
.end method

.method public final zzc()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfov;->zza()Lcom/google/android/gms/internal/ads/zzfov;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfov;->zzb()Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/google/android/gms/internal/ads/zzfoh;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfoh;->zzf()Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/view/View;->hasWindowFocus()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    return v0

    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    return v0
.end method
