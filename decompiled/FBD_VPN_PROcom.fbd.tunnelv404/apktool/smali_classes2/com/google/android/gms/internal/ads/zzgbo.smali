.class final Lcom/google/android/gms/internal/ads/zzgbo;
.super Lcom/google/android/gms/internal/ads/zzgaa;
.source "SourceFile"


# instance fields
.field private final transient zza:[Ljava/lang/Object;

.field private final transient zzb:I

.field private final transient zzc:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgaa;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbo;->zza:[Ljava/lang/Object;

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgbo;->zzb:I

    .line 7
    .line 8
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzgbo;->zzc:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgbo;->zzc:I

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v2, v2, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfxe;->zza(IILjava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgbo;->zza:[Ljava/lang/Object;

    .line 22
    .line 23
    add-int/2addr p1, p1

    .line 24
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgbo;->zzb:I

    .line 25
    .line 26
    add-int/2addr p1, v1

    .line 27
    aget-object p1, v0, p1

    .line 28
    .line 29
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    return-object p1

    .line 33
    :array_0
    .array-data 8
        -0x52c2d24dce23e7b1L    # -8.952499067674293E-91
        -0x5393600235c35c66L
    .end array-data
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgbo;->zzc:I

    return v0
.end method

.method public final zzf()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
