.class public final Lcom/google/android/gms/internal/ads/zzmq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:J

.field public final zzb:Lcom/google/android/gms/internal/ads/zzcx;

.field public final zzc:I

.field public final zzd:Lcom/google/android/gms/internal/ads/zzur;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zze:J

.field public final zzf:Lcom/google/android/gms/internal/ads/zzcx;

.field public final zzg:I

.field public final zzh:Lcom/google/android/gms/internal/ads/zzur;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zzi:J

.field public final zzj:J


# direct methods
.method public constructor <init>(JLcom/google/android/gms/internal/ads/zzcx;ILcom/google/android/gms/internal/ads/zzur;JLcom/google/android/gms/internal/ads/zzcx;ILcom/google/android/gms/internal/ads/zzur;JJ)V
    .locals 0
    .param p5    # Lcom/google/android/gms/internal/ads/zzur;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Lcom/google/android/gms/internal/ads/zzur;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzmq;->zza:J

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzb:Lcom/google/android/gms/internal/ads/zzcx;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzc:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzd:Lcom/google/android/gms/internal/ads/zzur;

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/zzmq;->zze:J

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzf:Lcom/google/android/gms/internal/ads/zzcx;

    iput p9, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzg:I

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzh:Lcom/google/android/gms/internal/ads/zzur;

    iput-wide p11, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzi:J

    iput-wide p13, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzj:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Lcom/google/android/gms/internal/ads/zzmq;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzmq;

    .line 18
    .line 19
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzmq;->zza:J

    .line 20
    .line 21
    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzmq;->zza:J

    .line 22
    .line 23
    cmp-long v6, v2, v4

    .line 24
    .line 25
    if-nez v6, :cond_2

    .line 26
    .line 27
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzc:I

    .line 28
    .line 29
    iget v3, p1, Lcom/google/android/gms/internal/ads/zzmq;->zzc:I

    .line 30
    .line 31
    if-ne v2, v3, :cond_2

    .line 32
    .line 33
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzmq;->zze:J

    .line 34
    .line 35
    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzmq;->zze:J

    .line 36
    .line 37
    cmp-long v6, v2, v4

    .line 38
    .line 39
    if-nez v6, :cond_2

    .line 40
    .line 41
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzg:I

    .line 42
    .line 43
    iget v3, p1, Lcom/google/android/gms/internal/ads/zzmq;->zzg:I

    .line 44
    .line 45
    if-ne v2, v3, :cond_2

    .line 46
    .line 47
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzi:J

    .line 48
    .line 49
    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzmq;->zzi:J

    .line 50
    .line 51
    cmp-long v6, v2, v4

    .line 52
    .line 53
    if-nez v6, :cond_2

    .line 54
    .line 55
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzj:J

    .line 56
    .line 57
    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzmq;->zzj:J

    .line 58
    .line 59
    cmp-long v6, v2, v4

    .line 60
    .line 61
    if-nez v6, :cond_2

    .line 62
    .line 63
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzb:Lcom/google/android/gms/internal/ads/zzcx;

    .line 64
    .line 65
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzmq;->zzb:Lcom/google/android/gms/internal/ads/zzcx;

    .line 66
    .line 67
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzfwy;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_2

    .line 72
    .line 73
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzd:Lcom/google/android/gms/internal/ads/zzur;

    .line 74
    .line 75
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzmq;->zzd:Lcom/google/android/gms/internal/ads/zzur;

    .line 76
    .line 77
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzfwy;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_2

    .line 82
    .line 83
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzf:Lcom/google/android/gms/internal/ads/zzcx;

    .line 84
    .line 85
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzmq;->zzf:Lcom/google/android/gms/internal/ads/zzcx;

    .line 86
    .line 87
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzfwy;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_2

    .line 92
    .line 93
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzh:Lcom/google/android/gms/internal/ads/zzur;

    .line 94
    .line 95
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzmq;->zzh:Lcom/google/android/gms/internal/ads/zzur;

    .line 96
    .line 97
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzfwy;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_2

    .line 102
    .line 103
    return v0

    .line 104
    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 12

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzmq;->zza:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzb:Lcom/google/android/gms/internal/ads/zzcx;

    .line 8
    .line 9
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzc:I

    .line 10
    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzd:Lcom/google/android/gms/internal/ads/zzur;

    .line 16
    .line 17
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzmq;->zze:J

    .line 18
    .line 19
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzf:Lcom/google/android/gms/internal/ads/zzcx;

    .line 24
    .line 25
    iget v6, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzg:I

    .line 26
    .line 27
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzh:Lcom/google/android/gms/internal/ads/zzur;

    .line 32
    .line 33
    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzi:J

    .line 34
    .line 35
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    iget-wide v9, p0, Lcom/google/android/gms/internal/ads/zzmq;->zzj:J

    .line 40
    .line 41
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 42
    .line 43
    .line 44
    move-result-object v9

    .line 45
    const/16 v10, 0xa

    .line 46
    .line 47
    new-array v10, v10, [Ljava/lang/Object;

    .line 48
    .line 49
    const/4 v11, 0x0

    .line 50
    aput-object v0, v10, v11

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    aput-object v1, v10, v0

    .line 54
    .line 55
    const/4 v0, 0x2

    .line 56
    aput-object v2, v10, v0

    .line 57
    .line 58
    const/4 v0, 0x3

    .line 59
    aput-object v3, v10, v0

    .line 60
    .line 61
    const/4 v0, 0x4

    .line 62
    aput-object v4, v10, v0

    .line 63
    .line 64
    const/4 v0, 0x5

    .line 65
    aput-object v5, v10, v0

    .line 66
    .line 67
    const/4 v0, 0x6

    .line 68
    aput-object v6, v10, v0

    .line 69
    .line 70
    const/4 v0, 0x7

    .line 71
    aput-object v7, v10, v0

    .line 72
    .line 73
    const/16 v0, 0x8

    .line 74
    .line 75
    aput-object v8, v10, v0

    .line 76
    .line 77
    const/16 v0, 0x9

    .line 78
    .line 79
    aput-object v9, v10, v0

    .line 80
    .line 81
    invoke-static {v10}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    return v0
.end method
