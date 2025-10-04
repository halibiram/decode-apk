.class public final Lcom/google/android/gms/internal/ads/zzbsb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbrn;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbrp;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbrq;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzbrj;

.field private final zzd:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbrj;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbrq;Lcom/google/android/gms/internal/ads/zzbrp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsb;->zzc:Lcom/google/android/gms/internal/ads/zzbrj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbsb;->zzd:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbsb;->zzb:Lcom/google/android/gms/internal/ads/zzbrq;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbsb;->zza:Lcom/google/android/gms/internal/ads/zzbrp;

    return-void
.end method

.method public static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzbsb;)Lcom/google/android/gms/internal/ads/zzbrp;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbsb;->zza:Lcom/google/android/gms/internal/ads/zzbrp;

    return-object p0
.end method

.method public static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzbsb;Lcom/google/android/gms/internal/ads/zzbrd;Lcom/google/android/gms/internal/ads/zzbrk;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzceu;)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbnf;->zzo:Lcom/google/android/gms/internal/ads/zzbnv;

    .line 14
    .line 15
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbsa;

    .line 16
    .line 17
    invoke-direct {v3, p0, p1, p4}, Lcom/google/android/gms/internal/ads/zzbsa;-><init>(Lcom/google/android/gms/internal/ads/zzbsb;Lcom/google/android/gms/internal/ads/zzbrd;Lcom/google/android/gms/internal/ads/zzceu;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzbnv;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbnu;)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Lorg/json/JSONObject;

    .line 24
    .line 25
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    new-array v4, v0, [J

    .line 31
    .line 32
    fill-array-data v4, :array_0

    .line 33
    .line 34
    .line 35
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    new-array v0, v0, [J

    .line 48
    .line 49
    fill-array-data v0, :array_1

    .line 50
    .line 51
    .line 52
    invoke-direct {v1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbsb;->zzb:Lcom/google/android/gms/internal/ads/zzbrq;

    .line 60
    .line 61
    invoke-interface {v1, p3}, Lcom/google/android/gms/internal/ads/zzbrq;->zzb(Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    invoke-virtual {v2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbsb;->zzd:Ljava/lang/String;

    .line 69
    .line 70
    invoke-interface {p2, p0, v2}, Lcom/google/android/gms/internal/ads/zzbqn;->zzl(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :catch_0
    move-exception p0

    .line 75
    :try_start_1
    invoke-virtual {p4, p0}, Lcom/google/android/gms/internal/ads/zzceu;->zzd(Ljava/lang/Throwable;)Z

    .line 76
    .line 77
    .line 78
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 79
    .line 80
    const/4 p3, 0x5

    .line 81
    new-array p3, p3, [J

    .line 82
    .line 83
    fill-array-data p3, :array_2

    .line 84
    .line 85
    .line 86
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-static {p2, p0}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbrd;->zzb()V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :catchall_0
    move-exception p0

    .line 101
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbrd;->zzb()V

    .line 102
    .line 103
    .line 104
    throw p0

    .line 105
    :array_0
    .array-data 8
        0x2fe8a69cad682c0bL    # 6.652772106809743E-78
        0x670c8768d28fa7a5L    # 2.4826356754227484E188
    .end array-data

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
        0x6ee818c5aaa31a0dL    # 1.7838795384047214E226
        -0x916b4b3bfb50147L    # -6.371856564314095E264
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
    :array_2
    .array-data 8
        -0xf15ead9b3159b1bL    # -8.293116461033487E235
        -0x4eeed1f8935add59L    # -2.4308556651206974E-72
        -0x416f80a1dbffe794L    # -2.458323571378186E-7
        -0x63a58aebb3d2b71fL    # -4.278865971784705E-172
        -0x3a8fd0a7adbaf3a4L    # -3.13062297282648E26
    .end array-data
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbsb;->zzb(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final zzb(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzceu;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzceu;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbsb;->zzc:Lcom/google/android/gms/internal/ads/zzbrj;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbrj;->zzb(Lcom/google/android/gms/internal/ads/zzavi;)Lcom/google/android/gms/internal/ads/zzbrd;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/4 v3, 0x6

    .line 16
    new-array v3, v3, [J

    .line 17
    .line 18
    fill-array-data v3, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbry;

    .line 32
    .line 33
    invoke-direct {v2, p0, v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzbry;-><init>(Lcom/google/android/gms/internal/ads/zzbsb;Lcom/google/android/gms/internal/ads/zzbrd;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzceu;)V

    .line 34
    .line 35
    .line 36
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbrz;

    .line 37
    .line 38
    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbrz;-><init>(Lcom/google/android/gms/internal/ads/zzbsb;Lcom/google/android/gms/internal/ads/zzceu;Lcom/google/android/gms/internal/ads/zzbrd;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzcfb;->zzi(Lcom/google/android/gms/internal/ads/zzcey;Lcom/google/android/gms/internal/ads/zzcew;)V

    .line 42
    .line 43
    .line 44
    return-object v0

    .line 45
    :array_0
    .array-data 8
        -0x4954e3fd83872880L    # -2.3742736698081673E-45
        0x16fb993a3f6508aaL    # 5.768847373404998E-198
        0x3682c7d5a62e9affL    # 4.112067380033261E-46
        -0xcf1dd5c8821fd23L
        0x280bb2029da0dd91L    # 8.786149198507075E-116
        -0x17b15ae361afbbdeL    # -2.7963169284025674E194
    .end array-data
.end method
