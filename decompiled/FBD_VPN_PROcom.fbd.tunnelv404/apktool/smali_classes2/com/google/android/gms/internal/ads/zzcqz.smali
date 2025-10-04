.class public final Lcom/google/android/gms/internal/ads/zzcqz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcqv;


# instance fields
.field private final zza:Lcom/google/android/gms/ads/internal/util/zzg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/util/zzg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqz;->zza:Lcom/google/android/gms/ads/internal/util/zzg;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/Map;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqz;->zza:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 27
    .line 28
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzg;->zzz(Z)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :array_0
    .array-data 8
        -0x2bbe67ec8798193cL    # -7.516131300322547E97
        0x6e3d9bf788ad0bf4L    # 1.0702966207388027E223
        0xf102fd9fcaea13cL    # 3.977293382152589E-236
        0x6821e6ce35b4f464L    # 4.083745700743474E193
        0x1be9d411fd1e552eL
    .end array-data
.end method
