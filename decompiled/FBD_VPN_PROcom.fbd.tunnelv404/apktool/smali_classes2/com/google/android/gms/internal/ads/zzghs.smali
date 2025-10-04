.class public final synthetic Lcom/google/android/gms/internal/ads/zzghs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgnt;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/ads/zzghs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzghs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzghs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzghs;->zza:Lcom/google/android/gms/internal/ads/zzghs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzggq;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzggc;
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzghz;

    .line 2
    .line 3
    sget p2, Lcom/google/android/gms/internal/ads/zzght;->zza:I

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzghz;->zzb()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const/16 v0, 0x10

    .line 10
    .line 11
    if-eq p2, v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzghz;->zzb()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    const/16 v0, 0x20

    .line 18
    .line 19
    if-ne p2, v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 23
    .line 24
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    const/4 v0, 0x6

    .line 27
    new-array v0, v0, [J

    .line 28
    .line 29
    fill-array-data v0, :array_0

    .line 30
    .line 31
    .line 32
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :cond_1
    :goto_0
    new-instance p2, Lcom/google/android/gms/internal/ads/zzghn;

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzghn;-><init>(Lcom/google/android/gms/internal/ads/zzghm;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzghn;->zzd(Lcom/google/android/gms/internal/ads/zzghz;)Lcom/google/android/gms/internal/ads/zzghn;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzghn;->zzc(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzghn;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzghz;->zzb()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgxr;->zzc(I)Lcom/google/android/gms/internal/ads/zzgxr;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzghn;->zza(Lcom/google/android/gms/internal/ads/zzgxr;)Lcom/google/android/gms/internal/ads/zzghn;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzghz;->zzc()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgxr;->zzc(I)Lcom/google/android/gms/internal/ads/zzgxr;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzghn;->zzb(Lcom/google/android/gms/internal/ads/zzgxr;)Lcom/google/android/gms/internal/ads/zzghn;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzghn;->zze()Lcom/google/android/gms/internal/ads/zzghp;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    return-object p1

    .line 82
    nop

    .line 83
    :array_0
    .array-data 8
        -0x1b3159853ffa0cccL    # -3.881345846081862E177
        0x47c0b134a70b4bcL
        -0x4c63bf3391549cfcL    # -4.395489840184251E-60
        0xbf2ee9a19ee41fL
        -0x2d0aac11d95ec56L    # -1.0005703366000009E295
        0x5bed00cd486a2371L    # 6.587687415917821E134
    .end array-data
.end method
