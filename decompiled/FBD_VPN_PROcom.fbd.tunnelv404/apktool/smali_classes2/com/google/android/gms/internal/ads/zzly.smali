.class final Lcom/google/android/gms/internal/ads/zzly;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zzt:Lcom/google/android/gms/internal/ads/zzur;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzcx;

.field public final zzb:Lcom/google/android/gms/internal/ads/zzur;

.field public final zzc:J

.field public final zzd:J

.field public final zze:I

.field public final zzf:Lcom/google/android/gms/internal/ads/zziz;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zzg:Z

.field public final zzh:Lcom/google/android/gms/internal/ads/zzws;

.field public final zzi:Lcom/google/android/gms/internal/ads/zzyp;

.field public final zzj:Ljava/util/List;

.field public final zzk:Lcom/google/android/gms/internal/ads/zzur;

.field public final zzl:Z

.field public final zzm:I

.field public final zzn:Lcom/google/android/gms/internal/ads/zzcg;

.field public final zzo:Z

.field public volatile zzp:J

.field public volatile zzq:J

.field public volatile zzr:J

.field public volatile zzs:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzur;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzur;-><init>(Ljava/lang/Object;J)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzly;->zzt:Lcom/google/android/gms/internal/ads/zzur;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcx;Lcom/google/android/gms/internal/ads/zzur;JJILcom/google/android/gms/internal/ads/zziz;ZLcom/google/android/gms/internal/ads/zzws;Lcom/google/android/gms/internal/ads/zzyp;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzur;ZILcom/google/android/gms/internal/ads/zzcg;JJJJZ)V
    .locals 3
    .param p8    # Lcom/google/android/gms/internal/ads/zziz;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzly;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzly;->zzb:Lcom/google/android/gms/internal/ads/zzur;

    move-wide v1, p3

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzly;->zzc:J

    move-wide v1, p5

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzly;->zzd:J

    move v1, p7

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzly;->zze:I

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzly;->zzf:Lcom/google/android/gms/internal/ads/zziz;

    move v1, p9

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzly;->zzg:Z

    move-object v1, p10

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzly;->zzh:Lcom/google/android/gms/internal/ads/zzws;

    move-object v1, p11

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzly;->zzi:Lcom/google/android/gms/internal/ads/zzyp;

    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzly;->zzj:Ljava/util/List;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzly;->zzk:Lcom/google/android/gms/internal/ads/zzur;

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzly;->zzl:Z

    move/from16 v1, p15

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzly;->zzm:I

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzly;->zzn:Lcom/google/android/gms/internal/ads/zzcg;

    move-wide/from16 v1, p17

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzly;->zzp:J

    move-wide/from16 v1, p19

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzly;->zzq:J

    move-wide/from16 v1, p21

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzly;->zzr:J

    move-wide/from16 v1, p23

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzly;->zzs:J

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzly;->zzo:Z

    return-void
.end method

.method public static zzg(Lcom/google/android/gms/internal/ads/zzyp;)Lcom/google/android/gms/internal/ads/zzly;
    .locals 27

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    new-instance v26, Lcom/google/android/gms/internal/ads/zzly;

    .line 4
    .line 5
    move-object/from16 v0, v26

    .line 6
    .line 7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcx;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    .line 8
    .line 9
    sget-object v13, Lcom/google/android/gms/internal/ads/zzly;->zzt:Lcom/google/android/gms/internal/ads/zzur;

    .line 10
    .line 11
    move-object v2, v13

    .line 12
    sget-object v10, Lcom/google/android/gms/internal/ads/zzws;->zza:Lcom/google/android/gms/internal/ads/zzws;

    .line 13
    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgaa;->zzl()Lcom/google/android/gms/internal/ads/zzgaa;

    .line 15
    .line 16
    .line 17
    move-result-object v12

    .line 18
    sget-object v16, Lcom/google/android/gms/internal/ads/zzcg;->zza:Lcom/google/android/gms/internal/ads/zzcg;

    .line 19
    .line 20
    const-wide/16 v23, 0x0

    .line 21
    .line 22
    const/16 v25, 0x0

    .line 23
    .line 24
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    const-wide/16 v5, 0x0

    .line 30
    .line 31
    const/4 v7, 0x1

    .line 32
    const/4 v8, 0x0

    .line 33
    const/4 v9, 0x0

    .line 34
    const/4 v14, 0x0

    .line 35
    const/4 v15, 0x0

    .line 36
    const-wide/16 v17, 0x0

    .line 37
    .line 38
    const-wide/16 v19, 0x0

    .line 39
    .line 40
    const-wide/16 v21, 0x0

    .line 41
    .line 42
    invoke-direct/range {v0 .. v25}, Lcom/google/android/gms/internal/ads/zzly;-><init>(Lcom/google/android/gms/internal/ads/zzcx;Lcom/google/android/gms/internal/ads/zzur;JJILcom/google/android/gms/internal/ads/zziz;ZLcom/google/android/gms/internal/ads/zzws;Lcom/google/android/gms/internal/ads/zzyp;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzur;ZILcom/google/android/gms/internal/ads/zzcg;JJJJZ)V

    .line 43
    .line 44
    .line 45
    return-object v26
.end method

.method public static zzh()Lcom/google/android/gms/internal/ads/zzur;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzly;->zzt:Lcom/google/android/gms/internal/ads/zzur;

    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzur;)Lcom/google/android/gms/internal/ads/zzly;
    .locals 28
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    new-instance v27, Lcom/google/android/gms/internal/ads/zzly;

    move-object/from16 v1, v27

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/zzly;->zzl:Z

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzly;->zzm:I

    move/from16 v16, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzly;->zzn:Lcom/google/android/gms/internal/ads/zzcg;

    move-object/from16 v17, v2

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzly;->zzp:J

    move-wide/from16 v18, v2

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzly;->zzq:J

    move-wide/from16 v20, v2

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzly;->zzr:J

    move-wide/from16 v22, v2

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzly;->zzs:J

    move-wide/from16 v24, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzly;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzly;->zzb:Lcom/google/android/gms/internal/ads/zzur;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzly;->zzc:J

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzly;->zzd:J

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzly;->zze:I

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzly;->zzf:Lcom/google/android/gms/internal/ads/zziz;

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzly;->zzg:Z

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzly;->zzh:Lcom/google/android/gms/internal/ads/zzws;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzly;->zzi:Lcom/google/android/gms/internal/ads/zzyp;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzly;->zzj:Ljava/util/List;

    const/16 v26, 0x0

    invoke-direct/range {v1 .. v26}, Lcom/google/android/gms/internal/ads/zzly;-><init>(Lcom/google/android/gms/internal/ads/zzcx;Lcom/google/android/gms/internal/ads/zzur;JJILcom/google/android/gms/internal/ads/zziz;ZLcom/google/android/gms/internal/ads/zzws;Lcom/google/android/gms/internal/ads/zzyp;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzur;ZILcom/google/android/gms/internal/ads/zzcg;JJJJZ)V

    return-object v27
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzur;JJJJLcom/google/android/gms/internal/ads/zzws;Lcom/google/android/gms/internal/ads/zzyp;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzly;
    .locals 28
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    move-wide/from16 v22, p2

    .line 6
    .line 7
    move-wide/from16 v4, p4

    .line 8
    .line 9
    move-wide/from16 v6, p6

    .line 10
    .line 11
    move-wide/from16 v20, p8

    .line 12
    .line 13
    move-object/from16 v11, p10

    .line 14
    .line 15
    move-object/from16 v12, p11

    .line 16
    .line 17
    move-object/from16 v13, p12

    .line 18
    .line 19
    new-instance v27, Lcom/google/android/gms/internal/ads/zzly;

    .line 20
    .line 21
    move-object/from16 v1, v27

    .line 22
    .line 23
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzly;->zzk:Lcom/google/android/gms/internal/ads/zzur;

    .line 24
    .line 25
    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/zzly;->zzl:Z

    .line 26
    .line 27
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzly;->zzm:I

    .line 28
    .line 29
    move/from16 v16, v2

    .line 30
    .line 31
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzly;->zzn:Lcom/google/android/gms/internal/ads/zzcg;

    .line 32
    .line 33
    move-object/from16 v17, v2

    .line 34
    .line 35
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzly;->zzp:J

    .line 36
    .line 37
    move-wide/from16 v18, v8

    .line 38
    .line 39
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 40
    .line 41
    .line 42
    move-result-wide v24

    .line 43
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzly;->zze:I

    .line 44
    .line 45
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzly;->zzf:Lcom/google/android/gms/internal/ads/zziz;

    .line 46
    .line 47
    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzly;->zzg:Z

    .line 48
    .line 49
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzly;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    .line 50
    .line 51
    const/16 v26, 0x0

    .line 52
    .line 53
    invoke-direct/range {v1 .. v26}, Lcom/google/android/gms/internal/ads/zzly;-><init>(Lcom/google/android/gms/internal/ads/zzcx;Lcom/google/android/gms/internal/ads/zzur;JJILcom/google/android/gms/internal/ads/zziz;ZLcom/google/android/gms/internal/ads/zzws;Lcom/google/android/gms/internal/ads/zzyp;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzur;ZILcom/google/android/gms/internal/ads/zzcg;JJJJZ)V

    .line 54
    .line 55
    .line 56
    return-object v27
.end method

.method public final zzc(ZI)Lcom/google/android/gms/internal/ads/zzly;
    .locals 28
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v15, p1

    move/from16 v16, p2

    new-instance v27, Lcom/google/android/gms/internal/ads/zzly;

    move-object/from16 v1, v27

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzly;->zzn:Lcom/google/android/gms/internal/ads/zzcg;

    move-object/from16 v17, v2

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzly;->zzp:J

    move-wide/from16 v18, v2

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzly;->zzq:J

    move-wide/from16 v20, v2

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzly;->zzr:J

    move-wide/from16 v22, v2

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzly;->zzs:J

    move-wide/from16 v24, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzly;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzly;->zzb:Lcom/google/android/gms/internal/ads/zzur;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzly;->zzc:J

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzly;->zzd:J

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzly;->zze:I

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzly;->zzf:Lcom/google/android/gms/internal/ads/zziz;

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzly;->zzg:Z

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzly;->zzh:Lcom/google/android/gms/internal/ads/zzws;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzly;->zzi:Lcom/google/android/gms/internal/ads/zzyp;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzly;->zzj:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzly;->zzk:Lcom/google/android/gms/internal/ads/zzur;

    const/16 v26, 0x0

    invoke-direct/range {v1 .. v26}, Lcom/google/android/gms/internal/ads/zzly;-><init>(Lcom/google/android/gms/internal/ads/zzcx;Lcom/google/android/gms/internal/ads/zzur;JJILcom/google/android/gms/internal/ads/zziz;ZLcom/google/android/gms/internal/ads/zzws;Lcom/google/android/gms/internal/ads/zzyp;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzur;ZILcom/google/android/gms/internal/ads/zzcg;JJJJZ)V

    return-object v27
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zziz;)Lcom/google/android/gms/internal/ads/zzly;
    .locals 28
    .param p1    # Lcom/google/android/gms/internal/ads/zziz;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    new-instance v27, Lcom/google/android/gms/internal/ads/zzly;

    move-object/from16 v1, v27

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzly;->zzg:Z

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzly;->zzh:Lcom/google/android/gms/internal/ads/zzws;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzly;->zzi:Lcom/google/android/gms/internal/ads/zzyp;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzly;->zzj:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzly;->zzk:Lcom/google/android/gms/internal/ads/zzur;

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/zzly;->zzl:Z

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzly;->zzm:I

    move/from16 v16, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzly;->zzn:Lcom/google/android/gms/internal/ads/zzcg;

    move-object/from16 v17, v2

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzly;->zzp:J

    move-wide/from16 v18, v2

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzly;->zzq:J

    move-wide/from16 v20, v2

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzly;->zzr:J

    move-wide/from16 v22, v2

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzly;->zzs:J

    move-wide/from16 v24, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzly;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzly;->zzb:Lcom/google/android/gms/internal/ads/zzur;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzly;->zzc:J

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzly;->zzd:J

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzly;->zze:I

    const/16 v26, 0x0

    invoke-direct/range {v1 .. v26}, Lcom/google/android/gms/internal/ads/zzly;-><init>(Lcom/google/android/gms/internal/ads/zzcx;Lcom/google/android/gms/internal/ads/zzur;JJILcom/google/android/gms/internal/ads/zziz;ZLcom/google/android/gms/internal/ads/zzws;Lcom/google/android/gms/internal/ads/zzyp;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzur;ZILcom/google/android/gms/internal/ads/zzcg;JJJJZ)V

    return-object v27
.end method

.method public final zze(I)Lcom/google/android/gms/internal/ads/zzly;
    .locals 28
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v8, p1

    new-instance v27, Lcom/google/android/gms/internal/ads/zzly;

    move-object/from16 v1, v27

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzly;->zzf:Lcom/google/android/gms/internal/ads/zziz;

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzly;->zzg:Z

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzly;->zzh:Lcom/google/android/gms/internal/ads/zzws;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzly;->zzi:Lcom/google/android/gms/internal/ads/zzyp;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzly;->zzj:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzly;->zzk:Lcom/google/android/gms/internal/ads/zzur;

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/zzly;->zzl:Z

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzly;->zzm:I

    move/from16 v16, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzly;->zzn:Lcom/google/android/gms/internal/ads/zzcg;

    move-object/from16 v17, v2

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzly;->zzp:J

    move-wide/from16 v18, v2

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzly;->zzq:J

    move-wide/from16 v20, v2

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzly;->zzr:J

    move-wide/from16 v22, v2

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzly;->zzs:J

    move-wide/from16 v24, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzly;->zza:Lcom/google/android/gms/internal/ads/zzcx;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzly;->zzb:Lcom/google/android/gms/internal/ads/zzur;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzly;->zzc:J

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzly;->zzd:J

    const/16 v26, 0x0

    invoke-direct/range {v1 .. v26}, Lcom/google/android/gms/internal/ads/zzly;-><init>(Lcom/google/android/gms/internal/ads/zzcx;Lcom/google/android/gms/internal/ads/zzur;JJILcom/google/android/gms/internal/ads/zziz;ZLcom/google/android/gms/internal/ads/zzws;Lcom/google/android/gms/internal/ads/zzyp;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzur;ZILcom/google/android/gms/internal/ads/zzcg;JJJJZ)V

    return-object v27
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzcx;)Lcom/google/android/gms/internal/ads/zzly;
    .locals 29
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    new-instance v27, Lcom/google/android/gms/internal/ads/zzly;

    move-object/from16 v1, v27

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzly;->zzb:Lcom/google/android/gms/internal/ads/zzur;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzly;->zzc:J

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzly;->zzd:J

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzly;->zze:I

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzly;->zzf:Lcom/google/android/gms/internal/ads/zziz;

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzly;->zzg:Z

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzly;->zzh:Lcom/google/android/gms/internal/ads/zzws;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzly;->zzi:Lcom/google/android/gms/internal/ads/zzyp;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzly;->zzj:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzly;->zzk:Lcom/google/android/gms/internal/ads/zzur;

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/zzly;->zzl:Z

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzly;->zzm:I

    move/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzly;->zzn:Lcom/google/android/gms/internal/ads/zzcg;

    move-object/from16 v17, v1

    move-object/from16 v28, v2

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzly;->zzp:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzly;->zzq:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzly;->zzr:J

    move-wide/from16 v22, v1

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzly;->zzs:J

    move-wide/from16 v24, v1

    const/16 v26, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    invoke-direct/range {v1 .. v26}, Lcom/google/android/gms/internal/ads/zzly;-><init>(Lcom/google/android/gms/internal/ads/zzcx;Lcom/google/android/gms/internal/ads/zzur;JJILcom/google/android/gms/internal/ads/zziz;ZLcom/google/android/gms/internal/ads/zzws;Lcom/google/android/gms/internal/ads/zzyp;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzur;ZILcom/google/android/gms/internal/ads/zzcg;JJJJZ)V

    return-object v27
.end method

.method public final zzi()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzly;->zze:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzly;->zzl:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzly;->zzm:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
