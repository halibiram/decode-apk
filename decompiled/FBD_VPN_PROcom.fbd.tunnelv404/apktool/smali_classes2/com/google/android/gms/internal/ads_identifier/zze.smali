.class public abstract Lcom/google/android/gms/internal/ads_identifier/zze;
.super Lcom/google/android/gms/internal/ads_identifier/zzb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads_identifier/zzf;


# direct methods
.method public static zza(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads_identifier/zzf;
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
    instance-of v1, v0, Lcom/google/android/gms/internal/ads_identifier/zzf;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    check-cast v0, Lcom/google/android/gms/internal/ads_identifier/zzf;

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads_identifier/zzd;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads_identifier/zzd;-><init>(Landroid/os/IBinder;)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    nop

    .line 39
    :array_0
    .array-data 8
        -0x4586576d4cbb745dL    # -5.1816904805837315E-27
        0x47ed8e23feae48afL    # 3.142851847512174E38
        -0x92eab1123de4489L
        0x75bde8ea6afaeff3L    # 1.437110585902888E259
        0x7c375b41abfba72dL    # 2.2761614236118016E290
        -0x60919d29ae376b51L
        -0x38e483456ec4efedL    # -3.568045383906244E34
        0x23b532775d2450dL
        -0x14189a1e7974ea6fL    # -6.15382575773097E211
        -0x1502826ec5bc6edL
    .end array-data
.end method
