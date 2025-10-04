.class public abstract Lcom/google/android/gms/internal/ads/zzfod;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzfoe;Lcom/google/android/gms/internal/ads/zzfof;)Lcom/google/android/gms/internal/ads/zzfod;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfob;->zzb()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfoh;

    .line 8
    .line 9
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfoh;-><init>(Lcom/google/android/gms/internal/ads/zzfoe;Lcom/google/android/gms/internal/ads/zzfof;)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    const/4 v0, 0x6

    .line 18
    new-array v0, v0, [J

    .line 19
    .line 20
    fill-array-data v0, :array_0

    .line 21
    .line 22
    .line 23
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0

    .line 34
    nop

    .line 35
    :array_0
    .array-data 8
        -0x1b4f4672585756e6L    # -1.0589583063921726E177
        0x52641142a32011a0L    # 7.983996623338373E88
        -0x618b8d77a047a2L
        0x61346d6bc0cb41f9L    # 1.7949458215299797E160
        0x59b3ccb4fb1efca4L    # 1.3088667921262855E124
        0x6d59466e53cf9edcL    # 5.576351125440493E218
    .end array-data
.end method


# virtual methods
.method public abstract zzb(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfok;Ljava/lang/String;)V
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract zzc()V
.end method

.method public abstract zzd(Landroid/view/View;)V
.end method

.method public abstract zze()V
.end method
