.class final Lcom/google/android/gms/internal/ads/zzbtt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbtb;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbtv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbtv;Lcom/google/android/gms/internal/ads/zzbtb;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbtt;->zza:Lcom/google/android/gms/internal/ads/zzbtb;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtt;->zzb:Lcom/google/android/gms/internal/ads/zzbtv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lcom/google/android/gms/ads/AdError;)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtt;->zzb:Lcom/google/android/gms/internal/ads/zzbtv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbtv;->zzb(Lcom/google/android/gms/internal/ads/zzbtv;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getCode()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getDomain()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v5, 0x7

    new-array v5, v5, [J

    fill-array-data v5, :array_0

    invoke-direct {v0, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x4

    new-array v1, v1, [J

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x3

    new-array v1, v1, [J

    fill-array-data v1, :array_2

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcec;->zze(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtt;->zza:Lcom/google/android/gms/internal/ads/zzbtb;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->zza()Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbtb;->zzh(Lcom/google/android/gms/ads/internal/client/zze;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtt;->zza:Lcom/google/android/gms/internal/ads/zzbtb;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbtb;->zzi(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtt;->zza:Lcom/google/android/gms/internal/ads/zzbtb;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getCode()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbtb;->zzg(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x1

    new-array v1, v1, [J

    const-wide v2, 0x339cd8af5849dc1L

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    nop

    :array_0
    .array-data 8
        -0x149356534fff059L
        0x19a586478abce65dL
        -0x6768e02f302d386bL
        0x252dd18585b30591L    # 1.344302014285727E-129
        0x16f949e7f7781cabL    # 5.286025985347627E-198
        0x22a9210458af9e71L
        0x450e689daf228e7fL    # 4.595226182660334E24
    .end array-data

    :array_1
    .array-data 8
        0x2ef330ae6b4dda75L    # 1.580519377391931E-82
        0x20f108b64338e886L    # 5.203788104383486E-150
        -0x59d6d8d8bb3f587dL    # -7.431570699081099E-125
        0x6f74da81d0ec9467L    # 7.904175614918864E228
    .end array-data

    :array_2
    .array-data 8
        0x13085c1b56bb2156L    # 5.520605495707481E-217
        0x1f24d1b3a13f0038L
        -0xaec99a4d32d2d3cL    # -9.102783787659616E255
    .end array-data
.end method

.method public final onFailure(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbtt;->zzb:Lcom/google/android/gms/internal/ads/zzbtv;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbtv;->zzb(Lcom/google/android/gms/internal/ads/zzbtv;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v3, 0x5

    new-array v3, v3, [J

    fill-array-data v3, :array_0

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcec;->zze(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbtt;->zza:Lcom/google/android/gms/internal/ads/zzbtb;

    .line 12
    invoke-interface {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzbtb;->zzi(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtt;->zza:Lcom/google/android/gms/internal/ads/zzbtb;

    .line 13
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzbtb;->zzg(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x1

    new-array v2, v2, [J

    const-wide v3, -0x113bfde8ee48cbeaL    # -3.703002618852547E225

    aput-wide v3, v2, v0

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :array_0
    .array-data 8
        -0x5cfb50207b34b110L    # -5.428622360495719E-140
        -0x530f00818ff42772L    # -3.259565773770227E-92
        0x1f358af32d123d9aL
        0x51fd3820de93bd9eL    # 9.0821329657895E86
        -0x1ea28b6602a4f6b3L    # -1.0352940737046281E161
    .end array-data
.end method

.method public final bridge synthetic onSuccess(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lcom/google/android/gms/ads/mediation/MediationRewardedAd;

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtt;->zzb:Lcom/google/android/gms/internal/ads/zzbtv;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbtv;->zzR(Lcom/google/android/gms/internal/ads/zzbtv;Lcom/google/android/gms/ads/mediation/MediationRewardedAd;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtt;->zza:Lcom/google/android/gms/internal/ads/zzbtb;

    .line 9
    .line 10
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbtb;->zzo()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p1

    .line 15
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    new-array v1, v1, [J

    .line 19
    .line 20
    const-wide v2, -0x417fb0bf9f8d41d3L    # -1.215158109460887E-7

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    aput-wide v2, v1, v4

    .line 27
    .line 28
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtt;->zza:Lcom/google/android/gms/internal/ads/zzbtb;

    .line 39
    .line 40
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcbd;

    .line 41
    .line 42
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzcbd;-><init>(Lcom/google/android/gms/internal/ads/zzbtb;)V

    .line 43
    .line 44
    .line 45
    return-object v0
.end method
