.class public Lcom/google/android/gms/internal/ads/zzhgl;
.super Lcom/google/android/gms/internal/ads/zzhgo;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzarm;


# instance fields
.field zza:Lcom/google/android/gms/internal/ads/zzarn;

.field protected final zzb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhgo;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    new-array v0, v0, [J

    .line 8
    .line 9
    fill-array-data v0, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhgl;->zzb:Ljava/lang/String;

    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :array_0
    .array-data 8
        -0x76e5eda3288e25a5L    # -8.085626203190019E-265
        0x32c4b1d3555d5928L    # 3.930145401783156E-64
    .end array-data
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhgl;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhgp;Ljava/nio/ByteBuffer;JLcom/google/android/gms/internal/ads/zzarj;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzhgp;->zzb()J

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhgo;->zzd:Lcom/google/android/gms/internal/ads/zzhgp;

    .line 11
    .line 12
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzhgp;->zzb()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhgo;->zzf:J

    .line 17
    .line 18
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzhgp;->zzb()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    add-long/2addr v0, p3

    .line 23
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhgp;->zze(J)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzhgp;->zzb()J

    .line 27
    .line 28
    .line 29
    move-result-wide p1

    .line 30
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzhgo;->zzg:J

    .line 31
    .line 32
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzhgo;->zzc:Lcom/google/android/gms/internal/ads/zzarj;

    .line 33
    .line 34
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzarn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhgl;->zza:Lcom/google/android/gms/internal/ads/zzarn;

    return-void
.end method
