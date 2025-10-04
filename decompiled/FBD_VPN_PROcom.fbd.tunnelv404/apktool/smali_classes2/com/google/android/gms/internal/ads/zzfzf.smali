.class abstract Lcom/google/android/gms/internal/ads/zzfzf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field zzb:I

.field zzc:I

.field zzd:I

.field final synthetic zze:Lcom/google/android/gms/internal/ads/zzfzj;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfzj;Lcom/google/android/gms/internal/ads/zzfze;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfzf;->zze:Lcom/google/android/gms/internal/ads/zzfzj;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfzj;->zza(Lcom/google/android/gms/internal/ads/zzfzj;)I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfzf;->zzb:I

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfzj;->zze()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfzf;->zzc:I

    .line 17
    .line 18
    const/4 p1, -0x1

    .line 19
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfzf;->zzd:I

    .line 20
    .line 21
    return-void
.end method

.method private final zzb()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfzf;->zze:Lcom/google/android/gms/internal/ads/zzfzj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfzj;->zza(Lcom/google/android/gms/internal/ads/zzfzj;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfzf;->zzb:I

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 15
    .line 16
    .line 17
    throw v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfzf;->zzc:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfzf;->zzb()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfzf;->hasNext()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfzf;->zzc:I

    .line 11
    .line 12
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfzf;->zzd:I

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfzf;->zza(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfzf;->zze:Lcom/google/android/gms/internal/ads/zzfzj;

    .line 19
    .line 20
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfzf;->zzc:I

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfzj;->zzf(I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzfzf;->zzc:I

    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 32
    .line 33
    .line 34
    throw v0
.end method

.method public final remove()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfzf;->zzb()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfzf;->zzd:I

    .line 5
    .line 6
    if-ltz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    const/16 v2, 0x8

    .line 14
    .line 15
    new-array v2, v2, [J

    .line 16
    .line 17
    fill-array-data v2, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfxe;->zzj(ZLjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfzf;->zzb:I

    .line 31
    .line 32
    add-int/lit8 v0, v0, 0x20

    .line 33
    .line 34
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfzf;->zzb:I

    .line 35
    .line 36
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfzf;->zzd:I

    .line 37
    .line 38
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfzf;->zze:Lcom/google/android/gms/internal/ads/zzfzj;

    .line 39
    .line 40
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzfzj;->zzg(Lcom/google/android/gms/internal/ads/zzfzj;I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfzj;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfzf;->zzc:I

    .line 48
    .line 49
    const/4 v1, -0x1

    .line 50
    add-int/2addr v0, v1

    .line 51
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfzf;->zzc:I

    .line 52
    .line 53
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzfzf;->zzd:I

    .line 54
    .line 55
    return-void

    .line 56
    nop

    .line 57
    :array_0
    .array-data 8
        0x7f3a8a75d4e2c203L    # 7.280322670807796E304
        -0x551065b95b9bd237L    # -7.054964750802844E-102
        0x362c83100cd4b702L    # 9.754338595021293E-48
        0x3c52243288085163L    # 3.9337882013502305E-18
        0x45132059c86d9ad3L    # 5.780590625680539E24
        0x1692372bb17b21d5L    # 5.949277597037209E-200
        0x270b238dfdf6dc2eL
        0x4502a769830f1968L    # 2.8189057884531467E24
    .end array-data
.end method

.method public abstract zza(I)Ljava/lang/Object;
.end method
