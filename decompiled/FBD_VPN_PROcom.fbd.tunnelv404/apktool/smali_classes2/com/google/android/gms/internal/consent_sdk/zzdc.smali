.class final Lcom/google/android/gms/internal/consent_sdk/zzdc;
.super Lcom/google/android/gms/internal/consent_sdk/zzdd;
.source "SourceFile"


# instance fields
.field final transient zza:I

.field final transient zzb:I

.field final synthetic zzc:Lcom/google/android/gms/internal/consent_sdk/zzdd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzdd;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzdc;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzdd;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/consent_sdk/zzdd;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzdc;->zza:I

    .line 7
    .line 8
    iput p3, p0, Lcom/google/android/gms/internal/consent_sdk/zzdc;->zzb:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzdc;->zzb:I

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
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzcw;->zza(IILjava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzdc;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzdd;

    .line 22
    .line 23
    iget v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzdc;->zza:I

    .line 24
    .line 25
    add-int/2addr p1, v1

    .line 26
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    :array_0
    .array-data 8
        0x61f7a43664ea75dfL    # 8.50886943808551E163
        0x77c6a1ee5828c30cL    # 9.341131830915012E268
    .end array-data
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzdc;->zzb:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzdc;->zzf(II)Lcom/google/android/gms/internal/consent_sdk/zzdd;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final zzb()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzdc;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzdd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzda;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzdc;->zza:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzdc;->zzb:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final zzc()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzdc;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzdd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzda;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzdc;->zza:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final zze()[Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzdc;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzdd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzda;->zze()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(II)Lcom/google/android/gms/internal/consent_sdk/zzdd;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzdc;->zzb:I

    .line 2
    .line 3
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/consent_sdk/zzcw;->zzc(III)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzdc;->zza:I

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzdc;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzdd;

    .line 9
    .line 10
    add-int/2addr p1, v0

    .line 11
    add-int/2addr p2, v0

    .line 12
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzdd;->zzf(II)Lcom/google/android/gms/internal/consent_sdk/zzdd;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method
