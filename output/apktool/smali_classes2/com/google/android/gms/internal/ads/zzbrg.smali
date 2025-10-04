.class public final synthetic Lcom/google/android/gms/internal/ads/zzbrg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzbrh;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbqe;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbrh;Lcom/google/android/gms/internal/ads/zzbqe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbrg;->zza:Lcom/google/android/gms/internal/ads/zzbrh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbrg;->zzb:Lcom/google/android/gms/internal/ads/zzbqe;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrg;->zzb:Lcom/google/android/gms/internal/ads/zzbqe;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v2, v2, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbnf;->zzo:Lcom/google/android/gms/internal/ads/zzbnv;

    .line 19
    .line 20
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbrk;->zzr(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbng;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbqe;->zzc()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :array_0
    .array-data 8
        0x71cfdb432f2089faL    # 1.6595278210303898E240
        0x79d51df413aeb02cL    # 7.486663898367376E278
    .end array-data
.end method
