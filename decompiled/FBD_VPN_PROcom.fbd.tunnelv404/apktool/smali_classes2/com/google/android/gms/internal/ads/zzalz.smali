.class public final Lcom/google/android/gms/internal/ads/zzalz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/util/Set;

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzf:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private zzg:Z

.field private zzh:I

.field private zzi:Z

.field private zzj:I

.field private zzk:I

.field private zzl:I

.field private zzm:I

.field private zzn:F

.field private zzo:I

.field private zzp:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    new-array v2, v1, [J

    .line 8
    .line 9
    const-wide v3, -0x3f20d8ccf4c024b7L    # -31900.797561611314

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    aput-wide v3, v2, v5

    .line 16
    .line 17
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzalz;->zza:Ljava/lang/String;

    .line 25
    .line 26
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    new-array v2, v1, [J

    .line 29
    .line 30
    const-wide v3, 0x476bfd5106444937L    # 1.1626390738463251E36

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    aput-wide v3, v2, v5

    .line 36
    .line 37
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzalz;->zzb:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzalz;->zzc:Ljava/util/Set;

    .line 51
    .line 52
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 53
    .line 54
    new-array v1, v1, [J

    .line 55
    .line 56
    const-wide v2, -0x2f5275b1eeb6cca8L    # -4.378275448781932E80

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    aput-wide v2, v1, v5

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
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzalz;->zzd:Ljava/lang/String;

    .line 71
    .line 72
    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzalz;->zze:Ljava/lang/String;

    .line 74
    .line 75
    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzalz;->zzg:Z

    .line 76
    .line 77
    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzalz;->zzi:Z

    .line 78
    .line 79
    const/4 v0, -0x1

    .line 80
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzalz;->zzj:I

    .line 81
    .line 82
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzalz;->zzk:I

    .line 83
    .line 84
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzalz;->zzl:I

    .line 85
    .line 86
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzalz;->zzm:I

    .line 87
    .line 88
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzalz;->zzo:I

    .line 89
    .line 90
    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzalz;->zzp:Z

    .line 91
    .line 92
    return-void
.end method

.method private static zzA(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    add-int/2addr p0, p3

    .line 18
    return p0

    .line 19
    :cond_1
    return v0

    .line 20
    :cond_2
    :goto_0
    return p0
.end method


# virtual methods
.method public final zza()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzalz;->zzn:F

    return v0
.end method

.method public final zzb()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzalz;->zzi:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzalz;->zzh:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 v2, 0x5

    .line 13
    new-array v2, v2, [J

    .line 14
    .line 15
    fill-array-data v2, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0

    .line 29
    :array_0
    .array-data 8
        0x226f3e6d93655ab6L    # 8.006758773784365E-143
        -0x6f894aaeb87c0f92L    # -2.34027767788898E-229
        0x49f4c6bae74a9dcdL    # 1.8977863128860502E48
        -0x8a204f9a7a00fdaL    # -9.667095233846053E266
        0x7d4dc94122444e26L    # 3.804697540024033E295
    .end array-data
.end method

.method public final zzc()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzalz;->zzg:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzalz;->zzf:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 v2, 0x4

    .line 13
    new-array v2, v2, [J

    .line 14
    .line 15
    fill-array-data v2, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0

    .line 29
    :array_0
    .array-data 8
        0x12e5a0f04abba435L
        -0x70189b3da0b50537L    # -4.7087999732883716E-232
        0x3da0e0544b118c21L    # 7.674446448033985E-12
        -0x1ab51f4bc798e03eL    # -8.713253269430527E179
    .end array-data
.end method

.method public final zzd()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzalz;->zzm:I

    return v0
.end method

.method public final zze()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzalz;->zzo:I

    return v0
.end method

.method public final zzf(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)I
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalz;->zza:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalz;->zzb:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalz;->zzc:Ljava/util/Set;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalz;->zzd:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    const/4 p1, 0x1

    .line 41
    return p1

    .line 42
    :cond_0
    return v1

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalz;->zza:Ljava/lang/String;

    .line 44
    .line 45
    const/high16 v2, 0x40000000    # 2.0f

    .line 46
    .line 47
    invoke-static {v1, v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzalz;->zzA(ILjava/lang/String;Ljava/lang/String;I)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalz;->zzb:Ljava/lang/String;

    .line 52
    .line 53
    const/4 v2, 0x2

    .line 54
    invoke-static {p1, v0, p2, v2}, Lcom/google/android/gms/internal/ads/zzalz;->zzA(ILjava/lang/String;Ljava/lang/String;I)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzalz;->zzd:Ljava/lang/String;

    .line 59
    .line 60
    const/4 v0, 0x4

    .line 61
    invoke-static {p1, p2, p4, v0}, Lcom/google/android/gms/internal/ads/zzalz;->zzA(ILjava/lang/String;Ljava/lang/String;I)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    const/4 p2, -0x1

    .line 66
    if-eq p1, p2, :cond_3

    .line 67
    .line 68
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzalz;->zzc:Ljava/util/Set;

    .line 69
    .line 70
    invoke-interface {p3, p2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    if-nez p2, :cond_2

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzalz;->zzc:Ljava/util/Set;

    .line 78
    .line 79
    invoke-interface {p2}, Ljava/util/Set;->size()I

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    mul-int/lit8 p2, p2, 0x4

    .line 84
    .line 85
    add-int/2addr p2, p1

    .line 86
    return p2

    .line 87
    :cond_3
    :goto_0
    return v1
.end method

.method public final zzg()I
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzalz;->zzk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzalz;->zzl:I

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzalz;->zzl:I

    if-ne v3, v2, :cond_3

    const/4 v1, 0x2

    :cond_3
    or-int/2addr v0, v1

    return v0
.end method

.method public final zzh(I)Lcom/google/android/gms/internal/ads/zzalz;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzalz;->zzh:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzalz;->zzi:Z

    return-object p0
.end method

.method public final zzi(Z)Lcom/google/android/gms/internal/ads/zzalz;
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzalz;->zzk:I

    return-object p0
.end method

.method public final zzj(Z)Lcom/google/android/gms/internal/ads/zzalz;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzalz;->zzp:Z

    return-object p0
.end method

.method public final zzk(I)Lcom/google/android/gms/internal/ads/zzalz;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzalz;->zzf:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzalz;->zzg:Z

    return-object p0
.end method

.method public final zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzalz;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfwk;->zza(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalz;->zze:Ljava/lang/String;

    .line 6
    .line 7
    return-object p0
.end method

.method public final zzm(F)Lcom/google/android/gms/internal/ads/zzalz;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzalz;->zzn:F

    return-object p0
.end method

.method public final zzn(I)Lcom/google/android/gms/internal/ads/zzalz;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzalz;->zzm:I

    return-object p0
.end method

.method public final zzo(Z)Lcom/google/android/gms/internal/ads/zzalz;
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzalz;->zzl:I

    return-object p0
.end method

.method public final zzp(I)Lcom/google/android/gms/internal/ads/zzalz;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzalz;->zzo:I

    return-object p0
.end method

.method public final zzq(Z)Lcom/google/android/gms/internal/ads/zzalz;
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzalz;->zzj:I

    return-object p0
.end method

.method public final zzr()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalz;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zzs([Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzalz;->zzc:Ljava/util/Set;

    .line 11
    .line 12
    return-void
.end method

.method public final zzt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalz;->zza:Ljava/lang/String;

    return-void
.end method

.method public final zzu(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalz;->zzb:Ljava/lang/String;

    return-void
.end method

.method public final zzv(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalz;->zzd:Ljava/lang/String;

    return-void
.end method

.method public final zzw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzalz;->zzp:Z

    return v0
.end method

.method public final zzx()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzalz;->zzi:Z

    return v0
.end method

.method public final zzy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzalz;->zzg:Z

    return v0
.end method

.method public final zzz()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzalz;->zzj:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
