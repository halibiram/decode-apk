.class final Lcom/google/android/gms/internal/ads/zzccc;
.super Lcom/google/android/gms/internal/ads/zzcci;
.source "SourceFile"


# instance fields
.field private final zzb:Lcom/google/android/gms/common/util/Clock;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzccc;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzhhm;

.field private final zze:Lcom/google/android/gms/internal/ads/zzhhm;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzhhm;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzhhm;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzhhm;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzhhm;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzhhm;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzhhm;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/ads/internal/util/zzg;Lcom/google/android/gms/internal/ads/zzcch;Lcom/google/android/gms/internal/ads/zzccb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcci;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lcom/google/android/gms/internal/ads/zzccc;->zzc:Lcom/google/android/gms/internal/ads/zzccc;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzccc;->zzb:Lcom/google/android/gms/common/util/Clock;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhhe;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhhd;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccc;->zzd:Lcom/google/android/gms/internal/ads/zzhhm;

    .line 13
    .line 14
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzhhe;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhhd;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzccc;->zze:Lcom/google/android/gms/internal/ads/zzhhm;

    .line 19
    .line 20
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzhhe;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhhd;

    .line 21
    .line 22
    .line 23
    move-result-object p4

    .line 24
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzccc;->zzf:Lcom/google/android/gms/internal/ads/zzhhm;

    .line 25
    .line 26
    new-instance p5, Lcom/google/android/gms/internal/ads/zzcbu;

    .line 27
    .line 28
    invoke-direct {p5, p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzcbu;-><init>(Lcom/google/android/gms/internal/ads/zzhhu;Lcom/google/android/gms/internal/ads/zzhhu;Lcom/google/android/gms/internal/ads/zzhhu;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p5}, Lcom/google/android/gms/internal/ads/zzhhc;->zzc(Lcom/google/android/gms/internal/ads/zzhhm;)Lcom/google/android/gms/internal/ads/zzhhm;

    .line 32
    .line 33
    .line 34
    move-result-object p5

    .line 35
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzccc;->zzg:Lcom/google/android/gms/internal/ads/zzhhm;

    .line 36
    .line 37
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhhe;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhhd;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzccc;->zzh:Lcom/google/android/gms/internal/ads/zzhhm;

    .line 42
    .line 43
    new-instance p5, Lcom/google/android/gms/internal/ads/zzcbw;

    .line 44
    .line 45
    invoke-direct {p5, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzcbw;-><init>(Lcom/google/android/gms/internal/ads/zzhhu;Lcom/google/android/gms/internal/ads/zzhhu;Lcom/google/android/gms/internal/ads/zzhhu;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p5}, Lcom/google/android/gms/internal/ads/zzhhc;->zzc(Lcom/google/android/gms/internal/ads/zzhhm;)Lcom/google/android/gms/internal/ads/zzhhm;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzccc;->zzi:Lcom/google/android/gms/internal/ads/zzhhm;

    .line 53
    .line 54
    new-instance p4, Lcom/google/android/gms/internal/ads/zzcby;

    .line 55
    .line 56
    invoke-direct {p4, p2, p3}, Lcom/google/android/gms/internal/ads/zzcby;-><init>(Lcom/google/android/gms/internal/ads/zzhhu;Lcom/google/android/gms/internal/ads/zzhhu;)V

    .line 57
    .line 58
    .line 59
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzccc;->zzj:Lcom/google/android/gms/internal/ads/zzhhm;

    .line 60
    .line 61
    new-instance p2, Lcom/google/android/gms/internal/ads/zzccn;

    .line 62
    .line 63
    invoke-direct {p2, p1, p4}, Lcom/google/android/gms/internal/ads/zzccn;-><init>(Lcom/google/android/gms/internal/ads/zzhhu;Lcom/google/android/gms/internal/ads/zzhhu;)V

    .line 64
    .line 65
    .line 66
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhhc;->zzc(Lcom/google/android/gms/internal/ads/zzhhm;)Lcom/google/android/gms/internal/ads/zzhhm;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccc;->zzk:Lcom/google/android/gms/internal/ads/zzhhm;

    .line 71
    .line 72
    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzcbt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccc;->zzg:Lcom/google/android/gms/internal/ads/zzhhm;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhhu;->zzb()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzcbt;

    .line 8
    .line 9
    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzcbx;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccc;->zzi:Lcom/google/android/gms/internal/ads/zzhhm;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcbx;

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhhu;->zzb()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/gms/internal/ads/zzcbv;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzccc;->zzb:Lcom/google/android/gms/common/util/Clock;

    .line 12
    .line 13
    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzcbx;-><init>(Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzcbv;)V

    .line 14
    .line 15
    .line 16
    return-object v1
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzccm;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccc;->zzk:Lcom/google/android/gms/internal/ads/zzhhm;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhhu;->zzb()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzccm;

    .line 8
    .line 9
    return-object v0
.end method
