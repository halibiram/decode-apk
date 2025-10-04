.class final Lcom/google/android/gms/internal/ads/zzgdb$zzc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final zza:Lcom/google/android/gms/internal/ads/zzgdb$zzc;


# instance fields
.field final zzb:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgdb$zzc;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgdb$zzc$1;

    .line 4
    .line 5
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/16 v3, 0x8

    .line 8
    .line 9
    new-array v3, v3, [J

    .line 10
    .line 11
    fill-array-data v3, :array_0

    .line 12
    .line 13
    .line 14
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzgdb$zzc$1;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgdb$zzc;-><init>(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgdb$zzc;->zza:Lcom/google/android/gms/internal/ads/zzgdb$zzc;

    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :array_0
    .array-data 8
        -0x4d174785c19bf8abL    # -1.8778902177037405E-63
        -0x565949cabfbe44a8L    # -4.835285979570659E-108
        0x35bf77c1bdcb8560L    # 8.410602536816805E-50
        0x1b2b8ec7cdc7154eL    # 8.500727815765874E-178
        0x48563071777cf64bL    # 3.020241667644238E40
        -0x6d449f1e2a319a26L
        -0x4201e25e5b97e0ceL    # -4.382418077794655E-10
        -0x5e5281336f0d0ecaL
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgdb$zzc;->zzb:Ljava/lang/Throwable;

    .line 8
    .line 9
    return-void
.end method
