.class public abstract Lcom/google/android/gms/internal/ads/zzhgm;
.super Lcom/google/android/gms/internal/ads/zzhgk;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzarm;


# instance fields
.field private zza:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    new-array v0, v0, [J

    .line 5
    .line 6
    fill-array-data v0, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzhgk;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 8
        -0x61eaf750f5f5f07dL    # -9.131510094997808E-164
        0x416627e4e11d8b2aL    # 1.1616039034856398E7
    .end array-data
.end method


# virtual methods
.method public final zzh()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhgk;->zzc:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhgk;->zzg()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhgm;->zza:I

    .line 9
    .line 10
    return v0
.end method

.method public final zzi(Ljava/nio/ByteBuffer;)J
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzarl;->zzc(B)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhgm;->zza:I

    .line 10
    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzarl;->zzd(Ljava/nio/ByteBuffer;)I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 15
    .line 16
    .line 17
    const-wide/16 v0, 0x4

    .line 18
    .line 19
    return-wide v0
.end method
