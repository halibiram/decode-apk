.class public final Lcom/google/android/gms/internal/ads/zzrd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzqb;


# static fields
.field private static final zza:Ljava/lang/Object;

.field private static zzb:Ljava/util/concurrent/ExecutorService;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "releaseExecutorLock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static zzc:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "releaseExecutorLock"
    .end annotation
.end field


# instance fields
.field private zzA:J

.field private zzB:J

.field private zzC:J

.field private zzD:J

.field private zzE:I

.field private zzF:Z

.field private zzG:Z

.field private zzH:J

.field private zzI:F

.field private zzJ:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzK:I

.field private zzL:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzM:Z

.field private zzN:Z

.field private zzO:Z

.field private zzP:I

.field private zzQ:Lcom/google/android/gms/internal/ads/zzl;

.field private zzR:Lcom/google/android/gms/internal/ads/zzqp;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzS:J

.field private zzT:Z

.field private zzU:Z

.field private zzV:J

.field private zzW:J

.field private zzX:Landroid/os/Handler;

.field private final zzY:Lcom/google/android/gms/internal/ads/zzqt;

.field private final zzZ:Lcom/google/android/gms/internal/ads/zzqj;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzqg;

.field private final zze:Lcom/google/android/gms/internal/ads/zzrn;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzgaa;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzgaa;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzeo;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzqf;

.field private final zzj:Ljava/util/ArrayDeque;

.field private zzk:Lcom/google/android/gms/internal/ads/zzrb;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzqw;

.field private final zzm:Lcom/google/android/gms/internal/ads/zzqw;

.field private final zzn:Lcom/google/android/gms/internal/ads/zzqq;

.field private zzo:Lcom/google/android/gms/internal/ads/zzpb;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzp:Lcom/google/android/gms/internal/ads/zzpy;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzq:Lcom/google/android/gms/internal/ads/zzqs;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzr:Lcom/google/android/gms/internal/ads/zzqs;

.field private zzs:Lcom/google/android/gms/internal/ads/zzdq;

.field private zzt:Landroid/media/AudioTrack;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzu:Lcom/google/android/gms/internal/ads/zzpd;

.field private zzv:Lcom/google/android/gms/internal/ads/zzk;

.field private zzw:Lcom/google/android/gms/internal/ads/zzqv;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzx:Lcom/google/android/gms/internal/ads/zzqv;

.field private zzy:Lcom/google/android/gms/internal/ads/zzcg;

.field private zzz:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzrd;->zza:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzqr;Lcom/google/android/gms/internal/ads/zzrc;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object p2, Lcom/google/android/gms/internal/ads/zzk;->zza:Lcom/google/android/gms/internal/ads/zzk;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzv:Lcom/google/android/gms/internal/ads/zzk;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzqr;->zza(Lcom/google/android/gms/internal/ads/zzqr;)Lcom/google/android/gms/internal/ads/zzpd;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzu:Lcom/google/android/gms/internal/ads/zzpd;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzqr;->zzf(Lcom/google/android/gms/internal/ads/zzqr;)Lcom/google/android/gms/internal/ads/zzqt;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzY:Lcom/google/android/gms/internal/ads/zzqt;

    .line 19
    .line 20
    sget p2, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 21
    .line 22
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzqr;->zzb(Lcom/google/android/gms/internal/ads/zzqr;)Lcom/google/android/gms/internal/ads/zzqq;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzn:Lcom/google/android/gms/internal/ads/zzqq;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzqr;->zzg(Lcom/google/android/gms/internal/ads/zzqr;)Lcom/google/android/gms/internal/ads/zzqj;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzZ:Lcom/google/android/gms/internal/ads/zzqj;

    .line 36
    .line 37
    new-instance p1, Lcom/google/android/gms/internal/ads/zzeo;

    .line 38
    .line 39
    sget-object p2, Lcom/google/android/gms/internal/ads/zzel;->zza:Lcom/google/android/gms/internal/ads/zzel;

    .line 40
    .line 41
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzeo;-><init>(Lcom/google/android/gms/internal/ads/zzel;)V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzh:Lcom/google/android/gms/internal/ads/zzeo;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeo;->zze()Z

    .line 47
    .line 48
    .line 49
    new-instance p1, Lcom/google/android/gms/internal/ads/zzqf;

    .line 50
    .line 51
    new-instance p2, Lcom/google/android/gms/internal/ads/zzqy;

    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    invoke-direct {p2, p0, v0}, Lcom/google/android/gms/internal/ads/zzqy;-><init>(Lcom/google/android/gms/internal/ads/zzrd;Lcom/google/android/gms/internal/ads/zzqx;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzqf;-><init>(Lcom/google/android/gms/internal/ads/zzqe;)V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzi:Lcom/google/android/gms/internal/ads/zzqf;

    .line 61
    .line 62
    new-instance p1, Lcom/google/android/gms/internal/ads/zzqg;

    .line 63
    .line 64
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzqg;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzd:Lcom/google/android/gms/internal/ads/zzqg;

    .line 68
    .line 69
    new-instance p2, Lcom/google/android/gms/internal/ads/zzrn;

    .line 70
    .line 71
    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzrn;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzrd;->zze:Lcom/google/android/gms/internal/ads/zzrn;

    .line 75
    .line 76
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdx;

    .line 77
    .line 78
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdx;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgaa;->zzo(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgaa;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzf:Lcom/google/android/gms/internal/ads/zzgaa;

    .line 86
    .line 87
    new-instance p1, Lcom/google/android/gms/internal/ads/zzrm;

    .line 88
    .line 89
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzrm;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgaa;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgaa;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzg:Lcom/google/android/gms/internal/ads/zzgaa;

    .line 97
    .line 98
    const/high16 p1, 0x3f800000    # 1.0f

    .line 99
    .line 100
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzI:F

    .line 101
    .line 102
    const/4 p1, 0x0

    .line 103
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzP:I

    .line 104
    .line 105
    new-instance p2, Lcom/google/android/gms/internal/ads/zzl;

    .line 106
    .line 107
    const/4 v0, 0x0

    .line 108
    invoke-direct {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzl;-><init>(IF)V

    .line 109
    .line 110
    .line 111
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzQ:Lcom/google/android/gms/internal/ads/zzl;

    .line 112
    .line 113
    new-instance p2, Lcom/google/android/gms/internal/ads/zzqv;

    .line 114
    .line 115
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcg;->zza:Lcom/google/android/gms/internal/ads/zzcg;

    .line 116
    .line 117
    const-wide/16 v5, 0x0

    .line 118
    .line 119
    const/4 v7, 0x0

    .line 120
    const-wide/16 v3, 0x0

    .line 121
    .line 122
    move-object v1, p2

    .line 123
    move-object v2, v0

    .line 124
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzqv;-><init>(Lcom/google/android/gms/internal/ads/zzcg;JJLcom/google/android/gms/internal/ads/zzqu;)V

    .line 125
    .line 126
    .line 127
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzx:Lcom/google/android/gms/internal/ads/zzqv;

    .line 128
    .line 129
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzy:Lcom/google/android/gms/internal/ads/zzcg;

    .line 130
    .line 131
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzz:Z

    .line 132
    .line 133
    new-instance p1, Ljava/util/ArrayDeque;

    .line 134
    .line 135
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 136
    .line 137
    .line 138
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzj:Ljava/util/ArrayDeque;

    .line 139
    .line 140
    new-instance p1, Lcom/google/android/gms/internal/ads/zzqw;

    .line 141
    .line 142
    const-wide/16 v0, 0x64

    .line 143
    .line 144
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzqw;-><init>(J)V

    .line 145
    .line 146
    .line 147
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzl:Lcom/google/android/gms/internal/ads/zzqw;

    .line 148
    .line 149
    new-instance p1, Lcom/google/android/gms/internal/ads/zzqw;

    .line 150
    .line 151
    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzqw;-><init>(J)V

    .line 152
    .line 153
    .line 154
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzm:Lcom/google/android/gms/internal/ads/zzqw;

    .line 155
    .line 156
    return-void
.end method

.method public static bridge synthetic zzA(Lcom/google/android/gms/internal/ads/zzrd;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzS:J

    return-wide v0
.end method

.method public static bridge synthetic zzB(Lcom/google/android/gms/internal/ads/zzrd;)J
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrd;->zzI()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic zzC(Lcom/google/android/gms/internal/ads/zzrd;)J
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrd;->zzJ()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic zzD(Lcom/google/android/gms/internal/ads/zzrd;)Landroid/media/AudioTrack;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzt:Landroid/media/AudioTrack;

    return-object p0
.end method

.method public static bridge synthetic zzE(Lcom/google/android/gms/internal/ads/zzrd;)Lcom/google/android/gms/internal/ads/zzpy;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzp:Lcom/google/android/gms/internal/ads/zzpy;

    return-object p0
.end method

.method public static synthetic zzF(Lcom/google/android/gms/internal/ads/zzrd;)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzW:J

    .line 2
    .line 3
    const-wide/32 v2, 0xf4240

    .line 4
    .line 5
    .line 6
    cmp-long v4, v0, v2

    .line 7
    .line 8
    if-ltz v4, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzp:Lcom/google/android/gms/internal/ads/zzpy;

    .line 11
    .line 12
    check-cast v0, Lcom/google/android/gms/internal/ads/zzri;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzri;->zza:Lcom/google/android/gms/internal/ads/zzrj;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzrj;->zzag(Lcom/google/android/gms/internal/ads/zzrj;Z)V

    .line 18
    .line 19
    .line 20
    :cond_0
    const-wide/16 v0, 0x0

    .line 21
    .line 22
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzW:J

    .line 23
    .line 24
    return-void
.end method

.method public static synthetic zzG(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzpy;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzpv;Lcom/google/android/gms/internal/ads/zzeo;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->flush()V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    new-instance p0, Lcom/google/android/gms/internal/ads/zzql;

    .line 25
    .line 26
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzql;-><init>(Lcom/google/android/gms/internal/ads/zzpy;Lcom/google/android/gms/internal/ads/zzpv;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzeo;->zze()Z

    .line 33
    .line 34
    .line 35
    sget-object p0, Lcom/google/android/gms/internal/ads/zzrd;->zza:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter p0

    .line 38
    :try_start_1
    sget p1, Lcom/google/android/gms/internal/ads/zzrd;->zzc:I

    .line 39
    .line 40
    add-int/lit8 p1, p1, -0x1

    .line 41
    .line 42
    sput p1, Lcom/google/android/gms/internal/ads/zzrd;->zzc:I

    .line 43
    .line 44
    if-nez p1, :cond_1

    .line 45
    .line 46
    sget-object p1, Lcom/google/android/gms/internal/ads/zzrd;->zzb:Ljava/util/concurrent/ExecutorService;

    .line 47
    .line 48
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 49
    .line 50
    .line 51
    sput-object v0, Lcom/google/android/gms/internal/ads/zzrd;->zzb:Ljava/util/concurrent/ExecutorService;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    :goto_0
    monitor-exit p0

    .line 57
    return-void

    .line 58
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    throw p1

    .line 60
    :catchall_1
    move-exception p0

    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_2

    .line 76
    .line 77
    new-instance v1, Lcom/google/android/gms/internal/ads/zzql;

    .line 78
    .line 79
    invoke-direct {v1, p1, p3}, Lcom/google/android/gms/internal/ads/zzql;-><init>(Lcom/google/android/gms/internal/ads/zzpy;Lcom/google/android/gms/internal/ads/zzpv;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 83
    .line 84
    .line 85
    :cond_2
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzeo;->zze()Z

    .line 86
    .line 87
    .line 88
    sget-object p1, Lcom/google/android/gms/internal/ads/zzrd;->zza:Ljava/lang/Object;

    .line 89
    .line 90
    monitor-enter p1

    .line 91
    :try_start_2
    sget p2, Lcom/google/android/gms/internal/ads/zzrd;->zzc:I

    .line 92
    .line 93
    add-int/lit8 p2, p2, -0x1

    .line 94
    .line 95
    sput p2, Lcom/google/android/gms/internal/ads/zzrd;->zzc:I

    .line 96
    .line 97
    if-nez p2, :cond_3

    .line 98
    .line 99
    sget-object p2, Lcom/google/android/gms/internal/ads/zzrd;->zzb:Ljava/util/concurrent/ExecutorService;

    .line 100
    .line 101
    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 102
    .line 103
    .line 104
    sput-object v0, Lcom/google/android/gms/internal/ads/zzrd;->zzb:Ljava/util/concurrent/ExecutorService;

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :catchall_2
    move-exception p0

    .line 108
    goto :goto_3

    .line 109
    :cond_3
    :goto_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 110
    throw p0

    .line 111
    :goto_3
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 112
    throw p0
.end method

.method public static bridge synthetic zzH(Lcom/google/android/gms/internal/ads/zzrd;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzO:Z

    return p0
.end method

.method private final zzI()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzr:Lcom/google/android/gms/internal/ads/zzqs;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzc:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzA:J

    .line 8
    .line 9
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzb:I

    .line 10
    .line 11
    int-to-long v3, v0

    .line 12
    div-long/2addr v1, v3

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzB:J

    .line 15
    .line 16
    :goto_0
    return-wide v1
.end method

.method private final zzJ()J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzr:Lcom/google/android/gms/internal/ads/zzqs;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzc:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzC:J

    .line 8
    .line 9
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzd:I

    .line 10
    .line 11
    int-to-long v3, v0

    .line 12
    sget v0, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 13
    .line 14
    add-long/2addr v1, v3

    .line 15
    const-wide/16 v5, -0x1

    .line 16
    .line 17
    add-long/2addr v1, v5

    .line 18
    div-long/2addr v1, v3

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzD:J

    .line 21
    .line 22
    :goto_0
    return-wide v1
.end method

.method private final zzK(Lcom/google/android/gms/internal/ads/zzqs;)Landroid/media/AudioTrack;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzv:Lcom/google/android/gms/internal/ads/zzk;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzP:I

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzqs;->zza(Lcom/google/android/gms/internal/ads/zzk;I)Landroid/media/AudioTrack;

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzpx; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p1

    .line 10
    :catch_0
    move-exception p1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzp:Lcom/google/android/gms/internal/ads/zzpy;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzpy;->zza(Ljava/lang/Exception;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    throw p1
.end method

.method private final zzL(J)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrd;->zzW()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzY:Lcom/google/android/gms/internal/ads/zzqt;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzy:Lcom/google/android/gms/internal/ads/zzcg;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzqt;->zzc(Lcom/google/android/gms/internal/ads/zzcg;)Lcom/google/android/gms/internal/ads/zzcg;

    .line 12
    .line 13
    .line 14
    :goto_0
    move-object v3, v1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcg;->zza:Lcom/google/android/gms/internal/ads/zzcg;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :goto_1
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzy:Lcom/google/android/gms/internal/ads/zzcg;

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrd;->zzW()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzY:Lcom/google/android/gms/internal/ads/zzqt;

    .line 28
    .line 29
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzz:Z

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzqt;->zzd(Z)Z

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_1
    const/4 v1, 0x0

    .line 36
    :goto_2
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzz:Z

    .line 37
    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzj:Ljava/util/ArrayDeque;

    .line 39
    .line 40
    new-instance v1, Lcom/google/android/gms/internal/ads/zzqv;

    .line 41
    .line 42
    const-wide/16 v4, 0x0

    .line 43
    .line 44
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 45
    .line 46
    .line 47
    move-result-wide v4

    .line 48
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzr:Lcom/google/android/gms/internal/ads/zzqs;

    .line 49
    .line 50
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrd;->zzJ()J

    .line 51
    .line 52
    .line 53
    move-result-wide v6

    .line 54
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzqs;->zze:I

    .line 55
    .line 56
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/ads/zzfy;->zzr(JI)J

    .line 57
    .line 58
    .line 59
    move-result-wide v6

    .line 60
    const/4 v8, 0x0

    .line 61
    move-object v2, v1

    .line 62
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzqv;-><init>(Lcom/google/android/gms/internal/ads/zzcg;JJLcom/google/android/gms/internal/ads/zzqu;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrd;->zzR()V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzp:Lcom/google/android/gms/internal/ads/zzpy;

    .line 72
    .line 73
    if-eqz p1, :cond_2

    .line 74
    .line 75
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzz:Z

    .line 76
    .line 77
    check-cast p1, Lcom/google/android/gms/internal/ads/zzri;

    .line 78
    .line 79
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzri;->zza:Lcom/google/android/gms/internal/ads/zzrj;

    .line 80
    .line 81
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzrj;->zzad(Lcom/google/android/gms/internal/ads/zzrj;)Lcom/google/android/gms/internal/ads/zzpt;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzpt;->zzw(Z)V

    .line 86
    .line 87
    .line 88
    :cond_2
    return-void
.end method

.method private final zzM()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzr:Lcom/google/android/gms/internal/ads/zzqs;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqs;->zzc()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzT:Z

    .line 12
    .line 13
    return-void
.end method

.method private final zzN()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzN:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzN:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzi:Lcom/google/android/gms/internal/ads/zzqf;

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrd;->zzJ()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzqf;->zzb(J)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzt:Landroid/media/AudioTrack;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private final zzO(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzs:Lcom/google/android/gms/internal/ads/zzdq;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdq;->zzh()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzs:Lcom/google/android/gms/internal/ads/zzdq;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdq;->zzg()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzs:Lcom/google/android/gms/internal/ads/zzdq;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdq;->zzb()Ljava/nio/ByteBuffer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzrd;->zzS(Ljava/nio/ByteBuffer;J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzJ:Ljava/nio/ByteBuffer;

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzs:Lcom/google/android/gms/internal/ads/zzdq;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzJ:Ljava/nio/ByteBuffer;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdq;->zze(Ljava/nio/ByteBuffer;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    :goto_1
    return-void

    .line 58
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzJ:Ljava/nio/ByteBuffer;

    .line 59
    .line 60
    if-nez v0, :cond_4

    .line 61
    .line 62
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdt;->zza:Ljava/nio/ByteBuffer;

    .line 63
    .line 64
    :cond_4
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzrd;->zzS(Ljava/nio/ByteBuffer;J)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method private final zzP(Lcom/google/android/gms/internal/ads/zzcg;)V
    .locals 8

    new-instance v7, Lcom/google/android/gms/internal/ads/zzqv;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-wide v2, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzqv;-><init>(Lcom/google/android/gms/internal/ads/zzcg;JJLcom/google/android/gms/internal/ads/zzqu;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrd;->zzU()Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object v7, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzw:Lcom/google/android/gms/internal/ads/zzqv;

    return-void

    :cond_0
    iput-object v7, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzx:Lcom/google/android/gms/internal/ads/zzqv;

    return-void
.end method

.method private final zzQ()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrd;->zzU()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget v0, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzt:Landroid/media/AudioTrack;

    .line 11
    .line 12
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzI:F

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final zzR()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzr:Lcom/google/android/gms/internal/ads/zzqs;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzi:Lcom/google/android/gms/internal/ads/zzdq;

    .line 4
    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzs:Lcom/google/android/gms/internal/ads/zzdq;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdq;->zzc()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final zzS(Ljava/nio/ByteBuffer;J)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    goto/16 :goto_4

    .line 8
    .line 9
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzL:Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    const/4 p3, 0x0

    .line 12
    const/4 v0, 0x1

    .line 13
    if-eqz p2, :cond_2

    .line 14
    .line 15
    if-ne p2, p1, :cond_1

    .line 16
    .line 17
    const/4 p2, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 p2, 0x0

    .line 20
    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzek;->zzd(Z)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzL:Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    sget p2, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 27
    .line 28
    :goto_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    sget v1, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 33
    .line 34
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzt:Landroid/media/AudioTrack;

    .line 35
    .line 36
    invoke-virtual {v1, p1, p2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 41
    .line 42
    .line 43
    move-result-wide v2

    .line 44
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzS:J

    .line 45
    .line 46
    const-wide/16 v2, 0x0

    .line 47
    .line 48
    if-gez v1, :cond_9

    .line 49
    .line 50
    sget p1, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 51
    .line 52
    const/16 p2, 0x18

    .line 53
    .line 54
    if-lt p1, p2, :cond_3

    .line 55
    .line 56
    const/4 p1, -0x6

    .line 57
    if-eq v1, p1, :cond_4

    .line 58
    .line 59
    :cond_3
    const/16 p1, -0x20

    .line 60
    .line 61
    if-ne v1, p1, :cond_6

    .line 62
    .line 63
    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrd;->zzJ()J

    .line 64
    .line 65
    .line 66
    move-result-wide p1

    .line 67
    cmp-long v4, p1, v2

    .line 68
    .line 69
    if-lez v4, :cond_5

    .line 70
    .line 71
    :goto_2
    const/4 p3, 0x1

    .line 72
    goto :goto_3

    .line 73
    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzt:Landroid/media/AudioTrack;

    .line 74
    .line 75
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzrd;->zzV(Landroid/media/AudioTrack;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_6

    .line 80
    .line 81
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrd;->zzM()V

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_6
    :goto_3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzqa;

    .line 86
    .line 87
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzr:Lcom/google/android/gms/internal/ads/zzqs;

    .line 88
    .line 89
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzqs;->zza:Lcom/google/android/gms/internal/ads/zzam;

    .line 90
    .line 91
    invoke-direct {p1, v1, p2, p3}, Lcom/google/android/gms/internal/ads/zzqa;-><init>(ILcom/google/android/gms/internal/ads/zzam;Z)V

    .line 92
    .line 93
    .line 94
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzp:Lcom/google/android/gms/internal/ads/zzpy;

    .line 95
    .line 96
    if-eqz p2, :cond_7

    .line 97
    .line 98
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzpy;->zza(Ljava/lang/Exception;)V

    .line 99
    .line 100
    .line 101
    :cond_7
    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzqa;->zzb:Z

    .line 102
    .line 103
    if-nez p2, :cond_8

    .line 104
    .line 105
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzm:Lcom/google/android/gms/internal/ads/zzqw;

    .line 106
    .line 107
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzqw;->zzb(Ljava/lang/Exception;)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_8
    sget-object p2, Lcom/google/android/gms/internal/ads/zzpd;->zza:Lcom/google/android/gms/internal/ads/zzpd;

    .line 112
    .line 113
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzu:Lcom/google/android/gms/internal/ads/zzpd;

    .line 114
    .line 115
    throw p1

    .line 116
    :cond_9
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzm:Lcom/google/android/gms/internal/ads/zzqw;

    .line 117
    .line 118
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzqw;->zza()V

    .line 119
    .line 120
    .line 121
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzt:Landroid/media/AudioTrack;

    .line 122
    .line 123
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzrd;->zzV(Landroid/media/AudioTrack;)Z

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    if-eqz v4, :cond_b

    .line 128
    .line 129
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzD:J

    .line 130
    .line 131
    cmp-long v6, v4, v2

    .line 132
    .line 133
    if-lez v6, :cond_a

    .line 134
    .line 135
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzU:Z

    .line 136
    .line 137
    :cond_a
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzO:Z

    .line 138
    .line 139
    if-eqz v2, :cond_b

    .line 140
    .line 141
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzp:Lcom/google/android/gms/internal/ads/zzpy;

    .line 142
    .line 143
    if-eqz v2, :cond_b

    .line 144
    .line 145
    if-ge v1, p2, :cond_b

    .line 146
    .line 147
    check-cast v2, Lcom/google/android/gms/internal/ads/zzri;

    .line 148
    .line 149
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzri;->zza:Lcom/google/android/gms/internal/ads/zzrj;

    .line 150
    .line 151
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzrj;->zzac(Lcom/google/android/gms/internal/ads/zzrj;)Lcom/google/android/gms/internal/ads/zzme;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    if-eqz v3, :cond_b

    .line 156
    .line 157
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzrj;->zzac(Lcom/google/android/gms/internal/ads/zzrj;)Lcom/google/android/gms/internal/ads/zzme;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzme;->zza()V

    .line 162
    .line 163
    .line 164
    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzr:Lcom/google/android/gms/internal/ads/zzqs;

    .line 165
    .line 166
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzqs;->zzc:I

    .line 167
    .line 168
    if-nez v2, :cond_c

    .line 169
    .line 170
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzC:J

    .line 171
    .line 172
    int-to-long v5, v1

    .line 173
    add-long/2addr v3, v5

    .line 174
    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzC:J

    .line 175
    .line 176
    :cond_c
    if-ne v1, p2, :cond_f

    .line 177
    .line 178
    if-eqz v2, :cond_e

    .line 179
    .line 180
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzJ:Ljava/nio/ByteBuffer;

    .line 181
    .line 182
    if-ne p1, p2, :cond_d

    .line 183
    .line 184
    const/4 p3, 0x1

    .line 185
    :cond_d
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzek;->zzf(Z)V

    .line 186
    .line 187
    .line 188
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzD:J

    .line 189
    .line 190
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzE:I

    .line 191
    .line 192
    int-to-long v0, p3

    .line 193
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzK:I

    .line 194
    .line 195
    int-to-long v2, p3

    .line 196
    mul-long v0, v0, v2

    .line 197
    .line 198
    add-long/2addr v0, p1

    .line 199
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzD:J

    .line 200
    .line 201
    :cond_e
    const/4 p1, 0x0

    .line 202
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzL:Ljava/nio/ByteBuffer;

    .line 203
    .line 204
    :cond_f
    :goto_4
    return-void
.end method

.method private final zzT()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzs:Lcom/google/android/gms/internal/ads/zzdq;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdq;->zzh()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-wide/high16 v1, -0x8000000000000000L

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzL:Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return v4

    .line 18
    :cond_0
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzrd;->zzS(Ljava/nio/ByteBuffer;J)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzL:Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    return v4

    .line 26
    :cond_1
    return v3

    .line 27
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzs:Lcom/google/android/gms/internal/ads/zzdq;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdq;->zzd()V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzrd;->zzO(J)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzs:Lcom/google/android/gms/internal/ads/zzdq;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdq;->zzg()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_5

    .line 42
    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzL:Ljava/nio/ByteBuffer;

    .line 44
    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    return v4

    .line 55
    :cond_4
    const/4 v3, 0x1

    .line 56
    :cond_5
    :goto_0
    return v3
.end method

.method private final zzU()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzt:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static zzV(Landroid/media/AudioTrack;)Z
    .locals 2

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, L땲땵듟돰뎡둔딠됫듻뒾뎹돝땟둡딟땦뒐딸되뒀땝듬된뒨뒵뎸땵뒐돠듸돳뎹땍드듼돠딻땯땡땭뒈땯땀뎰땸딎딤땀땱땥땟뒨돶땻뒻돳딃듼뎽딁듨뒬듻뒈뒼땡뒉땳듽돴땡딃듻들뒼뒻뒷뎡땐딄두둬든돷뒹드뒾땠뒘듐둔듟돠돼땔뒹뎬뎡돸뒘돤둡딠땋뎬되듬뎹땻땵딀들돵땪돴돴땱땹땅뒉뎠땹됫딎뒤드딀땪뒝뒨;->뎨딐딁들땠듟땣땝딄둬돨땁땸뒷돵뒝듨뒬딀듨듔딁뒐땯되들돶듰땋듽듸땡둥딹됨돨듼땀땝딀땳땍됨땱뒀땵될됫땪뒼돨땲뎹딨딅딄땜딜땨듌땫둑딜땠뒨땮땸뎡둔됫듐뒾따됐돶둡땦땲땵뒤땄든땃든뒵둑따돶듻드뒋뎸뎸돨뒘듽땧딻땋딸땯뒹딤땤디뒀둡되땯뒾뎹뒷됴뒨딁땰들됨된딜둬땣땀땔딸됩땩돴땡뎨(Landroid/media/AudioTrack;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method

.method private final zzW()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzr:Lcom/google/android/gms/internal/ads/zzqs;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzc:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzqs;->zza:Lcom/google/android/gms/internal/ads/zzam;

    .line 8
    .line 9
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzam;->zzB:I

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzam;)I
    .locals 5

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x2

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzam;->zzB:I

    .line 27
    .line 28
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfy;->zzH(I)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzam;->zzB:I

    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 42
    .line 43
    const/4 v4, 0x4

    .line 44
    new-array v4, v4, [J

    .line 45
    .line 46
    fill-array-data v4, :array_1

    .line 47
    .line 48
    .line 49
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-static {v3, v0, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 57
    .line 58
    new-array v1, v1, [J

    .line 59
    .line 60
    fill-array-data v1, :array_2

    .line 61
    .line 62
    .line 63
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return v2

    .line 74
    :cond_0
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzam;->zzB:I

    .line 75
    .line 76
    if-eq p1, v3, :cond_1

    .line 77
    .line 78
    const/4 p1, 0x1

    .line 79
    return p1

    .line 80
    :cond_1
    return v3

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzu:Lcom/google/android/gms/internal/ads/zzpd;

    .line 82
    .line 83
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzv:Lcom/google/android/gms/internal/ads/zzk;

    .line 84
    .line 85
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzpd;->zza(Lcom/google/android/gms/internal/ads/zzam;Lcom/google/android/gms/internal/ads/zzk;)Landroid/util/Pair;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-eqz p1, :cond_3

    .line 90
    .line 91
    return v3

    .line 92
    :cond_3
    return v2

    .line 93
    :array_0
    .array-data 8
        0x543a411f3660a913L    # 5.607902068519512E97
        -0x1fac4fc0013a528cL
        -0x1c4ab2b4bdf6cdb6L    # -2.0580526558357085E172
    .end array-data

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
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
    :array_1
    .array-data 8
        0x5fa00bbe39b0b10eL    # 4.201952368040658E152
        -0x3d2e748b8a47e422L    # -7.716260799294347E13
        0x27ee7239cda05c08L
        -0x7087b74460c371efL
    .end array-data

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
    :array_2
    .array-data 8
        0x4081ac8965d2042bL    # 565.5670887382051
        0x38c1e9ec7fd18d4bL    # 2.695363775003938E-35
        -0x4c06f71038da3d7cL    # -2.492681911180592E-58
    .end array-data
.end method

.method public final zzb(Z)J
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrd;->zzU()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzG:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzi:Lcom/google/android/gms/internal/ads/zzqf;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzqf;->zza(Z)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzr:Lcom/google/android/gms/internal/ads/zzqs;

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrd;->zzJ()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzqs;->zze:I

    .line 26
    .line 27
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzfy;->zzr(JI)J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzj:Ljava/util/ArrayDeque;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzj:Ljava/util/ArrayDeque;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lcom/google/android/gms/internal/ads/zzqv;

    .line 50
    .line 51
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzqv;->zzc:J

    .line 52
    .line 53
    cmp-long p1, v0, v2

    .line 54
    .line 55
    if-ltz p1, :cond_1

    .line 56
    .line 57
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzj:Ljava/util/ArrayDeque;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Lcom/google/android/gms/internal/ads/zzqv;

    .line 64
    .line 65
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzx:Lcom/google/android/gms/internal/ads/zzqv;

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzx:Lcom/google/android/gms/internal/ads/zzqv;

    .line 69
    .line 70
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzqv;->zzc:J

    .line 71
    .line 72
    sub-long v2, v0, v2

    .line 73
    .line 74
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzqv;->zza:Lcom/google/android/gms/internal/ads/zzcg;

    .line 75
    .line 76
    sget-object v4, Lcom/google/android/gms/internal/ads/zzcg;->zza:Lcom/google/android/gms/internal/ads/zzcg;

    .line 77
    .line 78
    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/zzcg;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_2

    .line 83
    .line 84
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzx:Lcom/google/android/gms/internal/ads/zzqv;

    .line 85
    .line 86
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzqv;->zzb:J

    .line 87
    .line 88
    add-long/2addr v0, v2

    .line 89
    goto :goto_1

    .line 90
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzj:Ljava/util/ArrayDeque;

    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_3

    .line 97
    .line 98
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzY:Lcom/google/android/gms/internal/ads/zzqt;

    .line 99
    .line 100
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzqt;->zza(J)J

    .line 101
    .line 102
    .line 103
    move-result-wide v0

    .line 104
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzx:Lcom/google/android/gms/internal/ads/zzqv;

    .line 105
    .line 106
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzqv;->zzb:J

    .line 107
    .line 108
    add-long/2addr v0, v2

    .line 109
    goto :goto_1

    .line 110
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzj:Ljava/util/ArrayDeque;

    .line 111
    .line 112
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    check-cast p1, Lcom/google/android/gms/internal/ads/zzqv;

    .line 117
    .line 118
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzqv;->zzc:J

    .line 119
    .line 120
    sub-long/2addr v2, v0

    .line 121
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzx:Lcom/google/android/gms/internal/ads/zzqv;

    .line 122
    .line 123
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzqv;->zza:Lcom/google/android/gms/internal/ads/zzcg;

    .line 124
    .line 125
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzcg;->zzc:F

    .line 126
    .line 127
    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzfy;->zzo(JF)J

    .line 128
    .line 129
    .line 130
    move-result-wide v0

    .line 131
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzqv;->zzb:J

    .line 132
    .line 133
    sub-long v0, v2, v0

    .line 134
    .line 135
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzY:Lcom/google/android/gms/internal/ads/zzqt;

    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqt;->zzb()J

    .line 138
    .line 139
    .line 140
    move-result-wide v2

    .line 141
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzr:Lcom/google/android/gms/internal/ads/zzqs;

    .line 142
    .line 143
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzqs;->zze:I

    .line 144
    .line 145
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzfy;->zzr(JI)J

    .line 146
    .line 147
    .line 148
    move-result-wide v4

    .line 149
    add-long/2addr v4, v0

    .line 150
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzV:J

    .line 151
    .line 152
    cmp-long p1, v2, v0

    .line 153
    .line 154
    if-lez p1, :cond_5

    .line 155
    .line 156
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzr:Lcom/google/android/gms/internal/ads/zzqs;

    .line 157
    .line 158
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzqs;->zze:I

    .line 159
    .line 160
    sub-long v0, v2, v0

    .line 161
    .line 162
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfy;->zzr(JI)J

    .line 163
    .line 164
    .line 165
    move-result-wide v0

    .line 166
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzV:J

    .line 167
    .line 168
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzW:J

    .line 169
    .line 170
    add-long/2addr v2, v0

    .line 171
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzW:J

    .line 172
    .line 173
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzX:Landroid/os/Handler;

    .line 174
    .line 175
    if-nez p1, :cond_4

    .line 176
    .line 177
    new-instance p1, Landroid/os/Handler;

    .line 178
    .line 179
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 184
    .line 185
    .line 186
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzX:Landroid/os/Handler;

    .line 187
    .line 188
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzX:Landroid/os/Handler;

    .line 189
    .line 190
    const/4 v0, 0x0

    .line 191
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzX:Landroid/os/Handler;

    .line 195
    .line 196
    new-instance v0, Lcom/google/android/gms/internal/ads/zzqm;

    .line 197
    .line 198
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzqm;-><init>(Lcom/google/android/gms/internal/ads/zzrd;)V

    .line 199
    .line 200
    .line 201
    const-wide/16 v1, 0x64

    .line 202
    .line 203
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 204
    .line 205
    .line 206
    :cond_5
    return-wide v4

    .line 207
    :cond_6
    :goto_2
    const-wide/high16 v0, -0x8000000000000000L

    .line 208
    .line 209
    return-wide v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzcg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzy:Lcom/google/android/gms/internal/ads/zzcg;

    return-object v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzam;)Lcom/google/android/gms/internal/ads/zzpg;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzT:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/google/android/gms/internal/ads/zzpg;->zza:Lcom/google/android/gms/internal/ads/zzpg;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzZ:Lcom/google/android/gms/internal/ads/zzqj;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzv:Lcom/google/android/gms/internal/ads/zzk;

    .line 11
    .line 12
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzqj;->zza(Lcom/google/android/gms/internal/ads/zzam;Lcom/google/android/gms/internal/ads/zzk;)Lcom/google/android/gms/internal/ads/zzpg;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzam;I[I)V
    .locals 18
    .param p3    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    const/4 v0, 0x6

    .line 6
    const/4 v2, 0x5

    .line 7
    const/4 v4, 0x2

    .line 8
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v6, 0x3

    .line 11
    new-array v6, v6, [J

    .line 12
    .line 13
    fill-array-data v6, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    const/4 v7, -0x1

    .line 30
    if-eqz v5, :cond_1

    .line 31
    .line 32
    iget v5, v3, Lcom/google/android/gms/internal/ads/zzam;->zzB:I

    .line 33
    .line 34
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzfy;->zzH(I)Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzek;->zzd(Z)V

    .line 39
    .line 40
    .line 41
    iget v5, v3, Lcom/google/android/gms/internal/ads/zzam;->zzB:I

    .line 42
    .line 43
    iget v8, v3, Lcom/google/android/gms/internal/ads/zzam;->zzz:I

    .line 44
    .line 45
    invoke-static {v5, v8}, Lcom/google/android/gms/internal/ads/zzfy;->zzl(II)I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    new-instance v8, Lcom/google/android/gms/internal/ads/zzfzx;

    .line 50
    .line 51
    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzfzx;-><init>()V

    .line 52
    .line 53
    .line 54
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzf:Lcom/google/android/gms/internal/ads/zzgaa;

    .line 55
    .line 56
    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/zzfzx;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfzx;

    .line 57
    .line 58
    .line 59
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzY:Lcom/google/android/gms/internal/ads/zzqt;

    .line 60
    .line 61
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzqt;->zze()[Lcom/google/android/gms/internal/ads/zzdt;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/zzfzx;->zzg([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzx;

    .line 66
    .line 67
    .line 68
    new-instance v9, Lcom/google/android/gms/internal/ads/zzdq;

    .line 69
    .line 70
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfzx;->zzi()Lcom/google/android/gms/internal/ads/zzgaa;

    .line 71
    .line 72
    .line 73
    move-result-object v8

    .line 74
    invoke-direct {v9, v8}, Lcom/google/android/gms/internal/ads/zzdq;-><init>(Lcom/google/android/gms/internal/ads/zzgaa;)V

    .line 75
    .line 76
    .line 77
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzs:Lcom/google/android/gms/internal/ads/zzdq;

    .line 78
    .line 79
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzdq;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    if-eqz v8, :cond_0

    .line 84
    .line 85
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzs:Lcom/google/android/gms/internal/ads/zzdq;

    .line 86
    .line 87
    :cond_0
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzrd;->zze:Lcom/google/android/gms/internal/ads/zzrn;

    .line 88
    .line 89
    iget v10, v3, Lcom/google/android/gms/internal/ads/zzam;->zzC:I

    .line 90
    .line 91
    iget v11, v3, Lcom/google/android/gms/internal/ads/zzam;->zzD:I

    .line 92
    .line 93
    invoke-virtual {v8, v10, v11}, Lcom/google/android/gms/internal/ads/zzrn;->zzq(II)V

    .line 94
    .line 95
    .line 96
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzd:Lcom/google/android/gms/internal/ads/zzqg;

    .line 97
    .line 98
    move-object/from16 v10, p3

    .line 99
    .line 100
    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/ads/zzqg;->zzo([I)V

    .line 101
    .line 102
    .line 103
    new-instance v8, Lcom/google/android/gms/internal/ads/zzdr;

    .line 104
    .line 105
    iget v10, v3, Lcom/google/android/gms/internal/ads/zzam;->zzA:I

    .line 106
    .line 107
    iget v11, v3, Lcom/google/android/gms/internal/ads/zzam;->zzz:I

    .line 108
    .line 109
    iget v12, v3, Lcom/google/android/gms/internal/ads/zzam;->zzB:I

    .line 110
    .line 111
    invoke-direct {v8, v10, v11, v12}, Lcom/google/android/gms/internal/ads/zzdr;-><init>(III)V

    .line 112
    .line 113
    .line 114
    :try_start_0
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzdq;->zza(Lcom/google/android/gms/internal/ads/zzdr;)Lcom/google/android/gms/internal/ads/zzdr;

    .line 115
    .line 116
    .line 117
    move-result-object v8
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzds; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    iget v10, v8, Lcom/google/android/gms/internal/ads/zzdr;->zzd:I

    .line 119
    .line 120
    iget v11, v8, Lcom/google/android/gms/internal/ads/zzdr;->zzb:I

    .line 121
    .line 122
    iget v8, v8, Lcom/google/android/gms/internal/ads/zzdr;->zzc:I

    .line 123
    .line 124
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzfy;->zzg(I)I

    .line 125
    .line 126
    .line 127
    move-result v12

    .line 128
    invoke-static {v10, v8}, Lcom/google/android/gms/internal/ads/zzfy;->zzl(II)I

    .line 129
    .line 130
    .line 131
    move-result v8

    .line 132
    move-object v13, v9

    .line 133
    move v9, v8

    .line 134
    const/4 v8, 0x0

    .line 135
    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    move-object v2, v0

    .line 138
    new-instance v0, Lcom/google/android/gms/internal/ads/zzpw;

    .line 139
    .line 140
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzpw;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzam;)V

    .line 141
    .line 142
    .line 143
    throw v0

    .line 144
    :cond_1
    new-instance v5, Lcom/google/android/gms/internal/ads/zzdq;

    .line 145
    .line 146
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgaa;->zzl()Lcom/google/android/gms/internal/ads/zzgaa;

    .line 147
    .line 148
    .line 149
    move-result-object v8

    .line 150
    invoke-direct {v5, v8}, Lcom/google/android/gms/internal/ads/zzdq;-><init>(Lcom/google/android/gms/internal/ads/zzgaa;)V

    .line 151
    .line 152
    .line 153
    iget v8, v3, Lcom/google/android/gms/internal/ads/zzam;->zzA:I

    .line 154
    .line 155
    sget-object v9, Lcom/google/android/gms/internal/ads/zzpg;->zza:Lcom/google/android/gms/internal/ads/zzpg;

    .line 156
    .line 157
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzu:Lcom/google/android/gms/internal/ads/zzpd;

    .line 158
    .line 159
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzv:Lcom/google/android/gms/internal/ads/zzk;

    .line 160
    .line 161
    invoke-virtual {v9, v3, v10}, Lcom/google/android/gms/internal/ads/zzpd;->zza(Lcom/google/android/gms/internal/ads/zzam;Lcom/google/android/gms/internal/ads/zzk;)Landroid/util/Pair;

    .line 162
    .line 163
    .line 164
    move-result-object v9

    .line 165
    if-eqz v9, :cond_c

    .line 166
    .line 167
    iget-object v10, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast v10, Ljava/lang/Integer;

    .line 170
    .line 171
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 172
    .line 173
    .line 174
    move-result v10

    .line 175
    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 176
    .line 177
    check-cast v9, Ljava/lang/Integer;

    .line 178
    .line 179
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 180
    .line 181
    .line 182
    move-result v9

    .line 183
    move-object v13, v5

    .line 184
    move v11, v8

    .line 185
    move v12, v9

    .line 186
    const/4 v5, -0x1

    .line 187
    const/4 v8, 0x2

    .line 188
    const/4 v9, -0x1

    .line 189
    :goto_0
    if-eqz v10, :cond_b

    .line 190
    .line 191
    if-eqz v12, :cond_a

    .line 192
    .line 193
    invoke-static {v11, v12, v10}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    const/4 v4, -0x2

    .line 198
    const/4 v14, 0x1

    .line 199
    if-eq v0, v4, :cond_2

    .line 200
    .line 201
    const/4 v4, 0x1

    .line 202
    goto :goto_1

    .line 203
    :cond_2
    const/4 v4, 0x0

    .line 204
    :goto_1
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzek;->zzf(Z)V

    .line 205
    .line 206
    .line 207
    if-eq v9, v7, :cond_3

    .line 208
    .line 209
    move v4, v9

    .line 210
    goto :goto_2

    .line 211
    :cond_3
    const/4 v4, 0x1

    .line 212
    :goto_2
    iget v15, v3, Lcom/google/android/gms/internal/ads/zzam;->zzi:I

    .line 213
    .line 214
    const v6, 0x3d090

    .line 215
    .line 216
    .line 217
    if-eqz v8, :cond_8

    .line 218
    .line 219
    const-wide/32 v16, 0xf4240

    .line 220
    .line 221
    .line 222
    if-eq v8, v14, :cond_7

    .line 223
    .line 224
    const/16 v14, 0x8

    .line 225
    .line 226
    if-ne v10, v2, :cond_4

    .line 227
    .line 228
    const v6, 0x7a120

    .line 229
    .line 230
    .line 231
    goto :goto_3

    .line 232
    :cond_4
    if-ne v10, v14, :cond_5

    .line 233
    .line 234
    const v6, 0xf4240

    .line 235
    .line 236
    .line 237
    const/16 v10, 0x8

    .line 238
    .line 239
    :cond_5
    :goto_3
    if-eq v15, v7, :cond_6

    .line 240
    .line 241
    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 242
    .line 243
    invoke-static {v15, v14, v2}, Lcom/google/android/gms/internal/ads/zzgco;->zza(IILjava/math/RoundingMode;)I

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    goto :goto_4

    .line 248
    :cond_6
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzrf;->zzb(I)I

    .line 249
    .line 250
    .line 251
    move-result v2

    .line 252
    :goto_4
    int-to-long v14, v6

    .line 253
    move/from16 p3, v8

    .line 254
    .line 255
    int-to-long v7, v2

    .line 256
    mul-long v14, v14, v7

    .line 257
    .line 258
    div-long v14, v14, v16

    .line 259
    .line 260
    invoke-static {v14, v15}, Lcom/google/android/gms/internal/ads/zzgcu;->zza(J)I

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    goto :goto_5

    .line 265
    :cond_7
    move/from16 p3, v8

    .line 266
    .line 267
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzrf;->zzb(I)I

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    int-to-long v6, v2

    .line 272
    const-wide/32 v14, 0x2faf080

    .line 273
    .line 274
    .line 275
    mul-long v6, v6, v14

    .line 276
    .line 277
    div-long v6, v6, v16

    .line 278
    .line 279
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzgcu;->zza(J)I

    .line 280
    .line 281
    .line 282
    move-result v2

    .line 283
    goto :goto_5

    .line 284
    :cond_8
    move/from16 p3, v8

    .line 285
    .line 286
    mul-int/lit8 v2, v0, 0x4

    .line 287
    .line 288
    invoke-static {v6, v11, v4}, Lcom/google/android/gms/internal/ads/zzrf;->zza(III)I

    .line 289
    .line 290
    .line 291
    move-result v6

    .line 292
    const v7, 0xb71b0

    .line 293
    .line 294
    .line 295
    invoke-static {v7, v11, v4}, Lcom/google/android/gms/internal/ads/zzrf;->zza(III)I

    .line 296
    .line 297
    .line 298
    move-result v7

    .line 299
    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    :goto_5
    int-to-double v6, v2

    .line 308
    double-to-int v2, v6

    .line 309
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    add-int/2addr v0, v4

    .line 314
    const/4 v2, -0x1

    .line 315
    add-int/2addr v0, v2

    .line 316
    div-int/2addr v0, v4

    .line 317
    mul-int v0, v0, v4

    .line 318
    .line 319
    const/4 v2, 0x0

    .line 320
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzT:Z

    .line 321
    .line 322
    new-instance v15, Lcom/google/android/gms/internal/ads/zzqs;

    .line 323
    .line 324
    const/4 v14, 0x0

    .line 325
    const/16 v16, 0x0

    .line 326
    .line 327
    const/16 v17, 0x0

    .line 328
    .line 329
    move-object v2, v15

    .line 330
    move-object/from16 v3, p1

    .line 331
    .line 332
    move v4, v5

    .line 333
    move/from16 v5, p3

    .line 334
    .line 335
    move v6, v9

    .line 336
    move v7, v11

    .line 337
    move v8, v12

    .line 338
    move v9, v10

    .line 339
    move v10, v0

    .line 340
    move-object v11, v13

    .line 341
    move/from16 v12, v17

    .line 342
    .line 343
    move v13, v14

    .line 344
    move/from16 v14, v16

    .line 345
    .line 346
    invoke-direct/range {v2 .. v14}, Lcom/google/android/gms/internal/ads/zzqs;-><init>(Lcom/google/android/gms/internal/ads/zzam;IIIIIIILcom/google/android/gms/internal/ads/zzdq;ZZZ)V

    .line 347
    .line 348
    .line 349
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrd;->zzU()Z

    .line 350
    .line 351
    .line 352
    move-result v0

    .line 353
    if-eqz v0, :cond_9

    .line 354
    .line 355
    iput-object v15, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzq:Lcom/google/android/gms/internal/ads/zzqs;

    .line 356
    .line 357
    return-void

    .line 358
    :cond_9
    iput-object v15, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzr:Lcom/google/android/gms/internal/ads/zzqs;

    .line 359
    .line 360
    return-void

    .line 361
    :cond_a
    move/from16 p3, v8

    .line 362
    .line 363
    new-instance v2, Lcom/google/android/gms/internal/ads/zzpw;

    .line 364
    .line 365
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v5

    .line 369
    new-instance v6, Ljava/lang/StringBuilder;

    .line 370
    .line 371
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    .line 373
    .line 374
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 375
    .line 376
    new-array v0, v0, [J

    .line 377
    .line 378
    fill-array-data v0, :array_1

    .line 379
    .line 380
    .line 381
    invoke-direct {v7, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    move/from16 v0, p3

    .line 392
    .line 393
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 397
    .line 398
    new-array v4, v4, [J

    .line 399
    .line 400
    fill-array-data v4, :array_2

    .line 401
    .line 402
    .line 403
    invoke-direct {v0, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 404
    .line 405
    .line 406
    invoke-static {v0, v6, v5}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzpw;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzam;)V

    .line 411
    .line 412
    .line 413
    throw v2

    .line 414
    :cond_b
    move v0, v8

    .line 415
    new-instance v5, Lcom/google/android/gms/internal/ads/zzpw;

    .line 416
    .line 417
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v6

    .line 421
    new-instance v7, Ljava/lang/StringBuilder;

    .line 422
    .line 423
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    .line 425
    .line 426
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 427
    .line 428
    new-array v2, v2, [J

    .line 429
    .line 430
    fill-array-data v2, :array_3

    .line 431
    .line 432
    .line 433
    invoke-direct {v8, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v2

    .line 440
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 447
    .line 448
    new-array v2, v4, [J

    .line 449
    .line 450
    fill-array-data v2, :array_4

    .line 451
    .line 452
    .line 453
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 454
    .line 455
    .line 456
    invoke-static {v0, v7, v6}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    invoke-direct {v5, v0, v3}, Lcom/google/android/gms/internal/ads/zzpw;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzam;)V

    .line 461
    .line 462
    .line 463
    throw v5

    .line 464
    :cond_c
    new-instance v2, Lcom/google/android/gms/internal/ads/zzpw;

    .line 465
    .line 466
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v4

    .line 470
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 471
    .line 472
    new-array v0, v0, [J

    .line 473
    .line 474
    fill-array-data v0, :array_5

    .line 475
    .line 476
    .line 477
    invoke-direct {v5, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzpw;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzam;)V

    .line 489
    .line 490
    .line 491
    throw v2

    .line 492
    nop

    .line 493
    :array_0
    .array-data 8
        -0xcc755205307e43bL
        0x3468dadcfae31ad3L    # 3.1676955939731364E-56
        -0x39b6001663337da3L    # -4.119810321077445E30
    .end array-data

    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    :array_1
    .array-data 8
        -0x14a29507b61f08e4L    # -1.5111513147380109E209
        0x51475095c5659166L    # 3.5385084515973634E83
        -0xad5f311858df6e7L
        0x5d4bcef34c71ad6L
        -0x1c0ba61c3e0f61c4L    # -3.14590846118111E173
        -0x232d683e220e569dL    # -1.3838303674757164E139
    .end array-data

    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    :array_2
    .array-data 8
        -0x60d0d6a9c0b0b85aL    # -1.7731695399909635E-158
        0x7ae7d5e0891cc94L
    .end array-data

    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    :array_3
    .array-data 8
        0x577c91a073b079bdL    # 2.748218222843738E113
        0x31d2a822621520L
        0x4d81eb30f2c70896L    # 2.358826260091407E65
        -0x5fa61b7ce89d2382L    # -7.724640875103231E-153
        -0x7cac74f5a77ff0bL
    .end array-data

    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    :array_4
    .array-data 8
        0x28887a197588238dL
        0x230145cdec6a414L
    .end array-data

    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    :array_5
    .array-data 8
        0x72faa4a980fd0836L
        -0x6d36553ff0cfab53L    # -3.635533459553203E-218
        0x5b287669489ebf62L    # 1.3565310878726513E131
        0x527bbb4937435a3cL    # 2.20664993091812E89
        -0x4110820ab1141798L    # -1.5016567400650586E-5
        0x728e8e205759592dL    # 6.519756410398523E243
    .end array-data
.end method

.method public final zzf()V
    .locals 12

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrd;->zzU()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzA:J

    .line 11
    .line 12
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzB:J

    .line 13
    .line 14
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzC:J

    .line 15
    .line 16
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzD:J

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzU:Z

    .line 20
    .line 21
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzE:I

    .line 22
    .line 23
    new-instance v11, Lcom/google/android/gms/internal/ads/zzqv;

    .line 24
    .line 25
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzy:Lcom/google/android/gms/internal/ads/zzcg;

    .line 26
    .line 27
    const-wide/16 v8, 0x0

    .line 28
    .line 29
    const/4 v10, 0x0

    .line 30
    const-wide/16 v6, 0x0

    .line 31
    .line 32
    move-object v4, v11

    .line 33
    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzqv;-><init>(Lcom/google/android/gms/internal/ads/zzcg;JJLcom/google/android/gms/internal/ads/zzqu;)V

    .line 34
    .line 35
    .line 36
    iput-object v11, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzx:Lcom/google/android/gms/internal/ads/zzqv;

    .line 37
    .line 38
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzH:J

    .line 39
    .line 40
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzw:Lcom/google/android/gms/internal/ads/zzqv;

    .line 41
    .line 42
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzj:Ljava/util/ArrayDeque;

    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->clear()V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzJ:Ljava/nio/ByteBuffer;

    .line 48
    .line 49
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzK:I

    .line 50
    .line 51
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzL:Ljava/nio/ByteBuffer;

    .line 52
    .line 53
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzN:Z

    .line 54
    .line 55
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzM:Z

    .line 56
    .line 57
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zze:Lcom/google/android/gms/internal/ads/zzrn;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrn;->zzp()V

    .line 60
    .line 61
    .line 62
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrd;->zzR()V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzi:Lcom/google/android/gms/internal/ads/zzqf;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqf;->zzh()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    .line 73
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzt:Landroid/media/AudioTrack;

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 76
    .line 77
    .line 78
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzt:Landroid/media/AudioTrack;

    .line 79
    .line 80
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzrd;->zzV(Landroid/media/AudioTrack;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_1

    .line 85
    .line 86
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzk:Lcom/google/android/gms/internal/ads/zzrb;

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzt:Landroid/media/AudioTrack;

    .line 92
    .line 93
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzrb;->zzb(Landroid/media/AudioTrack;)V

    .line 94
    .line 95
    .line 96
    :cond_1
    sget v0, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 97
    .line 98
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzr:Lcom/google/android/gms/internal/ads/zzqs;

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqs;->zzb()Lcom/google/android/gms/internal/ads/zzpv;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzq:Lcom/google/android/gms/internal/ads/zzqs;

    .line 105
    .line 106
    if-eqz v0, :cond_2

    .line 107
    .line 108
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzr:Lcom/google/android/gms/internal/ads/zzqs;

    .line 109
    .line 110
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzq:Lcom/google/android/gms/internal/ads/zzqs;

    .line 111
    .line 112
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzi:Lcom/google/android/gms/internal/ads/zzqf;

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqf;->zzc()V

    .line 115
    .line 116
    .line 117
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzt:Landroid/media/AudioTrack;

    .line 118
    .line 119
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzh:Lcom/google/android/gms/internal/ads/zzeo;

    .line 120
    .line 121
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzp:Lcom/google/android/gms/internal/ads/zzpy;

    .line 122
    .line 123
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzeo;->zzc()Z

    .line 124
    .line 125
    .line 126
    new-instance v7, Landroid/os/Handler;

    .line 127
    .line 128
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 133
    .line 134
    .line 135
    sget-object v0, Lcom/google/android/gms/internal/ads/zzrd;->zza:Ljava/lang/Object;

    .line 136
    .line 137
    monitor-enter v0

    .line 138
    :try_start_0
    sget-object v4, Lcom/google/android/gms/internal/ads/zzrd;->zzb:Ljava/util/concurrent/ExecutorService;

    .line 139
    .line 140
    if-nez v4, :cond_3

    .line 141
    .line 142
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 143
    .line 144
    const/4 v10, 0x6

    .line 145
    new-array v10, v10, [J

    .line 146
    .line 147
    fill-array-data v10, :array_0

    .line 148
    .line 149
    .line 150
    invoke-direct {v4, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfy;->zzD(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    sput-object v4, Lcom/google/android/gms/internal/ads/zzrd;->zzb:Ljava/util/concurrent/ExecutorService;

    .line 162
    .line 163
    goto :goto_0

    .line 164
    :catchall_0
    move-exception v1

    .line 165
    goto :goto_1

    .line 166
    :cond_3
    :goto_0
    sget v4, Lcom/google/android/gms/internal/ads/zzrd;->zzc:I

    .line 167
    .line 168
    add-int/lit8 v4, v4, 0x1

    .line 169
    .line 170
    sput v4, Lcom/google/android/gms/internal/ads/zzrd;->zzc:I

    .line 171
    .line 172
    sget-object v10, Lcom/google/android/gms/internal/ads/zzrd;->zzb:Ljava/util/concurrent/ExecutorService;

    .line 173
    .line 174
    new-instance v11, Lcom/google/android/gms/internal/ads/zzqk;

    .line 175
    .line 176
    move-object v4, v11

    .line 177
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzqk;-><init>(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzpy;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzpv;Lcom/google/android/gms/internal/ads/zzeo;)V

    .line 178
    .line 179
    .line 180
    invoke-interface {v10, v11}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 181
    .line 182
    .line 183
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzt:Landroid/media/AudioTrack;

    .line 185
    .line 186
    goto :goto_2

    .line 187
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    throw v1

    .line 189
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzm:Lcom/google/android/gms/internal/ads/zzqw;

    .line 190
    .line 191
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqw;->zza()V

    .line 192
    .line 193
    .line 194
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzl:Lcom/google/android/gms/internal/ads/zzqw;

    .line 195
    .line 196
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqw;->zza()V

    .line 197
    .line 198
    .line 199
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzV:J

    .line 200
    .line 201
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzW:J

    .line 202
    .line 203
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzX:Landroid/os/Handler;

    .line 204
    .line 205
    if-eqz v0, :cond_5

    .line 206
    .line 207
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    :cond_5
    return-void

    .line 211
    :array_0
    .array-data 8
        -0x72ff2a6f6330142L    # -8.683783889349211E273
        -0x278dd5e83b093bcbL    # -1.1451436703577665E118
        0x70b2a95b1db7c512L    # 7.416931502588505E234
        -0x34e65b86082a9672L    # -6.140155559806858E53
        -0xa1f2f96fb2f1e37L    # -6.463086447563663E259
        0x43dba78e14f136a2L    # 7.9708703229284536E18
    .end array-data
.end method

.method public final zzg()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzF:Z

    return-void
.end method

.method public final zzh()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzO:Z

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrd;->zzU()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzi:Lcom/google/android/gms/internal/ads/zzqf;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqf;->zzk()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzt:Landroid/media/AudioTrack;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzrd;->zzV(Landroid/media/AudioTrack;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzt:Landroid/media/AudioTrack;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public final zzi()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzO:Z

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrd;->zzU()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzi:Lcom/google/android/gms/internal/ads/zzqf;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqf;->zzf()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzt:Landroid/media/AudioTrack;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final zzj()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzM:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrd;->zzU()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrd;->zzT()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrd;->zzN()V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzM:Z

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final zzk()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzrd;->zzf()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzf:Lcom/google/android/gms/internal/ads/zzgaa;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v3, v1, :cond_0

    .line 13
    .line 14
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Lcom/google/android/gms/internal/ads/zzdt;

    .line 19
    .line 20
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzdt;->zzf()V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzg:Lcom/google/android/gms/internal/ads/zzgaa;

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/4 v3, 0x0

    .line 33
    :goto_1
    if-ge v3, v1, :cond_1

    .line 34
    .line 35
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lcom/google/android/gms/internal/ads/zzdt;

    .line 40
    .line 41
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzdt;->zzf()V

    .line 42
    .line 43
    .line 44
    add-int/lit8 v3, v3, 0x1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzs:Lcom/google/android/gms/internal/ads/zzdq;

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdq;->zzf()V

    .line 52
    .line 53
    .line 54
    :cond_2
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzO:Z

    .line 55
    .line 56
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzT:Z

    .line 57
    .line 58
    return-void
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzk;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzv:Lcom/google/android/gms/internal/ads/zzk;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzk;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzv:Lcom/google/android/gms/internal/ads/zzk;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzrd;->zzf()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final zzm(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzP:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzP:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzrd;->zzf()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final zzn(Lcom/google/android/gms/internal/ads/zzl;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzQ:Lcom/google/android/gms/internal/ads/zzl;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzl;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzt:Landroid/media/AudioTrack;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzQ:Lcom/google/android/gms/internal/ads/zzl;

    .line 15
    .line 16
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzl;->zza:I

    .line 17
    .line 18
    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzQ:Lcom/google/android/gms/internal/ads/zzl;

    .line 19
    .line 20
    return-void
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzel;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzi:Lcom/google/android/gms/internal/ads/zzqf;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzqf;->zze(Lcom/google/android/gms/internal/ads/zzel;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzp(Lcom/google/android/gms/internal/ads/zzpy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzp:Lcom/google/android/gms/internal/ads/zzpy;

    return-void
.end method

.method public final zzq(II)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzt:Landroid/media/AudioTrack;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzrd;->zzV(Landroid/media/AudioTrack;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final zzr(Lcom/google/android/gms/internal/ads/zzcg;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcg;

    .line 2
    .line 3
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzcg;->zzc:F

    .line 4
    .line 5
    const/high16 v2, 0x41000000    # 8.0f

    .line 6
    .line 7
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const v3, 0x3dcccccd    # 0.1f

    .line 12
    .line 13
    .line 14
    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget v4, p1, Lcom/google/android/gms/internal/ads/zzcg;->zzd:F

    .line 19
    .line 20
    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcg;-><init>(FF)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzy:Lcom/google/android/gms/internal/ads/zzcg;

    .line 32
    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzrd;->zzP(Lcom/google/android/gms/internal/ads/zzcg;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final zzs(Lcom/google/android/gms/internal/ads/zzpb;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/internal/ads/zzpb;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzo:Lcom/google/android/gms/internal/ads/zzpb;

    return-void
.end method

.method public final zzt(Landroid/media/AudioDeviceInfo;)V
    .locals 1
    .param p1    # Landroid/media/AudioDeviceInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzqp;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzqp;-><init>(Landroid/media/AudioDeviceInfo;)V

    .line 8
    .line 9
    .line 10
    move-object p1, v0

    .line 11
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzR:Lcom/google/android/gms/internal/ads/zzqp;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzt:Landroid/media/AudioTrack;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzqn;->zza(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzqp;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public final zzu(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzz:Z

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzy:Lcom/google/android/gms/internal/ads/zzcg;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzrd;->zzP(Lcom/google/android/gms/internal/ads/zzcg;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final zzv(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzI:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzI:F

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrd;->zzQ()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final zzw(Ljava/nio/ByteBuffer;JI)Z
    .locals 28

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-wide/from16 v3, p2

    .line 6
    .line 7
    move/from16 v5, p4

    .line 8
    .line 9
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzJ:Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    const/4 v8, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    if-ne v2, v0, :cond_1

    .line 15
    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzd(Z)V

    .line 20
    .line 21
    .line 22
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzq:Lcom/google/android/gms/internal/ads/zzqs;

    .line 23
    .line 24
    const/4 v9, 0x0

    .line 25
    if-eqz v0, :cond_6

    .line 26
    .line 27
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrd;->zzT()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    return v8

    .line 34
    :cond_2
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzq:Lcom/google/android/gms/internal/ads/zzqs;

    .line 35
    .line 36
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzr:Lcom/google/android/gms/internal/ads/zzqs;

    .line 37
    .line 38
    iget v11, v10, Lcom/google/android/gms/internal/ads/zzqs;->zzc:I

    .line 39
    .line 40
    iget v12, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzc:I

    .line 41
    .line 42
    if-ne v11, v12, :cond_3

    .line 43
    .line 44
    iget v11, v10, Lcom/google/android/gms/internal/ads/zzqs;->zzg:I

    .line 45
    .line 46
    iget v12, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzg:I

    .line 47
    .line 48
    if-ne v11, v12, :cond_3

    .line 49
    .line 50
    iget v11, v10, Lcom/google/android/gms/internal/ads/zzqs;->zze:I

    .line 51
    .line 52
    iget v12, v0, Lcom/google/android/gms/internal/ads/zzqs;->zze:I

    .line 53
    .line 54
    if-ne v11, v12, :cond_3

    .line 55
    .line 56
    iget v11, v10, Lcom/google/android/gms/internal/ads/zzqs;->zzf:I

    .line 57
    .line 58
    iget v12, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzf:I

    .line 59
    .line 60
    if-ne v11, v12, :cond_3

    .line 61
    .line 62
    iget v10, v10, Lcom/google/android/gms/internal/ads/zzqs;->zzd:I

    .line 63
    .line 64
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzd:I

    .line 65
    .line 66
    if-ne v10, v11, :cond_3

    .line 67
    .line 68
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzr:Lcom/google/android/gms/internal/ads/zzqs;

    .line 69
    .line 70
    iput-object v9, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzq:Lcom/google/android/gms/internal/ads/zzqs;

    .line 71
    .line 72
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzt:Landroid/media/AudioTrack;

    .line 73
    .line 74
    if-eqz v0, :cond_5

    .line 75
    .line 76
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzrd;->zzV(Landroid/media/AudioTrack;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_5

    .line 81
    .line 82
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzr:Lcom/google/android/gms/internal/ads/zzqs;

    .line 83
    .line 84
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzk:Z

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrd;->zzN()V

    .line 88
    .line 89
    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrd;->zzx()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_4

    .line 95
    .line 96
    return v8

    .line 97
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrd;->zzf()V

    .line 98
    .line 99
    .line 100
    :cond_5
    :goto_1
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzrd;->zzL(J)V

    .line 101
    .line 102
    .line 103
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrd;->zzU()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    const/16 v10, 0x1f

    .line 108
    .line 109
    if-eqz v0, :cond_7

    .line 110
    .line 111
    goto/16 :goto_6

    .line 112
    .line 113
    :cond_7
    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzh:Lcom/google/android/gms/internal/ads/zzeo;

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeo;->zzd()Z

    .line 116
    .line 117
    .line 118
    move-result v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzpx; {:try_start_0 .. :try_end_0} :catch_1

    .line 119
    if-nez v0, :cond_8

    .line 120
    .line 121
    return v8

    .line 122
    :cond_8
    :try_start_1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzr:Lcom/google/android/gms/internal/ads/zzqs;

    .line 123
    .line 124
    if-eqz v0, :cond_9

    .line 125
    .line 126
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzrd;->zzK(Lcom/google/android/gms/internal/ads/zzqs;)Landroid/media/AudioTrack;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    goto :goto_3

    .line 131
    :catch_0
    move-exception v0

    .line 132
    move-object v12, v0

    .line 133
    goto :goto_2

    .line 134
    :cond_9
    throw v9
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzpx; {:try_start_1 .. :try_end_1} :catch_0

    .line 135
    :goto_2
    :try_start_2
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzr:Lcom/google/android/gms/internal/ads/zzqs;

    .line 136
    .line 137
    iget v13, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzh:I

    .line 138
    .line 139
    const v14, 0xf4240

    .line 140
    .line 141
    .line 142
    if-le v13, v14, :cond_2b

    .line 143
    .line 144
    new-instance v13, Lcom/google/android/gms/internal/ads/zzqs;

    .line 145
    .line 146
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzqs;->zza:Lcom/google/android/gms/internal/ads/zzam;

    .line 147
    .line 148
    iget v15, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzb:I

    .line 149
    .line 150
    iget v9, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzc:I

    .line 151
    .line 152
    iget v6, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzd:I

    .line 153
    .line 154
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzqs;->zze:I

    .line 155
    .line 156
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzf:I

    .line 157
    .line 158
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzg:I

    .line 159
    .line 160
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzi:Lcom/google/android/gms/internal/ads/zzdq;

    .line 161
    .line 162
    const/16 v26, 0x0

    .line 163
    .line 164
    const/16 v27, 0x0

    .line 165
    .line 166
    const v23, 0xf4240

    .line 167
    .line 168
    .line 169
    const/16 v25, 0x0

    .line 170
    .line 171
    move/from16 v17, v15

    .line 172
    .line 173
    move-object v15, v13

    .line 174
    move-object/from16 v16, v14

    .line 175
    .line 176
    move/from16 v18, v9

    .line 177
    .line 178
    move/from16 v19, v6

    .line 179
    .line 180
    move/from16 v20, v8

    .line 181
    .line 182
    move/from16 v21, v7

    .line 183
    .line 184
    move/from16 v22, v11

    .line 185
    .line 186
    move-object/from16 v24, v0

    .line 187
    .line 188
    invoke-direct/range {v15 .. v27}, Lcom/google/android/gms/internal/ads/zzqs;-><init>(Lcom/google/android/gms/internal/ads/zzam;IIIIIIILcom/google/android/gms/internal/ads/zzdq;ZZZ)V
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzpx; {:try_start_2 .. :try_end_2} :catch_1

    .line 189
    .line 190
    .line 191
    :try_start_3
    invoke-direct {v1, v13}, Lcom/google/android/gms/internal/ads/zzrd;->zzK(Lcom/google/android/gms/internal/ads/zzqs;)Landroid/media/AudioTrack;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    iput-object v13, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzr:Lcom/google/android/gms/internal/ads/zzqs;
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzpx; {:try_start_3 .. :try_end_3} :catch_2

    .line 196
    .line 197
    :goto_3
    :try_start_4
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzt:Landroid/media/AudioTrack;

    .line 198
    .line 199
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzrd;->zzV(Landroid/media/AudioTrack;)Z

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-eqz v0, :cond_b

    .line 204
    .line 205
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzt:Landroid/media/AudioTrack;

    .line 206
    .line 207
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzk:Lcom/google/android/gms/internal/ads/zzrb;

    .line 208
    .line 209
    if-nez v6, :cond_a

    .line 210
    .line 211
    new-instance v6, Lcom/google/android/gms/internal/ads/zzrb;

    .line 212
    .line 213
    invoke-direct {v6, v1}, Lcom/google/android/gms/internal/ads/zzrb;-><init>(Lcom/google/android/gms/internal/ads/zzrd;)V

    .line 214
    .line 215
    .line 216
    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzk:Lcom/google/android/gms/internal/ads/zzrb;

    .line 217
    .line 218
    goto :goto_4

    .line 219
    :catch_1
    move-exception v0

    .line 220
    goto/16 :goto_13

    .line 221
    .line 222
    :cond_a
    :goto_4
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzk:Lcom/google/android/gms/internal/ads/zzrb;

    .line 223
    .line 224
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzrb;->zza(Landroid/media/AudioTrack;)V

    .line 225
    .line 226
    .line 227
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzr:Lcom/google/android/gms/internal/ads/zzqs;

    .line 228
    .line 229
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzk:Z

    .line 230
    .line 231
    :cond_b
    sget v0, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 232
    .line 233
    if-lt v0, v10, :cond_c

    .line 234
    .line 235
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzo:Lcom/google/android/gms/internal/ads/zzpb;

    .line 236
    .line 237
    if-eqz v6, :cond_c

    .line 238
    .line 239
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzt:Landroid/media/AudioTrack;

    .line 240
    .line 241
    invoke-static {v7, v6}, Lcom/google/android/gms/internal/ads/zzqo;->zza(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzpb;)V

    .line 242
    .line 243
    .line 244
    :cond_c
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzt:Landroid/media/AudioTrack;

    .line 245
    .line 246
    invoke-virtual {v6}, Landroid/media/AudioTrack;->getAudioSessionId()I

    .line 247
    .line 248
    .line 249
    move-result v6

    .line 250
    iput v6, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzP:I

    .line 251
    .line 252
    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzi:Lcom/google/android/gms/internal/ads/zzqf;

    .line 253
    .line 254
    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzt:Landroid/media/AudioTrack;

    .line 255
    .line 256
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzr:Lcom/google/android/gms/internal/ads/zzqs;

    .line 257
    .line 258
    iget v7, v6, Lcom/google/android/gms/internal/ads/zzqs;->zzc:I

    .line 259
    .line 260
    const/4 v8, 0x2

    .line 261
    if-ne v7, v8, :cond_d

    .line 262
    .line 263
    const/4 v13, 0x1

    .line 264
    goto :goto_5

    .line 265
    :cond_d
    const/4 v13, 0x0

    .line 266
    :goto_5
    iget v14, v6, Lcom/google/android/gms/internal/ads/zzqs;->zzg:I

    .line 267
    .line 268
    iget v15, v6, Lcom/google/android/gms/internal/ads/zzqs;->zzd:I

    .line 269
    .line 270
    iget v6, v6, Lcom/google/android/gms/internal/ads/zzqs;->zzh:I

    .line 271
    .line 272
    move/from16 v16, v6

    .line 273
    .line 274
    invoke-virtual/range {v11 .. v16}, Lcom/google/android/gms/internal/ads/zzqf;->zzd(Landroid/media/AudioTrack;ZIII)V

    .line 275
    .line 276
    .line 277
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrd;->zzQ()V

    .line 278
    .line 279
    .line 280
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzQ:Lcom/google/android/gms/internal/ads/zzl;

    .line 281
    .line 282
    iget v6, v6, Lcom/google/android/gms/internal/ads/zzl;->zza:I

    .line 283
    .line 284
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzR:Lcom/google/android/gms/internal/ads/zzqp;

    .line 285
    .line 286
    if-eqz v6, :cond_e

    .line 287
    .line 288
    const/16 v7, 0x17

    .line 289
    .line 290
    if-lt v0, v7, :cond_e

    .line 291
    .line 292
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzt:Landroid/media/AudioTrack;

    .line 293
    .line 294
    invoke-static {v0, v6}, Lcom/google/android/gms/internal/ads/zzqn;->zza(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzqp;)V

    .line 295
    .line 296
    .line 297
    :cond_e
    const/4 v6, 0x1

    .line 298
    iput-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzG:Z

    .line 299
    .line 300
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzp:Lcom/google/android/gms/internal/ads/zzpy;

    .line 301
    .line 302
    if-eqz v0, :cond_f

    .line 303
    .line 304
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzr:Lcom/google/android/gms/internal/ads/zzqs;

    .line 305
    .line 306
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzqs;->zzb()Lcom/google/android/gms/internal/ads/zzpv;

    .line 307
    .line 308
    .line 309
    move-result-object v6

    .line 310
    check-cast v0, Lcom/google/android/gms/internal/ads/zzri;

    .line 311
    .line 312
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzri;->zza:Lcom/google/android/gms/internal/ads/zzrj;

    .line 313
    .line 314
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzrj;->zzad(Lcom/google/android/gms/internal/ads/zzrj;)Lcom/google/android/gms/internal/ads/zzpt;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzpt;->zzc(Lcom/google/android/gms/internal/ads/zzpv;)V
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/zzpx; {:try_start_4 .. :try_end_4} :catch_1

    .line 319
    .line 320
    .line 321
    :cond_f
    :goto_6
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzl:Lcom/google/android/gms/internal/ads/zzqw;

    .line 322
    .line 323
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqw;->zza()V

    .line 324
    .line 325
    .line 326
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzG:Z

    .line 327
    .line 328
    const-wide/16 v6, 0x0

    .line 329
    .line 330
    if-eqz v0, :cond_10

    .line 331
    .line 332
    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 333
    .line 334
    .line 335
    move-result-wide v8

    .line 336
    iput-wide v8, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzH:J

    .line 337
    .line 338
    const/4 v8, 0x0

    .line 339
    iput-boolean v8, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzF:Z

    .line 340
    .line 341
    iput-boolean v8, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzG:Z

    .line 342
    .line 343
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzrd;->zzL(J)V

    .line 344
    .line 345
    .line 346
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzO:Z

    .line 347
    .line 348
    if-eqz v0, :cond_10

    .line 349
    .line 350
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrd;->zzi()V

    .line 351
    .line 352
    .line 353
    :cond_10
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzi:Lcom/google/android/gms/internal/ads/zzqf;

    .line 354
    .line 355
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrd;->zzJ()J

    .line 356
    .line 357
    .line 358
    move-result-wide v8

    .line 359
    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/internal/ads/zzqf;->zzj(J)Z

    .line 360
    .line 361
    .line 362
    move-result v0

    .line 363
    if-nez v0, :cond_11

    .line 364
    .line 365
    const/4 v8, 0x0

    .line 366
    return v8

    .line 367
    :cond_11
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzJ:Ljava/nio/ByteBuffer;

    .line 368
    .line 369
    if-nez v0, :cond_28

    .line 370
    .line 371
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 376
    .line 377
    if-ne v0, v8, :cond_12

    .line 378
    .line 379
    const/4 v0, 0x1

    .line 380
    goto :goto_7

    .line 381
    :cond_12
    const/4 v0, 0x0

    .line 382
    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzd(Z)V

    .line 383
    .line 384
    .line 385
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 386
    .line 387
    .line 388
    move-result v0

    .line 389
    if-nez v0, :cond_13

    .line 390
    .line 391
    const/4 v8, 0x1

    .line 392
    return v8

    .line 393
    :cond_13
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzr:Lcom/google/android/gms/internal/ads/zzqs;

    .line 394
    .line 395
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzc:I

    .line 396
    .line 397
    if-eqz v8, :cond_20

    .line 398
    .line 399
    iget v8, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzE:I

    .line 400
    .line 401
    if-nez v8, :cond_20

    .line 402
    .line 403
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzg:I

    .line 404
    .line 405
    const/4 v8, -0x2

    .line 406
    const/16 v9, 0x10

    .line 407
    .line 408
    const/4 v11, -0x1

    .line 409
    const/16 v12, 0x400

    .line 410
    .line 411
    packed-switch v0, :pswitch_data_0

    .line 412
    .line 413
    .line 414
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 415
    .line 416
    new-instance v3, Ljava/lang/StringBuilder;

    .line 417
    .line 418
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 419
    .line 420
    .line 421
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 422
    .line 423
    const/4 v5, 0x5

    .line 424
    new-array v5, v5, [J

    .line 425
    .line 426
    fill-array-data v5, :array_0

    .line 427
    .line 428
    .line 429
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 430
    .line 431
    .line 432
    invoke-static {v4, v3, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    throw v2

    .line 440
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadq;->zzb(Ljava/nio/ByteBuffer;)I

    .line 441
    .line 442
    .line 443
    move-result v0

    .line 444
    :goto_8
    const/4 v9, 0x1

    .line 445
    goto/16 :goto_10

    .line 446
    .line 447
    :pswitch_2
    new-array v0, v9, [B

    .line 448
    .line 449
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    .line 450
    .line 451
    .line 452
    move-result v8

    .line 453
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 457
    .line 458
    .line 459
    new-instance v8, Lcom/google/android/gms/internal/ads/zzfo;

    .line 460
    .line 461
    invoke-direct {v8, v0, v9}, Lcom/google/android/gms/internal/ads/zzfo;-><init>([BI)V

    .line 462
    .line 463
    .line 464
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzaby;->zza(Lcom/google/android/gms/internal/ads/zzfo;)Lcom/google/android/gms/internal/ads/zzabx;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzabx;->zzc:I

    .line 469
    .line 470
    goto :goto_8

    .line 471
    :goto_9
    :pswitch_3
    const/16 v0, 0x400

    .line 472
    .line 473
    goto :goto_8

    .line 474
    :pswitch_4
    const/16 v0, 0x200

    .line 475
    .line 476
    goto :goto_8

    .line 477
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    .line 478
    .line 479
    .line 480
    move-result v0

    .line 481
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->limit()I

    .line 482
    .line 483
    .line 484
    move-result v10

    .line 485
    add-int/lit8 v10, v10, -0xa

    .line 486
    .line 487
    move v12, v0

    .line 488
    :goto_a
    if-gt v12, v10, :cond_15

    .line 489
    .line 490
    add-int/lit8 v13, v12, 0x4

    .line 491
    .line 492
    invoke-static {v2, v13}, Lcom/google/android/gms/internal/ads/zzfy;->zzh(Ljava/nio/ByteBuffer;I)I

    .line 493
    .line 494
    .line 495
    move-result v13

    .line 496
    and-int/2addr v13, v8

    .line 497
    const v14, -0x78d9046

    .line 498
    .line 499
    .line 500
    if-ne v13, v14, :cond_14

    .line 501
    .line 502
    sub-int/2addr v12, v0

    .line 503
    goto :goto_b

    .line 504
    :cond_14
    const/4 v13, 0x1

    .line 505
    add-int/2addr v12, v13

    .line 506
    goto :goto_a

    .line 507
    :cond_15
    const/4 v12, -0x1

    .line 508
    :goto_b
    if-ne v12, v11, :cond_16

    .line 509
    .line 510
    const/4 v0, 0x0

    .line 511
    goto :goto_8

    .line 512
    :cond_16
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    .line 513
    .line 514
    .line 515
    move-result v0

    .line 516
    add-int/2addr v0, v12

    .line 517
    add-int/lit8 v0, v0, 0x7

    .line 518
    .line 519
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 520
    .line 521
    .line 522
    move-result v0

    .line 523
    and-int/lit16 v0, v0, 0xff

    .line 524
    .line 525
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    .line 526
    .line 527
    .line 528
    move-result v8

    .line 529
    add-int/2addr v8, v12

    .line 530
    const/16 v10, 0xbb

    .line 531
    .line 532
    if-ne v0, v10, :cond_17

    .line 533
    .line 534
    const/16 v0, 0x9

    .line 535
    .line 536
    goto :goto_c

    .line 537
    :cond_17
    const/16 v0, 0x8

    .line 538
    .line 539
    :goto_c
    add-int/2addr v8, v0

    .line 540
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get(I)B

    .line 541
    .line 542
    .line 543
    move-result v0

    .line 544
    shr-int/lit8 v0, v0, 0x4

    .line 545
    .line 546
    and-int/lit8 v0, v0, 0x7

    .line 547
    .line 548
    const/16 v8, 0x28

    .line 549
    .line 550
    shl-int v0, v8, v0

    .line 551
    .line 552
    mul-int/lit8 v0, v0, 0x10

    .line 553
    .line 554
    goto :goto_8

    .line 555
    :pswitch_6
    const/16 v0, 0x800

    .line 556
    .line 557
    goto :goto_8

    .line 558
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    .line 559
    .line 560
    .line 561
    move-result v0

    .line 562
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzfy;->zzh(Ljava/nio/ByteBuffer;I)I

    .line 563
    .line 564
    .line 565
    move-result v0

    .line 566
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzadp;->zzc(I)I

    .line 567
    .line 568
    .line 569
    move-result v0

    .line 570
    if-eq v0, v11, :cond_18

    .line 571
    .line 572
    goto/16 :goto_8

    .line 573
    .line 574
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 575
    .line 576
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 577
    .line 578
    .line 579
    throw v0

    .line 580
    :pswitch_8
    const/4 v9, 0x0

    .line 581
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 582
    .line 583
    .line 584
    move-result v0

    .line 585
    const v13, -0xde4bec0

    .line 586
    .line 587
    .line 588
    if-eq v0, v13, :cond_1e

    .line 589
    .line 590
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 591
    .line 592
    .line 593
    move-result v0

    .line 594
    const v13, -0x17bd3b8f

    .line 595
    .line 596
    .line 597
    if-ne v0, v13, :cond_19

    .line 598
    .line 599
    goto/16 :goto_9

    .line 600
    .line 601
    :cond_19
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 602
    .line 603
    .line 604
    move-result v0

    .line 605
    const v9, 0x25205864

    .line 606
    .line 607
    .line 608
    if-ne v0, v9, :cond_1a

    .line 609
    .line 610
    const/16 v0, 0x1000

    .line 611
    .line 612
    goto/16 :goto_8

    .line 613
    .line 614
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    .line 615
    .line 616
    .line 617
    move-result v0

    .line 618
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 619
    .line 620
    .line 621
    move-result v9

    .line 622
    if-eq v9, v8, :cond_1d

    .line 623
    .line 624
    if-eq v9, v11, :cond_1c

    .line 625
    .line 626
    if-eq v9, v10, :cond_1b

    .line 627
    .line 628
    add-int/lit8 v8, v0, 0x4

    .line 629
    .line 630
    const/4 v9, 0x5

    .line 631
    add-int/2addr v0, v9

    .line 632
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get(I)B

    .line 633
    .line 634
    .line 635
    move-result v8

    .line 636
    const/4 v10, 0x1

    .line 637
    and-int/2addr v8, v10

    .line 638
    shl-int/lit8 v8, v8, 0x6

    .line 639
    .line 640
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 641
    .line 642
    .line 643
    move-result v0

    .line 644
    and-int/lit16 v0, v0, 0xfc

    .line 645
    .line 646
    const/4 v10, 0x2

    .line 647
    :goto_d
    shr-int/2addr v0, v10

    .line 648
    or-int/2addr v0, v8

    .line 649
    const/4 v9, 0x1

    .line 650
    goto :goto_f

    .line 651
    :cond_1b
    const/4 v9, 0x5

    .line 652
    const/4 v10, 0x2

    .line 653
    add-int/lit8 v8, v0, 0x5

    .line 654
    .line 655
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get(I)B

    .line 656
    .line 657
    .line 658
    move-result v8

    .line 659
    and-int/lit8 v8, v8, 0x7

    .line 660
    .line 661
    shl-int/lit8 v8, v8, 0x4

    .line 662
    .line 663
    add-int/lit8 v0, v0, 0x6

    .line 664
    .line 665
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 666
    .line 667
    .line 668
    move-result v0

    .line 669
    :goto_e
    and-int/lit8 v0, v0, 0x3c

    .line 670
    .line 671
    goto :goto_d

    .line 672
    :cond_1c
    const/4 v10, 0x2

    .line 673
    add-int/lit8 v8, v0, 0x4

    .line 674
    .line 675
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get(I)B

    .line 676
    .line 677
    .line 678
    move-result v8

    .line 679
    and-int/lit8 v8, v8, 0x7

    .line 680
    .line 681
    shl-int/lit8 v8, v8, 0x4

    .line 682
    .line 683
    add-int/lit8 v0, v0, 0x7

    .line 684
    .line 685
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 686
    .line 687
    .line 688
    move-result v0

    .line 689
    goto :goto_e

    .line 690
    :cond_1d
    const/4 v10, 0x2

    .line 691
    add-int/lit8 v8, v0, 0x4

    .line 692
    .line 693
    const/4 v9, 0x5

    .line 694
    add-int/2addr v0, v9

    .line 695
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 696
    .line 697
    .line 698
    move-result v0

    .line 699
    const/4 v9, 0x1

    .line 700
    and-int/2addr v0, v9

    .line 701
    shl-int/lit8 v0, v0, 0x6

    .line 702
    .line 703
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get(I)B

    .line 704
    .line 705
    .line 706
    move-result v8

    .line 707
    and-int/lit16 v8, v8, 0xfc

    .line 708
    .line 709
    shr-int/2addr v8, v10

    .line 710
    or-int/2addr v0, v8

    .line 711
    :goto_f
    add-int/2addr v0, v9

    .line 712
    mul-int/lit8 v0, v0, 0x20

    .line 713
    .line 714
    goto :goto_10

    .line 715
    :cond_1e
    const/4 v9, 0x1

    .line 716
    const/16 v0, 0x400

    .line 717
    .line 718
    goto :goto_10

    .line 719
    :pswitch_9
    const/4 v9, 0x1

    .line 720
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzabv;->zza(Ljava/nio/ByteBuffer;)I

    .line 721
    .line 722
    .line 723
    move-result v0

    .line 724
    :goto_10
    iput v0, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzE:I

    .line 725
    .line 726
    if-eqz v0, :cond_1f

    .line 727
    .line 728
    goto :goto_11

    .line 729
    :cond_1f
    return v9

    .line 730
    :cond_20
    :goto_11
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzw:Lcom/google/android/gms/internal/ads/zzqv;

    .line 731
    .line 732
    if-eqz v0, :cond_22

    .line 733
    .line 734
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrd;->zzT()Z

    .line 735
    .line 736
    .line 737
    move-result v0

    .line 738
    if-nez v0, :cond_21

    .line 739
    .line 740
    const/4 v8, 0x0

    .line 741
    return v8

    .line 742
    :cond_21
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzrd;->zzL(J)V

    .line 743
    .line 744
    .line 745
    const/4 v8, 0x0

    .line 746
    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzw:Lcom/google/android/gms/internal/ads/zzqv;

    .line 747
    .line 748
    :cond_22
    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzH:J

    .line 749
    .line 750
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzr:Lcom/google/android/gms/internal/ads/zzqs;

    .line 751
    .line 752
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrd;->zzI()J

    .line 753
    .line 754
    .line 755
    move-result-wide v10

    .line 756
    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzrd;->zze:Lcom/google/android/gms/internal/ads/zzrn;

    .line 757
    .line 758
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzrn;->zzo()J

    .line 759
    .line 760
    .line 761
    move-result-wide v12

    .line 762
    sub-long/2addr v10, v12

    .line 763
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzqs;->zza:Lcom/google/android/gms/internal/ads/zzam;

    .line 764
    .line 765
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzam;->zzA:I

    .line 766
    .line 767
    invoke-static {v10, v11, v0}, Lcom/google/android/gms/internal/ads/zzfy;->zzr(JI)J

    .line 768
    .line 769
    .line 770
    move-result-wide v10

    .line 771
    add-long/2addr v10, v8

    .line 772
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzF:Z

    .line 773
    .line 774
    if-nez v0, :cond_24

    .line 775
    .line 776
    sub-long v8, v10, v3

    .line 777
    .line 778
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    .line 779
    .line 780
    .line 781
    move-result-wide v8

    .line 782
    const-wide/32 v12, 0x30d40

    .line 783
    .line 784
    .line 785
    cmp-long v0, v8, v12

    .line 786
    .line 787
    if-lez v0, :cond_24

    .line 788
    .line 789
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzp:Lcom/google/android/gms/internal/ads/zzpy;

    .line 790
    .line 791
    if-eqz v0, :cond_23

    .line 792
    .line 793
    new-instance v8, Lcom/google/android/gms/internal/ads/zzpz;

    .line 794
    .line 795
    invoke-direct {v8, v3, v4, v10, v11}, Lcom/google/android/gms/internal/ads/zzpz;-><init>(JJ)V

    .line 796
    .line 797
    .line 798
    invoke-interface {v0, v8}, Lcom/google/android/gms/internal/ads/zzpy;->zza(Ljava/lang/Exception;)V

    .line 799
    .line 800
    .line 801
    :cond_23
    const/4 v8, 0x1

    .line 802
    iput-boolean v8, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzF:Z

    .line 803
    .line 804
    :cond_24
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzF:Z

    .line 805
    .line 806
    if-eqz v0, :cond_26

    .line 807
    .line 808
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrd;->zzT()Z

    .line 809
    .line 810
    .line 811
    move-result v0

    .line 812
    const/4 v8, 0x0

    .line 813
    if-nez v0, :cond_25

    .line 814
    .line 815
    return v8

    .line 816
    :cond_25
    sub-long v9, v3, v10

    .line 817
    .line 818
    iget-wide v11, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzH:J

    .line 819
    .line 820
    add-long/2addr v11, v9

    .line 821
    iput-wide v11, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzH:J

    .line 822
    .line 823
    iput-boolean v8, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzF:Z

    .line 824
    .line 825
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzrd;->zzL(J)V

    .line 826
    .line 827
    .line 828
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzp:Lcom/google/android/gms/internal/ads/zzpy;

    .line 829
    .line 830
    if-eqz v0, :cond_26

    .line 831
    .line 832
    cmp-long v8, v9, v6

    .line 833
    .line 834
    if-eqz v8, :cond_26

    .line 835
    .line 836
    check-cast v0, Lcom/google/android/gms/internal/ads/zzri;

    .line 837
    .line 838
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzri;->zza:Lcom/google/android/gms/internal/ads/zzrj;

    .line 839
    .line 840
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrj;->zzam()V

    .line 841
    .line 842
    .line 843
    :cond_26
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzr:Lcom/google/android/gms/internal/ads/zzqs;

    .line 844
    .line 845
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzqs;->zzc:I

    .line 846
    .line 847
    if-nez v0, :cond_27

    .line 848
    .line 849
    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzA:J

    .line 850
    .line 851
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->remaining()I

    .line 852
    .line 853
    .line 854
    move-result v0

    .line 855
    int-to-long v8, v0

    .line 856
    add-long/2addr v6, v8

    .line 857
    iput-wide v6, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzA:J

    .line 858
    .line 859
    goto :goto_12

    .line 860
    :cond_27
    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzB:J

    .line 861
    .line 862
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzE:I

    .line 863
    .line 864
    int-to-long v8, v0

    .line 865
    int-to-long v10, v5

    .line 866
    mul-long v8, v8, v10

    .line 867
    .line 868
    add-long/2addr v8, v6

    .line 869
    iput-wide v8, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzB:J

    .line 870
    .line 871
    :goto_12
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzJ:Ljava/nio/ByteBuffer;

    .line 872
    .line 873
    iput v5, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzK:I

    .line 874
    .line 875
    :cond_28
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzrd;->zzO(J)V

    .line 876
    .line 877
    .line 878
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzJ:Ljava/nio/ByteBuffer;

    .line 879
    .line 880
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 881
    .line 882
    .line 883
    move-result v0

    .line 884
    if-nez v0, :cond_29

    .line 885
    .line 886
    const/4 v2, 0x0

    .line 887
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzJ:Ljava/nio/ByteBuffer;

    .line 888
    .line 889
    const/4 v2, 0x0

    .line 890
    iput v2, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzK:I

    .line 891
    .line 892
    const/4 v2, 0x1

    .line 893
    return v2

    .line 894
    :cond_29
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzi:Lcom/google/android/gms/internal/ads/zzqf;

    .line 895
    .line 896
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrd;->zzJ()J

    .line 897
    .line 898
    .line 899
    move-result-wide v2

    .line 900
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzqf;->zzi(J)Z

    .line 901
    .line 902
    .line 903
    move-result v0

    .line 904
    if-eqz v0, :cond_2a

    .line 905
    .line 906
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 907
    .line 908
    const/4 v2, 0x3

    .line 909
    new-array v2, v2, [J

    .line 910
    .line 911
    fill-array-data v2, :array_1

    .line 912
    .line 913
    .line 914
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 915
    .line 916
    .line 917
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 918
    .line 919
    .line 920
    move-result-object v0

    .line 921
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 922
    .line 923
    const/4 v3, 0x5

    .line 924
    new-array v3, v3, [J

    .line 925
    .line 926
    fill-array-data v3, :array_2

    .line 927
    .line 928
    .line 929
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 930
    .line 931
    .line 932
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 933
    .line 934
    .line 935
    move-result-object v2

    .line 936
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    .line 938
    .line 939
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrd;->zzf()V

    .line 940
    .line 941
    .line 942
    const/4 v2, 0x1

    .line 943
    return v2

    .line 944
    :cond_2a
    const/4 v2, 0x0

    .line 945
    return v2

    .line 946
    :catch_2
    move-exception v0

    .line 947
    :try_start_5
    invoke-virtual {v12, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 948
    .line 949
    .line 950
    :cond_2b
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrd;->zzM()V

    .line 951
    .line 952
    .line 953
    throw v12
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/zzpx; {:try_start_5 .. :try_end_5} :catch_1

    .line 954
    :goto_13
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzpx;->zzb:Z

    .line 955
    .line 956
    if-nez v2, :cond_2c

    .line 957
    .line 958
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzrd;->zzl:Lcom/google/android/gms/internal/ads/zzqw;

    .line 959
    .line 960
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzqw;->zzb(Ljava/lang/Exception;)V

    .line 961
    .line 962
    .line 963
    const/4 v2, 0x0

    .line 964
    return v2

    .line 965
    :cond_2c
    throw v0

    .line 966
    nop

    .line 967
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_9
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    :array_0
    .array-data 8
        0x7cdd300655b23664L    # 2.9126890976855686E293
        0x10d579e22f7fa7c4L
        0x71e85e8d0e4fb0aaL    # 5.077972180876813E240
        0x56de7d633f677ec7L    # 2.8642633368987626E110
        -0x7367864077ef02cfL
    .end array-data

    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    :array_1
    .array-data 8
        0x6310fc53ee59f1cdL    # 1.6025806580300394E169
        0x9779ba12b609824L
        -0x5f6e002f896c886L    # -7.126089556147106E279
    .end array-data

    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    :array_2
    .array-data 8
        0x3f0c052bc1820e1eL    # 5.3444288085760026E-5
        0x389b7f67a4beb18dL    # 5.171737902006226E-36
        0x5e31f4f1bd23b4fL
        0x7af7e32f4c847bd2L    # 2.22006424280774E284
        -0x6462b931b56fb46fL
    .end array-data
.end method

.method public final zzx()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrd;->zzU()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzi:Lcom/google/android/gms/internal/ads/zzqf;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrd;->zzJ()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzqf;->zzg(J)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    return v0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    return v0
.end method

.method public final zzy()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrd;->zzU()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrd;->zzM:Z

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzrd;->zzx()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return v2

    .line 21
    :cond_1
    const/4 v1, 0x0

    .line 22
    :cond_2
    :goto_0
    return v1
.end method

.method public final zzz(Lcom/google/android/gms/internal/ads/zzam;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzrd;->zza(Lcom/google/android/gms/internal/ads/zzam;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    return p1
.end method
