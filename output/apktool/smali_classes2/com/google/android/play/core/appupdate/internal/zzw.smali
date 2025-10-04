.class final Lcom/google/android/play/core/appupdate/internal/zzw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic zza:Lcom/google/android/play/core/appupdate/internal/zzx;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/appupdate/internal/zzx;Lcom/google/android/play/core/appupdate/internal/zzv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/internal/zzw;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzw;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzf(Lcom/google/android/play/core/appupdate/internal/zzx;)Lcom/google/android/play/core/appupdate/internal/zzm;

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
    invoke-virtual {v0, p1, v1}, Lcom/google/android/play/core/appupdate/internal/zzm;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/google/android/play/core/appupdate/internal/zzw;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    .line 32
    .line 33
    new-instance v0, Lcom/google/android/play/core/appupdate/internal/zzt;

    .line 34
    .line 35
    invoke-direct {v0, p0, p2}, Lcom/google/android/play/core/appupdate/internal/zzt;-><init>(Lcom/google/android/play/core/appupdate/internal/zzw;Landroid/os/IBinder;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzc()Landroid/os/Handler;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    nop

    .line 47
    :array_0
    .array-data 8
        -0x70e48c74ef823ba7L    # -6.745077873361989E-236
        0x36b99b1cc8ac39d9L    # 4.485189937244742E-45
        -0x3b05b2bfc761859aL    # -1.987304887538433E24
        0x4c4f3711091dbfd8L    # 3.918807631204796E59
        0x2c7c909b00352241L    # 2.139703258066669E-94
        0x70c816191ed8ad32L    # 1.914595780191633E235
        0x763decf5fc96fffcL    # 3.680946737436423E261
    .end array-data
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzw;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzf(Lcom/google/android/play/core/appupdate/internal/zzx;)Lcom/google/android/play/core/appupdate/internal/zzm;

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
    invoke-virtual {v0, p1, v1}, Lcom/google/android/play/core/appupdate/internal/zzm;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/google/android/play/core/appupdate/internal/zzw;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    .line 32
    .line 33
    new-instance v0, Lcom/google/android/play/core/appupdate/internal/zzu;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Lcom/google/android/play/core/appupdate/internal/zzu;-><init>(Lcom/google/android/play/core/appupdate/internal/zzw;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzc()Landroid/os/Handler;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    nop

    .line 47
    :array_0
    .array-data 8
        -0x63f8d8579152b03bL
        -0x13a5bdd4c9c7b412L    # -8.839880355132349E213
        0x2490954dc7e9a899L    # 1.460194569225231E-132
        0x36a51b946ffc66b4L    # 1.8486396784468427E-45
        0x380723ad4dc1c7eaL    # 8.500059584544906E-39
        -0x7687f79e0d91ababL
        -0x428ee06d9586e788L    # -9.733484989448148E-13
    .end array-data
.end method
