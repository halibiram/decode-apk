.class public final synthetic Lcom/google/android/gms/ads/internal/zzd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdu;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzfnc;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfmo;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfnc;Lcom/google/android/gms/internal/ads/zzfmo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzd;->zza:Lcom/google/android/gms/internal/ads/zzfnc;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzd;->zzb:Lcom/google/android/gms/internal/ads/zzfmo;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    new-array v2, v1, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    new-array v1, v1, [J

    .line 28
    .line 29
    fill-array-data v1, :array_1

    .line 30
    .line 31
    .line 32
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcdl;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcdl;->zzi()Lcom/google/android/gms/ads/internal/util/zzg;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-interface {v1, p1}, Lcom/google/android/gms/ads/internal/util/zzg;->zzu(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzd;->zzb:Lcom/google/android/gms/internal/ads/zzfmo;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzd;->zza:Lcom/google/android/gms/internal/ads/zzfnc;

    .line 57
    .line 58
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzfmo;->zzf(Z)Lcom/google/android/gms/internal/ads/zzfmo;

    .line 59
    .line 60
    .line 61
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzfmo;->zzl()Lcom/google/android/gms/internal/ads/zzfms;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfnc;->zzb(Lcom/google/android/gms/internal/ads/zzfms;)V

    .line 66
    .line 67
    .line 68
    const/4 p1, 0x0

    .line 69
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgen;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    return-object p1

    .line 74
    nop

    .line 75
    :array_0
    .array-data 8
        -0x3202f7c17e27bc9aL    # -4.891916660336686E67
        0xecae6b5612f3c31L
        0x1f68451522eac15L
    .end array-data

    .line 76
    .line 77
    :array_1
    .array-data 8
        -0x77ffb336d7d87bf1L    # -3.856736973726606E-270
        -0x3132f6c95d2803b0L    # -4.007980748613817E71
        -0x5ddb2bcc759c5f32L
    .end array-data
.end method
