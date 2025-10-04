.class public final Lcom/google/android/gms/internal/ads/zzazy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final zza:J

.field final zzb:Ljava/lang/String;

.field final zzc:I


# direct methods
.method public constructor <init>(JLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzazy;->zza:J

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzazy;->zzb:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzazy;->zzc:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzazy;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzazy;

    .line 10
    .line 11
    iget-wide v1, p1, Lcom/google/android/gms/internal/ads/zzazy;->zza:J

    .line 12
    .line 13
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzazy;->zza:J

    .line 14
    .line 15
    cmp-long v5, v1, v3

    .line 16
    .line 17
    if-nez v5, :cond_1

    .line 18
    .line 19
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzazy;->zzc:I

    .line 20
    .line 21
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzazy;->zzc:I

    .line 22
    .line 23
    if-ne p1, v1, :cond_1

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    return p1

    .line 27
    :cond_1
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzazy;->zza:J

    long-to-int v1, v0

    return v1
.end method
