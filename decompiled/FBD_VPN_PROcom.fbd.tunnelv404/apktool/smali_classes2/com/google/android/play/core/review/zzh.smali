.class final Lcom/google/android/play/core/review/zzh;
.super Lcom/google/android/play/core/review/zzg;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/review/zzi;Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance p3, Lcom/google/android/play/core/review/internal/zzi;

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    new-array v1, v1, [J

    .line 7
    .line 8
    fill-array-data v1, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-direct {p3, v0}, Lcom/google/android/play/core/review/internal/zzi;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1, p3, p2}, Lcom/google/android/play/core/review/zzg;-><init>(Lcom/google/android/play/core/review/zzi;Lcom/google/android/play/core/review/internal/zzi;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :array_0
    .array-data 8
        0x2b495c208208580eL
        -0x9dce73890940f40L
        0x3814cbddfcb076d4L    # 1.5278749375126605E-38
        0xcac872121f4f211L
    .end array-data
.end method


# virtual methods
.method public final zzb(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/play/core/review/zzg;->zzb(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    new-array v1, v1, [J

    .line 8
    .line 9
    fill-array-data v1, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/app/PendingIntent;

    .line 24
    .line 25
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    const/4 v2, 0x3

    .line 28
    new-array v2, v2, [J

    .line 29
    .line 30
    fill-array-data v2, :array_1

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    new-instance v1, Lcom/google/android/play/core/review/zza;

    .line 45
    .line 46
    invoke-direct {v1, v0, p1}, Lcom/google/android/play/core/review/zza;-><init>(Landroid/app/PendingIntent;Z)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/google/android/play/core/review/zzg;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :array_0
    .array-data 8
        0x6cd8226031d46784L
        0x2dcd02f89e7e1dadL    # 4.557461953721921E-88
        -0x5c64472ff2f674eL    # -5.838751444615921E280
        0x6ee2ac334e3e78ebL    # 1.3823337155350865E226
    .end array-data

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    :array_1
    .array-data 8
        -0x7c6e99780a7ef900L
        0x3733faa90bf4a884L    # 8.9589570976682E-43
        0x1c111f8762d8d903L
    .end array-data
.end method
