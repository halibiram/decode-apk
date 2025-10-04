.class public abstract Lcom/google/android/gms/common/internal/zzaf;
.super Lcom/google/android/gms/internal/common/zzb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/zzag;


# direct methods
.method public static zzb(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzag;
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
    const/16 v1, 0x9

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
    instance-of v1, v0, Lcom/google/android/gms/common/internal/zzag;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    check-cast v0, Lcom/google/android/gms/common/internal/zzag;

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/google/android/gms/common/internal/zzae;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/zzae;-><init>(Landroid/os/IBinder;)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    nop

    .line 39
    :array_0
    .array-data 8
        -0x2b0c819937d2dcd7L    # -1.7055092625346784E101
        -0x2c390af30034d441L    # -3.830964438315714E95
        -0x3635356c2e7af815L    # -3.059027747467962E47
        -0x787dad7c50884c63L    # -1.693458041576852E-272
        -0x785ce40915dbd97fL    # -7.064757456611133E-272
        0x2aeb16ceaf41a53L
        -0x6ed4bc2927aecc99L    # -5.754647413934713E-226
        -0x7a081eaf33d4185cL    # -6.577803472771998E-280
        -0x5808a5d3da16f315L    # -3.704163569418828E-116
    .end array-data
.end method
