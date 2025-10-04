.class final Lcom/google/android/gms/internal/ads/zzegw;
.super Lcom/google/android/gms/internal/ads/zzeht;
.source "SourceFile"


# instance fields
.field private zza:Landroid/app/Activity;

.field private zzb:Lcom/google/android/gms/ads/internal/overlay/zzm;

.field private zzc:Ljava/lang/String;

.field private zzd:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeht;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzeht;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegw;->zza:Landroid/app/Activity;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v1, 0x3

    .line 11
    new-array v1, v1, [J

    .line 12
    .line 13
    fill-array-data v1, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    :array_0
    .array-data 8
        -0x38857788d67ea720L    # -2.204281072393566E36
        0x140983c854b887ccL    # 3.789525361594103E-212
        0x2110d53292e29169L
    .end array-data
.end method

.method public final zzb(Lcom/google/android/gms/ads/internal/overlay/zzm;)Lcom/google/android/gms/internal/ads/zzeht;
    .locals 0
    .param p1    # Lcom/google/android/gms/ads/internal/overlay/zzm;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegw;->zzb:Lcom/google/android/gms/ads/internal/overlay/zzm;

    return-object p0
.end method

.method public final zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzeht;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegw;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public final zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzeht;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegw;->zzd:Ljava/lang/String;

    return-object p0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzehu;
    .locals 7

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzegw;->zza:Landroid/app/Activity;

    .line 2
    .line 3
    if-eqz v1, :cond_0

    .line 4
    .line 5
    new-instance v6, Lcom/google/android/gms/internal/ads/zzegy;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzegw;->zzb:Lcom/google/android/gms/ads/internal/overlay/zzm;

    .line 8
    .line 9
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzegw;->zzc:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzegw;->zzd:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    move-object v0, v6

    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzegy;-><init>(Landroid/app/Activity;Lcom/google/android/gms/ads/internal/overlay/zzm;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzegx;)V

    .line 16
    .line 17
    .line 18
    return-object v6

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    const/4 v2, 0x6

    .line 24
    new-array v2, v2, [J

    .line 25
    .line 26
    fill-array-data v2, :array_0

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    nop

    .line 41
    :array_0
    .array-data 8
        -0x74b0061aad9af540L
        -0x333c674e6916966dL    # -6.298059357309393E61
        -0x2646cf5fe05f8af1L    # -1.6651962366237016E124
        0x6a136420d682b569L    # 9.499486386485586E202
        -0x54883b6700002ef5L    # -2.7166478133230218E-99
        -0x298fbd3c7c8f00bcL    # -2.3868232101435404E108
    .end array-data
.end method
