.class final Lcom/google/android/gms/internal/ads/zzzz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzabo;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzaab;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaab;Lcom/google/android/gms/internal/ads/zzcq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzz;->zza:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzzz;->zzb:Lcom/google/android/gms/internal/ads/zzaab;

    .line 7
    .line 8
    sget p2, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 9
    .line 10
    const/16 p3, 0x1d

    .line 11
    .line 12
    if-lt p2, p3, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 19
    .line 20
    if-lt p1, p3, :cond_1

    .line 21
    .line 22
    const/16 p1, 0x1e

    .line 23
    .line 24
    if-ne p2, p1, :cond_1

    .line 25
    .line 26
    sget-object p1, Lcom/google/android/gms/internal/ads/zzfy;->zzd:Ljava/lang/String;

    .line 27
    .line 28
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    const/4 p3, 0x3

    .line 31
    new-array p3, p3, [J

    .line 32
    .line 33
    fill-array-data p3, :array_0

    .line 34
    .line 35
    .line 36
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzfwk;->zzc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 51
    .line 52
    const/4 p3, 0x2

    .line 53
    new-array p3, p3, [J

    .line 54
    .line 55
    fill-array-data p3, :array_1

    .line 56
    .line 57
    .line 58
    invoke-direct {p2, p3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzfwk;->zzc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 66
    .line 67
    .line 68
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 69
    throw p1

    .line 70
    nop

    .line 71
    :array_0
    .array-data 8
        -0x77f5269c93abb3ecL
        0x3d937074d2ec7699L    # 4.419981130823214E-12
        0x1e04111d676b4c27L
    .end array-data

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    :array_1
    .array-data 8
        0x43fa2671be9f94c3L    # 3.0149096922178925E19
        0x334a55aa2a159230L    # 1.2803186784449618E-61
    .end array-data
.end method
