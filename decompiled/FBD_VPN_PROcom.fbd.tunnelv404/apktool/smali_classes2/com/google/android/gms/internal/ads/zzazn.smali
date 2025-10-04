.class final Lcom/google/android/gms/internal/ads/zzazn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final zza:Landroid/webkit/ValueCallback;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzazf;

.field final synthetic zzc:Landroid/webkit/WebView;

.field final synthetic zzd:Z

.field final synthetic zze:Lcom/google/android/gms/internal/ads/zzazp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzazp;Lcom/google/android/gms/internal/ads/zzazf;Landroid/webkit/WebView;Z)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzazn;->zzb:Lcom/google/android/gms/internal/ads/zzazf;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzazn;->zzc:Landroid/webkit/WebView;

    .line 4
    .line 5
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzazn;->zzd:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazn;->zze:Lcom/google/android/gms/internal/ads/zzazp;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance p1, Lcom/google/android/gms/internal/ads/zzazm;

    .line 13
    .line 14
    invoke-direct {p1, p0, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzazm;-><init>(Lcom/google/android/gms/internal/ads/zzazn;Lcom/google/android/gms/internal/ads/zzazf;Landroid/webkit/WebView;Z)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazn;->zza:Landroid/webkit/ValueCallback;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazn;->zzc:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazn;->zzc:Landroid/webkit/WebView;

    .line 14
    .line 15
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 16
    .line 17
    const/16 v2, 0x9

    .line 18
    .line 19
    new-array v2, v2, [J

    .line 20
    .line 21
    fill-array-data v2, :array_0

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzazn;->zza:Landroid/webkit/ValueCallback;

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catchall_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazn;->zza:Landroid/webkit/ValueCallback;

    .line 38
    .line 39
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    new-array v2, v2, [J

    .line 43
    .line 44
    const-wide v3, -0x1396146121fb199aL    # -1.7452133008445003E214

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    const/4 v5, 0x0

    .line 50
    aput-wide v3, v2, v5

    .line 51
    .line 52
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    return-void

    .line 63
    :array_0
    .array-data 8
        0x6973f0eee6977332L    # 9.539975008061218E199
        0x7e5e5e064b5b047bL    # 5.0841883897743616E300
        0x23cafaba6a87cdd5L    # 2.8999090172375803E-136
        -0x13795a5305af8bb0L    # -6.099312413227109E214
        0x3085de32c60f9e6fL    # 6.04337305288368E-75
        0x18fce31e085217e0L
        -0x69569a5851c5e62aL
        0x1c0279b6cf84195dL    # 9.337431634206437E-174
        0xc7c57d9a42eefa3L
    .end array-data
.end method
