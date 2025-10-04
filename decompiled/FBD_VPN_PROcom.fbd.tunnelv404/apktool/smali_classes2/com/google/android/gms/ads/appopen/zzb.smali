.class public final synthetic Lcom/google/android/gms/ads/appopen/zzb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Landroid/content/Context;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Lcom/google/android/gms/ads/AdRequest;

.field public final synthetic zzd:I

.field public final synthetic zze:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;ILcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/appopen/zzb;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/appopen/zzb;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/appopen/zzb;->zzc:Lcom/google/android/gms/ads/AdRequest;

    iput p4, p0, Lcom/google/android/gms/ads/appopen/zzb;->zzd:I

    iput-object p5, p0, Lcom/google/android/gms/ads/appopen/zzb;->zze:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v6, p0, Lcom/google/android/gms/ads/appopen/zzb;->zza:Landroid/content/Context;

    .line 2
    .line 3
    iget v4, p0, Lcom/google/android/gms/ads/appopen/zzb;->zzd:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/ads/appopen/zzb;->zzb:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/ads/appopen/zzb;->zzc:Lcom/google/android/gms/ads/AdRequest;

    .line 8
    .line 9
    iget-object v5, p0, Lcom/google/android/gms/ads/appopen/zzb;->zze:Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;

    .line 10
    .line 11
    :try_start_0
    new-instance v7, Lcom/google/android/gms/internal/ads/zzbar;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest;->zza()Lcom/google/android/gms/ads/internal/client/zzdx;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    move-object v0, v7

    .line 18
    move-object v1, v6

    .line 19
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzbar;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzdx;ILcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzbar;->zza()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catch_0
    move-exception v0

    .line 27
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzbxw;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbxy;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    new-array v3, v3, [J

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
    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbxy;->zzg(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    nop

    .line 51
    :array_0
    .array-data 8
        0x1289554e3e5d1607L
        -0x1f578df67ea4eff4L    # -4.195327992915722E157
        0x1db87030d5252e61L
    .end array-data
.end method
