.class public final Lcom/google/android/play/core/review/zzd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/review/ReviewManager;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/play/core/review/zzi;

.field private final zzb:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/review/zzi;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/android/play/core/review/zzd;->zzb:Landroid/os/Handler;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/android/play/core/review/zzd;->zza:Lcom/google/android/play/core/review/zzi;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final launchReviewFlow(Landroid/app/Activity;Lcom/google/android/play/core/review/ReviewInfo;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/play/core/review/ReviewInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/play/core/review/ReviewInfo;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p2}, Lcom/google/android/play/core/review/ReviewInfo;->zzb()Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .line 15
    .line 16
    const-class v2, Lcom/google/android/play/core/common/PlayCoreDialogWrapperActivity;

    .line 17
    .line 18
    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/google/android/play/core/review/ReviewInfo;->zza()Landroid/app/PendingIntent;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    const/4 v3, 0x4

    .line 28
    new-array v3, v3, [J

    .line 29
    .line 30
    fill-array-data v3, :array_0

    .line 31
    .line 32
    .line 33
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p2}, Landroid/view/View;->getWindowSystemUiVisibility()I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 56
    .line 57
    new-array v3, v0, [J

    .line 58
    .line 59
    fill-array-data v3, :array_1

    .line 60
    .line 61
    .line 62
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    .line 71
    .line 72
    new-instance p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 73
    .line 74
    invoke-direct {p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Lcom/google/android/play/core/review/zzd;->zzb:Landroid/os/Handler;

    .line 78
    .line 79
    new-instance v3, Lcom/google/android/play/core/review/zzc;

    .line 80
    .line 81
    invoke-direct {v3, p0, v2, p2}, Lcom/google/android/play/core/review/zzc;-><init>(Lcom/google/android/play/core/review/zzd;Landroid/os/Handler;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 82
    .line 83
    .line 84
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 85
    .line 86
    new-array v0, v0, [J

    .line 87
    .line 88
    fill-array-data v0, :array_2

    .line 89
    .line 90
    .line 91
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    return-object p1

    .line 109
    :array_0
    .array-data 8
        0x19415bb53a734e0fL    # 4.986757411934449E-187
        0x19bb8df3432ecd9eL
        0x49ef4ab04f1409c7L    # 1.4291546216919728E48
        -0x78fff5ad011d98e7L    # -5.79118230815262E-275
    .end array-data

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    :array_1
    .array-data 8
        -0x61dbeda2228612L
        -0xc2390a4eab8d66cL
        -0x7bc9f95e61fd7d56L
    .end array-data

    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    :array_2
    .array-data 8
        0x3e9f303f7c5bdb9cL    # 4.647443997274967E-7
        0x27de75bacd7e4d53L    # 1.2078969993185927E-116
        0x7df66c55e668d3dL
    .end array-data
.end method

.method public final requestReviewFlow()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/play/core/review/ReviewInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/review/zzd;->zza:Lcom/google/android/play/core/review/zzi;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/play/core/review/zzi;->zza()Lcom/google/android/gms/tasks/Task;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
