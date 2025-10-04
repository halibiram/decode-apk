.class public final Lcom/google/android/gms/internal/ads/zzwg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaea;


# instance fields
.field private zzA:Z

.field private zzB:Z

.field private zzC:Lcom/google/android/gms/internal/ads/zzrz;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zza:Lcom/google/android/gms/internal/ads/zzwa;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzwc;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzwn;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzry;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zze:Lcom/google/android/gms/internal/ads/zzrs;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzf:Lcom/google/android/gms/internal/ads/zzwf;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzg:Lcom/google/android/gms/internal/ads/zzam;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzh:I

.field private zzi:[J

.field private zzj:[J

.field private zzk:[I

.field private zzl:[I

.field private zzm:[J

.field private zzn:[Lcom/google/android/gms/internal/ads/zzadz;

.field private zzo:I

.field private zzp:I

.field private zzq:I

.field private zzr:I

.field private zzs:J

.field private zzt:J

.field private zzu:J

.field private zzv:Z

.field private zzw:Z

.field private zzx:Z

.field private zzy:Lcom/google/android/gms/internal/ads/zzam;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzz:Lcom/google/android/gms/internal/ads/zzam;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzyx;Lcom/google/android/gms/internal/ads/zzry;Lcom/google/android/gms/internal/ads/zzrs;)V
    .locals 0
    .param p2    # Lcom/google/android/gms/internal/ads/zzry;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/ads/zzrs;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzd:Lcom/google/android/gms/internal/ads/zzry;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzwg;->zze:Lcom/google/android/gms/internal/ads/zzrs;

    .line 7
    .line 8
    new-instance p2, Lcom/google/android/gms/internal/ads/zzwa;

    .line 9
    .line 10
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzwa;-><init>(Lcom/google/android/gms/internal/ads/zzyx;)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwg;->zza:Lcom/google/android/gms/internal/ads/zzwa;

    .line 14
    .line 15
    new-instance p1, Lcom/google/android/gms/internal/ads/zzwc;

    .line 16
    .line 17
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzwc;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzb:Lcom/google/android/gms/internal/ads/zzwc;

    .line 21
    .line 22
    const/16 p1, 0x3e8

    .line 23
    .line 24
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzh:I

    .line 25
    .line 26
    new-array p2, p1, [J

    .line 27
    .line 28
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzi:[J

    .line 29
    .line 30
    new-array p2, p1, [J

    .line 31
    .line 32
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzj:[J

    .line 33
    .line 34
    new-array p2, p1, [J

    .line 35
    .line 36
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzm:[J

    .line 37
    .line 38
    new-array p2, p1, [I

    .line 39
    .line 40
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzl:[I

    .line 41
    .line 42
    new-array p2, p1, [I

    .line 43
    .line 44
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzk:[I

    .line 45
    .line 46
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzadz;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzn:[Lcom/google/android/gms/internal/ads/zzadz;

    .line 49
    .line 50
    new-instance p1, Lcom/google/android/gms/internal/ads/zzwn;

    .line 51
    .line 52
    sget-object p2, Lcom/google/android/gms/internal/ads/zzwb;->zza:Lcom/google/android/gms/internal/ads/zzwb;

    .line 53
    .line 54
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzwn;-><init>(Lcom/google/android/gms/internal/ads/zzep;)V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzc:Lcom/google/android/gms/internal/ads/zzwn;

    .line 58
    .line 59
    const-wide/high16 p1, -0x8000000000000000L

    .line 60
    .line 61
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzs:J

    .line 62
    .line 63
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzt:J

    .line 64
    .line 65
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzu:J

    .line 66
    .line 67
    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzx:Z

    .line 69
    .line 70
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzw:Z

    .line 71
    .line 72
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzA:Z

    .line 73
    .line 74
    return-void
.end method

.method private final zzB(IIJZ)I
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, -0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    if-ge v2, p2, :cond_3

    .line 5
    .line 6
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzm:[J

    .line 7
    .line 8
    aget-wide v4, v3, p1

    .line 9
    .line 10
    cmp-long v3, v4, p3

    .line 11
    .line 12
    if-gtz v3, :cond_3

    .line 13
    .line 14
    if-eqz p5, :cond_0

    .line 15
    .line 16
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzl:[I

    .line 17
    .line 18
    aget v4, v4, p1

    .line 19
    .line 20
    and-int/lit8 v4, v4, 0x1

    .line 21
    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    :cond_0
    move v1, v2

    .line 25
    if-nez v3, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 29
    .line 30
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzh:I

    .line 31
    .line 32
    if-ne p1, v3, :cond_2

    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    :goto_1
    return v1
.end method

.method private final zzC(I)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzq:I

    add-int/2addr v0, p1

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzh:I

    if-ge v0, p1, :cond_0

    return v0

    :cond_0
    sub-int/2addr v0, p1

    return v0
.end method

.method private final declared-synchronized zzD(Lcom/google/android/gms/internal/ads/zzlb;Lcom/google/android/gms/internal/ads/zzih;ZZLcom/google/android/gms/internal/ads/zzwc;)I
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p2, Lcom/google/android/gms/internal/ads/zzih;->zzd:Z

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwg;->zzL()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x4

    .line 10
    const/4 v2, -0x3

    .line 11
    const/4 v3, -0x5

    .line 12
    if-nez v0, :cond_4

    .line 13
    .line 14
    if-nez p4, :cond_3

    .line 15
    .line 16
    iget-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzv:Z

    .line 17
    .line 18
    if-eqz p4, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzz:Lcom/google/android/gms/internal/ads/zzam;

    .line 22
    .line 23
    if-eqz p2, :cond_2

    .line 24
    .line 25
    if-nez p3, :cond_1

    .line 26
    .line 27
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzg:Lcom/google/android/gms/internal/ads/zzam;

    .line 28
    .line 29
    if-eq p2, p3, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto/16 :goto_3

    .line 34
    .line 35
    :cond_1
    :goto_0
    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzwg;->zzI(Lcom/google/android/gms/internal/ads/zzam;Lcom/google/android/gms/internal/ads/zzlb;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    monitor-exit p0

    .line 39
    return v3

    .line 40
    :cond_2
    monitor-exit p0

    .line 41
    return v2

    .line 42
    :cond_3
    :goto_1
    const/4 p1, 0x4

    .line 43
    :try_start_1
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzib;->zzc(I)V

    .line 44
    .line 45
    .line 46
    const-wide/high16 p3, -0x8000000000000000L

    .line 47
    .line 48
    iput-wide p3, p2, Lcom/google/android/gms/internal/ads/zzih;->zze:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .line 50
    monitor-exit p0

    .line 51
    return v1

    .line 52
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzc:Lcom/google/android/gms/internal/ads/zzwn;

    .line 53
    .line 54
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzp:I

    .line 55
    .line 56
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzr:I

    .line 57
    .line 58
    add-int/2addr v4, v5

    .line 59
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzwn;->zza(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lcom/google/android/gms/internal/ads/zzwe;

    .line 64
    .line 65
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwe;->zza:Lcom/google/android/gms/internal/ads/zzam;

    .line 66
    .line 67
    if-nez p3, :cond_a

    .line 68
    .line 69
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzg:Lcom/google/android/gms/internal/ads/zzam;

    .line 70
    .line 71
    if-eq v0, p3, :cond_5

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_5
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzr:I

    .line 75
    .line 76
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzwg;->zzC(I)I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzwg;->zzM(I)Z

    .line 81
    .line 82
    .line 83
    move-result p3

    .line 84
    if-nez p3, :cond_6

    .line 85
    .line 86
    const/4 p1, 0x1

    .line 87
    iput-boolean p1, p2, Lcom/google/android/gms/internal/ads/zzih;->zzd:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    .line 89
    monitor-exit p0

    .line 90
    return v2

    .line 91
    :cond_6
    :try_start_3
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzl:[I

    .line 92
    .line 93
    aget p3, p3, p1

    .line 94
    .line 95
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzib;->zzc(I)V

    .line 96
    .line 97
    .line 98
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzr:I

    .line 99
    .line 100
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzo:I

    .line 101
    .line 102
    add-int/lit8 v0, v0, -0x1

    .line 103
    .line 104
    if-ne p3, v0, :cond_8

    .line 105
    .line 106
    if-nez p4, :cond_7

    .line 107
    .line 108
    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzv:Z

    .line 109
    .line 110
    if-eqz p3, :cond_8

    .line 111
    .line 112
    :cond_7
    const/high16 p3, 0x20000000

    .line 113
    .line 114
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzib;->zza(I)V

    .line 115
    .line 116
    .line 117
    :cond_8
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzm:[J

    .line 118
    .line 119
    aget-wide v2, p3, p1

    .line 120
    .line 121
    iput-wide v2, p2, Lcom/google/android/gms/internal/ads/zzih;->zze:J

    .line 122
    .line 123
    iget-wide p3, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzs:J

    .line 124
    .line 125
    cmp-long v0, v2, p3

    .line 126
    .line 127
    if-gez v0, :cond_9

    .line 128
    .line 129
    const/high16 p3, -0x80000000

    .line 130
    .line 131
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzib;->zza(I)V

    .line 132
    .line 133
    .line 134
    :cond_9
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzk:[I

    .line 135
    .line 136
    aget p2, p2, p1

    .line 137
    .line 138
    iput p2, p5, Lcom/google/android/gms/internal/ads/zzwc;->zza:I

    .line 139
    .line 140
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzj:[J

    .line 141
    .line 142
    aget-wide p3, p2, p1

    .line 143
    .line 144
    iput-wide p3, p5, Lcom/google/android/gms/internal/ads/zzwc;->zzb:J

    .line 145
    .line 146
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzn:[Lcom/google/android/gms/internal/ads/zzadz;

    .line 147
    .line 148
    aget-object p1, p2, p1

    .line 149
    .line 150
    iput-object p1, p5, Lcom/google/android/gms/internal/ads/zzwc;->zzc:Lcom/google/android/gms/internal/ads/zzadz;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 151
    .line 152
    monitor-exit p0

    .line 153
    return v1

    .line 154
    :cond_a
    :goto_2
    :try_start_4
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzwg;->zzI(Lcom/google/android/gms/internal/ads/zzam;Lcom/google/android/gms/internal/ads/zzlb;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 155
    .line 156
    .line 157
    monitor-exit p0

    .line 158
    return v3

    .line 159
    :goto_3
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 160
    throw p1
.end method

.method private final declared-synchronized zzE(JZZ)J
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzo:I

    .line 3
    .line 4
    if-eqz p3, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzm:[J

    .line 7
    .line 8
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzq:I

    .line 9
    .line 10
    aget-wide v3, v0, v2

    .line 11
    .line 12
    cmp-long v0, p1, v3

    .line 13
    .line 14
    if-gez v0, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    if-eqz p4, :cond_1

    .line 18
    .line 19
    iget p4, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzr:I

    .line 20
    .line 21
    if-eq p4, p3, :cond_1

    .line 22
    .line 23
    add-int/lit8 p3, p4, 0x1

    .line 24
    .line 25
    :cond_1
    move v3, p3

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_2

    .line 29
    :goto_0
    const/4 v6, 0x0

    .line 30
    move-object v1, p0

    .line 31
    move-wide v4, p1

    .line 32
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzwg;->zzB(IIJZ)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    const/4 p2, -0x1

    .line 37
    if-eq p1, p2, :cond_2

    .line 38
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzwg;->zzG(I)J

    .line 40
    .line 41
    .line 42
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    .line 44
    return-wide p1

    .line 45
    :cond_2
    :goto_1
    monitor-exit p0

    .line 46
    const-wide/16 p1, -0x1

    .line 47
    .line 48
    return-wide p1

    .line 49
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    throw p1
.end method

.method private final declared-synchronized zzF()J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzo:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    const-wide/16 v0, -0x1

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzwg;->zzG(I)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    monitor-exit p0

    .line 15
    return-wide v0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    throw v0
.end method

.method private final zzG(I)J
    .locals 11
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzt:J

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    const-wide/high16 v3, -0x8000000000000000L

    .line 5
    .line 6
    const/4 v5, -0x1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    add-int/lit8 v6, p1, -0x1

    .line 11
    .line 12
    invoke-direct {p0, v6}, Lcom/google/android/gms/internal/ads/zzwg;->zzC(I)I

    .line 13
    .line 14
    .line 15
    move-result v6

    .line 16
    const/4 v7, 0x0

    .line 17
    :goto_0
    if-ge v7, p1, :cond_3

    .line 18
    .line 19
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzm:[J

    .line 20
    .line 21
    aget-wide v9, v8, v6

    .line 22
    .line 23
    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->max(JJ)J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzl:[I

    .line 28
    .line 29
    aget v8, v8, v6

    .line 30
    .line 31
    and-int/lit8 v8, v8, 0x1

    .line 32
    .line 33
    if-eqz v8, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    add-int/lit8 v6, v6, -0x1

    .line 37
    .line 38
    if-ne v6, v5, :cond_2

    .line 39
    .line 40
    iget v6, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzh:I

    .line 41
    .line 42
    add-int/2addr v6, v5

    .line 43
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    :goto_1
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzt:J

    .line 51
    .line 52
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzo:I

    .line 53
    .line 54
    sub-int/2addr v0, p1

    .line 55
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzo:I

    .line 56
    .line 57
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzp:I

    .line 58
    .line 59
    add-int/2addr v0, p1

    .line 60
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzp:I

    .line 61
    .line 62
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzq:I

    .line 63
    .line 64
    add-int/2addr v1, p1

    .line 65
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzq:I

    .line 66
    .line 67
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzh:I

    .line 68
    .line 69
    if-lt v1, v3, :cond_4

    .line 70
    .line 71
    sub-int/2addr v1, v3

    .line 72
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzq:I

    .line 73
    .line 74
    :cond_4
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzr:I

    .line 75
    .line 76
    sub-int/2addr v1, p1

    .line 77
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzr:I

    .line 78
    .line 79
    if-gez v1, :cond_5

    .line 80
    .line 81
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzr:I

    .line 82
    .line 83
    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzc:Lcom/google/android/gms/internal/ads/zzwn;

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzwn;->zze(I)V

    .line 86
    .line 87
    .line 88
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzo:I

    .line 89
    .line 90
    if-nez p1, :cond_7

    .line 91
    .line 92
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzq:I

    .line 93
    .line 94
    if-nez p1, :cond_6

    .line 95
    .line 96
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzh:I

    .line 97
    .line 98
    :cond_6
    add-int/2addr p1, v5

    .line 99
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzj:[J

    .line 100
    .line 101
    aget-wide v1, v0, p1

    .line 102
    .line 103
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzk:[I

    .line 104
    .line 105
    aget p1, v0, p1

    .line 106
    .line 107
    int-to-long v3, p1

    .line 108
    add-long/2addr v1, v3

    .line 109
    return-wide v1

    .line 110
    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzj:[J

    .line 111
    .line 112
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzq:I

    .line 113
    .line 114
    aget-wide v0, p1, v0

    .line 115
    .line 116
    return-wide v0
.end method

.method private final declared-synchronized zzH(JIJILcom/google/android/gms/internal/ads/zzadz;)V
    .locals 8
    .param p7    # Lcom/google/android/gms/internal/ads/zzadz;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzo:I

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-lez v0, :cond_1

    .line 7
    .line 8
    add-int/lit8 v0, v0, -0x1

    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzwg;->zzC(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzj:[J

    .line 15
    .line 16
    aget-wide v4, v3, v0

    .line 17
    .line 18
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzk:[I

    .line 19
    .line 20
    aget v0, v3, v0

    .line 21
    .line 22
    int-to-long v6, v0

    .line 23
    add-long/2addr v4, v6

    .line 24
    cmp-long v0, v4, p4

    .line 25
    .line 26
    if-gtz v0, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzd(Z)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto/16 :goto_3

    .line 37
    .line 38
    :cond_1
    :goto_1
    const/high16 v0, 0x20000000

    .line 39
    .line 40
    and-int/2addr v0, p3

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    const/4 v0, 0x0

    .line 46
    :goto_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzv:Z

    .line 47
    .line 48
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzu:J

    .line 49
    .line 50
    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 51
    .line 52
    .line 53
    move-result-wide v3

    .line 54
    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzu:J

    .line 55
    .line 56
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzo:I

    .line 57
    .line 58
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzwg;->zzC(I)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzm:[J

    .line 63
    .line 64
    aput-wide p1, v3, v0

    .line 65
    .line 66
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzj:[J

    .line 67
    .line 68
    aput-wide p4, p1, v0

    .line 69
    .line 70
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzk:[I

    .line 71
    .line 72
    aput p6, p1, v0

    .line 73
    .line 74
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzl:[I

    .line 75
    .line 76
    aput p3, p1, v0

    .line 77
    .line 78
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzn:[Lcom/google/android/gms/internal/ads/zzadz;

    .line 79
    .line 80
    aput-object p7, p1, v0

    .line 81
    .line 82
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzi:[J

    .line 83
    .line 84
    const-wide/16 p2, 0x0

    .line 85
    .line 86
    aput-wide p2, p1, v0

    .line 87
    .line 88
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzc:Lcom/google/android/gms/internal/ads/zzwn;

    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzwn;->zzf()Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_3

    .line 95
    .line 96
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzc:Lcom/google/android/gms/internal/ads/zzwn;

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzwn;->zzb()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Lcom/google/android/gms/internal/ads/zzwe;

    .line 103
    .line 104
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzwe;->zza:Lcom/google/android/gms/internal/ads/zzam;

    .line 105
    .line 106
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzz:Lcom/google/android/gms/internal/ads/zzam;

    .line 107
    .line 108
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzam;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-nez p1, :cond_4

    .line 113
    .line 114
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzz:Lcom/google/android/gms/internal/ads/zzam;

    .line 115
    .line 116
    const/4 p2, 0x0

    .line 117
    if-eqz p1, :cond_6

    .line 118
    .line 119
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzc:Lcom/google/android/gms/internal/ads/zzwn;

    .line 120
    .line 121
    sget-object p4, Lcom/google/android/gms/internal/ads/zzrx;->zzb:Lcom/google/android/gms/internal/ads/zzrx;

    .line 122
    .line 123
    iget p5, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzp:I

    .line 124
    .line 125
    iget p6, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzo:I

    .line 126
    .line 127
    add-int/2addr p5, p6

    .line 128
    new-instance p6, Lcom/google/android/gms/internal/ads/zzwe;

    .line 129
    .line 130
    invoke-direct {p6, p1, p4, p2}, Lcom/google/android/gms/internal/ads/zzwe;-><init>(Lcom/google/android/gms/internal/ads/zzam;Lcom/google/android/gms/internal/ads/zzrx;Lcom/google/android/gms/internal/ads/zzwd;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p3, p5, p6}, Lcom/google/android/gms/internal/ads/zzwn;->zzc(ILjava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    :cond_4
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzo:I

    .line 137
    .line 138
    add-int/2addr p1, v1

    .line 139
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzo:I

    .line 140
    .line 141
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzh:I

    .line 142
    .line 143
    if-ne p1, p2, :cond_5

    .line 144
    .line 145
    add-int/lit16 p1, p2, 0x3e8

    .line 146
    .line 147
    new-array p3, p1, [J

    .line 148
    .line 149
    new-array p4, p1, [J

    .line 150
    .line 151
    new-array p5, p1, [J

    .line 152
    .line 153
    new-array p6, p1, [I

    .line 154
    .line 155
    new-array p7, p1, [I

    .line 156
    .line 157
    new-array v0, p1, [Lcom/google/android/gms/internal/ads/zzadz;

    .line 158
    .line 159
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzq:I

    .line 160
    .line 161
    sub-int/2addr p2, v1

    .line 162
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzj:[J

    .line 163
    .line 164
    invoke-static {v3, v1, p4, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    .line 166
    .line 167
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzm:[J

    .line 168
    .line 169
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzq:I

    .line 170
    .line 171
    invoke-static {v1, v3, p5, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    .line 173
    .line 174
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzl:[I

    .line 175
    .line 176
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzq:I

    .line 177
    .line 178
    invoke-static {v1, v3, p6, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    .line 180
    .line 181
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzk:[I

    .line 182
    .line 183
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzq:I

    .line 184
    .line 185
    invoke-static {v1, v3, p7, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    .line 187
    .line 188
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzn:[Lcom/google/android/gms/internal/ads/zzadz;

    .line 189
    .line 190
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzq:I

    .line 191
    .line 192
    invoke-static {v1, v3, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    .line 194
    .line 195
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzi:[J

    .line 196
    .line 197
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzq:I

    .line 198
    .line 199
    invoke-static {v1, v3, p3, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    .line 201
    .line 202
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzq:I

    .line 203
    .line 204
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzj:[J

    .line 205
    .line 206
    invoke-static {v3, v2, p4, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    .line 208
    .line 209
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzm:[J

    .line 210
    .line 211
    invoke-static {v3, v2, p5, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    .line 213
    .line 214
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzl:[I

    .line 215
    .line 216
    invoke-static {v3, v2, p6, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    .line 218
    .line 219
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzk:[I

    .line 220
    .line 221
    invoke-static {v3, v2, p7, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    .line 223
    .line 224
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzn:[Lcom/google/android/gms/internal/ads/zzadz;

    .line 225
    .line 226
    invoke-static {v3, v2, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    .line 228
    .line 229
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzi:[J

    .line 230
    .line 231
    invoke-static {v3, v2, p3, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    .line 233
    .line 234
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzj:[J

    .line 235
    .line 236
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzm:[J

    .line 237
    .line 238
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzl:[I

    .line 239
    .line 240
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzk:[I

    .line 241
    .line 242
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzn:[Lcom/google/android/gms/internal/ads/zzadz;

    .line 243
    .line 244
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzi:[J

    .line 245
    .line 246
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzq:I

    .line 247
    .line 248
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzh:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    .line 250
    monitor-exit p0

    .line 251
    return-void

    .line 252
    :cond_5
    monitor-exit p0

    .line 253
    return-void

    .line 254
    :cond_6
    :try_start_1
    throw p2

    .line 255
    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    throw p1
.end method

.method private final zzI(Lcom/google/android/gms/internal/ads/zzam;Lcom/google/android/gms/internal/ads/zzlb;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzg:Lcom/google/android/gms/internal/ads/zzam;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move-object v2, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzam;->zzp:Lcom/google/android/gms/internal/ads/zzae;

    .line 9
    .line 10
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzg:Lcom/google/android/gms/internal/ads/zzam;

    .line 11
    .line 12
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzam;->zzp:Lcom/google/android/gms/internal/ads/zzae;

    .line 13
    .line 14
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzd:Lcom/google/android/gms/internal/ads/zzry;

    .line 15
    .line 16
    invoke-interface {v4, p1}, Lcom/google/android/gms/internal/ads/zzry;->zza(Lcom/google/android/gms/internal/ads/zzam;)I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/zzam;->zzc(I)Lcom/google/android/gms/internal/ads/zzam;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    iput-object v4, p2, Lcom/google/android/gms/internal/ads/zzlb;->zza:Lcom/google/android/gms/internal/ads/zzam;

    .line 25
    .line 26
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzC:Lcom/google/android/gms/internal/ads/zzrz;

    .line 27
    .line 28
    iput-object v4, p2, Lcom/google/android/gms/internal/ads/zzlb;->zzb:Lcom/google/android/gms/internal/ads/zzrz;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzfy;->zzF(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    return-void

    .line 40
    :cond_2
    :goto_1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzam;->zzp:Lcom/google/android/gms/internal/ads/zzae;

    .line 41
    .line 42
    if-nez p1, :cond_3

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzrz;

    .line 46
    .line 47
    new-instance p1, Lcom/google/android/gms/internal/ads/zzrq;

    .line 48
    .line 49
    new-instance v0, Lcom/google/android/gms/internal/ads/zzsb;

    .line 50
    .line 51
    const/4 v2, 0x1

    .line 52
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzsb;-><init>(I)V

    .line 53
    .line 54
    .line 55
    const/16 v2, 0x1771

    .line 56
    .line 57
    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzrq;-><init>(Ljava/lang/Throwable;I)V

    .line 58
    .line 59
    .line 60
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzrz;-><init>(Lcom/google/android/gms/internal/ads/zzrq;)V

    .line 61
    .line 62
    .line 63
    :goto_2
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzC:Lcom/google/android/gms/internal/ads/zzrz;

    .line 64
    .line 65
    iput-object v1, p2, Lcom/google/android/gms/internal/ads/zzlb;->zzb:Lcom/google/android/gms/internal/ads/zzrz;

    .line 66
    .line 67
    return-void
.end method

.method private final zzJ()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzC:Lcom/google/android/gms/internal/ads/zzrz;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzC:Lcom/google/android/gms/internal/ads/zzrz;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzg:Lcom/google/android/gms/internal/ads/zzam;

    :cond_0
    return-void
.end method

.method private final declared-synchronized zzK()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzr:I

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zza:Lcom/google/android/gms/internal/ads/zzwa;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwa;->zzg()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw v0
.end method

.method private final zzL()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzr:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzo:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzM(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzC:Lcom/google/android/gms/internal/ads/zzrz;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzl:[I

    .line 6
    .line 7
    aget p1, v0, p1

    .line 8
    .line 9
    const/high16 v0, 0x40000000    # 2.0f

    .line 10
    .line 11
    and-int/2addr p1, v0

    .line 12
    const/4 v0, 0x0

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return v0

    .line 17
    :cond_1
    const/4 v0, 0x1

    .line 18
    :goto_0
    return v0
.end method

.method private final declared-synchronized zzN(Lcom/google/android/gms/internal/ads/zzam;)Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzx:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzz:Lcom/google/android/gms/internal/ads/zzam;

    .line 6
    .line 7
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzfy;->zzF(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return v0

    .line 15
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzc:Lcom/google/android/gms/internal/ads/zzwn;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzwn;->zzf()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzc:Lcom/google/android/gms/internal/ads/zzwn;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzwn;->zzb()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/google/android/gms/internal/ads/zzwe;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzwe;->zza:Lcom/google/android/gms/internal/ads/zzam;

    .line 32
    .line 33
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzam;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzc:Lcom/google/android/gms/internal/ads/zzwn;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzwn;->zzb()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lcom/google/android/gms/internal/ads/zzwe;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzwe;->zza:Lcom/google/android/gms/internal/ads/zzam;

    .line 48
    .line 49
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzz:Lcom/google/android/gms/internal/ads/zzam;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzz:Lcom/google/android/gms/internal/ads/zzam;

    .line 55
    .line 56
    :goto_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzA:Z

    .line 57
    .line 58
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzz:Lcom/google/android/gms/internal/ads/zzam;

    .line 59
    .line 60
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzam;->zzj:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzcb;->zzf(Ljava/lang/String;Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    and-int/2addr p1, v1

    .line 69
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzA:Z

    .line 70
    .line 71
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzB:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .line 73
    monitor-exit p0

    .line 74
    const/4 p1, 0x1

    .line 75
    return p1

    .line 76
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    throw p1
.end method

.method public static synthetic zzm(Lcom/google/android/gms/internal/ads/zzwe;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzwe;->zzb:Lcom/google/android/gms/internal/ads/zzrx;

    .line 2
    .line 3
    sget p0, Lcom/google/android/gms/internal/ads/zzrw;->zza:I

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final declared-synchronized zzA(JZ)Z
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwg;->zzK()V

    .line 3
    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzr:I

    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzwg;->zzC(I)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwg;->zzL()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v7, 0x0

    .line 16
    if-eqz v1, :cond_7

    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzm:[J

    .line 19
    .line 20
    aget-wide v3, v1, v2

    .line 21
    .line 22
    cmp-long v1, p1, v3

    .line 23
    .line 24
    if-ltz v1, :cond_7

    .line 25
    .line 26
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzu:J

    .line 27
    .line 28
    const/4 v8, 0x1

    .line 29
    cmp-long v1, p1, v3

    .line 30
    .line 31
    if-lez v1, :cond_0

    .line 32
    .line 33
    if-eqz p3, :cond_7

    .line 34
    .line 35
    const/4 p3, 0x1

    .line 36
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzA:Z

    .line 37
    .line 38
    const/4 v9, -0x1

    .line 39
    if-eqz v1, :cond_5

    .line 40
    .line 41
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzo:I

    .line 42
    .line 43
    sub-int/2addr v1, v0

    .line 44
    const/4 v0, 0x0

    .line 45
    :goto_0
    if-ge v0, v1, :cond_3

    .line 46
    .line 47
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzm:[J

    .line 48
    .line 49
    aget-wide v4, v3, v2

    .line 50
    .line 51
    cmp-long v3, v4, p1

    .line 52
    .line 53
    if-gez v3, :cond_2

    .line 54
    .line 55
    add-int/lit8 v2, v2, 0x1

    .line 56
    .line 57
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzh:I

    .line 58
    .line 59
    if-ne v2, v3, :cond_1

    .line 60
    .line 61
    const/4 v2, 0x0

    .line 62
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    goto :goto_3

    .line 67
    :cond_2
    move v1, v0

    .line 68
    goto :goto_1

    .line 69
    :cond_3
    if-eqz p3, :cond_4

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_4
    const/4 v1, -0x1

    .line 73
    goto :goto_1

    .line 74
    :cond_5
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzo:I

    .line 75
    .line 76
    sub-int v3, p3, v0

    .line 77
    .line 78
    const/4 v6, 0x1

    .line 79
    move-object v1, p0

    .line 80
    move-wide v4, p1

    .line 81
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzwg;->zzB(IIJZ)I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    :goto_1
    if-ne v1, v9, :cond_6

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_6
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzs:J

    .line 89
    .line 90
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzr:I

    .line 91
    .line 92
    add-int/2addr p1, v1

    .line 93
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzr:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .line 95
    monitor-exit p0

    .line 96
    return v8

    .line 97
    :cond_7
    :goto_2
    monitor-exit p0

    .line 98
    return v7

    .line 99
    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    throw p1
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzp:I

    return v0
.end method

.method public final zzb()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzp:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzr:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final declared-synchronized zzc(JZ)I
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzr:I

    .line 3
    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzwg;->zzC(I)I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwg;->zzL()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v7, 0x0

    .line 13
    if-eqz v1, :cond_4

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzm:[J

    .line 16
    .line 17
    aget-wide v3, v1, v2

    .line 18
    .line 19
    cmp-long v1, p1, v3

    .line 20
    .line 21
    if-gez v1, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzu:J

    .line 25
    .line 26
    cmp-long v1, p1, v3

    .line 27
    .line 28
    if-lez v1, :cond_2

    .line 29
    .line 30
    if-nez p3, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzo:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    sub-int/2addr p1, v0

    .line 36
    monitor-exit p0

    .line 37
    return p1

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    :goto_0
    :try_start_1
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzo:I

    .line 41
    .line 42
    sub-int v3, p3, v0

    .line 43
    .line 44
    const/4 v6, 0x1

    .line 45
    move-object v1, p0

    .line 46
    move-wide v4, p1

    .line 47
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzwg;->zzB(IIJZ)I

    .line 48
    .line 49
    .line 50
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    const/4 p2, -0x1

    .line 52
    monitor-exit p0

    .line 53
    if-ne p1, p2, :cond_3

    .line 54
    .line 55
    return v7

    .line 56
    :cond_3
    return p1

    .line 57
    :cond_4
    :goto_1
    monitor-exit p0

    .line 58
    return v7

    .line 59
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    throw p1
.end method

.method public final zzd()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzp:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzo:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzlb;Lcom/google/android/gms/internal/ads/zzih;IZ)I
    .locals 8
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    and-int/lit8 v0, p3, 0x2

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v5, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    const/4 v5, 0x0

    .line 10
    :goto_0
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzb:Lcom/google/android/gms/internal/ads/zzwc;

    .line 11
    .line 12
    move-object v2, p0

    .line 13
    move-object v3, p1

    .line 14
    move-object v4, p2

    .line 15
    move v6, p4

    .line 16
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzwg;->zzD(Lcom/google/android/gms/internal/ads/zzlb;Lcom/google/android/gms/internal/ads/zzih;ZZLcom/google/android/gms/internal/ads/zzwc;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/4 p4, -0x4

    .line 21
    if-ne p1, p4, :cond_5

    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzib;->zzf()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    and-int/lit8 p1, p3, 0x1

    .line 30
    .line 31
    and-int/lit8 p3, p3, 0x4

    .line 32
    .line 33
    if-nez p3, :cond_3

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zza:Lcom/google/android/gms/internal/ads/zzwa;

    .line 38
    .line 39
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzb:Lcom/google/android/gms/internal/ads/zzwc;

    .line 40
    .line 41
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzwa;->zzd(Lcom/google/android/gms/internal/ads/zzih;Lcom/google/android/gms/internal/ads/zzwc;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    :goto_1
    const/4 p1, -0x4

    .line 45
    goto :goto_3

    .line 46
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zza:Lcom/google/android/gms/internal/ads/zzwa;

    .line 47
    .line 48
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzb:Lcom/google/android/gms/internal/ads/zzwc;

    .line 49
    .line 50
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzwa;->zze(Lcom/google/android/gms/internal/ads/zzih;Lcom/google/android/gms/internal/ads/zzwc;)V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_3
    if-eqz p1, :cond_4

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_4
    :goto_2
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzr:I

    .line 58
    .line 59
    add-int/2addr p1, v1

    .line 60
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzr:I

    .line 61
    .line 62
    return p4

    .line 63
    :cond_5
    :goto_3
    return p1
.end method

.method public final synthetic zzf(Lcom/google/android/gms/internal/ads/zzu;IZ)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzady;->zza(Lcom/google/android/gms/internal/ads/zzaea;Lcom/google/android/gms/internal/ads/zzu;IZ)I

    move-result p1

    return p1
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzu;IZI)I
    .locals 0

    .line 1
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzwg;->zza:Lcom/google/android/gms/internal/ads/zzwa;

    .line 2
    .line 3
    invoke-virtual {p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzwa;->zza(Lcom/google/android/gms/internal/ads/zzu;IZ)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final declared-synchronized zzh()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzu:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzi()Lcom/google/android/gms/internal/ads/zzam;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzx:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzz:Lcom/google/android/gms/internal/ads/zzam;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final zzj(JZZ)V
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzwg;->zza:Lcom/google/android/gms/internal/ads/zzwa;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/google/android/gms/internal/ads/zzwg;->zzE(JZZ)J

    .line 5
    .line 6
    .line 7
    move-result-wide p1

    .line 8
    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzwa;->zzc(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final zzk()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zza:Lcom/google/android/gms/internal/ads/zzwa;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwg;->zzF()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzwa;->zzc(J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzam;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzy:Lcom/google/android/gms/internal/ads/zzam;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzwg;->zzN(Lcom/google/android/gms/internal/ads/zzam;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzf:Lcom/google/android/gms/internal/ads/zzwf;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzwf;->zzM(Lcom/google/android/gms/internal/ads/zzam;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final zzn()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzC:Lcom/google/android/gms/internal/ads/zzrz;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrz;->zza()Lcom/google/android/gms/internal/ads/zzrq;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    throw v0
.end method

.method public final zzo()V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzwg;->zzk()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwg;->zzJ()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final zzp()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzwg;->zzq(Z)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwg;->zzJ()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final zzq(Z)V
    .locals 4
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zza:Lcom/google/android/gms/internal/ads/zzwa;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwa;->zzf()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzo:I

    .line 8
    .line 9
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzp:I

    .line 10
    .line 11
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzq:I

    .line 12
    .line 13
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzr:I

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzw:Z

    .line 17
    .line 18
    const-wide/high16 v2, -0x8000000000000000L

    .line 19
    .line 20
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzs:J

    .line 21
    .line 22
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzt:J

    .line 23
    .line 24
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzu:J

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzv:Z

    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzc:Lcom/google/android/gms/internal/ads/zzwn;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzwn;->zzd()V

    .line 31
    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzy:Lcom/google/android/gms/internal/ads/zzam;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzz:Lcom/google/android/gms/internal/ads/zzam;

    .line 39
    .line 40
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzx:Z

    .line 41
    .line 42
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzA:Z

    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public final synthetic zzr(Lcom/google/android/gms/internal/ads/zzfp;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzady;->zzb(Lcom/google/android/gms/internal/ads/zzaea;Lcom/google/android/gms/internal/ads/zzfp;I)V

    return-void
.end method

.method public final zzs(Lcom/google/android/gms/internal/ads/zzfp;II)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzwg;->zza:Lcom/google/android/gms/internal/ads/zzwa;

    .line 2
    .line 3
    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzwa;->zzh(Lcom/google/android/gms/internal/ads/zzfp;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzt(JIIILcom/google/android/gms/internal/ads/zzadz;)V
    .locals 8
    .param p6    # Lcom/google/android/gms/internal/ads/zzadz;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzw:Z

    .line 3
    .line 4
    if-eqz v1, :cond_1

    .line 5
    .line 6
    and-int/lit8 v1, p3, 0x1

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzw:Z

    .line 13
    .line 14
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzA:Z

    .line 15
    .line 16
    if-eqz v1, :cond_3

    .line 17
    .line 18
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzs:J

    .line 19
    .line 20
    cmp-long v3, p1, v1

    .line 21
    .line 22
    if-ltz v3, :cond_4

    .line 23
    .line 24
    and-int/lit8 v1, p3, 0x1

    .line 25
    .line 26
    if-nez v1, :cond_3

    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzB:Z

    .line 29
    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzz:Lcom/google/android/gms/internal/ads/zzam;

    .line 33
    .line 34
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 39
    .line 40
    const/16 v3, 0x8

    .line 41
    .line 42
    new-array v3, v3, [J

    .line 43
    .line 44
    fill-array-data v3, :array_0

    .line 45
    .line 46
    .line 47
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    const/4 v4, 0x3

    .line 57
    new-array v4, v4, [J

    .line 58
    .line 59
    fill-array-data v4, :array_1

    .line 60
    .line 61
    .line 62
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzB:Z

    .line 77
    .line 78
    :cond_2
    or-int/2addr p3, v0

    .line 79
    :cond_3
    move v3, p3

    .line 80
    goto :goto_1

    .line 81
    :cond_4
    :goto_0
    return-void

    .line 82
    :goto_1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzwg;->zza:Lcom/google/android/gms/internal/ads/zzwa;

    .line 83
    .line 84
    int-to-long v0, p4

    .line 85
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzwa;->zzb()J

    .line 86
    .line 87
    .line 88
    move-result-wide v4

    .line 89
    sub-long/2addr v4, v0

    .line 90
    int-to-long v0, p5

    .line 91
    sub-long/2addr v4, v0

    .line 92
    move-object v0, p0

    .line 93
    move-wide v1, p1

    .line 94
    move v6, p4

    .line 95
    move-object v7, p6

    .line 96
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzwg;->zzH(JIJILcom/google/android/gms/internal/ads/zzadz;)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    nop

    .line 101
    :array_0
    .array-data 8
        -0x375c882c904c9044L    # -8.47954040729251E41
        -0x6eeb30a6ad8d3bb0L
        -0xc540b19827c1ebdL    # -1.5637648128917E249
        0x3f736671863e1eb0L    # 0.00473636956656491
        -0xbca4350e4de029L
        -0x5694b5f64fecb8c3L
        -0x363391f7dcf52554L    # -3.2461106475500772E47
        0x4125c8399f30b61eL    # 713756.8109185135
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
    :array_1
    .array-data 8
        -0x47e6ad4d72e8e1c9L    # -1.860442931794215E-38
        -0x3e42b8f30684d957L    # -4.9119564148105866E8
        0x2e35c51cd18b7b44L    # 4.377428881686509E-86
    .end array-data
.end method

.method public final zzu(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzs:J

    return-void
.end method

.method public final zzv(Lcom/google/android/gms/internal/ads/zzwf;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/internal/ads/zzwf;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzf:Lcom/google/android/gms/internal/ads/zzwf;

    return-void
.end method

.method public final declared-synchronized zzw(I)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    if-ltz p1, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzr:I

    .line 6
    .line 7
    add-int/2addr v1, p1

    .line 8
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzo:I

    .line 9
    .line 10
    if-gt v1, v2, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzd(Z)V

    .line 17
    .line 18
    .line 19
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzr:I

    .line 20
    .line 21
    add-int/2addr v0, p1

    .line 22
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzr:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw p1
.end method

.method public final declared-synchronized zzx()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzv:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzy(Z)Z
    .locals 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwg;->zzL()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/4 v1, 0x1

    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    if-nez p1, :cond_2

    .line 10
    .line 11
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzv:Z

    .line 12
    .line 13
    if-nez p1, :cond_2

    .line 14
    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzz:Lcom/google/android/gms/internal/ads/zzam;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzg:Lcom/google/android/gms/internal/ads/zzam;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    if-eq p1, v2, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    monitor-exit p0

    .line 26
    return v0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 v1, 0x0

    .line 30
    :cond_2
    :goto_0
    monitor-exit p0

    .line 31
    return v1

    .line 32
    :cond_3
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzc:Lcom/google/android/gms/internal/ads/zzwn;

    .line 33
    .line 34
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzp:I

    .line 35
    .line 36
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzr:I

    .line 37
    .line 38
    add-int/2addr v0, v2

    .line 39
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzwn;->zza(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lcom/google/android/gms/internal/ads/zzwe;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzwe;->zza:Lcom/google/android/gms/internal/ads/zzam;

    .line 46
    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzg:Lcom/google/android/gms/internal/ads/zzam;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .line 49
    if-eq p1, v0, :cond_4

    .line 50
    .line 51
    monitor-exit p0

    .line 52
    return v1

    .line 53
    :cond_4
    :try_start_2
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzr:I

    .line 54
    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzwg;->zzC(I)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzwg;->zzM(I)Z

    .line 60
    .line 61
    .line 62
    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    monitor-exit p0

    .line 64
    return p1

    .line 65
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 66
    throw p1
.end method

.method public final declared-synchronized zzz(I)Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwg;->zzK()V

    .line 3
    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzp:I

    .line 6
    .line 7
    if-lt p1, v0, :cond_1

    .line 8
    .line 9
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzo:I

    .line 10
    .line 11
    add-int/2addr v1, v0

    .line 12
    if-le p1, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-wide/high16 v1, -0x8000000000000000L

    .line 16
    .line 17
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzs:J

    .line 18
    .line 19
    sub-int/2addr p1, v0

    .line 20
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzwg;->zzr:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    monitor-exit p0

    .line 23
    const/4 p1, 0x1

    .line 24
    return p1

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    monitor-exit p0

    .line 28
    const/4 p1, 0x0

    .line 29
    return p1

    .line 30
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw p1
.end method
