.class final Lcom/google/android/gms/internal/ads/zzekg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgej;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzekh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzekh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzekg;->zza:Lcom/google/android/gms/internal/ads/zzekh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzekg;->zza:Lcom/google/android/gms/internal/ads/zzekh;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzekh;->zzd(Lcom/google/android/gms/internal/ads/zzekh;)Lcom/google/android/gms/internal/ads/zzcvc;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcvc;->zzd()Lcom/google/android/gms/internal/ads/zzcxp;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcxp;->zza(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/client/zze;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzekg;->zza:Lcom/google/android/gms/internal/ads/zzekh;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzekh;->zze(Lcom/google/android/gms/internal/ads/zzekh;)Lcom/google/android/gms/internal/ads/zzdaz;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzdaz;->zzbK(Lcom/google/android/gms/ads/internal/client/zze;)V

    .line 22
    .line 23
    .line 24
    iget v0, v0, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    .line 25
    .line 26
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    const/4 v2, 0x5

    .line 29
    new-array v2, v2, [J

    .line 30
    .line 31
    fill-array-data v2, :array_0

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzfie;->zzb(ILjava/lang/Throwable;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :array_0
    .array-data 8
        0x1aa8c5f179d53637L
        0x374126bc84e2b383L    # 1.538183044580047E-42
        -0x14b4d7bb0a7c39fcL    # -6.975151389501078E208
        0x30176b29f502e157L    # 5.056176358508317E-77
        0x52039e8bc433be1dL    # 1.219642975154118E87
    .end array-data
.end method

.method public final synthetic zzb(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcuf;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwh;->zzj()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
