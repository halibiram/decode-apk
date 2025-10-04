.class public final Lcom/google/android/gms/internal/ads/zzdkt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhhd;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzdkt;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdks;->zza()Lcom/google/android/gms/internal/ads/zzdkt;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x3

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 8
        -0x45ee17aba273c95L    # -3.258441114765313E287
        -0x1bf5cf72f3edf1d6L    # -8.096871494028812E173
        -0x6aa7233e9397d58cL    # -7.743989195149982E-206
    .end array-data
.end method
