.class public final synthetic Lcom/google/android/gms/internal/ads/zzfkx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdu;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzfkp;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfkp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfkx;->zza:Lcom/google/android/gms/internal/ads/zzfkp;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Exception;

    .line 4
    .line 5
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    new-array v0, v0, [J

    .line 9
    .line 10
    const-wide v1, 0x7ac905fa35a57246L    # 2.907042444149174E283

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    aput-wide v1, v0, v3

    .line 17
    .line 18
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgen;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1
.end method
