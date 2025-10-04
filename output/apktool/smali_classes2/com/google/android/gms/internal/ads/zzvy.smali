.class public final Lcom/google/android/gms/internal/ads/zzvy;
.super Lcom/google/android/gms/internal/ads/zzts;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzvp;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgv;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzry;

.field private final zzc:I

.field private zzd:Z

.field private zze:J

.field private zzf:Z

.field private zzg:Z

.field private zzh:Lcom/google/android/gms/internal/ads/zzhy;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzi:Lcom/google/android/gms/internal/ads/zzbp;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final zzj:Lcom/google/android/gms/internal/ads/zzvv;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzzb;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbp;Lcom/google/android/gms/internal/ads/zzgv;Lcom/google/android/gms/internal/ads/zzvv;Lcom/google/android/gms/internal/ads/zzry;Lcom/google/android/gms/internal/ads/zzzb;ILcom/google/android/gms/internal/ads/zzvx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzts;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzi:Lcom/google/android/gms/internal/ads/zzbp;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvy;->zza:Lcom/google/android/gms/internal/ads/zzgv;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzj:Lcom/google/android/gms/internal/ads/zzvv;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzb:Lcom/google/android/gms/internal/ads/zzry;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzk:Lcom/google/android/gms/internal/ads/zzzb;

    .line 13
    .line 14
    iput p6, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzc:I

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzd:Z

    .line 18
    .line 19
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zze:J

    .line 25
    .line 26
    return-void
.end method

.method private final zzw()V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v10, Lcom/google/android/gms/internal/ads/zzwl;

    .line 4
    .line 5
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzvy;->zze:J

    .line 6
    .line 7
    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzf:Z

    .line 8
    .line 9
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzg:Z

    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzvy;->zzJ()Lcom/google/android/gms/internal/ads/zzbp;

    .line 12
    .line 13
    .line 14
    move-result-object v12

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzbp;->zzf:Lcom/google/android/gms/internal/ads/zzbf;

    .line 18
    .line 19
    :goto_0
    move-object/from16 v21, v1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    goto :goto_0

    .line 24
    :goto_1
    const-wide/16 v14, 0x0

    .line 25
    .line 26
    const/16 v17, 0x0

    .line 27
    .line 28
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    move-wide v2, v6

    .line 34
    move-wide v4, v6

    .line 35
    const-wide/16 v18, 0x0

    .line 36
    .line 37
    move-object/from16 v20, v12

    .line 38
    .line 39
    move-wide/from16 v12, v18

    .line 40
    .line 41
    const/16 v18, 0x0

    .line 42
    .line 43
    const/16 v19, 0x0

    .line 44
    .line 45
    move-object v1, v10

    .line 46
    move-wide/from16 v22, v8

    .line 47
    .line 48
    move-object/from16 v24, v10

    .line 49
    .line 50
    move/from16 v16, v11

    .line 51
    .line 52
    move-wide/from16 v10, v22

    .line 53
    .line 54
    invoke-direct/range {v1 .. v21}, Lcom/google/android/gms/internal/ads/zzwl;-><init>(JJJJJJJZZZLjava/lang/Object;Lcom/google/android/gms/internal/ads/zzbp;Lcom/google/android/gms/internal/ads/zzbf;)V

    .line 55
    .line 56
    .line 57
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzvy;->zzd:Z

    .line 58
    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    new-instance v10, Lcom/google/android/gms/internal/ads/zzvu;

    .line 62
    .line 63
    move-object/from16 v1, v24

    .line 64
    .line 65
    invoke-direct {v10, v0, v1}, Lcom/google/android/gms/internal/ads/zzvu;-><init>(Lcom/google/android/gms/internal/ads/zzvy;Lcom/google/android/gms/internal/ads/zzcx;)V

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_1
    move-object/from16 v1, v24

    .line 70
    .line 71
    move-object v10, v1

    .line 72
    :goto_2
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzts;->zzo(Lcom/google/android/gms/internal/ads/zzcx;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method


# virtual methods
.method public final zzG(Lcom/google/android/gms/internal/ads/zzup;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzvt;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzvt;->zzN()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzI(Lcom/google/android/gms/internal/ads/zzur;Lcom/google/android/gms/internal/ads/zzyx;J)Lcom/google/android/gms/internal/ads/zzup;
    .locals 16

    .line 1
    move-object/from16 v14, p0

    .line 2
    .line 3
    iget-object v0, v14, Lcom/google/android/gms/internal/ads/zzvy;->zza:Lcom/google/android/gms/internal/ads/zzgv;

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgv;->zza()Lcom/google/android/gms/internal/ads/zzgw;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v0, v14, Lcom/google/android/gms/internal/ads/zzvy;->zzh:Lcom/google/android/gms/internal/ads/zzhy;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzgw;->zzf(Lcom/google/android/gms/internal/ads/zzhy;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzvy;->zzJ()Lcom/google/android/gms/internal/ads/zzbp;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbp;->zzd:Lcom/google/android/gms/internal/ads/zzbi;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iget-object v1, v14, Lcom/google/android/gms/internal/ads/zzvy;->zzj:Lcom/google/android/gms/internal/ads/zzvv;

    .line 26
    .line 27
    new-instance v15, Lcom/google/android/gms/internal/ads/zzvt;

    .line 28
    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzts;->zzb()Lcom/google/android/gms/internal/ads/zzpb;

    .line 30
    .line 31
    .line 32
    new-instance v3, Lcom/google/android/gms/internal/ads/zztu;

    .line 33
    .line 34
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzvv;->zza:Lcom/google/android/gms/internal/ads/zzadb;

    .line 35
    .line 36
    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zztu;-><init>(Lcom/google/android/gms/internal/ads/zzadb;)V

    .line 37
    .line 38
    .line 39
    iget-object v4, v14, Lcom/google/android/gms/internal/ads/zzvy;->zzb:Lcom/google/android/gms/internal/ads/zzry;

    .line 40
    .line 41
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzts;->zzc(Lcom/google/android/gms/internal/ads/zzur;)Lcom/google/android/gms/internal/ads/zzrs;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    iget-object v6, v14, Lcom/google/android/gms/internal/ads/zzvy;->zzk:Lcom/google/android/gms/internal/ads/zzzb;

    .line 46
    .line 47
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzts;->zze(Lcom/google/android/gms/internal/ads/zzur;)Lcom/google/android/gms/internal/ads/zzva;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    iget v11, v14, Lcom/google/android/gms/internal/ads/zzvy;->zzc:I

    .line 52
    .line 53
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbi;->zzb:Landroid/net/Uri;

    .line 54
    .line 55
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzfy;->zzq(J)J

    .line 61
    .line 62
    .line 63
    move-result-wide v12

    .line 64
    const/4 v10, 0x0

    .line 65
    move-object v0, v15

    .line 66
    move-object/from16 v8, p0

    .line 67
    .line 68
    move-object/from16 v9, p2

    .line 69
    .line 70
    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/ads/zzvt;-><init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzgw;Lcom/google/android/gms/internal/ads/zzvi;Lcom/google/android/gms/internal/ads/zzry;Lcom/google/android/gms/internal/ads/zzrs;Lcom/google/android/gms/internal/ads/zzzb;Lcom/google/android/gms/internal/ads/zzva;Lcom/google/android/gms/internal/ads/zzvp;Lcom/google/android/gms/internal/ads/zzyx;Ljava/lang/String;IJ)V

    .line 71
    .line 72
    .line 73
    return-object v15
.end method

.method public final declared-synchronized zzJ()Lcom/google/android/gms/internal/ads/zzbp;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzi:Lcom/google/android/gms/internal/ads/zzbp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zza(JZZ)V
    .locals 3

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmp-long v2, p1, v0

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zze:J

    .line 11
    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzd:Z

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zze:J

    .line 17
    .line 18
    cmp-long v2, v0, p1

    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzf:Z

    .line 23
    .line 24
    if-ne v0, p3, :cond_1

    .line 25
    .line 26
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzg:Z

    .line 27
    .line 28
    if-ne v0, p4, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zze:J

    .line 32
    .line 33
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzf:Z

    .line 34
    .line 35
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzg:Z

    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzd:Z

    .line 39
    .line 40
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvy;->zzw()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final zzn(Lcom/google/android/gms/internal/ads/zzhy;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/internal/ads/zzhy;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzh:Lcom/google/android/gms/internal/ads/zzhy;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzts;->zzb()Lcom/google/android/gms/internal/ads/zzpb;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvy;->zzw()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final zzq()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized zzt(Lcom/google/android/gms/internal/ads/zzbp;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvy;->zzi:Lcom/google/android/gms/internal/ads/zzbp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzz()V
    .locals 0

    return-void
.end method
