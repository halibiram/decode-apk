.class final Lcom/google/android/gms/internal/ads/zzawh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:I

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzawj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzawj;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawh;->zzb:Lcom/google/android/gms/internal/ads/zzawj;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzawh;->zza:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzawh;->zza:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawh;->zzb:Lcom/google/android/gms/internal/ads/zzawj;

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    mul-int/lit16 v0, v0, 0x3e8

    .line 8
    .line 9
    int-to-long v2, v0

    .line 10
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :catch_0
    :cond_0
    :try_start_1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzawj;->zza:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzawj;->zza:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzawj;->zza:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 37
    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzfqz;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzatd;

    .line 43
    .line 44
    .line 45
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    const/4 v0, 0x0

    .line 48
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawh;->zzb:Lcom/google/android/gms/internal/ads/zzawj;

    .line 49
    .line 50
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzawj;->zzm(Lcom/google/android/gms/internal/ads/zzawj;Lcom/google/android/gms/internal/ads/zzatd;)V

    .line 51
    .line 52
    .line 53
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzawh;->zza:I

    .line 54
    .line 55
    const/4 v2, 0x4

    .line 56
    if-ge v1, v2, :cond_3

    .line 57
    .line 58
    if-nez v0, :cond_1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzatd;->zzaj()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzatd;->zzh()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 72
    .line 73
    const/16 v3, 0x9

    .line 74
    .line 75
    new-array v3, v3, [J

    .line 76
    .line 77
    fill-array-data v3, :array_0

    .line 78
    .line 79
    .line 80
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-nez v1, :cond_2

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzatd;->zzak()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_2

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzatd;->zzf()Lcom/google/android/gms/internal/ads/zzatm;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzatm;->zze()Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_2

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzatd;->zzf()Lcom/google/android/gms/internal/ads/zzatm;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzatm;->zza()J

    .line 114
    .line 115
    .line 116
    move-result-wide v0

    .line 117
    const-wide/16 v2, -0x2

    .line 118
    .line 119
    cmp-long v4, v0, v2

    .line 120
    .line 121
    if-eqz v4, :cond_2

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawh;->zzb:Lcom/google/android/gms/internal/ads/zzawj;

    .line 125
    .line 126
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzawh;->zza:I

    .line 127
    .line 128
    const/4 v2, 0x1

    .line 129
    add-int/2addr v1, v2

    .line 130
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzawj;->zzo(IZ)V

    .line 131
    .line 132
    .line 133
    :cond_3
    :goto_2
    return-void

    .line 134
    nop

    .line 135
    :array_0
    .array-data 8
        -0x7b734779131b3721L    # -9.430849333856653E-287
        -0x5f9cc048e1e4d9d4L
        0x220404fb1632a40bL    # 8.016122998247719E-145
        -0x21c38b0893b3cf5bL    # -8.883528749507557E145
        -0x46ed574e4239d5adL    # -8.983963468118283E-34
        -0x4dbb6773fccc48baL    # -1.5278877718566707E-66
        0x609f8387613bda64L    # 2.70419692468308E157
        0x76eb48863e2737f7L    # 6.872948325510012E264
        -0x62af8fc8191d30d6L
    .end array-data
.end method
