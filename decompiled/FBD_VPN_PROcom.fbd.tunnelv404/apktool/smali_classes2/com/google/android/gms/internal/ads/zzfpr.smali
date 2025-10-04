.class public final Lcom/google/android/gms/internal/ads/zzfpr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static zza:I = 0x2


# direct methods
.method public static zza(Landroid/content/Context;)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x6

    .line 6
    new-array v2, v2, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfpq;

    .line 22
    .line 23
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzfpq;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :array_0
    .array-data 8
        -0x2a23a06179c29aadL    # -4.0671632481619873E105
        0x467fa72aeb6d6e1cL    # 4.012494273986457E31
        -0x62fcbec9fcf6e099L    # -6.377491426155972E-169
        -0x5e4a398523fed6f8L    # -2.724749026189969E-146
        0x2e6f4a80d7670d5fL    # 5.033511595377622E-85
        -0x7ec585265e73237aL
    .end array-data
.end method

.method public static zzb()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfpn;->zza()Lcom/google/android/gms/internal/ads/zzfoj;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfoj;->zza:Lcom/google/android/gms/internal/ads/zzfoj;

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    return v0

    .line 11
    :cond_0
    sget v0, Lcom/google/android/gms/internal/ads/zzfpr;->zza:I

    .line 12
    .line 13
    return v0
.end method

.method public static bridge synthetic zzc(I)V
    .locals 0

    sput p0, Lcom/google/android/gms/internal/ads/zzfpr;->zza:I

    return-void
.end method
