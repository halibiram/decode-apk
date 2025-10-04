.class public abstract Lcom/google/android/play/core/review/internal/zze;
.super Lcom/google/android/play/core/review/internal/zzb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/review/internal/zzf;


# direct methods
.method public static zzb(Landroid/os/IBinder;)Lcom/google/android/play/core/review/internal/zzf;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    new-array v1, v1, [J

    .line 10
    .line 11
    fill-array-data v1, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    instance-of v1, v0, Lcom/google/android/play/core/review/internal/zzf;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    check-cast v0, Lcom/google/android/play/core/review/internal/zzf;

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/google/android/play/core/review/internal/zzd;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/google/android/play/core/review/internal/zzd;-><init>(Landroid/os/IBinder;)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    nop

    .line 39
    :array_0
    .array-data 8
        0x6c28415b11c14a8aL    # 1.0206892203664397E213
        -0x669f66257d5c09d7L
        -0xe6a8f91fe7ddb39L    # -1.3960620316912458E239
        -0x16765c796d3d34eaL    # -2.4531514280400023E200
        0x200182e335e7a127L
        -0x6ed6c87b05b3411fL    # -5.32236302407434E-226
        0x2d8506aaf4acd88aL    # 2.0643765080430996E-89
        -0x1b60d5fb7d939b54L    # -4.93301574925751E176
        -0xa0f34b751c2da0eL
        -0x2864fd4b7c855f0aL    # -1.039326684670262E114
    .end array-data
.end method
