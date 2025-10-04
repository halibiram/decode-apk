.class final Lcom/google/android/gms/internal/ads/zzbnp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzy;


# instance fields
.field zza:Z

.field final synthetic zzb:Z

.field final synthetic zzc:Lcom/google/android/gms/ads/internal/client/zza;

.field final synthetic zzd:Ljava/util/Map;

.field final synthetic zze:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbnr;ZLcom/google/android/gms/ads/internal/client/zza;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbnp;->zzb:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbnp;->zzc:Lcom/google/android/gms/ads/internal/client/zza;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbnp;->zzd:Ljava/util/Map;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbnp;->zze:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbnp;->zza:Z

    return-void
.end method


# virtual methods
.method public final zza(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbnp;->zza:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbnp;->zzb:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnp;->zzc:Lcom/google/android/gms/ads/internal/client/zza;

    .line 12
    .line 13
    check-cast v0, Lcom/google/android/gms/internal/ads/zzdiu;

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdiu;->zzs()V

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbnp;->zza:Z

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnp;->zzd:Ljava/util/Map;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbnp;->zze:Ljava/util/Map;

    .line 24
    .line 25
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    new-array v3, v3, [J

    .line 29
    .line 30
    fill-array-data v3, :array_0

    .line 31
    .line 32
    .line 33
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbnp;->zzc:Lcom/google/android/gms/ads/internal/client/zza;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnp;->zzd:Ljava/util/Map;

    .line 56
    .line 57
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbqa;

    .line 58
    .line 59
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    const/4 v2, 0x3

    .line 62
    new-array v2, v2, [J

    .line 63
    .line 64
    fill-array-data v2, :array_1

    .line 65
    .line 66
    .line 67
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbqa;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    return-void

    .line 78
    nop

    .line 79
    :array_0
    .array-data 8
        -0x654b8eeee37c0e40L
        -0x4c4fd2861dd1a612L    # -1.0067370738227995E-59
    .end array-data

    .line 80
    .line 81
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
    :array_1
    .array-data 8
        -0x1c50750888632a22L    # -1.5237310395046196E172
        -0x2adb478a8fa93bc9L    # -1.4502726544338737E102
        0x74aa5a4c55991b45L    # 9.6603292707281E253
    .end array-data
.end method

.method public final zzb(I)V
    .locals 0

    return-void
.end method
