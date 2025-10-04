.class final Lcom/google/android/gms/internal/ads/zzfwd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfwe;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfwe;Lcom/google/android/gms/internal/ads/zzfwc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfwd;->zza:Lcom/google/android/gms/internal/ads/zzfwe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwd;->zza:Lcom/google/android/gms/internal/ads/zzfwe;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfwe;->zzf(Lcom/google/android/gms/internal/ads/zzfwe;)Lcom/google/android/gms/internal/ads/zzfvt;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object p1, v1, v2

    .line 12
    .line 13
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/4 v2, 0x7

    .line 16
    new-array v2, v2, [J

    .line 17
    .line 18
    fill-array-data v2, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzfvt;->zzc(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 29
    .line 30
    .line 31
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfwa;

    .line 32
    .line 33
    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/ads/zzfwa;-><init>(Lcom/google/android/gms/internal/ads/zzfwd;Landroid/os/IBinder;)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfwd;->zza:Lcom/google/android/gms/internal/ads/zzfwe;

    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfwe;->zzc()Landroid/os/Handler;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    nop

    .line 47
    :array_0
    .array-data 8
        0xf198a067e1231f6L    # 6.275235714142964E-236
        -0x1a84338df21cfdedL    # -7.209424193986937E180
        0x5acf54fe66edbc38L    # 2.7147908092924204E129
        0x696074b14677594eL
        -0x7d5645f4060b2169L    # -7.867542850729377E-296
        -0x441b8c7c58ad2f26L    # -3.464572721970923E-20
        0x1ff6f8b887de5ee8L
    .end array-data
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwd;->zza:Lcom/google/android/gms/internal/ads/zzfwe;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfwe;->zzf(Lcom/google/android/gms/internal/ads/zzfwe;)Lcom/google/android/gms/internal/ads/zzfvt;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object p1, v1, v2

    .line 12
    .line 13
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/4 v2, 0x7

    .line 16
    new-array v2, v2, [J

    .line 17
    .line 18
    fill-array-data v2, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzfvt;->zzc(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 29
    .line 30
    .line 31
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfwb;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzfwb;-><init>(Lcom/google/android/gms/internal/ads/zzfwd;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwd;->zza:Lcom/google/android/gms/internal/ads/zzfwe;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfwe;->zzc()Landroid/os/Handler;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    nop

    .line 47
    :array_0
    .array-data 8
        0x165f515f3b6d651L
        -0x6a5c4a9ae5696023L
        0xffad43b4e4e7297L    # 1.080061082260219E-231
        -0x1f82e2170bebe26L
        -0x38b40a3c2754c771L    # -2.9035344416156163E35
        0x287ba4fae641338fL
        -0x85bb88b1f02b6feL
    .end array-data
.end method
