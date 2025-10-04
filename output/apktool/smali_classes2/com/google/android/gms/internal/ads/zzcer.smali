.class final Lcom/google/android/gms/internal/ads/zzcer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgej;


# instance fields
.field final synthetic zza:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v0, 0x6

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcer;->zza:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    nop

    :array_0
    .array-data 8
        -0x5d4ee1d01d428e09L
        0x75882f9f1d2bc010L    # 1.4526157156437697E258
        -0x49da9b98f2f6e871L    # -7.31856772713531E-48
        0x22505cfbe9d5d5f1L
        0x1d97a30b738f33e9L    # 4.008416122699226E-166
        -0x71a6aa13ef4750f1L
    .end array-data
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcer;->zza:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcdl;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzcdl;->zzv(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final zzb(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method
