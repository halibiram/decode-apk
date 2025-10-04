.class public final Lcom/google/android/gms/internal/ads/zzeyh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzexp;


# instance fields
.field final zza:Ljava/lang/String;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final zzb:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzeyg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeyh;->zza:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzeyh;->zzb:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzj(Ljava/lang/Object;)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    check-cast p1, Landroid/os/Bundle;

    .line 3
    .line 4
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbgc;->zzjU:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeyh;->zza:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeyh;->zza:Ljava/lang/String;

    .line 31
    .line 32
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    new-array v3, v0, [J

    .line 35
    .line 36
    fill-array-data v3, :array_0

    .line 37
    .line 38
    .line 39
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzeyh;->zzb:I

    .line 50
    .line 51
    const/4 v2, -0x1

    .line 52
    if-eq v1, v2, :cond_1

    .line 53
    .line 54
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    new-array v0, v0, [J

    .line 57
    .line 58
    fill-array-data v0, :array_1

    .line 59
    .line 60
    .line 61
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    :cond_1
    return-void

    .line 72
    nop

    .line 73
    :array_0
    .array-data 8
        0x66c74dbd004b095L
        0x306420cdfe40aeabL    # 1.390640299452231E-75
    .end array-data

    .line 74
    .line 75
    .line 76
    .line 77
    :array_1
    .array-data 8
        0x2860ed009d6de8dbL    # 3.436533774276369E-114
        0x152d14f230f9be91L
    .end array-data
.end method
