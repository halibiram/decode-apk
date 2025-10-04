.class public final Lcom/google/android/gms/internal/ads/zzguv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzgzx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzguu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzguu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzguv;->zza:Lcom/google/android/gms/internal/ads/zzgzx;

    return-void
.end method

.method public static zza(I)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_0

    .line 3
    .line 4
    add-int/lit8 p0, p0, -0x2

    .line 5
    .line 6
    return p0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 8
    .line 9
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 10
    .line 11
    const/4 v1, 0x7

    .line 12
    new-array v1, v1, [J

    .line 13
    .line 14
    fill-array-data v1, :array_0

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p0

    .line 28
    nop

    .line 29
    :array_0
    .array-data 8
        -0x2196b2088d75c0d5L    # -6.319557129995593E146
        -0xe48100d6d0d9fa6L    # -6.2349308378403E239
        -0x1da9fd806fb52ccaL    # -5.069824421369011E165
        -0x2cf897e75d34a5b7L    # -9.536027814380643E91
        0x40bef87d52b6518cL    # 7928.489543337735
        -0x519648dddb9c562bL    # -4.1366037755953104E-85
        -0x380162eed5976fe3L    # -6.510780582599071E38
    .end array-data
.end method
