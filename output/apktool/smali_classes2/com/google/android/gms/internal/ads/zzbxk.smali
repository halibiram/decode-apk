.class public final Lcom/google/android/gms/internal/ads/zzbxk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static zza:Lcom/google/android/gms/internal/ads/zzcct;


# instance fields
.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/ads/AdFormat;

.field private final zzd:Lcom/google/android/gms/ads/internal/client/zzdx;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zze:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdFormat;Lcom/google/android/gms/ads/internal/client/zzdx;Ljava/lang/String;)V
    .locals 0
    .param p3    # Lcom/google/android/gms/ads/internal/client/zzdx;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxk;->zzb:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbxk;->zzc:Lcom/google/android/gms/ads/AdFormat;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbxk;->zzd:Lcom/google/android/gms/ads/internal/client/zzdx;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbxk;->zze:Ljava/lang/String;

    return-void
.end method

.method public static zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcct;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzbxk;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbxk;->zza:Lcom/google/android/gms/internal/ads/zzcct;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zza()Lcom/google/android/gms/ads/internal/client/zzaw;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbsr;

    .line 13
    .line 14
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzbsr;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p0, v2}, Lcom/google/android/gms/ads/internal/client/zzaw;->zzr(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbsv;)Lcom/google/android/gms/internal/ads/zzcct;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    sput-object p0, Lcom/google/android/gms/internal/ads/zzbxk;->zza:Lcom/google/android/gms/internal/ads/zzcct;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbxk;->zza:Lcom/google/android/gms/internal/ads/zzcct;

    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-object p0

    .line 30
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxk;->zzb:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbxk;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcct;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 v1, 0x7

    .line 12
    new-array v1, v1, [J

    .line 13
    .line 14
    fill-array-data v1, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;->onFailure(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbxk;->zzb:Landroid/content/Context;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbxk;->zzd:Lcom/google/android/gms/ads/internal/client/zzdx;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    new-instance v2, Lcom/google/android/gms/ads/internal/client/zzm;

    .line 39
    .line 40
    invoke-direct {v2}, Lcom/google/android/gms/ads/internal/client/zzm;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/client/zzm;->zza()Lcom/google/android/gms/ads/internal/client/zzl;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbxk;->zzb:Landroid/content/Context;

    .line 49
    .line 50
    sget-object v4, Lcom/google/android/gms/ads/internal/client/zzp;->zza:Lcom/google/android/gms/ads/internal/client/zzp;

    .line 51
    .line 52
    invoke-virtual {v4, v3, v2}, Lcom/google/android/gms/ads/internal/client/zzp;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzdx;)Lcom/google/android/gms/ads/internal/client/zzl;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbxk;->zze:Ljava/lang/String;

    .line 57
    .line 58
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbxk;->zzc:Lcom/google/android/gms/ads/AdFormat;

    .line 59
    .line 60
    new-instance v5, Lcom/google/android/gms/internal/ads/zzccx;

    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    const/4 v6, 0x0

    .line 67
    invoke-direct {v5, v3, v4, v6, v2}, Lcom/google/android/gms/internal/ads/zzccx;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzq;Lcom/google/android/gms/ads/internal/client/zzl;)V

    .line 68
    .line 69
    .line 70
    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbxj;

    .line 71
    .line 72
    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/ads/zzbxj;-><init>(Lcom/google/android/gms/internal/ads/zzbxk;Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {v0, v1, v5, v2}, Lcom/google/android/gms/internal/ads/zzcct;->zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzccx;Lcom/google/android/gms/internal/ads/zzccq;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :catch_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 80
    .line 81
    const/4 v1, 0x3

    .line 82
    new-array v1, v1, [J

    .line 83
    .line 84
    fill-array-data v1, :array_1

    .line 85
    .line 86
    .line 87
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;->onFailure(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    nop

    .line 99
    :array_0
    .array-data 8
        -0x67b708c1e6f0bd21L    # -1.094405095034538E-191
        -0x73ac4070c474ce0eL
        -0x71f146dd6afefa48L    # -5.759432631598468E-241
        0x756378e8b1d3e674L    # 2.9237724947698764E257
        -0x6afb7467f709576fL    # -1.9997939160560808E-207
        0x4f4e87ade11b73cL
        0x4d1802f69198cc5bL    # 2.46944723926687E63
    .end array-data

    .line 100
    .line 101
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
    :array_1
    .array-data 8
        -0x49112719c88df991L    # -4.3226222027101927E-44
        -0x322fe2333eba9262L    # -6.789022413126127E66
        -0x8a1d2a8a2dfe016L    # -9.730471471106254E266
    .end array-data
.end method
