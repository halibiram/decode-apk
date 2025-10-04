.class abstract Lcom/google/android/gms/internal/consent_sdk/zzcy;
.super Lcom/google/android/gms/internal/consent_sdk/zzdk;
.source "SourceFile"


# instance fields
.field private final zza:I

.field private zzb:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/consent_sdk/zzdk;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    new-array v1, v1, [J

    .line 8
    .line 9
    fill-array-data v1, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {p2, p1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzcw;->zzb(IILjava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iput p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzcy;->zza:I

    .line 23
    .line 24
    iput p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzcy;->zzb:I

    .line 25
    .line 26
    return-void

    .line 27
    :array_0
    .array-data 8
        -0x4878b122cfdf547cL    # -3.344542952768855E-41
        0x4e5e1bbf9177e20dL    # 3.2468825539628664E69
    .end array-data
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzcy;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzcy;->zza:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzcy;->zzb:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/zzcy;->hasNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzcy;->zzb:I

    .line 8
    .line 9
    add-int/lit8 v1, v0, 0x1

    .line 10
    .line 11
    iput v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzcy;->zzb:I

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/consent_sdk/zzcy;->zza(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public final nextIndex()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzcy;->zzb:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/zzcy;->hasPrevious()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzcy;->zzb:I

    .line 8
    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    iput v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzcy;->zzb:I

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/consent_sdk/zzcy;->zza(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public final previousIndex()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzcy;->zzb:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public abstract zza(I)Ljava/lang/Object;
.end method
