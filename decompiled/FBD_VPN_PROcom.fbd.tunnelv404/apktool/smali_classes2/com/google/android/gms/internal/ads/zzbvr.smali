.class final Lcom/google/android/gms/internal/ads/zzbvr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbvt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbvt;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbvr;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbvr;->zzb:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvr;->zzc:Lcom/google/android/gms/internal/ads/zzbvt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvr;->zzc:Lcom/google/android/gms/internal/ads/zzbvt;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbvt;->zza(Lcom/google/android/gms/internal/ads/zzbvt;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    new-array v0, v0, [J

    .line 11
    .line 12
    fill-array-data v0, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Landroid/app/DownloadManager;

    .line 27
    .line 28
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbvr;->zza:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvr;->zzb:Ljava/lang/String;

    .line 31
    .line 32
    new-instance v1, Landroid/app/DownloadManager$Request;

    .line 33
    .line 34
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-direct {v1, p2}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 39
    .line 40
    .line 41
    sget-object p2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v1, p2, v0}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 50
    .line 51
    .line 52
    const/4 p2, 0x1

    .line 53
    invoke-virtual {v1, p2}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :catch_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvr;->zzc:Lcom/google/android/gms/internal/ads/zzbvt;

    .line 61
    .line 62
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 63
    .line 64
    const/4 v0, 0x4

    .line 65
    new-array v0, v0, [J

    .line 66
    .line 67
    fill-array-data v0, :array_1

    .line 68
    .line 69
    .line 70
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbvw;->zzh(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :array_0
    .array-data 8
        0x18950edf0e2f222bL    # 2.953940534239752E-190
        -0x6358faaaafda3d00L
    .end array-data

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    :array_1
    .array-data 8
        -0x1bee1a3d900c4ec4L    # -1.106648849336435E174
        0x5346f11fa2c4a92L
        0x7f59b615f2f9a158L    # 2.8211046089260463E305
        -0x3a87fe0c97de17eL    # -9.160780827292823E290
    .end array-data
.end method
