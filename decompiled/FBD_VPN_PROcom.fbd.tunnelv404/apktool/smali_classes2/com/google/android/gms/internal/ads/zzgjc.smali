.class public final synthetic Lcom/google/android/gms/internal/ads/zzgjc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgnt;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/ads/zzgjc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgjc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgjc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgjc;->zza:Lcom/google/android/gms/internal/ads/zzgjc;

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
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgji;

    .line 2
    .line 3
    sget p2, Lcom/google/android/gms/internal/ads/zzgjd;->zza:I

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgji;->zzb()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const/16 v0, 0x18

    .line 10
    .line 11
    if-eq p2, v0, :cond_0

    .line 12
    .line 13
    new-instance p2, Lcom/google/android/gms/internal/ads/zzgix;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzgix;-><init>(Lcom/google/android/gms/internal/ads/zzgiw;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzgix;->zzc(Lcom/google/android/gms/internal/ads/zzgji;)Lcom/google/android/gms/internal/ads/zzgix;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzgix;->zza(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgix;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgji;->zzb()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgxr;->zzc(I)Lcom/google/android/gms/internal/ads/zzgxr;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzgix;->zzb(Lcom/google/android/gms/internal/ads/zzgxr;)Lcom/google/android/gms/internal/ads/zzgix;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgix;->zzd()Lcom/google/android/gms/internal/ads/zzgiz;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1

    .line 41
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 42
    .line 43
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 44
    .line 45
    const/4 v0, 0x6

    .line 46
    new-array v0, v0, [J

    .line 47
    .line 48
    fill-array-data v0, :array_0

    .line 49
    .line 50
    .line 51
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    nop

    .line 63
    :array_0
    .array-data 8
        -0x7092989154c4f6b4L    # -2.311959805446683E-234
        0x4c1575182190047L
        -0x1adc11e05d0a633bL    # -1.6152451500599338E179
        -0x6c3437031ffcaa79L
        -0x172cd37595172d37L    # -8.957970173874237E196
        -0x4f906e50902e4a1eL    # -2.1810873893692419E-75
    .end array-data
.end method
