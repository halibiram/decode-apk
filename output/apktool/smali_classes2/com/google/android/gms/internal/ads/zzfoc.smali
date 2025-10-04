.class public final Lcom/google/android/gms/internal/ads/zzfoc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzfpt;->zzb(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfoc;->zza:Z

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfoc;->zza:Z

    .line 25
    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfpc;->zzb()Lcom/google/android/gms/internal/ads/zzfpc;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfpc;->zzd(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfou;->zza()Lcom/google/android/gms/internal/ads/zzfou;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfox;->zzd(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfpn;->zzb(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfpo;->zzd(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfpr;->zza(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfoz;->zzb()Lcom/google/android/gms/internal/ads/zzfoz;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfoz;->zzc(Landroid/content/Context;)V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfot;->zza()Lcom/google/android/gms/internal/ads/zzfot;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfot;->zzd(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    return-void

    .line 64
    nop

    .line 65
    :array_0
    .array-data 8
        -0x1fd6feaaeaa0b207L    # -1.6763248973296643E155
        0x6cdbcf7f94adfd52L    # 2.3967698519799986E216
        -0x54df71c7f03d605aL    # -5.913367758318323E-101
        -0x4c94ee821eb506d2L    # -5.2639566448748884E-61
        0x64c2ec63a6f1a2d7L    # 2.3963294841587694E177
        0x58fbf17fba8fdd80L    # 4.509795353246375E120
    .end array-data
.end method

.method public final zzb()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfoc;->zza:Z

    return v0
.end method
