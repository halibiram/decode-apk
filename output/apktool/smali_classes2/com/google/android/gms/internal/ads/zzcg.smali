.class public final Lcom/google/android/gms/internal/ads/zzcg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzcg;

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzn;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final zze:Ljava/lang/String;

.field private static final zzf:Ljava/lang/String;


# instance fields
.field public final zzc:F

.field public final zzd:F

.field private final zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcg;

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    invoke-direct {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzcg;-><init>(FF)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/android/gms/internal/ads/zzcg;->zza:Lcom/google/android/gms/internal/ads/zzcg;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    const/16 v1, 0x24

    .line 12
    .line 13
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/google/android/gms/internal/ads/zzcg;->zze:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lcom/google/android/gms/internal/ads/zzcg;->zzf:Ljava/lang/String;

    .line 25
    .line 26
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcf;->zza:Lcom/google/android/gms/internal/ads/zzcf;

    .line 27
    .line 28
    sput-object v0, Lcom/google/android/gms/internal/ads/zzcg;->zzb:Lcom/google/android/gms/internal/ads/zzn;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 4
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    cmpl-float v3, p1, v2

    .line 8
    .line 9
    if-lez v3, :cond_0

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v3, 0x0

    .line 14
    :goto_0
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzek;->zzd(Z)V

    .line 15
    .line 16
    .line 17
    cmpl-float v2, p2, v2

    .line 18
    .line 19
    if-lez v2, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzek;->zzd(Z)V

    .line 23
    .line 24
    .line 25
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcg;->zzc:F

    .line 26
    .line 27
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcg;->zzd:F

    .line 28
    .line 29
    const/high16 p2, 0x447a0000    # 1000.0f

    .line 30
    .line 31
    mul-float p1, p1, p2

    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcg;->zzg:I

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
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
    const-class v3, Lcom/google/android/gms/internal/ads/zzcg;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcg;

    .line 18
    .line 19
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzcg;->zzc:F

    .line 20
    .line 21
    iget v3, p1, Lcom/google/android/gms/internal/ads/zzcg;->zzc:F

    .line 22
    .line 23
    cmpl-float v2, v2, v3

    .line 24
    .line 25
    if-nez v2, :cond_2

    .line 26
    .line 27
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzcg;->zzd:F

    .line 28
    .line 29
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzcg;->zzd:F

    .line 30
    .line 31
    cmpl-float p1, v2, p1

    .line 32
    .line 33
    if-nez p1, :cond_2

    .line 34
    .line 35
    return v0

    .line 36
    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcg;->zzc:F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit16 v0, v0, 0x20f

    .line 8
    .line 9
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcg;->zzd:F

    .line 10
    .line 11
    mul-int/lit8 v0, v0, 0x1f

    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/2addr v1, v0

    .line 18
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcg;->zzc:F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcg;->zzd:F

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x2

    .line 14
    new-array v2, v2, [Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    aput-object v0, v2, v3

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    aput-object v1, v2, v0

    .line 21
    .line 22
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 23
    .line 24
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    const/4 v3, 0x7

    .line 27
    new-array v3, v3, [J

    .line 28
    .line 29
    fill-array-data v3, :array_0

    .line 30
    .line 31
    .line 32
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    return-object v0

    .line 44
    nop

    .line 45
    :array_0
    .array-data 8
        0x4dc3e24e1c0fa437L    # 4.188060133002126E66
        0x1f443e35c971e1ebL    # 4.607521141071973E-158
        0x38c84221906596a3L    # 3.6499870185830904E-35
        0x6f8ff35173f1f114L
        -0x4ded69b91f39ddddL    # -1.723577131131131E-67
        -0x2b56ffc6711bc076L    # -6.835398638981196E99
        0x3e3f66844ba999dL
    .end array-data
.end method

.method public final zza(J)J
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcg;->zzg:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    return-wide p1
.end method
