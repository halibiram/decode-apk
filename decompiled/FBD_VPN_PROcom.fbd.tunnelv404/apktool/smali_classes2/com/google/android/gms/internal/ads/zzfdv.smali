.class final Lcom/google/android/gms/internal/ads/zzfdv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfws;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfdz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfdz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfdv;->zza:Lcom/google/android/gms/internal/ads/zzfdz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    const-wide v2, 0x7ac04b2352306b1aL    # 1.8928688639012456E283

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    aput-wide v2, v1, v4

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast p1, Lcom/google/android/gms/internal/ads/zzecf;

    .line 22
    .line 23
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    const/16 v0, 0x8

    .line 29
    .line 30
    new-array v0, v0, [J

    .line 31
    .line 32
    fill-array-data v0, :array_0

    .line 33
    .line 34
    .line 35
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfdv;->zza:Lcom/google/android/gms/internal/ads/zzfdz;

    .line 46
    .line 47
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfdy;

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfdz;->zzb(Lcom/google/android/gms/internal/ads/zzfdz;)Lcom/google/android/gms/internal/ads/zzfjf;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-direct {v0, v1, v2, v1}, Lcom/google/android/gms/internal/ads/zzfdy;-><init>(Lcom/google/android/gms/internal/ads/zzbze;Lcom/google/android/gms/internal/ads/zzfjf;Lcom/google/android/gms/internal/ads/zzfdx;)V

    .line 55
    .line 56
    .line 57
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfdz;->zzd(Lcom/google/android/gms/internal/ads/zzfdz;Lcom/google/android/gms/internal/ads/zzfdy;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfdv;->zza:Lcom/google/android/gms/internal/ads/zzfdz;

    .line 61
    .line 62
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfdz;->zza(Lcom/google/android/gms/internal/ads/zzfdz;)Lcom/google/android/gms/internal/ads/zzfdy;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    return-object p1

    .line 67
    :array_0
    .array-data 8
        -0x16ba8b2334a5b4faL    # -1.2831159744643664E199
        -0x100d9ca247657db9L    # -1.7842458579948657E231
        0x716701e5e8a1acaL
        -0x6a291dcdd074b527L
        0xacd3585d547202aL
        0x7f0dbc9ca9a7e3b4L    # 1.0196224052898842E304
        0xdcd3fc10b7d1344L
        0x18ca17a782ee6469L    # 2.928105766813506E-189
    .end array-data
.end method
