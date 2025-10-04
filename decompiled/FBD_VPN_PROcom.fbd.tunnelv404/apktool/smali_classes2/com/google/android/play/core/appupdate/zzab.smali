.class public final Lcom/google/android/play/core/appupdate/zzab;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Lcom/google/android/play/core/appupdate/zzi;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/play/core/appupdate/zzaa;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/play/core/appupdate/zza;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/zzab;->zza:Lcom/google/android/play/core/appupdate/zzi;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/google/android/play/core/appupdate/zzz;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, v0, v2}, Lcom/google/android/play/core/appupdate/zzz;-><init>(Lcom/google/android/play/core/appupdate/zzi;Lcom/google/android/play/core/appupdate/zzy;)V

    .line 9
    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-class v1, Lcom/google/android/play/core/appupdate/zzi;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    const/4 v3, 0x3

    .line 27
    new-array v3, v3, [J

    .line 28
    .line 29
    fill-array-data v3, :array_0

    .line 30
    .line 31
    .line 32
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v0

    .line 47
    :array_0
    .array-data 8
        0x376bee9932b66b13L    # 1.0020122599049929E-41
        -0x58506e5e8b8024c8L
        0x55605194033cd0d1L    # 1.8274821779593716E103
    .end array-data
.end method

.method public final zzb(Lcom/google/android/play/core/appupdate/zzi;)Lcom/google/android/play/core/appupdate/zzab;
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/zzab;->zza:Lcom/google/android/play/core/appupdate/zzi;

    return-object p0
.end method
