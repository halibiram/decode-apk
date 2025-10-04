.class public final Lcom/google/android/gms/internal/consent_sdk/zzcr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Landroid/os/Handler;

.field public static final zzb:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/google/android/gms/internal/consent_sdk/zzcr;->zza:Landroid/os/Handler;

    .line 11
    .line 12
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzcq;

    .line 13
    .line 14
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    const/4 v2, 0x4

    .line 17
    new-array v2, v2, [J

    .line 18
    .line 19
    fill-array-data v2, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzcq;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lcom/google/android/gms/internal/consent_sdk/zzcr;->zzb:Ljava/util/concurrent/Executor;

    .line 33
    .line 34
    return-void

    .line 35
    :array_0
    .array-data 8
        -0x797bfdc37966d7f6L
        0x565f7fe155072668L    # 1.1559061304146452E108
        -0x44cda737b215f474L    # -1.5176122557884863E-23
        0x2b1c27c92b25206dL
    .end array-data
.end method

.method public static zza()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    const/4 v2, 0x6

    .line 17
    new-array v2, v2, [J

    .line 18
    .line 19
    fill-array-data v2, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0

    .line 33
    :array_0
    .array-data 8
        -0x7288d9bb9875c038L    # -8.475879712558789E-244
        -0x208a89ff4226df10L
        0x109e1f7becc77accL
        0x52756e8846860d18L    # 1.7053625081785034E89
        -0x60c0739d565d6d7eL
        0x74bdb20ad7addbd3L    # 2.1771416054613347E254
    .end array-data
.end method
