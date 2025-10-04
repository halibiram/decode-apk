.class final Lcom/google/android/gms/internal/ads/zzarf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaqv;


# instance fields
.field final synthetic zza:Landroid/content/Context;

.field private zzb:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzarf;->zza:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzarf;->zzb:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/io/File;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarf;->zzb:Ljava/io/File;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarf;->zza:Landroid/content/Context;

    .line 6
    .line 7
    new-instance v1, Ljava/io/File;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    new-array v3, v3, [J

    .line 17
    .line 18
    fill-array-data v3, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzarf;->zzb:Ljava/io/File;

    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarf;->zzb:Ljava/io/File;

    .line 34
    .line 35
    return-object v0

    .line 36
    nop

    .line 37
    :array_0
    .array-data 8
        0x3d721db90e6ebeacL
        0x49a06a4c112c420dL    # 4.685717885079286E46
    .end array-data
.end method
