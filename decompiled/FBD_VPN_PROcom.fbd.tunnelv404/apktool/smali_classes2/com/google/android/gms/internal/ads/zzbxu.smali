.class final Lcom/google/android/gms/internal/ads/zzbxu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic zza:Ljava/lang/Thread$UncaughtExceptionHandler;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbxw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbxw;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbxu;->zza:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxu;->zzb:Lcom/google/android/gms/internal/ads/zzbxw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxu;->zzb:Lcom/google/android/gms/internal/ads/zzbxw;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbxw;->zzf(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catchall_0
    :try_start_1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    new-array v1, v1, [J

    .line 12
    .line 13
    fill-array-data v1, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzg(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 24
    .line 25
    .line 26
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbxu;->zza:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void

    .line 34
    :catchall_1
    move-exception v0

    .line 35
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbxu;->zza:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 36
    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    :goto_1
    throw v0

    .line 44
    nop

    .line 45
    :array_0
    .array-data 8
        -0x6d6736beba1715c3L    # -4.388461353352725E-219
        -0x7aee8214bf2db4edL    # -2.94076530491432E-284
        0x59f6fdd10058e838L    # 2.431783793786407E125
        -0x679bce2306b715beL    # -3.541048265110714E-191
        0x17b7247095f45d76L
        -0x7a78106d70fd7bcaL
        0x544618355d4c914dL    # 9.438740571947198E97
        0x7a7338178d7cdbcbL    # 6.977329253438542E281
    .end array-data
.end method
