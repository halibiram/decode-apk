.class final Lcom/google/android/gms/internal/ads/zzcbv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/common/util/Clock;

.field private final zzb:Lcom/google/android/gms/ads/internal/util/zzg;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcch;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/ads/internal/util/zzg;Lcom/google/android/gms/internal/ads/zzcch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbv;->zza:Lcom/google/android/gms/common/util/Clock;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcbv;->zzb:Lcom/google/android/gms/ads/internal/util/zzg;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcbv;->zzc:Lcom/google/android/gms/internal/ads/zzcch;

    return-void
.end method


# virtual methods
.method public final zza(IJ)V
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzap:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbv;->zzb:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 21
    .line 22
    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzg;->zzf()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    sub-long v0, p2, v0

    .line 27
    .line 28
    const-wide/16 v2, 0x0

    .line 29
    .line 30
    cmp-long v4, v0, v2

    .line 31
    .line 32
    if-gez v4, :cond_1

    .line 33
    .line 34
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    const/4 p2, 0x7

    .line 37
    new-array p2, p2, [J

    .line 38
    .line 39
    fill-array-data p2, :array_0

    .line 40
    .line 41
    .line 42
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbgc;->zzaq:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 54
    .line 55
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Ljava/lang/Boolean;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_2

    .line 70
    .line 71
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbv;->zzb:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 72
    .line 73
    const/4 v0, -0x1

    .line 74
    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/internal/util/zzg;->zzL(I)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbv;->zzb:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 78
    .line 79
    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/ads/internal/util/zzg;->zzM(J)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbv;->zzb:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 84
    .line 85
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzg;->zzL(I)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbv;->zzb:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 89
    .line 90
    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/ads/internal/util/zzg;->zzM(J)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    nop

    .line 95
    :array_0
    .array-data 8
        -0x1bdee9ff99a44e5eL    # -2.112936645193909E174
        -0x130f5a5105b260c3L    # -5.738760810311927E216
        0x4561ae5fb511327cL    # 1.7100156951536096E26
        -0x68ded51e4efcaf98L
        -0x117e47aa57f9ea21L    # -2.0497075548645E224
        0x4ab36b9d3526e0e1L    # 7.266022136049222E51
        -0x3a83625276e0cf18L    # -5.5351257047063653E26
    .end array-data
.end method
