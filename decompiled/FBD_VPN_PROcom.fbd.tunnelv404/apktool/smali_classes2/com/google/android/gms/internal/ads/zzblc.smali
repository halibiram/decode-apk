.class public abstract Lcom/google/android/gms/internal/ads/zzblc;
.super Lcom/google/android/gms/internal/ads/zzayh;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbld;


# direct methods
.method public static zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbld;
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    new-array v1, v1, [J

    .line 6
    .line 7
    fill-array-data v1, :array_0

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzbld;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbld;

    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzblb;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzblb;-><init>(Landroid/os/IBinder;)V

    .line 31
    .line 32
    .line 33
    return-object v0

    .line 34
    nop

    .line 35
    :array_0
    .array-data 8
        -0x155f7c770cdc35e3L    # -4.142040092171471E205
        -0x36a2af97e734f80L
        0x6b80a64044827628L    # 6.842047041376543E209
        0x57b824235e6a85beL
        0x3667dd27545a67dL
        0x571cb878d3edfd04L    # 4.3168983856454295E111
        -0x71d79406c2db50bcL
        0x513fa97d8d5be646L    # 2.4026922806636131E83
        0x41e4315638e5d0d8L    # 2.7102212551817436E9
        -0x197e775785d76f51L    # -5.960242152763543E185
        0xfcdb952c390d6eeL
        0x5c14b248633ee79bL    # 3.760739341222413E135
    .end array-data
.end method
