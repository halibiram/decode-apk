.class public final Lcom/google/android/gms/internal/ads/zzaeb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:[B

.field private zzb:Z

.field private zzc:I

.field private zzd:J

.field private zze:I

.field private zzf:I

.field private zzg:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaeb;->zza:[B

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaea;Lcom/google/android/gms/internal/ads/zzadz;)V
    .locals 8
    .param p2    # Lcom/google/android/gms/internal/ads/zzadz;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaeb;->zzc:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaeb;->zzd:J

    .line 6
    .line 7
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzaeb;->zze:I

    .line 8
    .line 9
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaeb;->zzf:I

    .line 10
    .line 11
    iget v6, p0, Lcom/google/android/gms/internal/ads/zzaeb;->zzg:I

    .line 12
    .line 13
    move-object v1, p1

    .line 14
    move-object v7, p2

    .line 15
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzaea;->zzt(JIIILcom/google/android/gms/internal/ads/zzadz;)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaeb;->zzc:I

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final zzb()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaeb;->zzb:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaeb;->zzc:I

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzaea;JIIILcom/google/android/gms/internal/ads/zzadz;)V
    .locals 2
    .param p7    # Lcom/google/android/gms/internal/ads/zzadz;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaeb;->zzg:I

    .line 2
    .line 3
    add-int v1, p5, p6

    .line 4
    .line 5
    if-gt v0, v1, :cond_3

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaeb;->zzb:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaeb;->zzc:I

    .line 13
    .line 14
    add-int/lit8 v1, v0, 0x1

    .line 15
    .line 16
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaeb;->zzc:I

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzaeb;->zzd:J

    .line 21
    .line 22
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzaeb;->zze:I

    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaeb;->zzf:I

    .line 26
    .line 27
    :cond_1
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzaeb;->zzf:I

    .line 28
    .line 29
    add-int/2addr p2, p5

    .line 30
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaeb;->zzf:I

    .line 31
    .line 32
    iput p6, p0, Lcom/google/android/gms/internal/ads/zzaeb;->zzg:I

    .line 33
    .line 34
    const/16 p2, 0x10

    .line 35
    .line 36
    if-lt v1, p2, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0, p1, p7}, Lcom/google/android/gms/internal/ads/zzaeb;->zza(Lcom/google/android/gms/internal/ads/zzaea;Lcom/google/android/gms/internal/ads/zzadz;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    :goto_0
    return-void

    .line 42
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 45
    .line 46
    const/16 p3, 0x9

    .line 47
    .line 48
    new-array p3, p3, [J

    .line 49
    .line 50
    fill-array-data p3, :array_0

    .line 51
    .line 52
    .line 53
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    nop

    .line 65
    :array_0
    .array-data 8
        -0x31afef8fb910feeaL    # -1.7323613258185167E69
        -0x28bdf0b27b8fd35aL    # -2.171604700756136E112
        -0x47da2ac6c90e7f87L    # -3.208056954789122E-38
        0x7a729ef9fc772438L    # 6.760191603235598E281
        -0x1ffc803ac6a6fc24L    # -3.2680028729556445E154
        -0x610c85141accb813L    # -1.385590415212555E-159
        0x3d7215c6c06637f7L    # 1.0280168656962472E-12
        -0x66c10cfb56599db0L
        0x1d6d7e6f66b283efL    # 6.252078643463065E-167
    .end array-data
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzacv;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaeb;->zzb:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaeb;->zza:[B

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/16 v2, 0xa

    .line 10
    .line 11
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzacv;->zzh([BII)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzj()V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeb;->zza:[B

    .line 18
    .line 19
    const/4 v0, 0x4

    .line 20
    aget-byte v0, p1, v0

    .line 21
    .line 22
    const/4 v1, -0x8

    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x5

    .line 26
    aget-byte v0, p1, v0

    .line 27
    .line 28
    const/16 v1, 0x72

    .line 29
    .line 30
    if-ne v0, v1, :cond_1

    .line 31
    .line 32
    const/4 v0, 0x6

    .line 33
    aget-byte v0, p1, v0

    .line 34
    .line 35
    const/16 v1, 0x6f

    .line 36
    .line 37
    if-ne v0, v1, :cond_1

    .line 38
    .line 39
    const/4 v0, 0x7

    .line 40
    aget-byte p1, p1, v0

    .line 41
    .line 42
    and-int/lit16 p1, p1, 0xfe

    .line 43
    .line 44
    const/16 v0, 0xba

    .line 45
    .line 46
    if-ne p1, v0, :cond_1

    .line 47
    .line 48
    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaeb;->zzb:Z

    .line 50
    .line 51
    :cond_1
    :goto_0
    return-void
.end method
