.class final Lcom/google/android/gms/internal/ads/zzgfl;
.super Lcom/google/android/gms/internal/ads/zzgew;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgfn;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgdt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgfn;Lcom/google/android/gms/internal/ads/zzgdt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgfl;->zza:Lcom/google/android/gms/internal/ads/zzgfn;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgew;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgfl;->zzb:Lcom/google/android/gms/internal/ads/zzgdt;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfl;->zzb:Lcom/google/android/gms/internal/ads/zzgdt;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgdt;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/16 v3, 0xe

    .line 10
    .line 11
    new-array v3, v3, [J

    .line 12
    .line 13
    fill-array-data v3, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzfxe;->zzd(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    return-object v1

    .line 27
    :array_0
    .array-data 8
        -0x5a0be90766ebb0a4L    # -7.419522197989155E-126
        -0x31f4389289ce3a9aL    # -9.361509199817557E67
        -0x3a12b00a1a80c3efL    # -7.257385310263584E28
        -0x2e9e8fe360c7fd10L    # -1.0586292888174594E84
        0x720a05f2b585babdL    # 2.1690413068335348E241
        -0x7c3df05f8b3d784bL
        0x7493bff72c6e7b8bL    # 3.619932769792958E253
        -0x50d7a791f825bbcdL    # -1.6040895677751542E-81
        0x3f5e0dd7a15ab3ceL    # 0.0018343549503854087
        0x744f0abdd39f0d9cL    # 1.7780153639018353E252
        -0x160078cfed9e20bL
        0x46be5d7b0a2acc2aL    # 6.158785861709485E32
        -0x47c27117c3f948b2L    # -8.686383424555312E-38
        -0x501a774b2f89301L
    .end array-data
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfl;->zzb:Lcom/google/android/gms/internal/ads/zzgdt;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final zzd(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfl;->zza:Lcom/google/android/gms/internal/ads/zzgfn;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgdb;->zzd(Ljava/lang/Throwable;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic zze(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfl;->zza:Lcom/google/android/gms/internal/ads/zzgfn;

    .line 2
    .line 3
    check-cast p1, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgdb;->zzs(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final zzg()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgfl;->zza:Lcom/google/android/gms/internal/ads/zzgfn;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgdb;->isDone()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
